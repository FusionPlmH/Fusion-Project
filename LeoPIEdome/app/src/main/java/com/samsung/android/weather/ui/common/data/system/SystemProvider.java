package com.samsung.android.weather.ui.common.data.system;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningServiceInfo;
import android.app.KeyguardManager;
import android.app.KeyguardManager.KeyguardDismissCallback;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutInfo.Builder;
import android.content.pm.ShortcutManager;
import android.graphics.drawable.Icon;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.PowerManager;
import android.os.Process;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings.Secure;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.support.annotation.NonNull;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.view.inputmethod.InputMethodManager;

import com.samsung.android.weather.entity.location.Time;

import com.samsung.android.weather.util.SLog;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

public class SystemProvider {
    public static final String REDUCE_ANIMATIONS = "reduce_animations";
    private static String roCharacteristics = null;
    private static String roSalesCode = null;

    public static void addShortcut(Context context) {
        ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(ShortcutManager.class);
        if (isRequestPinShortcutSupported(context)) {

        }
    }

    public static boolean checkNetworkConnected(Context context) {
        return 8 != getNetworkType(context);
    }

    public static long currentTimeMillis(Time time) {
        Calendar instance = Calendar.getInstance();
        String timeZone = time.getTimeZone();
        if (timeZone == null) {
            timeZone = "";
        }
        instance.setTimeZone(TimeZone.getTimeZone(timeZone));

        if (time.isDST()) {
            instance.add(11, 1);
        }
        SLog.d("", "currentTimeMillis : " + instance.toString());
        return instance.getTimeInMillis();
    }

    public static void dismissKeyguard(Activity activity) {
        SLog.d("", "dismissKeyguard sdk : " + VERSION.SDK_INT);
        try {
            if (VERSION.SDK_INT < 26) {
                activity.getWindow().addFlags(6815744);
            } else {
                ((KeyguardManager) activity.getSystemService("keyguard")).requestDismissKeyguard(activity, new KeyguardDismissCallback() {
                    public void onDismissCancelled() {
                        super.onDismissCancelled();
                        SLog.d("", "onDismissSucceeded");
                    }

                    public void onDismissError() {
                        super.onDismissError();
                        SLog.d("", "onDismissError");
                    }

                    public void onDismissSucceeded() {
                        super.onDismissSucceeded();
                        SLog.d("", "onDismissSucceeded");
                    }
                });
            }
        } catch (Exception e) {
            SLog.e("", "" + e.getLocalizedMessage());
        }
    }

    public static int getComponentEnabled(Context context, ComponentName componentName) {
        int componentEnabledSetting = context.getPackageManager().getComponentEnabledSetting(componentName);
        SLog.d("", "component enable state is " + componentEnabledSetting);
        return componentEnabledSetting;
    }

    @TargetApi(19)
    public static int getDataState(Context context, TelephonyManager telephonyManager) {

        return 0;
    }

    public static String getLanguage(Context context) {
        return getLocale(context).getLanguage().toLowerCase();
    }

    public static Locale getLocale(Context context) {
        if (context == null) {
            return Locale.getDefault();
        }
        if (VERSION.SDK_INT >= 24) {
            return context.getResources().getConfiguration().getLocales().get(0);
        }
        Locale locale = context.getResources().getConfiguration().locale;
        return locale == null ? Locale.getDefault() : locale;
    }

    @TargetApi(19)
    public static int getLocationMode(Context context) {
        return 0;
    }

    public static String getMCC(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
        String str = "";
        String str2;
        if (telephonyManager == null) {
            str2 = str;
            return str;
        }
        String simOperator = telephonyManager.getSimOperator();
        switch (telephonyManager.getPhoneType()) {
            case 0:
                if (simOperator != null && simOperator.length() != 0) {
                    str = simOperator.substring(0, 3);
                    break;
                }
                str = "";
                break;

            default:
                simOperator = telephonyManager.getSimOperator();
                if (simOperator != null && simOperator.length() != 0) {
                    str = simOperator.substring(0, 3);
                    break;
                }
                str = "";
                break;

        }
        str2 = str;
        return str;
    }

