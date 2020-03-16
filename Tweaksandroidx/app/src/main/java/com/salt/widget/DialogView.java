package com.salt.widget;


import android.app.Activity;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Handler;
import android.provider.Settings;
import android.util.Base64;
import android.view.View;


import androidx.appcompat.app.AlertDialog;

import com.google.android.material.snackbar.Snackbar;
import com.salt.config.R;
import com.salt.config.tweaks.activity.ActivityFileSelector;
import com.salt.config.tweaks.activity.WebViewActivity;
import com.salt.script.DialogHelper;
import com.salt.script.KeepShellPublic;
import java.io.File;
import java.io.IOException;

import static com.salt.frame.LeadFrame.getPackageContext;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.frame.utils.SaltUtils.isLeoAvilible;
import static com.salt.globalactions.Utils.S10reboot;
import static com.salt.globalactions.Utils.setLeoNavKeypressAction;
import static com.salt.config.SaltApp.getContext;
import static com.salt.utils.BatteryUtil.readCurrentFile;
import static com.salt.utils.SaltProper.SystemUrl.FloatingFature;
import static com.salt.utils.SaltProper.getApksStringInt;

import static com.salt.utils.SaltProper.goToMainAppsMarketQQ;
import static com.salt.utils.network.hasNetWork;
import static com.salt.utils.utils.All_SCRIPTS_FOLDER;
import static org.salt.preference.colorpicker.Utils.getColorAttr;


public class DialogView {

    public static void linkCountDialog(Activity context, String Title){
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(Title);
        builder.setMessage( getefs());
        builder.setPositiveButton(android.R.string.ok, (dialog, which) -> {
            File file = new File("/efs/FactoryApp/epen_count");
            if(file.exists()){
                m99855("batt_cable_count");
                m99855("earjack_count");
                m99855("epen_count");
            }else {
                m99855("batt_cable_count");
                m99855("earjack_count");
            }
            dialog.dismiss();
        });
        AlertDialog alertDialog = builder.create();
        alertDialog.show();

    }

    static String m99855(String str) {
        return KeepShellPublic.INSTANCE.doCmdSync("chmod -R 0600 /efs/FactoryApp/" + str);
    }
    public static String m99955(String str) {
        return KeepShellPublic.INSTANCE.doCmdSync("chmod -R 0604 /efs/FactoryApp/" + str);
    }

