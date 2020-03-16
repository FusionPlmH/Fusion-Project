package com.sec.android.daemonapp.common;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;

import com.samsung.android.weather.util.SLog;

import com.sec.android.daemonapp.appwidget.entities.WidgetConfig;

import java.lang.reflect.Field;

public class WidgetUtil {
    private static final int IDXSPANX = 0;
    private static final int IDXSPANY = 1;

    public static boolean checkMode(int i, int i2) {
        return (i & i2) > 0;
    }

    public static int getDrawMode(int i, float f, boolean z, boolean z2) {
        int i2 = 32;
        boolean z3 = f > 0.5f;
        SLog.d("", "mDrawMode : isOpenTheme " + z + ", isWhiteWallpaper :" + z2 + ", widgetTheme :" + i + ", isOpaque :" + z3);
        int i3 = i == 0 ? 0 | 1 : 0 | 2;
        if (z2) {
            if (checkMode(i3, 1)) {
                i3 |= 32;
            } else {
                i3 |= z3 ? 16 : 32;
            }
        } else if (!z) {
            if (checkMode(i3, 1)) {
                if (!z3) {
                    i2 = 16;
                }
                i3 |= i2;
            } else {
                i3 |= 16;
            }
        }
        return (((double) f) > 0.1d || z) ? i3 : z2 ? i3 | WidgetConfig.MODE_TEXT_SHADOW_WHITE : i3 | WidgetConfig.MODE_TEXT_SHADOW_BLACK;
    }

    public static int getTextColor(int i, int i2) {

        return i;
    }

    public static int getTextId(Context context, int i, int i2) {

        return i;
    }

    public static int getWidgetSize(Context context, int[] iArr) {
        SLog.d("", "getWidgetSize x = " + iArr[0]);
        SLog.d("", "getWidgetSize y = " + iArr[1]);
        return 0;
    }

    public static String getWidgetSizeLogData(boolean z, int i) {

        return null;
    }

    public static String getWidgetSizeStr(WidgetConfig widgetConfig) {
        return null;
    }

    public static boolean isDCMHomescreen(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        return (resolveActivity == null || resolveActivity.activityInfo == null) ? false : "com.nttdocomo.android.dhome".equals(resolveActivity.activityInfo.packageName);
    }

    public static boolean isWidgetExisted(int[] iArr) {
        if (iArr == null || iArr.length > 0) {
            return true;
        }
        SLog.d("", "The widget does not exist in idle!!");
        return false;
    }

    public static void sendWidgetUpdate(Context context) {
        Intent intent = new Intent("com.sec.android.widgetapp.ap.hero.accuweather.widget.action.APPWIDGET_UPDATE");
        intent.setPackage("com.sec.android.daemonapp");
        intent.setFlags(268435456);
        context.sendBroadcast(intent);
    }

    public static void startLocationSettingActivity(Context context) {
        Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        intent.setFlags(268468224);


    }
}
