package com.samsung.android.feature;

import android.os.Build;
import android.os.SystemProperties;
import android.util.Log;

public final class SemGateConfig {
    public static final String ACTION_SCREEN_TEXT = "com.sec.android.gate.LCDTEXT";
    private static final String DEBUG_LEVEL_HIGH = "0x4948";
    private static final String DEBUG_LEVEL_LOW = "0x4f4c";
    private static final String DEBUG_LEVEL_MID = "0x494d";
    public static final String EXTRA_SCREEN_TEXT = "ENABLED";
    public static final String GATE_INTENT_ACTION = "com.sec.android.gate.GATE";
    public static final String GATE_INTENT_EXTRA_ENABLED = "ENABLED";
    public static final String GATE_SYS_PROP_GATE_ENABLED = "service.gate.enabled";
    public static final String GATE_SYS_PROP_LCDTEXT_ENABLED = "service.gate.lcdtexton";
    private static final String LOG_TAG = "GATE";
    private static boolean sGateEnabled = false;
    private static boolean sGateLcdtextEnabled = false;

    public static void setGateEnabled(boolean gateEnabled) {
        sGateEnabled = gateEnabled;
        String str = LOG_TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("SemGateConfig.setGateEnabled. GATE = ");
        stringBuilder.append(sGateEnabled);
        stringBuilder.append(", LCDTEXT = ");
        stringBuilder.append(sGateLcdtextEnabled);
        Log.i(str, stringBuilder.toString());
    }

    public static void setGateLcdtextEnabled(boolean lcdTextEnabled) {
        sGateLcdtextEnabled = lcdTextEnabled;
        String str = LOG_TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("SemGateConfig.setGateLcdtextEnabled. GATE = ");
        stringBuilder.append(sGateEnabled);
        stringBuilder.append(", LCDTEXT = ");
        stringBuilder.append(sGateLcdtextEnabled);
        Log.i(str, stringBuilder.toString());
    }

    public static boolean isGateEnabled() {
        String debugLevel = String.valueOf(SystemProperties.get("ro.debug_level"));
        boolean z = false;
        if (!"user".equals(Build.TYPE)) {
            if (sGateEnabled || SystemProperties.get(GATE_SYS_PROP_GATE_ENABLED).equals("1")) {
                z = true;
            }
            return z;
        } else if (debugLevel.equals(DEBUG_LEVEL_LOW)) {
            return false;
        } else {
            return SystemProperties.get(GATE_SYS_PROP_GATE_ENABLED).equals("1");
        }
    }

    public static boolean isGateLcdtextEnabled() {
        String debugLevel = String.valueOf(SystemProperties.get("ro.debug_level"));
        boolean z = false;
        if (!"user".equals(Build.TYPE)) {
            if (sGateLcdtextEnabled || SystemProperties.get(GATE_SYS_PROP_LCDTEXT_ENABLED).equals("1")) {
                z = true;
            }
            return z;
        } else if (debugLevel.equals(DEBUG_LEVEL_LOW)) {
            return false;
        } else {
            return SystemProperties.get(GATE_SYS_PROP_LCDTEXT_ENABLED).equals("1");
        }
    }
}