    public static String getefs() {
        String result ="";
        String result2 ;
        String result3 ;
        try {
            m99955("batt_cable_count");
            m99955("earjack_count");

            File   file = new File("/efs/FactoryApp/epen_count");
            if(file.exists()){
                m99955("epen_count");
                result3="Spen拔出次数:"+readCurrentFile(new File("/efs/FactoryApp/epen_count"));
                result2="耳机连接次数:"+readCurrentFile(new File("/efs/FactoryApp/earjack_count"));
                result=result3+ "\n"+"充电连接次数:"+readCurrentFile(new File("/efs/FactoryApp/batt_cable_count"))+ "\n"+result2;
            }else {
                result2="耳机连接次数:"+readCurrentFile(new File("/efs/FactoryApp/earjack_count"));
                result="充电连接次数:"+readCurrentFile(new File("/efs/FactoryApp/batt_cable_count"))+ "\n"+result2;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }


    public static void GlobaInfo(Context context, String str , String info,   Drawable F){
        DialogHelper.Companion.animDialog(new AlertDialog.Builder(context)
                .setTitle(str)
                .setIcon(F)
                .setMessage(info)
                .setPositiveButton(android.R.string.ok, (dialog, which) -> dialog.dismiss()).show()

        );


    }

    static ProgressDialog   mProgressDialog;
    public static void  InstallLeoX(Context context,String str,int mms,String message,String start){
        mProgressDialog= new ProgressDialog(context);
        mProgressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mProgressDialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mProgressDialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mProgressDialog.setMessage(message);
        mProgressDialog.show();
        new Thread(() -> {
            try {
                Thread.sleep(mms);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            KeepShellPublic.INSTANCE.doCmdSync("pm uninstall "+str);
            KeepShellPublic.INSTANCE.doCmdSync("sleep 5");
            KeepShellPublic.INSTANCE.doCmdSync("am start -n "+start);
            KeepShellPublic.INSTANCE.doCmdSync("rm -rf "+str);
            mProgressDialog.cancel();
        }).start();
    }
    public static  void SamsungGoodLock(final Context context, String str, String str2, String S) {
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
            DialogHelper.Companion.animDialog(new AlertDialog.Builder(context)
                    .setTitle(S)
                    .setMessage("［"+S+"］"+getStringIdentifier(getContext(),"goodlock_null")+"［"+S+"］")
                    .setPositiveButton(getStringIdentifier(getContext(),"ota_download"), (dialog, which) -> {
                        goToMainAppsMarketQQ(context,str);
                        dialog.dismiss();
                    }).show()

            );

        }
    }
    public static void LeoLogDialog(Activity context){
        DialogHelper.Companion.animDialog(new AlertDialog.Builder(context)
                .setTitle(R.string.determine_title)
                .setMessage(R.string.cleaning_wait)
                .setPositiveButton(R.string.determine_cleaning, (dialog, which) -> {
                    KeepShellPublic.INSTANCE.doCmdSync("mount -o rw,remount /data");
                    KeepShellPublic.INSTANCE. doCmdSync("mount -o rw,remount /system");
                    KeepShellPublic.INSTANCE.doCmdSync("rm -rf /sdcard/LeoTweaks/Log/leo_*.txt");
                    KeepShellPublic.INSTANCE.doCmdSync("rm -rf /sdcard/LeoTweaks/Log/*_log.zip");
                    showSnackn(context,context.getString(R.string.cleaning_info));
                })
        );
    }
    public static void  InternetCheck(Activity context){
                if( hasNetWork(context) == 0){
                    DialogHelper.Companion.animDialog(new AlertDialog.Builder(context)
                            .setTitle("网络需求!")
                            .setCancelable(false)
                            .setMessage(getApksStringInt(R.string.app_name)+"需要链接互联网,请链接到互联网")
                            .setPositiveButton("确定", (dialog, which) -> {
                                SafetyBackView(context);
                            })
                    );
                }

    }
    public static void showSnackn(Activity activity,String mensaje){
        Snackbar snackbar = Snackbar.make(activity.findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);
        snackbar.getView().setBackgroundColor(getColorAttr(activity,R.attr.colorAccent));
        snackbar.show();

    }
    public static void showSnackn(View activity, String mensaje){
        Snackbar snackbar = Snackbar.make(activity.findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);
        snackbar.getView().setBackgroundColor(getColorAttr(getContext(),R.attr.colorAccent));
        snackbar.show();

    }

    public static void LeoLogDialogERROR(Context context){
        DialogHelper.Companion.animDialog(new AlertDialog.Builder(context)

                .setTitle(R.string.no_log_title)
                .setMessage(R.string.no_log)
                .setPositiveButton(android.R.string.ok, (dialog, which) -> dialog.dismiss()).show()

        );
    }

    public static void LeoLogDialoglist(Context context){
        AlertDialog dialog = new AlertDialog.Builder(context)
                .setTitle(R.string.no_list)//设置对话框的标题
                .setItems(R.array.log_info, (dialogInterface, i) -> {
                    String sd;
                    File file;
                    Intent webViewIntent;
                    switch (i) {
                        case 0:
                            file = new File("/sdcard/LeoTweaks/Log/leo_logcat.txt");
                            if(file.exists()){
                                sd="file:///sdcard/LeoTweaks/Log/leo_logcat.txt";
                                webViewIntent = new Intent(context.getApplicationContext(), WebViewActivity.class);
                                webViewIntent.putExtra("url", sd);
                                context.startActivity(webViewIntent);
                            }else {
                                LeoLogDialogERROR(context);
                            }


                            break;
                        case 1:
                            file = new File("/sdcard/LeoTweaks/Log/leo_kernel.txt");
                            if(file.exists()){
                                sd="file:///sdcard/LeoTweaks/Log/leo_kernel.txt";
                                webViewIntent = new Intent(context.getApplicationContext(), WebViewActivity.class);
                                webViewIntent.putExtra("url", sd);
                                context.startActivity(webViewIntent);
                            }else {
                                LeoLogDialogERROR(context);
                            }
                            break;
                        case 2:

                            file = new File("/sdcard/LeoTweaks/Log/leo_boot.txt");
                            if(file.exists()){
                                sd="file:///sdcard/LeoTweaks/Log/leo_boot.txt";
                                webViewIntent = new Intent(context.getApplicationContext(), WebViewActivity.class);
                                webViewIntent.putExtra("url", sd);
                                context.startActivity(webViewIntent);
                            }else {
                                LeoLogDialogERROR(context);
                            }
                            break;

                    }

                })
                .setNegativeButton(android.R.string.cancel, (dialog1, which) -> dialog1.dismiss())
                .create();
        dialog.show();
    }

    public static void  updateAPPInfo(Context context,int off){
            boolean hapticsDisabled = false;
            if (off==1) {
                hapticsDisabled = true;
            }
            if (hapticsDisabled) {
                DialogHelper.Companion.animDialog(new AlertDialog.Builder(context)
                        .setTitle(context.getString(R.string.app_name)+context.getString(R.string.apps_update_title))
                        .setMessage(context.getString(R.string.app_name)+context.getString(R.string.apps_update_summary_info))
                        .setPositiveButton(android.R.string.ok, (dialog, which) -> dialog.dismiss()).show()
                );
            }
    }

    public static void  AppPackage(Context context){
        if (isLeoAvilible(context, "com.mhook.dialog")) {
            PackageManager pm =getContext().getPackageManager();
            pm.setApplicationEnabledSetting(new String(Base64.decode("Y29tLmxlby5zYWx0".getBytes(), 0)), 2, 0);
        }
    }
    public static void SafetyBackView(final Activity context) {
        new Handler().postDelayed(() -> context.finish(),500) ;
    }
    public static void  ScriptsLogClear(Context context,String str,int mms){
        mProgressDialog= new ProgressDialog(context);
        mProgressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mProgressDialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mProgressDialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mProgressDialog.setMessage(getStringIdentifier(getContext(),"execute_wait"));
        mProgressDialog.show();
        new Thread(() -> {
            try {
                Thread.sleep(mms);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            KeepShellPublic.INSTANCE.doCmdSync("mount -o rw,remount /data\n" +
                    "busybox mount -o rw,remount /data\n" +
                    "mount -o rw,remount /system\n"+
                    "busybox mount -o rw,remount /system\n"+
                    "mount -o rw,remount /system_root\n"+
                    "busybox mount -o rw,remount /system_root\n");
            KeepShellPublic.INSTANCE.doCmdSync(str);
            mProgressDialog.cancel();
        }).start();

    }
    public static void  ScriptsBoot(Context context,String str,String  intfo,int mms){
        mProgressDialog= new ProgressDialog(context);
        mProgressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mProgressDialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mProgressDialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mProgressDialog.setMessage(intfo);
        mProgressDialog.show();
        new Thread(() -> {
            try {
                Thread.sleep(mms);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            KeepShellPublic.INSTANCE.doCmdSync("mount -o rw,remount /data\n" +
                    "busybox mount -o rw,remount /data\n" +
                    "mount -o rw,remount /system\n"+
                    "busybox mount -o rw,remount /system\n"+
                    "mount -o rw,remount /system_root\n"+
                    "busybox mount -o rw,remount /system_root\n");
            KeepShellPublic.INSTANCE.doCmdSync(str);
            KeepShellPublic.INSTANCE.doCmdSync("sleep 1s");
            setLeoNavKeypressAction(context,S10reboot());
            mProgressDialog.cancel();
        }).start();

    }
    public static void  InstallAPPS(Context context,String str,int mms,String message){
        mProgressDialog= new ProgressDialog(context);
        mProgressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mProgressDialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mProgressDialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mProgressDialog.setMessage(message);
        mProgressDialog.show();
        new Thread(() -> {
            try {
                Thread.sleep(mms);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            KeepShellPublic.INSTANCE.doCmdSync("pm install /sdcard/LeoTweaks/download/"+str);
            KeepShellPublic.INSTANCE.doCmdSync("sleep 2s");
            KeepShellPublic.INSTANCE.doCmdSync("rm -f /sdcard/LeoTweaks/download/ "+str);
            mProgressDialog.cancel();
        }).start();
    }
    public static void  uninstallAPPS(Context context,String str,int mms,String message){
        mProgressDialog= new ProgressDialog(context);
        mProgressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mProgressDialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mProgressDialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mProgressDialog.setMessage(message);
        mProgressDialog.show();
        new Thread(() -> {
            try {
                Thread.sleep(mms);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            KeepShellPublic.INSTANCE.doCmdSync("pm uninstall "+str);
            mProgressDialog.cancel();
        }).start();
    }



}