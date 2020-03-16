package com.android.systemui.statusbar;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.Vibrator;
import android.provider.Settings.System;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.ITelephony.Stub;


import java.util.List;

public class DeviceState {
    private static Handler mHandler;

    private static HandlerThread mThread;
    public static int getActiveSimCount(Context context) {
        int i = 0;

        return i;
    }

    public static boolean isDesktopMode(Context context) {
        return false;
    }


}
