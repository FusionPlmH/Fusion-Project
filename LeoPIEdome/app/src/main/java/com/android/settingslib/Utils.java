package com.android.settingslib;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.UserHandle;
import android.provider.Settings.Secure;
import android.text.TextUtils;

import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.feature.SemFloatingFeature;
import java.text.NumberFormat;

public class Utils {

    static final String STORAGE_MANAGER_SHOW_OPT_IN_PROPERTY = "ro.storage_manager.show_opt_in";
    static final int[] WIFI_PIE = new int[]{17302932, 17302933, 17302934, 17302935, 17302936};
    private static String dualAgentPackageName = "com.samsung.android.da.daagent";
    private static String sPermissionControllerPackageName;
    private static String sServicesSystemSharedLibPackageName;
    private static String sSharedSystemSharedLibPackageName;
    private static Signature[] sSystemSignature;

    public static String formatPercentage(double d) {
        return NumberFormat.getPercentInstance().format(d);
    }

    public static String formatPercentage(long j, long j2) {
        return formatPercentage(((double) j) / ((double) j2));
    }

    public static int getColorAccent(Context context) {
        return getColorAttr(context, 16843829);
    }

    public static int getColorAttr(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        return color;
    }

    public static int getColorError(Context context) {
        return getColorAttr(context, 16844099);
    }

    public static String getContactsPackageName() {
        return SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME", "com.android.contacts");
    }

    public static int getDefaultColor(Context context, int i) {
        return context.getResources().getColorStateList(i, context.getTheme()).getDefaultColor();
    }

    public static Drawable getDrawable(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    private static Signature getFirstSignature(PackageInfo packageInfo) {
        return (packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length <= 0) ? null : packageInfo.signatures[0];
    }

    private static Signature getSystemSignature(PackageManager packageManager) {
        try {
            return getFirstSignature(packageManager.getPackageInfo("android", 64));
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    public static int getThemeAttr(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    public static boolean isDeviceProvisioningPackage(Resources resources, String str) {
        String string = resources.getString(17039860);
        return string != null && string.equals(str);
    }

    public static boolean isSystemPackage(Resources resources, PackageManager packageManager, PackageInfo packageInfo) {

        return (sSystemSignature[0] != null && sSystemSignature[0].equals(getFirstSignature(packageInfo))) || packageInfo.packageName.equals(sPermissionControllerPackageName) || packageInfo.packageName.equals(sServicesSystemSharedLibPackageName) || packageInfo.packageName.equals(sSharedSystemSharedLibPackageName) || packageInfo.packageName.equals("com.android.printspooler") || isDeviceProvisioningPackage(resources, packageInfo.packageName);
    }

    public static boolean supportEnhancedFeature(String str) {
        return !TextUtils.isEmpty(str) && SemCscFeature.getInstance().getString("CscFeature_SmartManager_ConfigSubFeatures").contains(str);
    }

    public static void updateLocationEnabled(Context context, boolean z, int i, int i2) {

    }
}
