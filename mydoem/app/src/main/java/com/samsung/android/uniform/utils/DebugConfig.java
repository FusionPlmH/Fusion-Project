package com.samsung.android.uniform.utils;

import android.os.Build;

import android.os.SystemProperties;

public class DebugConfig {
    public static final boolean DEBUG_ALL = false;
    public static final boolean DEBUG_CONFIG = true;
    public static final boolean DEBUG_DOZE = false;
    public static final boolean DEBUG_ENG = "eng".equals(Build.TYPE);
    public static final boolean DEBUG_PINNED_CONTENT = false;
    public static final boolean DEBUG_POLICY = false;
    public static final boolean DEBUG_TSP = false;
    public static final boolean DEBUG_WAKE_LOCK = false;
    public static final boolean SAFE_DEBUG = false;

    public static class TAG {
        public static final String TAG_AOD_BRIGHTNESS = "AOD_BRIGHTNESS@";
        public static final String TAG_AOD_CONFIG = "AOD_CONFIG@";
        public static final String TAG_AOD_LIVE_CLOCK = "AOD_LIVE_CLOCK@";
        public static final String TAG_AOD_MONITOR = "AOD_MONITOR@";
        public static final String TAG_AOD_POLICY = "AOD_POLICY@";
        public static final String TAG_CLOCK = "AOD_CLOCK@";
        public static final String TAG_DOZE = "AOD_DOZE@";
        public static final String TAG_EXTERNAL_CHANGE = "AOD_EXTERNAL_CHANGE@";
        public static final String TAG_PALETTE = "AOD_PALETTE@";
        public static final String TAG_PINNNED_CONTENT = "AOD_PINNED_CONTENT@";
        public static final String TAG_TSP = "AOD_TSP@";
        public static final String TAG_VIEW_PAGER = "AOD_VIEW_PAGER@";
        public static final String TAG_WAKELOCK = "AOD_WAKELOCK@";
    }

    public static boolean DEBUG_LAYOUT() {
        return SystemProperties.getBoolean("debug.layout", false);
    }

    public static boolean DEBUG_LIVE_CLOCK() {
        return SystemProperties.getInt("debug.aod.liveclock", 0) == 1;
    }

    public static boolean DEBUG_LIVE_CLOCK_ENABLE_DIGITAL_CLOCK() {
        return SystemProperties.getBoolean("debug.aod.liveclock.enableDigitalClock", true);
    }
}
