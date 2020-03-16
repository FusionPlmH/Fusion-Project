package com.leo.salt.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.CountDownTimer;
import android.os.Environment;
import android.provider.Settings;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.widget.EditText;
import android.widget.Toast;


import com.leo.SweetAlert.SweetAlertDialog;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.FragUIActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.script.KeepShellPublic;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.TimeoutException;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.ActionToastSring;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

public class PrefUtils {

    public static String getCodeVersion(Context context,String str) {
        // 获取packagemanager的实例
        PackageManager packageManager =getContext().getPackageManager();
        PackageInfo packInfo = null;
        try {
            packInfo = packageManager.getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        String version = packInfo.versionName;
        return version;
    }

    public static  String LEO_PREFE ="leo_salt_";
    public static final String FIRST_OPEN = "first_open";
    public static boolean DayNight(Context context){

        return Settings.System.getInt(context.getContentResolver(), "leo_night_theme", 0) == 1;
    }
    public static boolean NetworkCheckDisabled(Context context){

        return Settings.System.getInt(context.getContentResolver(), "leo_network_check", 0) == 1;
    }
    public static void showExitAppDialog(Context context){

        Intent setIntent = new Intent(Intent.ACTION_MAIN);
        setIntent.addCategory(Intent.CATEGORY_HOME);
        setIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        context.startActivity(setIntent);
    }
    static Drawable ddd;
    public static Drawable getLeoWallpaper(Context cxt,String str){
        if (str != null) {
            File backgroundwallpaper = new File(Uri.parse(str).getPath());
            if (backgroundwallpaper != null) {
                ddd = new BitmapDrawable(cxt.getResources(), BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath()));
            }
        }

        return ddd;
    }
    public static final String SHARED_PREFS_FOLDER_PATH = LeoAmberApplication.getContext().getFilesDir().getParent() + File.separator + "shared_prefs";
    public static final String SERVICE_INTENT_ACTION_BACKUP = "salt.pref.action.BACKUP";
    public static final String SERVICE_INTENT_ACTION_RESTORE = "salt.pref.action.RESTORE";
    public static final String BACKUP_FILE_PATH_EXTRA_KEY = "file_path";
    public static final String BACKUP_FOLDER_PATH = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "LeoTweaks" + File.separator + "backups"+File.separator + "prefs";
    public static final String DIALOG_RESTORE_IS_CONFIRM_REQUIRED = "is_confirm";
    public static final int BACKUP_OR_RESTORE_DIALOG_REQUEST_CODE = 26;
    public static final int RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE = 65;
    public static boolean DrawerBlur(Context context){

        return Settings.System.getInt(context.getContentResolver(), "leo_salt_blur_shadow", 0) == 1;
    }
    public static boolean ota(Context context){

        return Settings.System.getInt(context.getContentResolver(), "leo_salt_checkupdates_rom", 0) == 1;
    }
    public static boolean DrawerCarrier(Context context){

        return Settings.System.getInt(context.getContentResolver(), "leo_salt_drawer_carrier", 0) == 1;
    }

    public static String DrawerCarrierString(Context context){

        return Settings.System.getString(context.getContentResolver(), "leo_salt_drawer_carrier_string");
    }
    public static String DrawerCardView(Context context){

        return Settings.System.getString(context.getContentResolver(), "leo_salt_drawer_card_wallpaper_url");
    }

