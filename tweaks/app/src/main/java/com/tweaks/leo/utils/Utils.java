package com.tweaks.leo.utils;

import android.annotation.SuppressLint;
import android.app.AlertDialog;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.preference.Preference;

import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;





import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Locale;

import com.tweaks.leo.R;
import com.tweaks.leo.utils.root.Helpers;
import com.tweaks.leo.utils.root.Verify;


import static com.tweaks.leo.LeoApp.getContext;



@SuppressWarnings({"ResultOfMethodCallIgnored", "unused"})
public class Utils {

    public static String executeCommandWithOutput(boolean root, String command) {
        DataOutputStream dos;
        InputStream is;
        try {
            Process process;
            process = root ? Runtime.getRuntime().exec("su") : Runtime.getRuntime().exec("sh");
            if (process == null) return "";
            dos = new DataOutputStream(process.getOutputStream());
            dos.write(command.getBytes("UTF-8"));
            dos.writeBytes("\nexit \n");
            dos.flush();
            dos.close();
            if (process.waitFor() == 0) {
                is = process.getInputStream();
                StringBuilder builder = new StringBuilder();
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                String line;
                while ((line = br.readLine()) != null)
                    builder.append(line.trim()).append("\n");
                return builder.toString().trim();
            } else {
                is = process.getErrorStream();
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                String line;
                while ((line = br.readLine()) != null) Log.d("error", line);
            }

        } catch (IOException | InterruptedException | IllegalArgumentException e) {
            e.printStackTrace();
        }
        return "";
    }
    private static final String LOG_TAG = "Utils";

    public static Bitmap rsBlur(Context context,Bitmap source, int radius, float scale){

        int width = Math.round(source.getWidth() * scale);
        int height = Math.round(source.getHeight() * scale);

        Bitmap inputBmp = Bitmap.createScaledBitmap(source,width,height,false);

        RenderScript renderScript =  RenderScript.create(context);



        // Allocate memory for Renderscript to work with

        final Allocation input = Allocation.createFromBitmap(renderScript,inputBmp);
        final Allocation output = Allocation.createTyped(renderScript,input.getType());

        // Load up an instance of the specific script that we want to use.
        ScriptIntrinsicBlur scriptIntrinsicBlur = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
        scriptIntrinsicBlur.setInput(input);

        // Set the blur radius
        scriptIntrinsicBlur.setRadius(radius);

        // Start the ScriptIntrinisicBlur
        scriptIntrinsicBlur.forEach(output);

        // Copy the output to the blurred bitmap
        output.copyTo(inputBmp);


        renderScript.destroy();

        return inputBmp;
    }
    public static Drawable getIconDrawable(Uri uri) {
        Drawable drawable = null;
        if (uri != null) {
            try {
                InputStream inputStream = getContext().getContentResolver().openInputStream(uri);
                Bitmap bitmap = BitmapFactory.decodeStream(inputStream);
                Bitmap scaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() / 5, bitmap.getHeight() / 5, false);
                drawable = new BitmapDrawable(getContext().getResources(), scaledBitmap);
                bitmap.recycle();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        return drawable;
    }



    public static boolean isSupportChinaLanguage(boolean excludeLanguage) {
        Locale locale = Resources.getSystem().getConfiguration().locale;
        if (excludeLanguage) {
            return locale.getLanguage().startsWith(Locale.CHINESE.getLanguage())
                    ;
        } else {
            return locale.getLanguage().startsWith(Locale.CHINESE.getLanguage());
        }
    }
    public static boolean isSupportKoreaLanguage(boolean excludeLanguage) {
        Locale locale = Resources.getSystem().getConfiguration().locale;
        if (excludeLanguage) {
            return locale.getLanguage().startsWith(Locale.ENGLISH.getLanguage())
                    ;
        } else {
            return locale.getLanguage().startsWith(Locale.ENGLISH.getLanguage());
        }

    }

    public static void showKillPackageDialog(final String packageName, Context context) {
        try {
            ApplicationInfo applicationInfo = getContext().getPackageManager().getApplicationInfo(packageName, 0);
            String appLabel = applicationInfo.loadLabel(getContext().getPackageManager()).toString();
            Drawable appIcon = applicationInfo.loadIcon(getContext().getPackageManager());
            new AlertDialog.Builder(context)
                    .setTitle("重新启动")
                    .setMessage(String.format(Locale.getDefault(), getContext().getString(R.string.app_reboot_required_dialog_message), appLabel))
                    .setIcon(appIcon)
                    .setNegativeButton(android.R.string.cancel, null)
                    .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            killPackage(packageName);
                        }
                    })
                    .create().show();
        } catch (PackageManager.NameNotFoundException e) {
            Toast.makeText(getContext(),R.string.no_activity, Toast.LENGTH_SHORT).show();
        }

    }




    public static void sLeokillPackage(final String packageNameToKill ) {
        final ProgressDialog mydialog = new ProgressDialog(getContext());
        mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
        mydialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);// / 设置进度条的形式为圆形转动的进度条
        mydialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mydialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mydialog.setMessage(getContext().getResources().getString(R.string.progress_dialog_tite));
        mydialog.show();
        new Thread(new Runnable() {

            @Override
            public void run() {
                while(true)
                {
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                    }

                    Helpers.Companion.KillPackage( "pkill -f " + packageNameToKill);
                    mydialog.cancel();
                }
            }
        }).start();

    }

    public static void killPackage(String packageNameToKill) {
     //      RootUtils.runCommand("pkill -f " + packageNameToKill);
        Helpers.Companion.KillPackage("pkill -f " + packageNameToKill);
    }


    public static void VipDATA(Context context) {
        Verify.get(context);
    }


    public static void showRebootRequiredDialog(final Context context) {
        new AlertDialog.Builder(context)
                .setTitle(R.string.reboot_required_dialog_title)
                .setMessage(R.string.reboot_required_dialog_message)
                .setNegativeButton(R.string.straight_reboot, null)
                .setPositiveButton(R.string.straight_reboot, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Helpers.Companion.LeoRestartMeun(context,1);
                    }
                })
                .create()
                .show();
    }


    public static boolean isPackageInstalled(String packageName) {
        try {
           getContext().getPackageManager().getPackageInfo(packageName, PackageManager.GET_META_DATA);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }



    public static boolean hasSu() {
        Process p = null;
        try {
            p = Runtime.getRuntime().exec(new String[] { "which", "su" });
            BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
            return br.readLine() != null;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (p != null) p.destroy();
        }
        return false;
    }



    @SuppressLint("NewApi")
    public static void requireRoot(Preference preference) {
        if (!hasSu()) {
            preference.getParent().removePreference(preference);
        }
    }
    public interface ab {
        void a(int i, int i2);
    }
    public static final int[] mTouchListView = new int[]{2130771984, 2130771985, 2130771986, 2130771987, 2130771988};

}
