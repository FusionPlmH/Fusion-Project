package com.samsung.android.settings;

import android.content.Context;
import android.os.Build;

import com.samsung.android.feature.SemFloatingFeature;

public class Rune {
    public static final String COMMON_CONFIG_HIDE_STATUS_BAR = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR");
    public static final String COMMON_CONFIG_PACKAGE_NAME_MESSAGES = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME", "com.android.mms");
    public static final String COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME", "com.samsung.android.sm");

    public static final boolean SUPPORT_TEXT_REQUEST_AIRPLANE_MODE_BY_ATT = "ATT".equals(readSalesCode());
    public static final boolean SUPPORT_TEXT_REQUEST_APPS_OVERLAY_WINDOW_TITLE_BY_VZW = "VZW".equals(readSalesCode());
    public static final boolean SUPPORT_TEXT_REQUEST_APPS_WRITE_SETTING_TITLE_BY_VZW = "VZW".equals(readSalesCode());
    public static final boolean SUPPORT_TEXT_REQUEST_CONNECTIONS_WIFICALLING_TITLE_BY_ZVV = "ZVV".equals(readSalesCode());
    public static final boolean SUPPORT_TEXT_REQUEST_REGION_HONGKONG_TO_CHINA = isChinaModel();
    public static final boolean SUPPORT_TEXT_REQUEST_REGION_MACAU_TO_CHINA = isChinaModel();
    public static final boolean SUPPORT_TEXT_REQUEST_REGION_TAIWAN_TO_CHINA = isChinaModel();

    public static final boolean SUPPORT_WARNING_TOAST_FOR_CHANGING_DEFAULT_SMS = "ATT".equals(readSalesCode());
    private static Boolean mSupportDesktopMode = null;
    private static Boolean mSupportDisplayCut = null;

    public static boolean isCctModel() {
        return "CCT".equals(readSalesCode());
    }

    public static boolean isChinaCMCCModel() {
        return "CHM".equals(readSalesCode());
    }

    public static boolean isChinaCTCModel() {
        return "CTC".equals(readSalesCode());
    }

    public static boolean isChinaHKTWModel() {
        ;
        return false;
    }

    public static boolean isChinaModel() {
        return false;
    }

    public static boolean isChinaOpen() {
        String readSalesCode = readSalesCode();
        return "CHN".equals(readSalesCode) || "CHC".equals(readSalesCode);
    }

    public static boolean isFaver3Supported() {
        return false;
    }

    public static boolean isFolderModel(Context context) {
        return context.getPackageManager().hasSystemFeature("com.sec.feature.folder_type");
    }

    public static boolean isJapanDCMModel() {
        return "DCM".equals(readSalesCode());
    }

    public static boolean isJapanKDIModel() {
        return "KDI".equals(readSalesCode());
    }



    public static boolean isJapanSBMModel() {
        return "SBM".equals(readSalesCode());
    }

    public static boolean isLDUModel() {
        String readSalesCode = readSalesCode();
        return "PAP".equals(readSalesCode) || "FOP".equals(readSalesCode) || "LDU".equals(readSalesCode);
    }



    public static boolean isSprModel() {
        String readSalesCode = readSalesCode();
        return "XAS".equals(readSalesCode) || "SPR".equals(readSalesCode) || "VMU".equals(readSalesCode) || "BST".equals(readSalesCode);
    }

    public static boolean isSupportBixby() {
        return SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY");
    }



    public static boolean isTmoModel() {
        return "TMO".equals(readSalesCode());
    }




    public static String readSalesCode() {
        return "";
    }

    public static boolean supportAmoledDisplay() {
        return SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY");
    }

    public static boolean supportBigFont(Context context) {
        return isFolderModel(context) && isChinaModel() && !Build.PRODUCT.contains("elite");
    }

    public static boolean supportBlueLightFilter() {
        return true;
    }



}