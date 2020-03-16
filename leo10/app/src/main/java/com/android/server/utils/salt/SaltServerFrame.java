package com.android.server.utils.salt;

import android.animation.ArgbEvaluator;
import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.StatusBarManager;
import android.content.ComponentName;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemProperties;
import android.os.Vibrator;
import android.provider.AlarmClock;
import android.provider.CalendarContract;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Locale;

import static com.android.server.utils.salt.SaltPhoneSetting.getLeoframe;
import static com.android.server.utils.salt.SaltPhoneSetting.setGlobalToastWarn;
import static com.android.settingslib.salt.utils.LeoManages.getLeoService;


public class SaltServerFrame {
    public final static String TAG = SaltServerFrame.class.getSimpleName();


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
    public static  float  mNavBar=(((float) SystemProperties.getInt("persist.sys.display_density", 420)) / 160.0f);
    public static void ActionToastSring(Context context,String REC){
        if(setGlobalToastWarn==0){
            String string=getStringIdentifier(context,REC);
            Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
            Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                    .show();
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
    public static void setLeoAction(Context context ,String Code,int style ) {
        Intent intent = new Intent();
        intent.setAction(getLeoService());
        intent.putExtra(rt100foleo("bGVvX2FjdGlvbg=="), style);
        intent.putExtra(rt100foleo("bGVvX2FwcA=="),Code);
        context.sendBroadcast(intent);
    }

    public static  String LEOFRAMEWORK= getLeoframe();
    public static boolean isChineseLanguage() {
        return Resources.getSystem().getConfiguration().locale.getLanguage().startsWith(
                Locale.CHINESE.getLanguage());
    }
    public static String getLeoSystemProper(String str) {
        return SystemProperties.get(str);
    }

     static  String PACKAGE_SYSTEMUI = "com.android.systemui";
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

    public static String rt100foleo(String str) {
        return new String(Base64.decode(str.getBytes(), Base64.DEFAULT));
    }


    public static  class  Provider {
        static Settings.System LeoSettings;
        static Settings.Global LeoGlobal;
        public static String getLeoString(Context cxt,String key) {
            return LeoSettings.getString(cxt.getContentResolver(), key);
        }
        public static Uri getLeoUri(String key) {
            return  LeoSettings.getUriFor( key);
        }
        public static int getLeoInt(Context cxt, String key, int defaultValue) {
            return LeoSettings.getInt(cxt.getContentResolver(), key, defaultValue);
        }
        public static boolean putIntLeo(Context cxt, String key, int defaultValue) {
            return LeoSettings.putInt(cxt.getContentResolver(),key, defaultValue);
        }
        public static int getIntLeoGlobal(Context cxt, String key, int defaultValue) {
            return LeoGlobal.getInt(cxt.getContentResolver(), key, defaultValue);
        }
        public static String getLeoGlobalStr(Context cxt, String key) {
            return LeoGlobal.getString(cxt.getContentResolver(), key);
        }
        public  boolean putLeoGlobalStr(Context cxt, String key,String newVal) {
            return LeoGlobal.putString(cxt.getContentResolver(),key, newVal);
        }
        public static boolean putIntLeoGlobal(Context cxt, String key,boolean z) {
            return LeoGlobal.putInt(cxt.getContentResolver(), key,z?0:1);
        }
        public static boolean getLeoBoolean(Context cxt, String key, int defaultValue) {
            return LeoSettings.getInt(cxt.getContentResolver(), key, defaultValue)==1;
        }

        public static String getLeoCustomString (String str2)
        {
            String str ="";
            if (!TextUtils.isEmpty(str2)) {
                str=(str2);
            } else {
                str=(TextUtils.isEmpty(str)? rt100foleo("TGVvUk9N") : str);
            }
            return str;
        }
    }

    public static void setLeoHaptics(Context context,int of, int style) {
        boolean hapticsDisabled = false;
        if (of==1) {
            hapticsDisabled = true;
        }
        if (hapticsDisabled) {
            Vibrator mVibrator = (Vibrator)context.getSystemService(Context.VIBRATOR_SERVICE);
            mVibrator.vibrate(style);
        }
    }




}
