package com.leo.salt.utils;



import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

import com.leo.salt.tweaks.R;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.ExtraInfo.ReadFile;


public class ScreenUtil {

    // 将px值转换为dip或dp值，保证尺寸大小不变
    public static int px2dip(Context context, float pxValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (pxValue / scale + 0.5f);
    }


    // 将dip或dp值转换为px值，保证尺寸大小不变
    public static int dip2px(Context context, float dipValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dipValue * scale + 0.5f);
    }


    // 将px值转换为sp值，保证文字大小不变
    public static int px2sp(Context context, float pxValue) {
        final float fontScale = context.getResources().getDisplayMetrics().scaledDensity;
        return (int) (pxValue / fontScale + 0.5f);
    }


    // 将sp值转换为px值，保证文字大小不变
    public static int sp2px(Context context, float spValue) {
        final float fontScale = context.getResources().getDisplayMetrics().scaledDensity;
        return (int) (spValue * fontScale + 0.5f);
    }


    // 屏幕宽度（像素）
    public static int getWindowWidth(Activity context) {
        DisplayMetrics metric = new DisplayMetrics();
        context.getWindowManager().getDefaultDisplay().getMetrics(metric);
        return metric.widthPixels;
    }


    // 屏幕高度（像素）
    public static int getWindowHeight(Activity context) {
        DisplayMetrics metric = new DisplayMetrics();
        context.getWindowManager().getDefaultDisplay().getMetrics(metric);
        return metric.heightPixels;
    }

    /**
     * 获得状态栏的高度
     *
     * @param context
     * @return
     */
    public static int getStatusHeight(Context context) {

        int statusHeight = -1;
        try {
            Class<?> clazz = Class.forName("com.android.internal.R$dimen");
            Object object = clazz.newInstance();
            int height = Integer.parseInt(clazz.getField("status_bar_height")
                    .get(object).toString());
            statusHeight = context.getResources().getDimensionPixelSize(height);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return statusHeight;
    }

    /**
     * 屏幕分辨率
     *
     * @param mContext
     * @return
     */
    public static ScreenInfo getScreenInfo(Context mContext) {
        ScreenInfo result = new ScreenInfo();
        int widthPixels;
        int heightPixels;

        WindowManager w = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);

        Display d = w.getDefaultDisplay();
        DisplayMetrics metrics = new DisplayMetrics();
        d.getMetrics(metrics);
        // since SDK_INT = 1;
        widthPixels = metrics.widthPixels;
        heightPixels = metrics.heightPixels;
        // includes window decorations (statusbar bar/menu bar)
        if (Build.VERSION.SDK_INT >= 14 && Build.VERSION.SDK_INT < 17) {
            try {
                widthPixels = (Integer) Display.class.getMethod("getRawWidth").invoke(d);
                heightPixels = (Integer) Display.class.getMethod("getRawHeight").invoke(d);
            } catch (Exception ignored) {
                ignored.printStackTrace();
            }
        }
        // includes window decorations (statusbar bar/menu bar)
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                Point realSize = new Point();
                Display.class.getMethod("getRealSize", Point.class).invoke(d, realSize);
                widthPixels = realSize.x;
                heightPixels = realSize.y;
            } catch (Exception ignored) {
                ignored.printStackTrace();
            }
        }

        result.widthPixels = widthPixels;
        result.heightPixels = heightPixels;
        result.screenRealMetrics = widthPixels + " X " + heightPixels;
        result.density = metrics.density;
        result.density_default = metrics.DENSITY_DEFAULT;
        result.densityDpi = metrics.densityDpi;
        result.densityDpiStr = metrics.densityDpi + " dpi";
        result.scaledDensity = metrics.scaledDensity;
        result.xdpi = metrics.xdpi;
        result.ydpi = metrics.ydpi;
        result.size = (Math.sqrt(Math.pow(widthPixels, 2) + Math.pow(heightPixels, 2)) / metrics.densityDpi);
        result.sizeStr = String.format("%.2f", result.size) + getStringIdentifier(getContext(),"screen_inches_unit");

        return result;
    }
    public String getDisplayRefreshRate() { return String.valueOf(mDisplay.getRefreshRate()); }
    public ScreenUtil(Context context) {
        mDisplay = ((Activity) context).getWindowManager().getDefaultDisplay();
        mDisplayMetrics = new DisplayMetrics();
        mDisplay.getMetrics(mDisplayMetrics);
    }
    private final Display mDisplay;
    private DisplayMetrics mDisplayMetrics;

    public static String getGPUModel() {
        String result;
        if (getLeoBuild("ro.hardware").equals("qcom")) {
            result = ReadFile("/sys/class/kgsl/kgsl-3d0/gpu_model");
        }else {
            result = ReadFile("/sys/kernel/gpu/gpu_model");
        }
        return result;

    }
    public static String getGPUbusy() {
        String gpu;
        if (getLeoBuild("ro.hardware").equals("qcom")) {
            gpu =ReadFile("/sys/class/kgsl/kgsl-3d0/gpu_busy_percentage");
        }else {
            gpu =ReadFile("/sys/kernel/gpu/gpu_busy");

        }
        return gpu;
    }
}
