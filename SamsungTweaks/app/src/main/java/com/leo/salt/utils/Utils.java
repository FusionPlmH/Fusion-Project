package com.fusionleo.salt.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.preference.Preference;

import android.preference.PreferenceManager;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Adapter;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.Toast;





import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.Map;

import com.fusionleo.salt.R;
import com.fusionleo.salt.activity.SubActivity;
import com.fusionleo.salt.activity.WebViewActivity;
import com.fusionleo.salt.utils.root.Helpers;
import com.fusionleo.salt.utils.root.Verify;


import static android.content.Context.MODE_PRIVATE;
import static com.fusionleo.salt.LeoApp.getContext;



@SuppressWarnings({"ResultOfMethodCallIgnored", "unused"})
public class Utils {
    public static void StartWebActivity(int time, final Activity activity, final String str){
        Handler mHandler= new Handler();
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                Intent webViewIntent = new Intent(activity.getApplicationContext(), WebViewActivity.class);
                webViewIntent.putExtra("url", str);
                activity.startActivity(webViewIntent);
            }
        },  time);
    }
    public static void StartActivity(int time, final Activity activity, final Class<? extends Activity> cls){
        Handler mHandler= new Handler();
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                Intent intent = new Intent(activity, cls);
                activity.startActivity(intent);
            }
        },  time);
    }
    public static void StartFragment(int time, final Activity activity, final Class<? extends Activity> cls){
        Handler mHandler= new Handler();
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {

            }
        },  250);
    }
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


    public static boolean isLunarSetting() {
        String language = getLanguageEnv();
        if (language != null
                && (language.trim().equals("zh-CN") || language.trim().equals("zh-HK") || language.trim().equals("zh-MO")|| language.trim().equals("zh-TW")))
            return true;
        else
            return false;
    }

    static String getLanguageEnv() {
        Locale l = Locale.getDefault();
        String language = l.getLanguage();
        String country = l.getCountry().toLowerCase();
        if ("zh".equals(language)) {
            if ("cn".equals(country)) {
                language = "zh-CN";//中国大陆
            }else if ("hk".equals(country)) {
                language = "zh-HK";//中国香港
            } else if ("mo".equals(country)) {
                language = "zh-MO";//中国澳门
            }else if ("tw".equals(country)) {
                language = "zh-TW";//中国台湾省
            }
        }
        return language;
    }

    public static void showKillPackageDialog(final String packageName, Context context) {
        try {
            ApplicationInfo applicationInfo = getContext().getPackageManager().getApplicationInfo(packageName, 0);
            String appLabel = applicationInfo.loadLabel(getContext().getPackageManager()).toString();
            Drawable appIcon = applicationInfo.loadIcon(getContext().getPackageManager());
            new AlertDialog.Builder(context)
                    .setTitle(R.string.reboot_required_dialog_title)
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
    public static void swapSounds(String str, String str2) {
        if (new File(str + str2).exists()) {
            execute(new String[]{"busybox mount -o rw,remount /system", "busybox mv " + str + str2 + " " + str + "leo_" + str2, "busybox mount -o ro,remount /system"}, 0);
            return;
        }
        execute(new String[]{"busybox mount -o rw,remount /system", "busybox mv " + str + "leo_" + str2 + " " + str + str2, "busybox mount -o ro,remount /system"}, 0);
    }
    public static boolean execute(String[] strArr, int i) {
        if (i != 0) {
            try {
                Thread.sleep((long) i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            Process exec = Runtime.getRuntime().exec("su");
            DataOutputStream dataOutputStream = new DataOutputStream(exec.getOutputStream());
            for (String str : strArr) {
                dataOutputStream.writeBytes(str + "\n");
            }
            dataOutputStream.flush();
            dataOutputStream.close();
            exec.waitFor();
            return true;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        } catch (InterruptedException e3) {
            e3.printStackTrace();
            return false;
        }
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
