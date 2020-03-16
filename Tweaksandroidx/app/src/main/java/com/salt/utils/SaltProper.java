package com.salt.utils;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.net.Uri;

import android.os.Build;
import android.util.Log;

import androidx.appcompat.app.AlertDialog;

import com.salt.config.R;
import com.salt.config.SaltApp;
import com.salt.script.DialogHelper;
import com.samsung.android.feature.SemFloatingFeature;

import java.io.File;
import java.lang.reflect.Method;
import java.util.List;

import dalvik.system.DexFile;

import static com.salt.frame.LeadFrame.SaltappICON;
import static com.salt.frame.LeadFrame.geSaltArrayDrawable;
import static com.salt.frame.LeadFrame.getSaltArray;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.config.SaltApp.getContext;


public class SaltProper {
    public static  boolean BuildVERSIONCODES(){
        return android.os.Build.VERSION.SDK_INT ==  Build.VERSION_CODES.Q;
    }
  public static boolean disableSnackn=BuildSecuritycheck()?false:true;
     public static boolean BuildSecuritycheck(){

         return SystemUrl.LeoDonateUnlock();
    }

    public static boolean deviceSupportsFlashLight(Context context) {
        CameraManager cameraManager = (CameraManager) context.getSystemService(
                Context.CAMERA_SERVICE);
        try {
            String[] ids = cameraManager.getCameraIdList();
            for (String id : ids) {
                CameraCharacteristics c = cameraManager.getCameraCharacteristics(id);
                Boolean flashAvailable = c.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
                Integer lensFacing = c.get(CameraCharacteristics.LENS_FACING);
                if (flashAvailable != null
                        && flashAvailable
                        && lensFacing != null
                        && lensFacing == CameraCharacteristics.LENS_FACING_BACK) {
                    return true;
                }
            }
        } catch (CameraAccessException | AssertionError e) {
            // Ignore
        }
        return false;
    }
    public static String toUpperCaseFirstOne(String s){
        if(Character.isUpperCase(s.charAt(0)))
            return s;
        else
            return (new StringBuilder()).append(Character.toUpperCase(s.charAt(0))).append(s.substring(1)).toString();
    }
    public static boolean Securitycheck;
    public static String getApksStringInt(int style){
        return SaltApp.getContext().getString(style);
    }
    public static String getApksStringInt(String string){
        return getStringIdentifier(SaltApp.getContext(), string);
    }

    public static int getColorInt(int style){
        return SaltApp.getContext().getColor(style);
    }