    public static String getMNC(Context context) {
        String str = "";
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return str;
        }
        String simOperator = telephonyManager.getSimOperator();
        return (simOperator == null || simOperator.length() == 0) ? str : simOperator.substring(3);
    }

    @TargetApi(19)
    public static int getNetworkType(Context context) {
        if (context == null) {
            return 8;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (connectivityManager == null || telephonyManager == null) {
            SLog.d("", "connectivityManager : null");
            return 8;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return 8;
        }
        int dataState;
        switch (activeNetworkInfo.getType()) {
            case 0:
                int simState = getSimState(context, telephonyManager);
                dataState = getDataState(context, telephonyManager);
                if (simState == 5 && dataState != 0) {
                    return 0;
                }
                SLog.e("", "TYPE_MOBILE : simState = " + simState + ", dataState = " + dataState);
                return 8;
            case 6:
                dataState = getDataState(context, telephonyManager);
                boolean isAvailable = activeNetworkInfo.isAvailable();
                boolean isConnected = activeNetworkInfo.isConnected();
                if (isAvailable && isConnected && dataState != 0) {
                    return 6;
                }
                SLog.e("", "TYPE_WIMAX : on=" + isAvailable + ", conn=" + isConnected + ", state=" + dataState);
                return 8;
            default:
                boolean isAvailable2 = activeNetworkInfo.isAvailable();
                boolean isConnected2 = activeNetworkInfo.isConnected();
                if (isAvailable2 && isConnected2) {
                    return activeNetworkInfo.getType();
                }
                SLog.e("", "TYPE : " + activeNetworkInfo.getType() + "isAvail=" + isAvailable2 + ", isConn=" + isConnected2 + ", detailedState : " + activeNetworkInfo.getDetailedState() + ", state : " + activeNetworkInfo.getState());
                return 8;
        }
    }

    public static String getProcessName(Context context) {
        int myPid = Process.myPid();
        List runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        Iterator it = runningAppProcesses == null ? null : runningAppProcesses.iterator();
        while (it != null && it.hasNext()) {
            RunningAppProcessInfo runningAppProcessInfo = (RunningAppProcessInfo) it.next();
            try {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            } catch (Exception e) {
                SLog.d("Process", "Error>> :" + e.toString());
            }
        }
        return null;
    }

    public static int getReduceAnimation(Context context) {
        try {
            return System.getInt(context.getContentResolver(), REDUCE_ANIMATIONS);
        } catch (SettingNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String getSalesCode() {

        return roSalesCode;
    }

    @TargetApi(19)
    public static int getSimState(Context context, TelephonyManager telephonyManager) {
        return 0;
    }

    public static boolean hasDeviceKeyboard(InputMethodManager inputMethodManager, Context context) {
        boolean z = false;

        return false;
    }

    public static boolean hasShortcut(Context context) {

        return false;
    }

    public static boolean isContactUsAvailable(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.samsung.android.voc", 1);
            SLog.d("", "contactUs " + packageInfo.versionCode);
            return packageInfo.versionCode >= 170001000;
        } catch (NameNotFoundException e) {
            SLog.e("", "" + e.getLocalizedMessage());
            return false;
        }
    }

    public static boolean isDesktopMode(@NonNull Context context) {
        boolean z = false;

        SLog.e("", "This device don't support knox desktop(DeX)");
        return z;
    }

    public static boolean isRequestPinShortcutSupported(Context context) {
        return false;
    }

    public static boolean isScreenOn(Context context) {
        if (context != null) {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            return VERSION.SDK_INT < 20 ? powerManager.isScreenOn() : powerManager.isInteractive();
        } else {
            SLog.e("", "context is null while checking screen status!!");
            return false;
        }
    }

    public static boolean isSimEnabled(Context context) {
        return 5 == ((TelephonyManager) context.getSystemService("phone")).getSimState();
    }

    public static boolean isStandaloneDesktopMode(Context context) {
        boolean z = false;

        return z;
    }

    public static boolean isWhiteWallpaper(Context context) {
        int i = System.getInt(context.getContentResolver(), "need_dark_font", 0);
        SLog.d("", "isWhiteWallpaper : " + i);
        return i == 1;
    }

    public static void setComponentEnable(Context context, ComponentName componentName, boolean z, int i) {
        PackageManager packageManager = context.getPackageManager();
        int i2 = z ? 1 : 2;
        SLog.d("", "change component enable state to : " + i2);
        packageManager.setComponentEnabledSetting(componentName, i2, i);
    }

    @TargetApi(19)
    public static void setLocationMode(Context context, int i) {
        Secure.putInt(context.getContentResolver(), "location_mode", i);
    }

    @SuppressLint({"MissingPermission"})
    public static void vibrate(Context context, int i, int i2) {

    }
}
