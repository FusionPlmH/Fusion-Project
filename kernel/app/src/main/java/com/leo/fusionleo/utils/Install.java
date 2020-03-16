package com.leo.fusionleo.utils;


import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;

import com.leo.fusionleo.kernel.R;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;

public class Install{

    public Context mContext;

    public void sudoBzImageInstall(Context context){
        mContext= context;
        showFusionLeoOTADialog();
    }
    public  void showFusionLeoOTADialog() {
        FusionLeoOTAInstalTask task = new FusionLeoOTAInstalTask() {
            private ProgressDialog dialog;
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                dialog = new ProgressDialog(mContext);
                dialog.setMessage(mContext.getString(R.string.install_kernel));
                dialog.setCancelable(false);
                dialog.setIndeterminate(true);
                dialog.show();
            }
            @Override
            protected Void doInBackground(Context... params) {
                // Give the user a second to see the dialog
                try {
                    Thread.sleep(1500);
                } catch (InterruptedException e) {
                    // Ignore
                }
                super.doInBackground(params);
                return null;
            }
            @Override
            protected void onPostExecute(Void param) {
                super.onPostExecute(param);
                dialog.dismiss();
            }
        };
        task.execute(mContext);
    }

    public static String CacheWrites="cp  /sdcard/LeoTweaks/FusionLeo/boot.zip /cache/recovery/update.zip";
    public static String PerformCache="cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command";
    private  class FusionLeoOTAInstalTask extends AsyncTask<Context, Void, Void> {
        public FusionLeoOTAInstalTask() {
            super();

        }
        @Override
        protected Void doInBackground(Context... params) {
            try {
                SuShell.runWithSuCheck("mount -o rw,remount /data");
                SuShell.runWithSuCheck( "mount -o rw,remount /system");
                SuShell.runWithSuCheck( "mkdir /cache/recovery");
                SuShell.runWithSuCheck(CacheWrites);
                SuShell.runWithSuCheck(PerformCache);
                SuShell.runWithSuCheck("sleep 5");
                SuShell.runWithSuCheck("reboot recovery");
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }

  public static String getLeoProperty(String str) {
        String str3 ="";
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{str,""});
        } catch (Exception e) {
            e.printStackTrace();
            return str3;
        } catch (Throwable th) {
            return str3;
        }
    }


}