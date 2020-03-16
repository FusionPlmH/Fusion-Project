package com.android.fusionleo.leoglobalactions.util;

public interface SecGlobalActionsAnalytics {
    public static final String DID_BIKE_MODE = "Bike mode";
    public static final String DID_EMERGENCY_MODE = "Emergency mode";
    public static final String DID_LOCK_DOWN = "Lock down";
    public static final String DID_MOBILE_DATA = "Mobile data";
    public static final String DID_POWER_OFF = "Power off";
    public static final String DID_PRO_KIOSK = "Pro kiosk";
    public static final String DID_RESTART = "Restart";
    public static final String EID_DEVICE_OPTIONS = "6111";
    public static final String EID_SAFE_MODE = "6121";
    public static final String SID_DEVICE_OPTIONS = "611";
    public static final String SID_SAFE_MODE = "612";
    public static final int VID_BIKE_MODE = 6;
    public static final int VID_EMERGENCY_MODE = 3;
    public static final int VID_LOCK_DOWN = 4;
    public static final int VID_MOBILE_DATA = 5;
    public static final int VID_POWER_OFF = 1;
    public static final int VID_PRO_KIOSK = 7;
    public static final int VID_RESTART = 2;

    void sendEventLog(String str, String str2);

    void sendEventLog(String str, String str2, String str3, long j);
}
