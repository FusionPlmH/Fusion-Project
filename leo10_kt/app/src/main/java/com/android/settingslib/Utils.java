package com.android.settingslib;


import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.pm.UserInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.os.BatteryManager;
import android.os.Build;


import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;

import java.text.NumberFormat;



public class Utils {

    private static final String CURRENT_MODE_KEY = "CURRENT_MODE";
    private static final String NEW_MODE_KEY = "NEW_MODE";

    static final String STORAGE_MANAGER_ENABLED_PROPERTY =
            "ro.storage_manager.enabled";

    private static Signature[] sSystemSignature;
    private static String sPermissionControllerPackageName;
    private static String sServicesSystemSharedLibPackageName;
    private static String sSharedSystemSharedLibPackageName;

    static final int[] WIFI_PIE = {

    };
    public static int getColorAttrDefaultColor(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        i = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        return i;
    }


    public static void updateLocationEnabled(Context context, boolean enabled, int userId,
            int source) {

    }

    public static boolean updateLocationMode(Context context, int oldMode, int newMode, int userId,
            int source) {

        return false;
    }


    public static String formatPercentage(double percentage, boolean round) {
        final int localPercentage = round ? Math.round((float) percentage) : (int) percentage;
        return formatPercentage(localPercentage);
    }

    /** Formats the ratio of amount/total as a percentage. */
    public static String formatPercentage(long amount, long total) {
        return formatPercentage(((double) amount) / total);
    }

    /** Formats an integer from 0..100 as a percentage. */
    public static String formatPercentage(int percentage) {
        return formatPercentage(((double) percentage) / 100.0);
    }

    /** Formats a double from 0.0..1.0 as a percentage. */
    public static String formatPercentage(double percentage) {
        return NumberFormat.getPercentInstance().format(percentage);
    }

    public static int getBatteryLevel(Intent batteryChangedIntent) {
        int level = batteryChangedIntent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0);
        int scale = batteryChangedIntent.getIntExtra(BatteryManager.EXTRA_SCALE, 100);
        return (level * 100) / scale;
    }

    public static String getBatteryStatus(Resources res, Intent batteryChangedIntent) {


        return "";
    }




    public static int getThemeAttr(Context context, int attr) {
        TypedArray ta = context.obtainStyledAttributes(new int[]{attr});
        int theme = ta.getResourceId(0, 0);
        ta.recycle();
        return theme;
    }

    public static Drawable getDrawable(Context context, int attr) {
        TypedArray ta = context.obtainStyledAttributes(new int[]{attr});
        Drawable drawable = ta.getDrawable(0);
        ta.recycle();
        return drawable;
    }

    /**
     * Determine whether a package is a "system package", in which case certain things (like
     * disabling notifications or disabling the package altogether) should be disallowed.
     */
    public static boolean isSystemPackage(Resources resources, PackageManager pm, PackageInfo pkg) {
        if (sSystemSignature == null) {
            sSystemSignature = new Signature[]{getSystemSignature(pm)};
        }
        if (sPermissionControllerPackageName == null) {

        }
        if (sServicesSystemSharedLibPackageName == null) {

        }
        if (sSharedSystemSharedLibPackageName == null) {

        }
        return (sSystemSignature[0] != null
                && sSystemSignature[0].equals(getFirstSignature(pkg)))
                || pkg.packageName.equals(sPermissionControllerPackageName)
                || pkg.packageName.equals(sServicesSystemSharedLibPackageName)
                || pkg.packageName.equals(sSharedSystemSharedLibPackageName)

                || isDeviceProvisioningPackage(resources, pkg.packageName);
    }

    private static Signature getFirstSignature(PackageInfo pkg) {
        if (pkg != null && pkg.signatures != null && pkg.signatures.length > 0) {
            return pkg.signatures[0];
        }
        return null;
    }

    private static Signature getSystemSignature(PackageManager pm) {
        try {
            final PackageInfo sys = pm.getPackageInfo("android", PackageManager.GET_SIGNATURES);
            return getFirstSignature(sys);
        } catch (NameNotFoundException e) {
        }
        return null;
    }

    /**
     * Returns {@code true} if the supplied package is the device provisioning app. Otherwise,
     * returns {@code false}.
     */
    public static boolean isDeviceProvisioningPackage(Resources resources, String packageName) {

        return false;
    }

    /**
     * Returns the Wifi icon resource for a given RSSI level.
     *
     * @param level The number of bars to show (0-4)
     * @throws IllegalArgumentException if an invalid RSSI level is given.
     */
    public static int getWifiIconResource(int level) {
        if (level < 0 || level >= WIFI_PIE.length) {
            throw new IllegalArgumentException("No Wifi icon found for level: " + level);
        }
        return WIFI_PIE[level];
    }

    public static int getDefaultStorageManagerDaysToRetain(Resources resources) {

        return 1;
    }


    @ColorInt
    public static int getColorAccent(Context context) {
        return getColorAttr(context, android.R.attr.colorAccent);
    }

    @ColorInt
    public static int getColorError(Context context) {
        return getColorAttr(context, android.R.attr.colorError);
    }

    @RequiresApi(api = Build.VERSION_CODES.M)
    @ColorInt
    public static int getDefaultColor(Context context, int resId) {
        final ColorStateList list =
                context.getResources().getColorStateList(resId, context.getTheme());

        return list.getDefaultColor();
    }

    @ColorInt
    public static int getDisabled(Context context, int inputColor) {
        return applyAlphaAttr(context, android.R.attr.disabledAlpha, inputColor);
    }

    @ColorInt
    public static int applyAlphaAttr(Context context, int attr, int inputColor) {
        TypedArray ta = context.obtainStyledAttributes(new int[]{attr});
        float alpha = ta.getFloat(0, 0);
        ta.recycle();
        return applyAlpha(alpha, inputColor);
    }

    @ColorInt
    public static int applyAlpha(float alpha, int inputColor) {
        alpha *= Color.alpha(inputColor);
        return Color.argb((int) (alpha), Color.red(inputColor), Color.green(inputColor),
                Color.blue(inputColor));
    }

    @ColorInt
    public static int getColorAttr(Context context, int attr) {
        TypedArray ta = context.obtainStyledAttributes(new int[]{attr});
        @ColorInt int colorAccent = ta.getColor(0, 0);
        ta.recycle();
        return colorAccent;
    }


}
