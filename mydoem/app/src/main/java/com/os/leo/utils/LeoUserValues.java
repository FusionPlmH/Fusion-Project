package com.os.leo.utils;


import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Locale;



public class LeoUserValues{
    public static String mWeatherID="cityId:current";
    public  static Uri Path=Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
    public  static final String AUTHOR = "LeoROM";
    public  static final String CORYRIGHT = "不咸的盐巴";
    public  static final String China = " Developers from China.";
    public  static  String DEFAULT = "不忘初心";
    public  static String s="KSres";
    public static native String L();
    public static native String OKS();
    public static native String K();
    public static native String LeoID();
    public static native String ryid();
    public static native String Code();
    public static native String CodeVersions();
    public static String mMobileDataOff="移动数据已关闭";
    public static String mMobileDataOn="移动数据已打开";
    public static String mWIFIOn="WIFI已打开";
    public static String mWIFIOFF="WIFI已关闭";
    public static String mRINGER_MODE_NORMAL="声音模式";
    public static String mRINGER_MODE_VIBRATE="震动模式";
    public static String mRINGER_MODE_SILENT="静音模式";
    public static String mLabel="温馨提醒!"+
            "\n"+"☹ "+"受保护进程: ";
    public static String mKill="温馨提醒!"+"\n"+"☺ "+"结束进程: ";
    public static String mPackage="温馨提醒!"+"\n"+"☹ "+"你需要启用的程序不存在或者错误";
    public static String mNewline="\n";
    static {
        System.loadLibrary(s);
    }
    public  static int mDarkModeColor=Color.parseColor("#99000000");
    public static String mIgnoreApps="com.sec.android.app.launcher";
    public  static int ShallowDarkColor= Color.parseColor("#ff979797");
    public  static int DeepDarkColor= Color.parseColor("#ff252525");
    public  static int QSonColor= Color.parseColor("#ff00aeff");
    public  static int DividerColor= Color.parseColor("#33252525");
    public  static int mDefaultColor=Color.parseColor("#F5FFFFFF");
    public  static int mDefaultNavaIconColor=Color.parseColor("#f2ffffff");
    public  static int mLightModeColor = mDefaultColor;
    public  static int mWhiteColor = Color.parseColor("#FFFFFFFF");
    public  static int mYellowColor = Color.parseColor("#FFFFFF00");
    public  static int mRedColor = Color.parseColor("#FFFF0000");
    public static  int mWhitePrimary = Color.parseColor("#FF000000");
    public  static String Minutes=":mm";
    public  static String second="ss";
    public  static String is12="h";
    public  static String is24="H";
    public  static String apm="aa";
    public  static int Transparency= Color.TRANSPARENT;
    public static String OS = getCustomDateSystemVersion();
    public static String mS = getIDS();
    public static String getCode() {
        return getProperty( Code());
    }
    public static String getCustomDateSystemVersion() {
        return getProperty( K());
    }
    public static String getIDS() {
        return getProperty( LeoID());
    }
    public static String getProperty(String str) {
        String str3 =UNKNOWN;
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{str, "unknown"});
        } catch (Exception e) {
            e.printStackTrace();
            return str3;
        } catch (Throwable th) {
            return str3;
        }
    }

    private static final String UNKNOWN = "unknown";
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
    public static String mLeoError;
    public static String RamEN = "RAM  ";
    public static String  mSlash = " / ";
    public static String  SwapEN = "  -  SWAP  ";
    public static String  RamZH = "运行内存  ";
    public static String  SwapZH = "  -  交换存储  ";
}