    public static final int SEM_PLATFORM_INT = SystemProperties.getLeoSystemInt("ro.build.version.sep", 0);
    public static final boolean isSemAvailable(Context context) {
        return context != null && context.getPackageManager().hasSystemFeature("com.samsung.feature.samsung_experience_mobile");
    }
    public static String getLeoBuild(String srt) {
        return SystemProperties.getLeoSystemPropString(srt);
    }
    public static String getOneUIVersion(Context context) {
        String str = "1.0";
        if (!isSemAvailable(context)) {
            return str;
        }
        int i = SEM_PLATFORM_INT- 90000;
        int i2 = i / 10000;
        int i3 = (i % 10000) / 100;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(String.valueOf(i2));
        stringBuilder.append(".");
        stringBuilder.append(String.valueOf(i3));
        return stringBuilder.toString();
    }
    public static boolean fileIsExists(String strFile) {
        try {
            File f = new File(strFile);
            if (!f.exists()) {
                return false;
            }
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    public static class SystemUrl {
        public  static  String RootSystemABUrl="/system_root/system/";
        public  static  String SystemUrl="/system/";
        public static String Phonebootloader(int stle){
            String sb =SystemProperties.getLeoSystemPropString("ro.boot.bootloader");
            String str = sb.substring(0, stle);
            return str;
        }
        public static boolean LeoDonateUnlock(){
            boolean Unlock=false;
            if(LeoDonate()){
                Unlock=SystemProperties.getLeoSystemPropString("ro.leo.ota.mdec").equals("MHgyNTgwMjU4TDkyNDg2MTgzNTZlMjQ3MDkxNDc4bzk2Mw==");
            }
            return Unlock;
        }
        public static boolean LeoDonate(){

            return SystemProperties.getLeoSystemPropString("ro.leo.os.vip.donate").equals("true");
        }

        public static String FloatingFature(String stle){
            return SemFloatingFeature.getInstance().getString(stle);
        }

        public static String SystemABUrl(){
            String SystemABUrl;
            if (Phonebootloader(3).equals("G97")) {
                SystemABUrl=RootSystemABUrl;
            } else{
                SystemABUrl=SystemUrl;
            }
            return SystemABUrl;
        }

        public static boolean ChineseCSC(){
            return SystemProperties.getLeoSystemPropString("ro.csc.sales_code").equals("CHC");
        }
    }
    public static String [] getCustomArray(String arry){
        return getSaltArray(getContext(),arry);
    }
    public static Drawable getCustomArrayDrawable(String arry,String arry2){

        return  geSaltArrayDrawable(getContext(),arry,arry2);
    }
    public static Drawable appICON(String arry){

        return SaltappICON(getContext(),arry);
    }
    public static class SystemProperties {
        static Context mContext=getContext();
        private static  String SystemProper ="android.os.SystemProperties";
        public static final String TAG = "SystemProperties";

        /**
         * 根据给定的Key返回String类型的值
         *
         * @param key     获取指定信息所需的key
         * @return 返回一个String类型的值，如果不存在该key则返回空字符串
         */
        public static String getLeoSystemPropString(String key) {
            String result = "";
            try {
                ClassLoader classLoader = mContext.getClassLoader();
                @SuppressWarnings("rawtypes")
                Class SystemProperties = classLoader.loadClass(SystemProper);
                //参数类型
                @SuppressWarnings("rawtypes")
                Class[] paramTypes = new Class[1];
                paramTypes[0] = String.class;
                Method getString = SystemProperties.getMethod("get", paramTypes);
                //参数
                Object[] params = new Object[1];
                params[0] = (key);

                result = (String) getString.invoke(SystemProperties, params);
            } catch (IllegalArgumentException e) {
                //e.printStackTrace();
                //如果key超过32个字符则抛出该异常
                Log.w(TAG, "key超过32个字符");
            } catch (Exception e) {
                result = "";
            }
            return result;
        }

        /**
         * 根据给定的Key返回String类型的值
         *

         * @param key     获取指定信息所需的key
         * @param def     key不存在时的默认值
         * @return 返回一个String类型的值，如果key不存在, 并且如果def不为null则返回def,否则返回空字符串
         */
        public static String getString(String key, String def) {
            String result = def;
            try {
                ClassLoader classLoader = mContext.getClassLoader();
                @SuppressWarnings("rawtypes")
                Class SystemProperties = classLoader.loadClass(SystemProper);
                //参数类型
                @SuppressWarnings("rawtypes")
                Class[] paramTypes = new Class[2];
                paramTypes[0] = String.class;
                paramTypes[1] = String.class;
                Method getString = SystemProperties.getMethod("get", paramTypes);
                //参数
                Object[] params = new Object[2];
                params[0] = (key);
                params[1] = (def);

                result = (String) getString.invoke(SystemProperties, params);
            } catch (IllegalArgumentException e) {
                //e.printStackTrace();
                //如果key超过32个字符则抛出该异常
                Log.w(TAG, "key超过32个字符");
            } catch (Exception e) {
                result = def;
            }
            return result;
        }

        /**
         * 根据给定的key返回int类型的值
         *

         * @param key     要查询的key
         * @param def     默认返回值
         * @return 返回一个int类型的值，如果没有发现则返回默认值 def
         */
        public static Integer getLeoSystemInt(String key, int def) {
            Integer result = def;
            try {
                ClassLoader classLoader =mContext.getClassLoader();
                @SuppressWarnings("rawtypes")
                Class SystemProperties = classLoader.loadClass(SystemProper);
                //参数类型
                @SuppressWarnings("rawtypes")
                Class[] paramTypes = new Class[2];
                paramTypes[0] = String.class;
                paramTypes[1] = int.class;
                Method getInt = SystemProperties.getMethod("getInt", paramTypes);
                //参数
                Object[] params = new Object[2];
                params[0] = new String(key);
                params[1] = new Integer(def);
                result = (Integer) getInt.invoke(SystemProperties, params);
            } catch (IllegalArgumentException e) {
                //e.printStackTrace();
                //如果key超过32个字符则抛出该异常
                Log.w(TAG, "key超过32个字符");
            } catch (Exception e) {
                result = def;
            }
            return result;
        }

        /**
         * 根据给定的key返回long类型的值
         *
         * @param key     要查询的key
         * @param def     默认返回值
         * @return 返回一个long类型的值，如果没有发现则返回默认值def
         */
        public static Long getLong( String key, long def) {
            Long result = def;
            try {
                ClassLoader classLoader = mContext.getClassLoader();
                @SuppressWarnings("rawtypes")
                Class SystemProperties = classLoader.loadClass(SystemProper);
                //参数类型
                @SuppressWarnings("rawtypes")
                Class[] paramTypes = new Class[2];
                paramTypes[0] = String.class;
                paramTypes[1] = long.class;
                Method getLong = SystemProperties.getMethod("getLong", paramTypes);
                //参数
                Object[] params = new Object[2];
                params[0] = new String(key);
                params[1] = new Long(def);
                result = (Long) getLong.invoke(SystemProperties, params);
            } catch (IllegalArgumentException e) {
                //e.printStackTrace();
                //如果key超过32个字符则抛出该异常
                Log.w(TAG, "key超过32个字符");
            } catch (Exception e) {
                result = def;
            }
            return result;
        }

        /**
         * 根据给定的key返回boolean类型的值
         * 如果值为'n','no','0','false' or 'off'返回false
         * 如果值为'y','yes','1','true' or 'on'返回true
         * 如果key不存在, 或者是其它的值, 则返回默认值
         *

         * @param key     要查询的key
         * @param def     默认返回值
         * @return 返回一个boolean类型的值，如果没有发现则返回默认值def
         */
        public static Boolean getBoolean(String key, boolean def) {
            Boolean result = def;
            try {
                ClassLoader classLoader =mContext.getClassLoader();
                @SuppressWarnings("rawtypes")
                Class SystemProperties = classLoader.loadClass(SystemProper);
                //参数类型
                @SuppressWarnings("rawtypes")
                Class[] paramTypes = new Class[2];
                paramTypes[0] = String.class;
                paramTypes[1] = boolean.class;
                Method getBoolean = SystemProperties.getMethod("getBoolean", paramTypes);
                //参数
                Object[] params = new Object[2];
                params[0] = new String(key);
                params[1] = new Boolean(def);
                result = (Boolean) getBoolean.invoke(SystemProperties, params);
            } catch (IllegalArgumentException e) {
                //e.printStackTrace();
                //如果key超过32个字符则抛出该异常
                Log.w(TAG, "key超过32个字符");
            } catch (Exception e) {
                result = def;
            }
            return result;
        }

        /**
         * 根据给定的key和值设置属性, 该方法需要特定的权限才能操作.
         *
         * @param key     设置属性的key
         * @param val     设置属性的value
         */
        public static void set( String key, String val) {
            try {
                @SuppressWarnings("rawtypes")
                DexFile df = new DexFile(new File("/system/app/Settings.apk"));
                ClassLoader classLoader = mContext.getClassLoader();
                @SuppressWarnings("rawtypes")
                Class SystemProperties = Class.forName(SystemProper);
                //参数类型
                @SuppressWarnings("rawtypes")
                Class[] paramTypes = new Class[2];
                paramTypes[0] = String.class;
                paramTypes[1] = String.class;
                Method set = SystemProperties.getMethod("set", paramTypes);
                //参数
                Object[] params = new Object[2];
                params[0] = new String(key);
                params[1] = new String(val);
                set.invoke(SystemProperties, params);
            } catch (IllegalArgumentException e) {
                //e.printStackTrace();
                //如果key超过32个字符或者value超过92个字符则抛出该异常
                Log.w(TAG, "key超过32个字符或者value超过92个字符");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    public static void startWidgetShortcut(Activity activity, CharSequence charSequence, int i) {
        Intent intent = new Intent();
        intent.setClassName(activity, activity.getClass().getName());
        Intent intent2 = new Intent();
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
        intent2.putExtra("android.intent.extra.shortcut.NAME", charSequence);
        intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(activity, i));
        activity.setResult(-1, intent2);
    }

    public static boolean joinQQGroup(final Context context,String str) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D" + str));
        try {
            context. startActivity(intent);
            return true;
        } catch (Exception e) {
            DialogHelper.Companion.animDialog(new AlertDialog.Builder(context)
                    .setTitle(getApksStringInt(R.string.alert_info_tltie))
                    .setIcon(R.drawable.ic_info_icon)
                    .setMessage(getStringIdentifier(getContext(),"qq_null"))
                    .setNegativeButton(getStringIdentifier(getContext(), "qq_download"), new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            goToMainAppsMarketQQ(context,"com.tencent.mobileqq");
                            dialog.dismiss();
                        }
                    }).show()

            );
            return false;
        }
    }
    public static void goToMainAppsMarketQQ(final Context context,String name) {
        Uri uri = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId=" + name);
        final Intent goToMarket = new Intent();
        goToMarket.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
        goToMarket.setData(uri);
        try {
            context.startActivity(goToMarket);
        } catch (ActivityNotFoundException e) {

            e.printStackTrace();
        }
    }
    //判断程序是否存在
    static boolean isLeoAvilible(Context context, String packageName) {
        final PackageManager packageManager = context.getPackageManager();
        // 获取所有已安装程序的包信息
        List<PackageInfo> pinfo = packageManager.getInstalledPackages(0);
        for ( int i = 0; i < pinfo.size(); i++ )
        {
            if(pinfo.get(i).packageName.equalsIgnoreCase(packageName))
                return true;
        }
        return false;
    }
    public static void shareMsg(Context context, String msgTitle, String msgText) {
        Intent textIntent = new Intent(Intent.ACTION_SEND);
        textIntent.setType("text/plain");
        textIntent.putExtra(Intent.EXTRA_TEXT, msgText);
        context.startActivity(Intent.createChooser(textIntent, msgTitle));

    }

}