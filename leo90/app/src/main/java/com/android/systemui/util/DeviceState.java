package com.android.systemui.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Point;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.Vibrator;
import android.provider.Settings.System;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;

import com.android.systemui.Rune;

import java.util.List;

public final class DeviceState {
    private static int sIsSupportTouchProximity = -1;
    private static int sPINPUKLaunchMode = 0;



    public static String getMSimSystemProperty(String str, int i, String str2) {
        String str3 = null;
        String str4 = SystemProperties.get(str);
        if (str4 != null && str4.length() > 0) {
            String[] split = str4.split(",");
            if (i >= 0 && i < split.length && split[i] != null) {
                str3 = split[i];
            }
        }
        return str3 == null ? str2 : str3;
    }

    private static String getMultiSimIccType(int i) {
        return i == 1 ? SystemProperties.get("ril.ICC_TYPE1", "0") : SystemProperties.get("ril.ICC_TYPE0", "0");
    }

    public static String getNetworkOperatorNumeric(int i) {
        return getMSimSystemProperty("gsm.operator.numeric", i, "");
    }


    public static String getOperatorNumeric(int i) {
        return getMSimSystemProperty("gsm.sim.operator.numeric", i, "");
    }

    public static int getReadySimCount() {
        int i = 0;
        String str = "NOT_READY";

        return i;
    }

    public static int getSimSettingState(Context context, int i) {
        return i == 0 ? System.getInt(context.getContentResolver(), "phone1_on", 1) : System.getInt(context.getContentResolver(), "phone2_on", 1);
    }


    public static int getVoWifiEnableState(Context context) {
        return System.getInt(context.getContentResolver(), "vowifi_menu_enable", 0);
    }




    public static boolean isLightSensorAvailable(Context context) {
        List sensorList = ((SensorManager) context.getSystemService("sensor")).getSensorList(-1);
        int size = sensorList.size();
        for (int i = 0; i < size; i++) {
            if (((Sensor) sensorList.get(i)).getType() == 5) {
                return true;
            }
        }
        return false;
    }

    public static boolean isMirrorLinkConnected() {
        if (!"1".equals(SystemProperties.get("net.mirrorlink.on"))) {
            return false;
        }
        Log.i("DeviceState", "isMirrorLinkConnected = true");
        return true;
    }

    public static boolean isMobileKeyboardConnected(Context context) {
        boolean z = false;

        return z;
    }

    public static boolean isMultisim() {
        return false;
    }

    public static boolean isNoSimState() {
        String str = "NOT_READY";

        return true;
    }

    public static String isOpenTheme(Context context) {
        return System.getString(context.getContentResolver(), "current_sec_active_themepackage");
    }

    public static boolean isQuickConnectSupported(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("com.samsung.android.oneconnect", 0);
            return true;
        } catch (NameNotFoundException e) {
            Log.d("DeviceState", "NameNotFoundException!!");
            return false;
        }
    }

    public static boolean isReadySimSlot(Context context, int i) {
        boolean z = false;

        return z;
    }

    public static boolean isSimCardInserted(int i) {
        return Integer.parseInt(getMultiSimIccType(i)) != 0;
    }



    public static boolean isSupportSFinder(Context context) {
        return context.getPackageManager().hasSystemFeature("com.sec.feature.findo");
    }

    public static boolean isTablet() {
        return Rune.SYSUI_IS_TABLET_DEVICE;
    }


}
