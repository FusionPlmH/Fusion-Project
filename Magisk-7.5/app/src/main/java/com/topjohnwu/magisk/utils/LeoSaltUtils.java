package com.topjohnwu.magisk.utils;



public class LeoSaltUtils {
    private static final String UNKNOWN = "unknown";
    static String getProperty(String str) {
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
    public static String Phonebootloader(int stle){
        String sb =getLeoBuild("ro.boot.bootloader");
        String str = sb.substring(0, stle);
        return str;
    }
    public static String getLeoBuild(String srt) {
        return  getProperty(srt);
    }
}
