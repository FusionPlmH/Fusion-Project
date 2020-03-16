package com.android.launcher3.salt;


import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Environment;
import android.os.SystemProperties;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import android.util.Base64;
import android.widget.Toast;

import java.io.File;

import static com.android.launcher3.salt.SaltLauncher.getLeoService;
import static com.android.launcher3.salt.SaltLauncher.getLeoframe;


public class SaltServerFrame {
    public final static String TAG = SaltServerFrame.class.getSimpleName();
    public static void ActionToastSring(Context context,String REC){

            String string=getStringIdentifier(context,REC);
            Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
            Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                    .show();


    }


    public static   class TypefaceFonts extends MetricAffectingSpan {
        private final Typeface typeface;

        public TypefaceFonts(Typeface typeface) {
            this.typeface = typeface;
        }

        public void updateDrawState(TextPaint ds) {
            setTypeFace(ds, this.typeface);
        }

        public void updateMeasureState(TextPaint paint) {
            setTypeFace(paint, this.typeface);
        }

        private  void setTypeFace(Paint paint, Typeface tf) {
            paint.setTypeface(tf);
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
    public static String[] getStringLeoArray(Context context ,String rec) {
        String[] str;
        String STR=LEOFRAMEWORK;
        Context otherAppContext = null;
        try {
            otherAppContext =context.createPackageContext(STR, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), new String(rt100foleo("YXJyYXk=")),STR));
        return str;
    }
    public static Typeface setLeoTextFont(Context context, int key, String fontname, int ss) {
        String ssd= Environment.getExternalStorageDirectory().toString();
        String[] stringLeoArray = getStringLeoArray(context, rt100foleo("Zm9udF9zdHlsZQ=="));
        Typeface font;
        File file;
        switch ( key) {
            case 0:
            default:
                return Typeface.create(fontname, ss);
            case 1:
                font=Typeface.create("sans-serif", Typeface.NORMAL);
                break;
            case 2:
                font=Typeface.create("sans-serif", Typeface.ITALIC);
                break;
            case 3:
                font=Typeface.create("sans-serif", Typeface.BOLD);
                break;
            case 4:
                font=Typeface.create("sec-roboto-light", Typeface.NORMAL);
                break;
            case 5:
                font=Typeface.create("sec-roboto-light", Typeface.ITALIC);
                break;
            case 6:
                font=Typeface.create("sec-roboto-light", Typeface.BOLD);
                break;
            case 7:
                font=Typeface.create("sec-roboto-light", Typeface.BOLD_ITALIC);
                break;
            case 8:
                font=Typeface.create("sans-serif-light", Typeface.NORMAL);
                break;
            case 9:
                font=Typeface.create("sans-serif-light", Typeface.ITALIC);
                break;
            case 10:
                font=Typeface.create("sans-serif-thin", Typeface.NORMAL);
                break;
            case 11:
                font=Typeface.create("sans-serif-thin", Typeface.ITALIC);
                break;
            case 12:
                font= Typeface.create("sans-serif-condensed", Typeface.NORMAL);
                break;
            case 13:
                font=Typeface.create("sans-serif-condensed", Typeface.ITALIC);
                break;
            case 14:
                font=Typeface.create("sans-serif-condensed-light", Typeface.NORMAL);
                break;
            case 15:
                font=Typeface.create("sans-serif-condensed-light", Typeface.ITALIC);
                break;
            case 16:
                font=Typeface.create("sans-serif-condensed", Typeface.BOLD);
                break;
            case 17:
                font=Typeface.create("sans-serif-condensed", Typeface.BOLD_ITALIC);
                break;
            case 18:
                font=Typeface.create("sans-serif-medium", Typeface.NORMAL);
                break;
            case 19:
                font=Typeface.create("sans-serif-medium", Typeface.ITALIC);
                break;
            case 20:
                return Typeface.create("sans-serif-black", Typeface.NORMAL);
            case 21:
                return Typeface.create("sans-serif-black", Typeface.ITALIC);
            case 22:
                file = new File(ssd+stringLeoArray[0]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[0]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 23:
                file = new File(ssd+stringLeoArray[1]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[1]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 24:
                file = new File(ssd+stringLeoArray[2]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[3]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 25:
                file = new File(ssd+stringLeoArray[3]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[3]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 26:
                file = new File(ssd+stringLeoArray[4]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[4]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 27:
                file = new File(ssd+stringLeoArray[5]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[5]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 28:
                file = new File(ssd+stringLeoArray[6]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[6]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 29:
                file = new File(ssd+stringLeoArray[7]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[7]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 30:
                file = new File(ssd+stringLeoArray[8]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[8]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 31:
                file = new File(ssd+stringLeoArray[9]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[9]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 32:
                file = new File(ssd+stringLeoArray[10]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[10]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 33:
                file = new File(ssd+stringLeoArray[11]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[11]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 34:
                file = new File(ssd+stringLeoArray[12]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[12]);
                }else {
                    font=Typeface.create(fontname, ss);
                }

                break;
        }

        return font;
    }
    public static String[] getCustomArray(Context context,String rec) {
        String[] str;
        String[] str2={""};
        Context otherAppContext;
        String STR=LEOFRAMEWORK;
        try {
            otherAppContext =context.createPackageContext(STR, 3);
            str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), rt100foleo("YXJyYXk="),STR));
            return str;
        } catch (Exception e) {
            str=str2;
            e.printStackTrace();
            return str;
        }

    }
    public static  String  getLeoSymbolStyle(Context mContext,int style, String str, String str2){
        String[] SaltSymbolStyle=getCustomArray(mContext,rt100foleo("c3ltYm9sX3N0eWxlX2VudHJpZXM="));
        String STR;
        if(style==14){
            STR=getLeoString(str);
        }else if(style<=0) {
            STR=str2;
        }else {
            STR = SaltSymbolStyle[style];
        }
        return STR;
    }
    public static String getLeoString (String str2) {
        String str ="";
        if (!TextUtils.isEmpty(str2)) {
            str=(str2);
        } else {
            str=(TextUtils.isEmpty(str)? rt100foleo("TGVvUk9N") : str);
        }
        return str;
    }

}
