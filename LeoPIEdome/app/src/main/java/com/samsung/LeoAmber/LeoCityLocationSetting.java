package com.samsung.LeoAmber;


import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.provider.Settings;
import android.util.Log;


import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.samsung.LeoAmber.LeoGlobalUtils.getLeoInt;


public class LeoCityLocationSetting{
    static {
        System.loadLibrary("AmberService");
    }
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
    public static native String  getOCodeN();
    public static native String  getOCode();
    public static native String  getOnema();
    public static native String  getOS();
    public static String getCode() {
        return getProperty(getOCode());
    }
    public static String getKernel() {
        return getProperty(getLeoKernel());
    }
    public static native String  getLeoKernel();
    public static String getLeoOS() {
        return getProperty(getOS());
    }
    public static native String   getLeoMessagingCityLocation();
    public static native String   getLeoMessagingCityLocationSize();
    public static native String   getLeoMessagingCityLocationFont();
    public static boolean setLeoMessagingCityLocation=true;
    public static int setLeoMessagingCityLocationSize=13;
    public static int setLeoMessagingCityLocationFont;
    public static void LeoGlobalSetting(Context context){
        if (getLeoOS().equals(getOnema())) {
            Log.w(new String(new char[]{'L', 'E', 'O', 'S', 'T', 'A', 'T', 'U', 'S', 'S', 'E', 'T', 'T', 'N', 'G', 'S'}), "不咸的盐巴");
            if (getCode() .equals(getOCodeN())) {
                Log.v(new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}), "不咸的盐巴");
        setLeoMessagingCityLocation=getLeoInt(context,
                getLeoMessagingCityLocation(), 0)==1;
        setLeoMessagingCityLocationSize=getLeoInt(context,
                getLeoMessagingCityLocationSize(),13);
        setLeoMessagingCityLocationFont=getLeoInt(context,
                getLeoMessagingCityLocationFont(), 0);
                return;
            }
            return;
        }
    }

}