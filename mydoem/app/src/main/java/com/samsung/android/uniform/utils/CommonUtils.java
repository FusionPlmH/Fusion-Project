package com.samsung.android.uniform.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.util.Log;
import android.widget.TextView;
import java.util.List;

public class CommonUtils {
    private static final String TAG = CommonUtils.class.getSimpleName();

    public static String getPackageName(Context context, String pkgName) {
        if (pkgName == null) {
            return null;
        }
        PackageManager pm = context.getPackageManager();
        try {
            ApplicationInfo appInfo = pm.getApplicationInfo(pkgName, 0);
            if (appInfo != null) {
                return pm.getApplicationLabel(appInfo).toString();
            }
            return null;
        } catch (Exception e) {
            Log.e(TAG, "Error while getting app name", e);
            return null;
        }
    }

    public static TextView normalizeTextColor(TextView textView) {
        return normalizeTextColor(textView, (int) Constants.BASE_GRAY_LEVEL);
    }

    public static TextView normalizeTextColor(TextView textView, int limitGrayLevel) {
        if (!(textView == null || textView.getContext() == null)) {
            int color = textView.getCurrentTextColor();
            int alpha = Color.alpha(color);
            int r = Color.red(color);
            int g = Color.green(color);
            int b = Color.blue(color);
            int max = Math.round(((float) Math.max(r, Math.max(g, b))) * (((float) alpha) / 255.0f));
            if (max > limitGrayLevel) {
                float rate = ((float) limitGrayLevel) / ((float) max);
                textView.setTextColor(Color.argb(alpha, Math.round(((float) r) * rate), Math.round(((float) g) * rate), Math.round(((float) b) * rate)));
            }
        }
        return textView;
    }

    public static int normalizeTextColor(int textColor, int limitGrayLevel) {
        int alpha = Color.alpha(textColor);
        int r = Color.red(textColor);
        int g = Color.green(textColor);
        int b = Color.blue(textColor);
        int max = Math.round(((float) Math.max(r, Math.max(g, b))) * (((float) alpha) / 255.0f));
        if (max <= limitGrayLevel) {
            return textColor;
        }
        float rate = ((float) limitGrayLevel) / ((float) max);
        return Color.argb(alpha, Math.round(((float) r) * rate), Math.round(((float) g) * rate), Math.round(((float) b) * rate));
    }

    public static int[] toIntArray(List<Integer> list) {
        int[] ret = new int[list.size()];
        int i = 0;
        for (Integer intValue : list) {
            int i2 = i + 1;
            ret[i] = intValue.intValue();
            i = i2;
        }
        return ret;
    }
}
