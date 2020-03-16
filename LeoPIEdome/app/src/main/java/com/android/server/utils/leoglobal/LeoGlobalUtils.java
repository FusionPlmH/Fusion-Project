package com.android.server.utils.leoglobal;


import android.content.Context;
import android.net.Uri;
import android.provider.Settings;


public class LeoGlobalUtils{
    static {
        System.loadLibrary("Amber520");
    }
    public static native String getLeoKernel();
    public static native String getOS();
    public static native String getOnema();
    public static native String getOCode();
    public static native String getOCodeN();
    public static String getLeoActionString(Context cxt,String key) {
        return Settings.System.getString(cxt.getContentResolver(), key);
    }
    public static Uri getLeoActionUri(String key) {
        return Settings.System.getUriFor( key);
    }
    public static int getLeoActionInt(Context cxt, String key, int defaultValue) {
        return Settings.System.getInt(cxt.getContentResolver(), key, defaultValue);
    }

    public static String getLeoBuild(String srt) {
        return  getProperty(srt);
    }

    public static String getProperty(String str) {
        String str3 ="unknown";
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
}