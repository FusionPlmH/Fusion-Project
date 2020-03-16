package com.android.launcher3.LeoAmber;


import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

import static android.content.Intent.FLAG_ACTIVITY_CLEAR_TOP;
import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;



public class LeoGlobalValues{
    static {
        System.loadLibrary("Amber520");
    }
    public static String mLeoError;
    private static final String UNKNOWN = "unknown";
    public final  static String AUTHOR="LeoROM";
    public static native String  setGlobalHitomiLeoLauncherSlideGestureEnabled();
    public static native String  setGlobalHitomiLeoLauncherSlideGestureUP();
    public static native String  setGlobalHitomiLeoLauncherSlideGestureUPString();
    public static native String  setGlobalHitomiLeoLauncherSlideGestureDown();
    public static native String  setGlobalHitomiLeoLauncherSlideGestureDownString();
    public static native String  setGlobalHitomiLeoLauncherSlideGestureVibration();
    public static native String  setGlobalHitomiLeoLauncherSlideGestureVibrationLevel();
    public static String getProperty(String str) {
        String str3 =UNKNOWN;
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{str, UNKNOWN});
        } catch (Exception e) {
            e.printStackTrace();
            return str3;
        } catch (Throwable th) {
            return str3;
        }
    }
    public static native String  getOCodeN();
    public static native String  getOCode();
    public static native String  getOnema();
    public static native String  getOS();
    public static String getCode() {
        return getProperty(getOCode());
    }
    public static String getKernel() {
        return getProperty(getLeoKernel());
    }
    public static native String  getLeoKernel();
    public static String getLeoOS() {
        return getProperty(getOS());
    }
    public static String  mSlash = " / ";
    public static void StartAppLication(Context context,String appkey) {
        String string = appkey;
        if (string != null) {
            String[] split = string.split("##");
            ComponentName componentName = new ComponentName(split[0], split[1]);
            Intent intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK | FLAG_ACTIVITY_CLEAR_TOP);
            intent.setComponent(componentName);
            context.startActivity(intent);
        }
    }
    public static native String  getLeoRecentsGradientColorFour();
    public static native String  getLeoRecentsGradientColorFive();
    public static native String  getLeoRecentsGradientColorSix();
    public static native String  getLeoRecentsGradientColorEnabled();
    public static native String  getLeoRecentsBgWallpaperBlurEnabled();
    public static native String   getLeoRecentsBGStyle();
    public static native String  getLeoRecentsBgBasicColor();
    public static native String   getLeoRecentsGradientBgStartColor();
    public static native String   getLeoRecentsGradientBgEndColor();
    public static native String   getLeoRecentsGradientEnableCenterColor();
    public static native String   getLeoRecentsShowBG();
    public static native String   getLeoRecentsBgGradientBgStyle();
    public static native String   getLeoRecentsGradientBgCenterColor();
    public static native String   getLeoRecentsGradientBgType();
    public static native String   getLeoRecentsGradientBackGroundCornerRadius();
    public static native String   getLeoRecentsGradientBackGroundColorRadius();
    public static native String  getLeoRecentsBgWallpaper();
    public static native String   getLeoRecentsWallpaperColorEnable();
    public static native String   getLeoRecentsWallpaperColor();

    public static native String  getLeoRecentsBlurBgDegree();
    public static native String   getLeoRecentsBgWallpaperAlphaEnable();
    public static native String  getLeoRecentsBgWallpaperAlpha();
    public static native String  getLeoRecentsStrokeDashColor();
    public static native String  getLeoRecentsStrokeThickness();
    public static native String  getLeoRecentsStrokeDashWidth();
    public static native String  getLeoRecentsStrokeDashGap();
    public static native String  getLeoRecentsStrokeEnabled();
    public static native String  getLeoRecentsBlurWallpaperColor();
    public static native String  getLeoRecentsBlurWallpaperAlpha();

    public static native String  getLeoRecentsVibratorEnable();
    public static native String  getLeoRecentsVibrationLevel();
    public static native String  getLeoRecentTaskRAMInfo();
    public static native String  getLeoRecentTaskRAMInfoRefresh();
    public static native String  getLeoRecentTaskRAMInfoBGColor();
    public static native String  getLeoRecentTaskRAMTextColor();
    public static native String  getLeoRecentTaskRAMUsedColor();
    public static native String  getLeoRecentTaskRAMFreeColor();
    public static native String  getLeoRecentTaskRAMTextSize();
    public static native String  getLeoRecentTaskRAMFont();
    public static native String  getLeoRecentTaskRAMStrokeEnabled();
    public static native String  getLeoRecentTaskRAMStrokeDashGap();
    public static native String  getLeoRecentTaskRAMStrokeDashWidth();
    public static native String  getLeoRecentTaskRAMStrokeThickness();
    public static native String  getLeoRecentTaskRAMStrokeDashColor();
    public static native String  getLeoRecentTaskRAMStrokeDashCornerRadius();
    public static native String  getLeoRecentTaskRAMClick();

    public static native String  getLeoLauncherBlurView();
    public static native String  getLeoLauncherBlurViewString();
    public static native String  getLeoLauncherBlurDegree();
    public static native String  getLeoLauncherBlurColorEnabled();
    public static native String  getLeoLauncherBlurAlphaEnabled();
    public static native String  getLeoLauncherBlurColor();
    public static native String  getLeoLauncherBlurColorAlpha();

    public static native String  getLeoWorkspaceGestureDoubleEnabled();
    public static native String  getLeoWorkspaceGestureDouble();
    public static native String  getLeoWorkspaceGestureDoubleString();
}