    public static boolean DrawerCard(Context context){

        return Settings.System.getInt(context.getContentResolver(), "leo_salt_drawer_card",0)==1;
    }
    public static Uri getLeoUri(String key) {
        return Settings.System.getUriFor( key);
    }
    public static String getLeoCustomString (String str2)
    {
        String str ="";
        if (!TextUtils.isEmpty(str2)) {
            str=(str2);
        } else {
            str=(TextUtils.isEmpty(str)? "Leo ROM" : str);
        }
        return str;
    }
    public static String CHARGE_SPF = "charge"; //spf
    public static int getBlendColorForPercent(int fullColor, int emptyColor, boolean reversed,
                                              int percentage) {
        float[] newColor = new float[3];
        float[] empty = new float[3];
        float[] full = new float[3];
        Color.colorToHSV(fullColor, full);
        int fullAlpha = Color.alpha(fullColor);
        Color.colorToHSV(emptyColor, empty);
        int emptyAlpha = Color.alpha(emptyColor);
        float blendFactor = percentage/100f;
        if (reversed) {
            if (empty[0] < full[0]) {
                empty[0] += 360f;
            }
            newColor[0] = empty[0] - (empty[0]-full[0])*blendFactor;
        } else {
            if (empty[0] > full[0]) {
                full[0] += 360f;
            }
            newColor[0] = empty[0] + (full[0]-empty[0])*blendFactor;
        }
        if (newColor[0] > 360f) {
            newColor[0] -= 360f;
        } else if (newColor[0] < 0) {
            newColor[0] += 360f;
        }
        newColor[1] = empty[1] + ((full[1]-empty[1])*blendFactor);
        newColor[2] = empty[2] + ((full[2]-empty[2])*blendFactor);
        int newAlpha = (int) (emptyAlpha + ((fullAlpha-emptyAlpha)*blendFactor));
        return Color.HSVToColor(newAlpha, newColor);
    }
    public static boolean isRooted() {
        // nexus 5x "/su/bin/"
        String[] paths = {"/system/xbin/", "/system/bin/", "/system/sbin/", "/sbin/", "/vendor/bin/", "/su/bin/"};
        try {
            for (int i = 0; i < paths.length; i++) {
                String path = paths[i] + "su";
                if (new File(path).exists()) {
                    String execResult = exec(new String[]{"ls", "-l", path});
                    Log.d("cyb", "isRooted=" + execResult);
                    if (TextUtils.isEmpty(execResult) || execResult.indexOf("root") == execResult.lastIndexOf("root")) {
                        return false;
                    }
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    private static String exec(String[] exec) {
        String ret = "";
        ProcessBuilder processBuilder = new ProcessBuilder(exec);
        try {
            Process process = processBuilder.start();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                ret += line;
            }
            process.getInputStream().close();
            process.destroy();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ret;
    }

    public static String GLOBAL_SPF_NIGHT_MODE = "app_night_mode";
    public static String GLOBAL_SPF_DISABLE_ENFORCE = "enforce_0";
    public static String GLOBAL_SPF = "global"; //spf
    public static String APP_HIDE_HISTORY_SPF = "app_hide_spf";



    public static void showKillPackageDialog(final String packageName, final  Context context,String NAME) {
        try {
            ApplicationInfo applicationInfo = getContext().getPackageManager().getApplicationInfo(packageName, 0);
            String appLabel = applicationInfo.loadLabel(getContext().getPackageManager()).toString();
            Drawable appIcon = applicationInfo.loadIcon(getContext().getPackageManager());

            new SweetAlertDialog(context, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
                    .setCustomImage(appIcon)
                    .setTitleText(getStringIdentifier(context,"reboot_dialog_title")+" "+appLabel)
                    .setContentText(String.format(Locale.getDefault(),"［"+NAME+"］"+getStringIdentifier(context,"reboot_dialog_message")+"［"+appLabel+"］"+getStringIdentifier(context,"reboot_dialog_title")+","+getStringIdentifier(context,"reboot_dialog_info"), appLabel))
                    .setConfirmText(context.getString(android.R.string.ok))
                    .setCancelText(getApksStringInt(android.R.string.cancel))
                    .showCancelButton(true)
                    .setShieldBckKyes(false)
                    .setCancelClickListener(sweetAlertDialog -> {
                        sweetAlertDialog.dismissWithAnimation();

                    })
                    .setConfirmClickListener(sDialog -> {
                        killPackage(packageName,context);
                        sDialog.dismissWithAnimation();
                    })
                    .show();
        } catch (PackageManager.NameNotFoundException e) {
            Toast.makeText(getContext(),getStringIdentifier(context,"activity_no"), Toast.LENGTH_SHORT).show();
        }
    }

    public static void killPackage(String packageNameToKill, Context a) {

        showrestartDialog(a,packageNameToKill);

    }

    public static void restartSystemUI(Context context,String packageNameToKill) {
        new RestartSystemUITask(context,packageNameToKill).execute(context);
    }
    public static void showrestartDialog(  Context a,String packageNameToKill) {
        RestartSystemUITask task = new RestartSystemUITask(a,packageNameToKill) {
            private ProgressDialog dialog;
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                dialog = new ProgressDialog(a);
                dialog.setMessage(getStringIdentifier(a,"execute_wait"));
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
        task.execute(a);
    }


    private static class RestartSystemUITask extends AsyncTask<Context, Void, Void> {
        private Context mContext;
        private String mString;
        public RestartSystemUITask(Context context,String str) {
            super();
            mContext = context;
            mString=str;
        }
        @Override
        protected Void doInBackground(Context... params) {
            try {
                Intent intent = new Intent();
                intent.setAction("com.leo.global.action");
                intent.putExtra("leo_action", 2001);
                intent.putExtra("leo_processName", mString);
                mContext.sendBroadcast(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }

    public static void copyAssetFolder() {


        try {
            String[] scriptsInAssets = getContext().getAssets().list(SCRIPTS_FOLDER);
            Log.d("", "copyAssetFolder " + scriptsInAssets[0]);
            File scriptsFilesDir = new File(FILES_SCRIPTS_FOLDER_PATH);
            //Checking if the "scripts" directory exists in files
            if (!scriptsFilesDir.exists()) {
                new File(FILES_SCRIPTS_FOLDER_PATH).mkdirs();
            }
            for (String file : scriptsInAssets) {
                //If the file name contains  a dot, it's most probably a single file and not dir. So treating it as copying file
                Log.d("", "copyAssetFolder " + file);
                if (file.contains(".")) {
                    copyAsset(scriptsInAssets, SCRIPTS_FOLDER + File.separator + file, FILES_SCRIPTS_FOLDER_PATH + File.separator + file);
                } else {
                    //Otherwise treating as copying dir
                    copyAssetFolder();
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    private static void copyFile(InputStream in, OutputStream out) throws IOException {
        byte[] buffer = new byte[1024];
        int read;
        while ((read = in.read(buffer)) != -1) {
            out.write(buffer, 0, read);
        }
    }

    private static void copyAsset(String[] scriptsInAssets, String from, String to) {
        boolean isCopied = false;
        InputStream in;
        OutputStream out;
        ArrayList<File> scriptsFiles = new ArrayList<>();
        //Creating list of File objects inside assets
        for (String scriptsInAsset : scriptsInAssets) {
            File f = new File(FILES_SCRIPTS_FOLDER_PATH + File.separator + scriptsInAsset);
            scriptsFiles.add(f);
        }
        for (int j = 0; j < scriptsFiles.size(); j++) {
            //If the file doesn't exist in files dir, we copy it
            if (!scriptsFiles.get(j).exists()) {
                try {
                    in = getContext().getAssets().open(from);
                    new File(to).createNewFile();
                    out = new FileOutputStream(to);
                    copyFile(in, out);
                    in.close();
                    out.flush();
                    out.close();
                    isCopied = true;
                } catch (Exception e) {
                    e.printStackTrace();
                    isCopied = false;
                }
            }
        }
        //If the file was just copied, we make it executable
        if (isCopied) {
            KeepShellPublic.INSTANCE.doCmdSync( "chmod -R 755 " +FILES_SCRIPTS_FOLDER_PATH);

        }

    }

    static final String SCRIPTS_FOLDER = "scripts";
    public static final String FILES_SCRIPTS_FOLDER_PATH = getContext().getFilesDir().getPath() + File.separator + SCRIPTS_FOLDER;

   static ProgressDialog   mProgressDialog;
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
            KeepShellPublic.INSTANCE.doCmdSync(str);
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
    public static void PowerMenuService(Context context,String str){
        Intent intent = new Intent();
        intent.setAction( str);
        context. startActivity(intent);  //或者bindService(intent, mConnection, Context.BIND_AUTO_CREATE);
    }

    public static void SubMenuService(Context context ,FragSubActivity.FragmentType str){
        Intent      intent =  new Intent(context,FragSubActivity.class);
        intent.putExtra(FragSubActivity.KEY_TYPE, str);
        context.startActivity(intent);
    }
    public static void UIMenuService(Context context ,FragUIActivity.FragmentType str){
        Intent      intent =  new Intent(context,FragUIActivity.class);
        intent.putExtra(FragUIActivity.KEY_TYPE, str);
        context.startActivity(intent);
    }
    public static void SettingMenuService(Context context ,FragSettingActivity.FragmentType  str){
        Intent      intent =  new Intent(context,FragSettingActivity.class);
        intent.putExtra(FragSettingActivity.KEY_TYPE, str);
        context.startActivity(intent);
    }


}
