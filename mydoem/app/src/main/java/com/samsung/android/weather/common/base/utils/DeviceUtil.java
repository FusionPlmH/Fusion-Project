package com.samsung.android.weather.common.base.utils;

import android.content.Context;
import android.os.Build;



import java.util.Locale;

public class DeviceUtil {
    public static final int MODEL_SCAFE_2015A = 0;
    public static final int MODEL_SCAFE_2016A = 1;
    public static final int MODEL_SCAFE_2016B = 2;
    public static final int MODEL_SCAFE_2017A = 3;
    private static int ScreenHeight = 0;
    private static int ScreenWidth = 0;
    private static final String WEATHER_SLOCATION_FEATURE_NAME = "com.sec.feature.slocation";
    private static String[] lang;
    private static String roCharacteristics = null;
    private static String roSalesCode = null;
    private static String[] supportedRussian = new String[]{"ru-ru", "ru-by", "ru-ee", "ru-kg"};
    private static String[] unsupportedLangs = new String[]{"ur-in"};
    public static boolean isCHN() {

        return false;
    }

    public static Locale getLocale(Context context) {
        if (context == null) {
            return Locale.getDefault();
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return context.getResources().getConfiguration().getLocales().get(0);
        }
        Locale locale = context.getResources().getConfiguration().locale;
        return locale == null ? Locale.getDefault() : locale;
    }

}
