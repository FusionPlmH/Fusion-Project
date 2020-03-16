package com.leo.service.plug;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;

import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;

import java.util.Locale;

import static com.leo.service.plug.LeoApp.getContext;

public class Resource {
  private static final String UNKNOWN = "unknown";
    public static String getProperty(String str) {
        String str3 =UNKNOWN;
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{str, UNKNOWN});
        } catch (Exception e) {
            e.printStackTrace();
            return str3;
        } catch (Throwable th) {
            return str3;
        }
    }

    public static String getLeoBuild(String srt) {
        return  getProperty(srt);
    }

    public static String getLeoSafetyID() {
        return  getProperty("ril.serialnumber");
    }


    public static String safety="JXU1MDI5JXVGRjBDJXU0RjU5JXU3NTFGJXU4MEZEJXU1NDI2JXU4QkE5JXU2MjExJXU3MTY3JXU5ODdFJXU0RjYwJXU5NjZBJXU0RjYwJXU0RTAwJXU4RDc3JXU4RDcwJXU0RTBCJXU1M0JCJXVGRjFG";
    public  static  String getDevice() {
        return getProperty("ro.boot.em.model");
    }
    public static String getBasicsSystemVersion() {
        return  getProperty("ro.build.PDA");
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
        int ident;
        Resources packRes = getResourcesForPackage(context, LEOFRAMEWORK);
        ident = packRes.getIdentifier(RECnME,"string", LEOFRAMEWORK);
        String toastMsg = packRes.getString(ident, pkgName);
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
    static Context getPackageContext(Context context, String packageName) {
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



    public static boolean isChineseMainlandLanguage() {
        String language = getLanguageEnv();
        if (language != null
                && (language.trim().equals("zh-CN")))
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

    public static String getLeoSafety() {
        return  getProperty("ro.build.leo");
    }

    public static void openUrl(String url,Context context) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        context.startActivity(intent);
    }

    public static  Drawable getCustomArrayDrawable(String Package,String rec) {
        Drawable d;
        try {
            Context otherAppContext =getContext().createPackageContext(Package, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",Package));
            return d.getCurrent();
        } catch (Exception e) {
            d = getContext().getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }

    public static String[] getCustomArray(String rec) {
        String[] str;
        Context otherAppContext = null;
        try {
            otherAppContext =getContext().createPackageContext(LEOFRAMEWORK, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), "array",LEOFRAMEWORK));


        return str;
    }


}
