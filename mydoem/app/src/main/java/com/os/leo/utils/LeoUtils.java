package com.os.leo.utils;


import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.SystemProperties;
import android.provider.Settings;
import android.provider.Settings12;
import android.util.Log;

import java.io.File;
import java.util.Locale;
import java.util.Random;

import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;

public class LeoUtils{

    public static String getLeoCityData(Context context, String str) {
        String str2 = CityLocator.getPhoneLocation(context, str);
        return (str == null || str2 == null) ? "" : str2;
    }
    public static void getLeoSecureInt(Context cxt, String key, int Value) {

        Settings.Secure.putInt(cxt.getContentResolver(), key, Value);
    }
    public static int getLeoInt(Context cxt,String key, int defaultValue) {

        return Settings.System.getInt(cxt.getContentResolver(), key, defaultValue);
    }
    public static int getLeoForUser(Context cxt,String name, int def, int userHandle) {

        return Settings12.System.getIntForUser(cxt.getContentResolver(), name, def, userHandle);
    }
    public static String getLeoString(Context cxt,String key) {

        return Settings.System.getString(cxt.getContentResolver(), key);
    }
    public static Uri getLeoUri(String key) {
        return Settings.System.getUriFor( key);
    }
    public static  float  mNavBar=(((float) SystemProperties.getInt("persist.sys.display_density", 420)) / 160.0f);


    public static void getLeoGradientStroke(GradientDrawable leoDrawable, boolean StrokeEnabled, int StrokeThickness, int DashWidth, int DashGap, int DashColor , int ColorRadius){
        int mCustomStrokeThickness=StrokeThickness;
        int mCustomDashWidth=DashWidth;
        int mCustomDashGap=DashGap;
        int mCustomDashColor=DashColor;
        boolean mCustomEnabled= StrokeEnabled;
        // leoDrawable. setColor(color);
        if (mCustomEnabled) {
            leoDrawable.setStroke(mCustomStrokeThickness, mCustomDashColor, mCustomDashWidth, mCustomDashGap);
            leoDrawable.setCornerRadius((float) ColorRadius);
        }
    }
    public static GradientDrawable getLeoBasicColor(boolean StrokeEnabled,int StrokeThickness, int DashWidth,int DashGap,int DashColor ,int ColorRadius,int bgColor){
        GradientDrawable LeoGradientDrawable= new GradientDrawable();
        int mCustomStrokeThickness=StrokeThickness;
        int mCustomDashWidth=DashWidth;
        int mCustomDashGap=DashGap;
        int mCustomDashColor=DashColor;
        boolean mCustomEnabled= StrokeEnabled;
        LeoGradientDrawable. setColor(bgColor);
        if (mCustomEnabled) {

            LeoGradientDrawable.setStroke(mCustomStrokeThickness, mCustomDashColor, mCustomDashWidth, mCustomDashGap);
            LeoGradientDrawable.setCornerRadius((float) ColorRadius);
        }
        return LeoGradientDrawable;
    }
    public static void getLeoWallpaperColor(Drawable ddd, int coloron, int color){
        if (coloron==1) {
            ddd.setColorFilter(color, PorterDuff.Mode.MULTIPLY);
        }
    }
    public static void getLeoWallpaperAlpha(Drawable ddd,boolean Alpha,int getAlpha){
        if (Alpha) {
            ddd.setAlpha(getAlpha);
        }
    }

