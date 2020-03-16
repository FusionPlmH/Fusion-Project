package com.samsung.android.uniform.feature;



public class CscFeature {

    public static final class TagCalendar {
        public static final String TAG_CSCFEATURE_CALENDAR_ENABLELOCALHOLIDAYDISPLAY = "CscFeature_Calendar_EnableLocalHolidayDisplay";
    }

    public static final class TagCommon {
        public static final String TAG_CSCFEATURE_COMMON_SUPPORTPERSIANCALENDAR = "CscFeature_Common_SupportPersianCalendar";
    }

    public static final class TagLockScreen {
        public static final String TAG_CSCFEATURE_LOCKSCREEN_CONFIGCLOCKDISPLAYPOLICY = "CscFeature_LockScreen_ConfigClockDisplayPolicy";
        public static final String TAG_CSCFEATURE_LOCKSCREEN_CONFIGDISPLAYSHORCUTCIRCLEARROW = "CscFeature_LockScreen_ConfigDisplayShorcutCircleArrow";
    }

    public static final class TagSystemUI {
        public static final String TAG_CSCFEATURE_SYSTEMUI_CONFIGDEFSTATUSSIMPLESTATUSBAR = "CscFeature_SystemUI_ConfigDefStatusSimpleStatusBar";
    }

    public static String getString(String tag) {
        return null;
    }

    public static String getString(String tag, String defValue) {
        return null;
    }

    public static boolean getBoolean(String tag, boolean defValue) {
        return false;
    }
}
