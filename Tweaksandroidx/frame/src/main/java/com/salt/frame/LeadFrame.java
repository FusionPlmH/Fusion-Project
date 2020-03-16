package com.salt.frame;

import java.util.Locale;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.widget.Toast;

import static com.salt.frame.utils.SaltUtils.rt100foleo;
@SuppressLint("WrongConstant")
public class LeadFrame {
    public static final String TAG="by Salt";

    public static  Drawable getCustomArrayDrawable(Context context,String Package,String rec) {
        Drawable d;
        try {
            Context otherAppContext =context.createPackageContext(Package, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",Package));
            return d.getCurrent();
        } catch (Exception e) {
            d = context.getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }

    public static String[] getCustomArray(Context context,String rec) {
        String[] str;
        Context otherAppContext = null;
        try {
            otherAppContext =context.createPackageContext(LEOFRAMEWORK, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), "array",LEOFRAMEWORK));


        return str;
    }
    public static String getVersionName(Context context)  {
        // 获取packagemanager的实例
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packInfo = null;
        try {
            packInfo = packageManager.getPackageInfo(LEOFRAMEWORK, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        String version = packInfo.versionName;
        return version;
    }
    public static String getVersion(Context context)//获取版本号
    {
        try {
            PackageInfo pi=context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return pi.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
    }
    public static synchronized int getVersionCode(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(
                    context.getPackageName(), 0);
            return packageInfo.versionCode;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public static Drawable getCustomDrawable(Context context, String rec) {
        Drawable d;
        try {
             Context otherAppContext =context.createPackageContext(LEOFRAMEWORK, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",LEOFRAMEWORK));
            return d.getCurrent();
        } catch (Exception e) {
            d = context.getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }
    public static  Drawable geSaltArrayDrawable(Context context,String Package,String rec) {
        Drawable d;
        try {
            Context otherAppContext =context.createPackageContext(Package, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",Package));
            return d.getCurrent();
        } catch (Exception e) {
            d = context.getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }
    static Drawable appIcon;
    static String appLabel;
    public static Drawable SaltappICON(Context context,String string){


        try {

            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(string, 0);
            appIcon = applicationInfo.loadIcon(context.getPackageManager());
            appLabel= applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (PackageManager.NameNotFoundException e) {
            Toast.makeText(context,String.format(Locale.getDefault(),"［"+appLabel+"］"+getStringIdentifier(context,"activity_no")), Toast.LENGTH_SHORT).show();
        }
        return appIcon;
    }

    public static String[] getSaltArray(Context context,String rec) {
        String[] str;
        Context otherAppContext = null;
        try {
            otherAppContext =context.createPackageContext(LEOFRAMEWORK, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), "array",LEOFRAMEWORK));


        return str;
    }
    public static String[] getStringLeoArray(Context context ,String rec) {
        String[] str;
        String STR=LEOFRAMEWORK;
        Context otherAppContext = null;
        try {
            otherAppContext =context.createPackageContext(STR, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), rt100foleo("YXJyYXk="),STR));
        return str;
    }
    public static Resources getResourcesForPackage(Context ctx, String pkg) {
        try {
            Resources res = ctx.getPackageManager()
                    .getResourcesForApplication(pkg);
            return res;
        } catch (Exception e) {
            return ctx.getResources();
        }
    }
    public static String  getStringIdentifier(Context context , String RECnME){
        String pkgName=null;
        String toastMsg;
        int ident;
        try {
            Resources packRes = getResourcesForPackage(context, LEOFRAMEWORK);
            ident = packRes.getIdentifier(RECnME,"string", LEOFRAMEWORK);
            toastMsg = packRes.getString(ident, pkgName);
        } catch (Exception e) {
            e.printStackTrace();
            toastMsg="";
        }

        return toastMsg;
    }
    public static int getIdentifier(Context context, String resName, String resType, String pkg) {
        try {
            Resources res = context.getPackageManager()
                    .getResourcesForApplication(pkg);
            int ident = res.getIdentifier(resName, resType, pkg);
            return ident;
        } catch (Exception e) {
            return -1;
        }
    }
    public static  String LEOFRAMEWORK= "com.leo.framework";
    public static boolean isChineseLanguage() {
        return Resources.getSystem().getConfiguration().locale.getLanguage().startsWith(
                Locale.CHINESE.getLanguage());
    }

    public static void ActionToastSring(Context context,String REC){
        String string=getStringIdentifier(context,REC);
        Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
        Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                .show();
    }
    public static  String PACKAGE_SYSTEMUI = "com.android.systemui";
    public   static Context getPackageContext(Context context, String packageName) {
        Context pkgContext = null;
        if (context.getPackageName().equals(packageName)) {
            pkgContext = context;
        } else {
            try {
                pkgContext = context.createPackageContext(packageName,
                        Context.CONTEXT_IGNORE_SECURITY
                                | Context.CONTEXT_INCLUDE_CODE);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return pkgContext;
    }



}