    public static  GradientDrawable LeoGradientDrawable(int StartColor,int CenterColor, int EndColor, int FourColor,int fivecolor,int sixrColor,
                                                        int EnableCenterColor ,int GradientBgStyle,boolean StrokeEnabled,int StrokeThickness,
                                                        int DashWidth,int DashGap,int DashColor ,int CornerRadius ,int GradientBgType ,int ColorRadius){
        GradientDrawable LeoGradientDrawable= new GradientDrawable();
        int[] BackgroundGradientColor ;
        if (EnableCenterColor == 0) {
            BackgroundGradientColor = new int[3];
            BackgroundGradientColor[0] = StartColor;
            BackgroundGradientColor[1] = CenterColor;
            BackgroundGradientColor[2] = EndColor;

        } else  {
            BackgroundGradientColor = new int[6];
            BackgroundGradientColor[0] = StartColor;
            BackgroundGradientColor[1] = CenterColor;
            BackgroundGradientColor[2] = EndColor;
            BackgroundGradientColor[3] = FourColor;
            BackgroundGradientColor[4] = fivecolor;
            BackgroundGradientColor[5] = sixrColor;
        }
        switch ( GradientBgStyle) {
            case 0:
                //xia-shang
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, BackgroundGradientColor);
                break;
            case 1:
                //zuo-you
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, BackgroundGradientColor);
                break;
            case 2:
                //you-zuo
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, BackgroundGradientColor);
                break;
            case 3:
                //you-zuo
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.RIGHT_LEFT, BackgroundGradientColor);
                break;
            case 4:
                //youxie-zuoshang
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BR_TL, BackgroundGradientColor);
                break;
            case 5:
                //
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BL_TR, BackgroundGradientColor);
                break;
            case 6:
                //
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, BackgroundGradientColor);
                break;
            case 7:
                //
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TR_BL, BackgroundGradientColor);
                break;
        }


        getLeoGradientStroke(LeoGradientDrawable,
                StrokeEnabled,
                StrokeThickness,
                DashWidth,
                DashGap,
                DashColor,
                CornerRadius);
        LeoGradientDrawable.setGradientType(GradientBgType);
        LeoGradientDrawable.setCornerRadius((float) CornerRadius);
        LeoGradientDrawable.setGradientRadius((float) ColorRadius);

        return LeoGradientDrawable;
    }
   static Drawable ddd;
    public static Drawable getLeoWallpaper(Context cxt,String str,int ColorEnable,int color,boolean AlphaEnable,int alpha ){
     //   Drawable ddd=null;
        if (str != null) {
            File backgroundwallpaper = new File(Uri.parse(str).getPath());
            if (backgroundwallpaper != null) {
                ddd = new BitmapDrawable(cxt.getResources(), BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath()));
                Log.v(AUTHOR, CORYRIGHT+ China );
            }
            getLeoWallpaperColor(ddd, ColorEnable, color);
            getLeoWallpaperAlpha(ddd,AlphaEnable,alpha);
        }

        return ddd;
    }
    static Drawable BlurDrawable;
    public static Drawable getLeoBlurWallpaper(Context cxt, String str , int blur,int ColorEnable,int color,boolean AlphaEnable,int alpha){
        if (str != null) {
            File backgroundwallpaper = new File(Uri.parse(str).getPath());
            if (backgroundwallpaper != null) {
                bitmapWallpaper = BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath());
                Log.v(AUTHOR, CORYRIGHT+China );
                Bitmap finalBitmap = LeoBlur.with(cxt)
                        .bitmap(bitmapWallpaper)
                        .radius(blur)
                        .scale(8)
                        .blur();
                BlurDrawable= new BitmapDrawable(cxt.getResources(), finalBitmap);
            }
        }
        getLeoWallpaperColor(BlurDrawable, ColorEnable, color);
        getLeoWallpaperAlpha(BlurDrawable,AlphaEnable,alpha);
        return BlurDrawable;
    }
  static Bitmap bitmapWallpaper;

    public static boolean isLunarSetting() {
        String language = getLanguageEnv();
        if (language != null
                && (language.trim().equals("zh-CN") || language.trim().equals("zh-HK") || language.trim().equals("zh-MO")|| language.trim().equals("zh-TW")))
            return true;
        else
            return false;
    }
    static String getLanguageEnv() {
        Locale l = Locale.getDefault();
        String language = l.getLanguage();
        String country = l.getCountry().toLowerCase();
        if ("zh".equals(language)) {
            if ("cn".equals(country)) {
                language = "zh-CN";//中国大陆
            }else if ("hk".equals(country)) {
                language = "zh-HK";//中国香港
            } else if ("mo".equals(country)) {
                language = "zh-MO";//中国澳门
            }else if ("".equals(country)) {
                language = "zh-TW";//中国台湾省
            }
        }
        return language;
    }
}