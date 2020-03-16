package com.android.settings.leo;


import android.annotation.SuppressLint;
import android.app.StatusBarManager;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Environment;
import android.os.SystemProperties;
import android.os.Vibrator;
import android.provider.AlarmClock;
import android.provider.CalendarContract;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.support.annotation.ColorInt;
import android.support.graphics.drawable.ArgbEvaluator;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import android.util.Base64;
import android.util.Log;
import android.widget.Toast;


import com.android.keyguard.CarrierText;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static android.os.Build.VERSION.SDK_INT;

import static com.fusionleo.LeoProvider.LeoManages.ConfigManager;
import static com.fusionleo.LeoProvider.LeoManages.mLeoGlobalService;

@SuppressLint({"WrongConstant","RestrictedApi"})

public class LeoConfig {
    public static void openUrl(String url,Context context) {
        try {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        context.startActivity(intent);
        } catch (Exception e) {

            Log.i(TAG , "Unable to launch activity " + e);
        }

    }
    @ColorInt
    public static int getColorAttr(Context context, int attr) {
        TypedArray ta = context.obtainStyledAttributes(new int[]{attr});
        @ColorInt int colorAccent = ta.getColor(0, 0);
        ta.recycle();
        return colorAccent;
    }
    public static String TAG = LeoConfig.class.getSimpleName();
    public static Context getPackageContext(Context context ,String packageName) {
        Context pkgContext = null;
        if (context.getPackageName().equals(packageName)) {
            pkgContext =context;
        } else {
            try {
                pkgContext =context.createPackageContext(packageName,
                        Context.CONTEXT_IGNORE_SECURITY
                                | Context.CONTEXT_INCLUDE_CODE);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return pkgContext;
    }
    static Drawable appIcon;
    static String appLabel;
    public static Drawable AppsIcon(Context context,String string){
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(string, 0);
            appIcon = applicationInfo.loadIcon(context.getPackageManager());
            appLabel= applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (PackageManager.NameNotFoundException e) {
            Toast.makeText(context,String.format(Locale.getDefault(),"［"+appLabel+"］"+getStringIdentifier(context,"activity_no")), Toast.LENGTH_SHORT).show();
        }
        return appIcon;
    }
    public static  String PACKAGE_SYSTEMUI = "com.android.systemui";
    public static void ActionToastSring(Context context ,String REC){
        String string=getStringIdentifier(context,REC);
        Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
        Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                .show();
    }

    public static String rt100foleo(String str) {
        return new String(Base64.decode(str.getBytes(), Base64.DEFAULT));
    }
    public static String ConfigManager="com.leo.framework";
    public static String  getStringIdentifier(Context context ,String RECnME){
        String pkgName=null;
        int ident;
        Resources packRes = getResourcesForPackage(context,ConfigManager);
        ident = packRes.getIdentifier(RECnME,(rt100foleo("c3RyaW5n")),ConfigManager);
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
    public static Drawable getCustomDrawable(Context context,String rec) {
        Drawable d;
        try {
            Context otherAppContext =context.createPackageContext(ConfigManager, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",ConfigManager));
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
    
}
