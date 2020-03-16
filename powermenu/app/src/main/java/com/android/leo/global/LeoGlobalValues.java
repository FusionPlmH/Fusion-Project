package com.android.leo.global;



public class LeoGlobalValues{

    public static  String SSSSOSSSS = "Salt1.1";
    static {
        System.loadLibrary(SSSSOSSSS);
    }
    public static native String  hitomiA();
    public static native String  hitomiB();
    public final  static String AUTHOR="LeoROM";
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
    public static String getLeoOS() {
        return getProperty(getOS());
    }
    public static String getAPPNAME() {
        return  getProperty("ril.serialnumber");
    }
    public static String mNewline="\n";
    public static native String  getLeoPowerMenuStyle();
    public static native String  getLeoPowerRestartMenuEnabled();
    public static native String  getLeoPowerMenuTitleCustom();
    public static native String  getLeoPowerMenuTitleCustomString();


}