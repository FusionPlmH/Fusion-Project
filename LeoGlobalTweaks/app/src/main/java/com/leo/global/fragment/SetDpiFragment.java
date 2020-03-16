package com.leo.global.fragment;


import android.app.AlertDialog;
import android.app.Dialog;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.provider.Settings;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;
import android.text.Html;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;


import com.leo.global.tweaks.R;
import com.stericson.RootShell.exceptions.RootDeniedException;
import com.stericson.RootShell.execution.Command;
import com.stericson.RootTools.RootTools;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeoutException;



public class SetDpiFragment extends DialogFragment {

    public SetDpiFragment() {

    }

    String dpi = "";
    List<String> values;


    public Dialog onCreateDialog(Bundle savedInstanceState) {
        values = Arrays.asList(getActivity().getResources().getStringArray(R.array.dpi_dialog_values));

        // retrieve lcd density from get.prop - it will update displayed after reboot.. is not reading from build.prop

        File file = new File("/system/build.prop");
        if (file.exists())
            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                for (String line = br.readLine(); line != null; line = br.readLine()) {
                    if (line.contains("ro.sf.lcd_density")) {
                        dpi = line.substring(line.indexOf("=") + 1, line.length());
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }

        // we build title pushing inside value from buffer reader (dpi string)


        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        Resources res = getResources();
        View selectDPIActivityView = LayoutInflater.from(getActivity()).inflate(R.layout.dpi_list_view, null);
        final ListView listView = (ListView) selectDPIActivityView.findViewById(R.id.DPIlistView);
        ArrayAdapter<String> adapter = new ArrayAdapter<>(getActivity(), R.layout.checked_layout, getResources().getStringArray(R.array.dpi_dialog_items));
        listView.setChoiceMode(ListView.CHOICE_MODE_SINGLE);
        listView.setAdapter(adapter);
        listView.setItemChecked(getIndex(dpi), true);

        builder.setTitle(String.format(res.getString(R.string.show_current_dpi), dpi))
                .setView(selectDPIActivityView)
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        int selectedPosition = listView.getCheckedItemPosition();
                        String value = getValue(selectedPosition);
                        if (selectedPosition != 6) {
                            try {
                                Command applyLive = new Command(0, "wm density " + value);
                                RootTools.getShell(true).add(applyLive);
                                Command applyToBuild = new Command(0, "busybox mount -o remount,rw /system", "cd /system", "sed -i '/ro.sf.lcd_density/c\\ ro.sf.lcd_density=" + value + "' build.prop");
                                RootTools.getShell(true).add(applyToBuild);
                               // Toast.makeText(getActivity().getApplicationContext(), "Please reboot your device now.", Toast.LENGTH_LONG).show();
                            //    NotificationUtils.getRebootInfo(getActivity());
                                dialog.dismiss();
                            } catch (TimeoutException | RootDeniedException | IOException e) {
                                e.printStackTrace();
                            }
                        } else {

                            CustomDpiFragment mCustomDpiFragment = new CustomDpiFragment();
                            FragmentTransaction mCustomTransaction = getFragmentManager().beginTransaction();
                            mCustomTransaction.add(mCustomDpiFragment, "custom dpi");
                            mCustomTransaction.commitAllowingStateLoss();

                        }
                    }

                })
                .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();

                    }
                })

                .setNeutralButton(R.string.reboot_device, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        getReboot();
                        dialog.dismiss();

                    }
                })
                .setOnKeyListener(new DialogInterface.OnKeyListener() {
                    @Override
                    public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                        if (keyCode == KeyEvent.KEYCODE_BACK) {
                            //upon back pressed activity finishes. this is the first dialog. we cannot use ondetach
                            dialog.dismiss();
                        }
                        return false;

                    }
                });

        Dialog dialog = builder.create();

        dialog.setCanceledOnTouchOutside(false); //has to be false or else will hit invisible activity blocking ui. cannot use ondetach
        return dialog;
    }


    private int getIndex(String dpi) {
        return values.indexOf(dpi) != -1 ? values.indexOf(dpi) : 2;
    }

    private String getValue(int position) {
        return position != 2 ? values.get(position) : null;
    }

   private void getRebootAction(String command) {
        Command c = new Command(0, command);
        try {
            RootTools.getShell(true).add(c);
        } catch (IOException | TimeoutException | RootDeniedException e) {
            e.printStackTrace();
        }
    }


    private void getReboot(){
        AlertDialog.Builder Rebootbuilder = new AlertDialog.Builder(getActivity());

        Rebootbuilder.setTitle("重新启动");//设置对话框的标题
        Rebootbuilder.setMessage(Html.fromHtml("由于你更改了系统屏幕DPI<br />" +
                "我们推荐你重新启动！<br /><br />" +
                "<b><font color=\"#FF0080\">当然这个不是必须的！<br /><br /></font></b>" +
                "<font color=\"#2894FF\">我们只是建议！<br /><br /></font>" +
                "<br /><font color=\"#FF0000\">你是否决定重新启动</font>"));//设置对话框的内容
            //设置对话框的按钮
        Rebootbuilder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {

                dialog.dismiss();
            }
        });
        Rebootbuilder.setPositiveButton("重新启动", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    getRebootAction("reboot");
                    dialog.dismiss();
                }
            }).create();
        Dialog Exit= Rebootbuilder.create();
    //    Exit.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        Exit.show();
    }
}