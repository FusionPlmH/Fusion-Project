package com.tweaks.leo.base;



import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.Toolbar;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;

import com.tweaks.leo.LeoApp;
import com.tweaks.leo.R;
import com.tweaks.leo.theme.Utils;

import static com.tweaks.leo.widget.DialogUtil.ResetSuccess;


public abstract class BasePreferenceFragment extends PreferenceFragment {
    public Activity mContext;
    protected   Intent intentFragment;

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        menu.add(0, MENU_RESET, 0, R.string.reset)
                //.setIcon(R.drawable.ic_reset)
               .setTitle(R.string.reset)
                //.setIcon(R.drawable.ic_reset)
                .setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS);
    }
    public static final int MENU_RESET = Menu.FIRST;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        mContext = (Activity) getActivity();


    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case MENU_RESET:
                showResetDialog();
                return true;
            default:
                return super.onContextItemSelected(item);
        }
    }

    public  void showResetDialog(){
        AlertDialog dialog = new AlertDialog.Builder(getActivity())
                 .setIcon(R.drawable.ic_reset)
                .setTitle(R.string.reset)//设置对话框的标题
                .setMessage(R.string.reset_color)//设置对话框的内容
                //设置对话框的按钮
                .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        dialog.dismiss();
                    }
                })

                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        ResetColor();
                        ResetSuccess(getActivity());
                        dialog.dismiss();

                    }
                }).create();
        dialog.show();
        dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);

    }

    public   abstract void ResetColor();





}
