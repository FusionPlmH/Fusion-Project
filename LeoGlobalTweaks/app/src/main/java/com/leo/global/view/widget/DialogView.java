package com.leo.global.view.widget;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import com.leo.global.tools.kotlin.OverScrollListView;
import com.leo.global.tweaks.LeoAmberApplication;
import com.leo.global.tweaks.R;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.leo.global.tweaks.LeoAmberApplication.getContext;


public class DialogView  {
    static AlertDialog mDialog;
    static AlertDialog.Builder mDialogBuilder;
    public static void initInfoView(Context context,int Titlename,int icon,String[] name,String[] message) {
        mDialogBuilder= new AlertDialog.Builder(context);
        mDialogBuilder.setTitle(Titlename);
        mDialogBuilder.setIcon(icon);
        LayoutInflater welmsgInflater = LayoutInflater.from(context);
        View welmsgLayout = welmsgInflater.inflate(R.layout.icon_preference_dialog_view, null);
        mDialogBuilder.setView(welmsgLayout);
        List<Map<String, Object>> listItems = new ArrayList<Map<String, Object>>();
        for (int i = 0; i < name.length; i++ ) {
            Map<String, Object> listItem = new HashMap<String, Object>();
            listItem.put("name", name[i]);
            listItem.put("message", message[i]);
            listItems.add(listItem);
        }
        SimpleAdapter sampleAdapter = new SimpleAdapter(context
                , listItems
                , R.layout.info_items
                , new String[] {"name", "message"}
                , new int[] { R.id.info_name, R.id.info_message}
        );
        OverScrollListView listview = (OverScrollListView)welmsgLayout .findViewById(R.id.thumbnailListView);
        listview.setAdapter(sampleAdapter);
        listview.setMaxOverScrollY(300);

        mDialogBuilder.setPositiveButton(android.R.string.ok, (dialog, which) -> {
            dialog.dismiss();
        }).create();
        mDialogBuilder.show();

    }


    public static void initSafetyDialogView(final Activity context,final boolean off) {
        mDialog = new AlertDialog.Builder(context)

            .setMessage(R.string.no_donate_sumarry)//设置对话框的内容
                //设置对话框的按钮

                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        if(off){
                            context.onBackPressed();
                        }
                        dialog.dismiss();
                    }
                }).create();
        mDialog.show();
        //屏幕定格在此对话框
        mDialog.setCanceledOnTouchOutside(false);
        //屏蔽返回键
        mDialog.setCancelable(false);
    }
    public static void initWeatherDialogView(final Activity context,String Message) {
        mDialog = new AlertDialog.Builder(context)

                .setMessage(Message)//设置对话框的内容
                //设置对话框的按钮

                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        dialog.dismiss();
                    }
                }).create();
        mDialog.show();

    }
    public static void initMessageDialogView(final Activity context,int style,String Message,final String key) {

        AlertDialog.Builder welmsg = new AlertDialog.Builder(context);
        LayoutInflater welmsgInflater = LayoutInflater.from(context);
        View welmsgLayout = welmsgInflater.inflate(R.layout.caution_msg, null);
        final CheckBox dontShowAgain = (CheckBox) welmsgLayout.findViewById(R.id.caution_msg);
        welmsg.setView(welmsgLayout);
       if(style==0){
            welmsg.setMessage(Html.fromHtml(Message));
        }else if(style==1){
           welmsg.setMessage(Message);
       }
        welmsg.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                String checkBoxResult = "NOT checked";
                if (dontShowAgain.isChecked())  checkBoxResult = "checked";
                SharedPreferences settings = context.getSharedPreferences(key, 0);
                SharedPreferences.Editor editor = settings.edit();
                editor.putString("skipMessage", checkBoxResult);
                // Commit the edits!
                editor.commit();
                return;
            } });
        SharedPreferences settings =context. getSharedPreferences(key, 0);
        String skipMessage = settings.getString("skipMessage", "NOT checked");
        Dialog alertDialog = welmsg.create();
        //  alertDialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        if (!skipMessage.equalsIgnoreCase("checked") ) alertDialog.show();
    }

    public static  void SamsungGoodLock(final Context context, String str, String str2, String S, final String S2) {
        ComponentName componetName = new ComponentName(
//这个是另外一个应用程序的包名
                str,
//这个参数是要启动的Activity
                str2);

        try {
            Intent intent = new Intent();
            intent.setComponent(componetName);
            context.startActivity(intent);
        } catch (Exception e) {
            AlertDialog builder = new AlertDialog.Builder(context)
                    .setIcon(R.drawable.ic_hint)//设置标题的图片
                    .setTitle("么有组件")//设置对话框的标题
                    .setMessage(S+"没有安装"+","+"你需要下载"+"“"+S+"”"+"组件，马上下载一个呗！☺")//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                            dialog.dismiss();
                        }
                    })
                    .setPositiveButton(R.string.can_download, new DialogInterface.OnClickListener() {
                        @SuppressLint("NewApi")
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            SamsunggoToMainAppsMarket(context,S2);
                            dialog.dismiss();
                        }
                    }).
                            create();
            //      builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            builder.show();
        }
    }
    public static  void SamsunggoToMainAppsMarket(final Context context , final String S2) {
        Uri uri = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId=" + S2);
        final Intent goToMarket = new Intent();
        goToMarket.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
        goToMarket.setData(uri);
        try {
            context.startActivity(goToMarket);
        } catch (ActivityNotFoundException e) {

            AlertDialog builder = new AlertDialog.Builder(context)
                    .setIcon(R.drawable.ic_hint)//设置标题的图片
                    .setTitle(R.string.error)//设置对话框的标题
                    .setMessage(R.string.can_samsung_store)//设置对话框的内容
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
                            goEdge(context,S2);
                            dialog.dismiss();
                        }
                    }).
                            create();
            //    builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            builder.show();
            e.printStackTrace();
        }
    }
    public static  void goEdge(Context context,String S2) {
        Uri uri = Uri.parse("market://details?id=" + S2);
        Intent goToMarket = new Intent(Intent.ACTION_VIEW, uri);
        try {
            context.startActivity(goToMarket);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }
}