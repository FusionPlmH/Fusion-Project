package com.android.launcher3.LeoAmber;



import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.icu.util.Calendar;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import android.util.Log;
import android.widget.Toast;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Locale;


import static com.android.launcher3.LeoAmber.LeoGlobalValues.StartAppLication;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.getLeoResource;


public class LeoGlobalUtils{
    static {
        System.loadLibrary("Amber520");
    }
    public static String getLeoString(Context cxt,String key) {

        return Settings.System.getString(cxt.getContentResolver(), key);
    }
    public static Uri getLeoUri(String key) {
        return Settings.System.getUriFor( key);
    }
    public static int getLeoInt(Context cxt, String key, int defaultValue) {

        return Settings.System.getInt(cxt.getContentResolver(), key, defaultValue);
    }
    public  static  final String  LEO_ACTION_GLOBAL= "ACTION";
    public  static final String  LEO_ACTION_SERVICE= "com.global.hitomileo.action.service";
    public  static final String  HITOMILEO_ACTION_LOCK= "com.hitomileo.action.lock";
    public  static final String  HITOMILEO_ACTION_HOME= "com.hitomileo.action.home";
    public  static final String  HITOMILEO_ACTION_BACK= "com.hitomileo.action.back";
    public  static final String  HITOMILEO_ACTION_SOUND_PLUS= "com.hitomileo.action.SOUND_plus";
    public  static final String  HITOMILEO_ACTION_SOUND_MINUS= "com.hitomileo.action.SOUND_minus";
    public  static final String  HITOMILEO_ACTION_MOBEDATA= "com.hitomileo.action.mobedata";
    public  static final String  HITOMILEO_ACTION_PART_SCREENSSHOT= "com.hitomileo.action.part_screenshot";
    public  static final String  HITOMILEO_ACTION_WIFI_CODE= "com.hitomileo.action.wifi_code";
    public  static final String  HITOMILEO_ACTION_FINDER= "com.hitomileo.action.finder";
    public  static final String  HITOMILEO_ACTION_TASK= "com.hitomileo.action.task";
    public  static final String  HITOMILEO_ACTION_CAMERA= "com.hitomileo.action.camera";
    public  static final String  HITOMILEO_ACTION_NOTIFICATION= "com.hitomileo.action.notification";
    public  static final String  HITOMILEO_ACTION_SCREENSSHOT= "com.hitomileo.action.screenshot";
    public  static final String  HITOMILEO_ACTION_CLEARMEMORY= "com.hitomileo.action.clearmemory";
    public  static final String  HITOMILEO_ACTION_KILLAPP= "com.hitomileo.action.killapp";
    public  static final String  HITOMILEO_ACTION_SCREENRECORD= "com.hitomileo.action.screenrecord";
    public  static final String  HITOMILEO_ACTION_MWDIA_UP= "com.hitomileo.action.media.up";
    public  static final String  HITOMILEO_ACTION_MWDIA_DOWN= "com.hitomileo.action.media.down";
    public  static final String  HITOMILEO_ACTION_MADIA_PLAY= "com.hitomileo.action.media.play";
    public  static final String  HITOMILEO_ACTION_VIBRATE= "com.hitomileo.action.vibrate";
    public  static final String  HITOMILEO_ACTION_WIFI= "com.hitomileo.action.wifi";
    public  static final String  HITOMILEO_ACTION_APP_GLOBALACTIONS= "com.hitomileo.action.globalactions";
    public  static final String  HITOMILEO_ACTION_AIRPLANE= "com.hitomileo.action.airplane";
    public  static final String  HITOMILEO_ACTION_LAST_APP= "com.hitomileo.action.last.app";
    public  static final String  HITOMILEO_ACTION_BIXBY_VOICE= "com.hitomileo.action.bixby.voice";
    public  static final String  HITOMILEO_ACTION_BIXBY_HOME= "com.hitomileo.action.bixbyhome";
    public  static final String  HITOMILEO_ACTION_LEOAPPNAEM= "com.hitomileo.action.leoapp";
    public  static final String  HITOMILEO_ACTION_OUTDOOR= "com.hitomileo.action.outdoor";
    public  static final String  HITOMILEO_ACTION_SPLITSCTEEN= "com.hitomileo.action.splitscreen";
    public  static final String  HITOMILEO_ACTION_TORCH= "com.hitomileo.action.flashlight";
    public  static final String  HITOMILEO_ACTION_MIPOP= "com.hitomileo.action.mipop";
    public  static final String  HITOMILEO_ACTION_FLOATBLL= "com.hitomileo.action.floatball";
    public  static  final String HITOMILEO_ACTION_TODAY= "com.hitomileo.action.Today";
    public static void LeoGlobalActiong( Context context,int defStyle, String appkey) {
        Intent intent = new Intent();
        intent.setAction(LEO_ACTION_SERVICE);
        switch (defStyle) {
            case 100://锁屏
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_LOCK);
                context.sendBroadcast(intent);
                break;
            case 101://HOME
                intent.putExtra(LEO_ACTION_GLOBAL, HITOMILEO_ACTION_HOME);
                context.sendBroadcast(intent);
                break;
            case 102://返回
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_BACK);
                context.sendBroadcast(intent);
                break;
            case 103://音量+
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SOUND_PLUS);
                context.sendBroadcast(intent);
                break;
            case 104://音量-
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SOUND_MINUS);
                context.sendBroadcast(intent);
                break;
            case 105://移动数据
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_MOBEDATA);
                context.sendBroadcast(intent);
                break;
            case 106://局部截图
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_PART_SCREENSSHOT);
                context.sendBroadcast(intent);
                break;
            case 107://本地WIFI密码
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_WIFI_CODE);
                context.sendBroadcast(intent);
                break;
            case 108://S搜索
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_FINDER);
                context.sendBroadcast(intent);
                break;
            case 109://最近任务
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_TASK);
                context.sendBroadcast(intent);
                break;
            case 110://相机
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_CAMERA);
                context.sendBroadcast(intent);
                break;
            case 111://展开下拉
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_NOTIFICATION);
                context.sendBroadcast(intent);
                break;
            case 112://屏幕截图
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SCREENSSHOT);
                context.sendBroadcast(intent);
                break;
            case 113://后台进程清理
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_CLEARMEMORY);
                context.sendBroadcast(intent);
                break;
            case 114://结束当前程序
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_KILLAPP);
                context.sendBroadcast(intent);
                break;
            case 115://屏幕录像
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SCREENRECORD);
                context.sendBroadcast(intent);
                break;
            case 116://上一曲
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_MWDIA_UP);
                context.sendBroadcast(intent);
                break;
            case 117://下一曲
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_MWDIA_DOWN);
                context.sendBroadcast(intent);
                break;
            case 118://播放暂停
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_MADIA_PLAY);
                context.sendBroadcast(intent);
                break;
            case 119://声音模式
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_VIBRATE);
                context.sendBroadcast(intent);
                break;
            case 120://WIFI切换
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_WIFI);
                context.sendBroadcast(intent);
                break;
            case 121://电源菜单
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_APP_GLOBALACTIONS);
                context.sendBroadcast(intent);
                break;
            case 122://飞行模式
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_AIRPLANE);
                context.sendBroadcast(intent);
                break;
            case 123://上一个程序
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_LAST_APP);
                context.sendBroadcast(intent);
                break;
            case 124://BIXBY语音
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_BIXBY_VOICE);
                context.sendBroadcast(intent);
                break;
            case 125://BIXBY主页
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_BIXBY_HOME);
                context.sendBroadcast(intent);
                break;
            case 126://LEOapp
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_LEOAPPNAEM);
                context.sendBroadcast(intent);
                break;
            case 127://户外模式
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_OUTDOOR);
                context.sendBroadcast(intent);
                break;
            case 128://任何程序
                StartAppLication(context,appkey);
                break;
            case 129://分屏
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SPLITSCTEEN);
                context.sendBroadcast(intent);
                break;
            case 130://手电
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_TORCH);
                context.sendBroadcast(intent);
                break;
            case 131://屏幕助手
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_MIPOP);
                context.sendBroadcast(intent);
                break;
            case 132://悬浮球
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_FLOATBLL);
                context.sendBroadcast(intent);
                break;
            case 133://悬浮球
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_TODAY);
                context.sendBroadcast(intent);
                break;
        }
    }


    public static String getLeoCustomString (String str2)
    {
        String str ="";
        if (!TextUtils.isEmpty(str2)) {
            str=(str2);
        } else {
            str=(TextUtils.isEmpty(str)? "Leo ROM" : str);
        }
        return str;
    }



    public static class TypefaceFonts extends MetricAffectingSpan {
        private final Typeface typeface;

        public TypefaceFonts(Typeface typeface) {
            this.typeface = typeface;
        }

        public void updateDrawState(TextPaint ds) {
            setTypeFace(ds, this.typeface);
        }

        public void updateMeasureState(TextPaint paint) {
            setTypeFace(paint, this.typeface);
        }

        private static void setTypeFace(Paint paint, Typeface tf) {
            paint.setTypeface(tf);
        }
    }

    public static Typeface setLeoRomFonts(int lock, int key) {

        Typeface font = null;
        switch (key) {
            case 0:
            default:
                if (lock == 0) {
                    font=TypefaceStyleDefault;
                } else if ( lock == 1) {
                    font=DefaultLockClock;
                }
                break;
            case 1:
                font=TypefaceStyle1;
                break;
            case 2:
                font=TypefaceStyle2;
                break;
            case 3:
                font=TypefaceStyle3;
                break;
            case 4:
                font=TypefaceStyle4;
                break;
            case 5:
                font=TypefaceStyle5;
                break;
            case 6:
                font=TypefaceStyle6;
                break;
            case 7:
                font=TypefaceStyle7;
                break;
            case 8:
                font=TypefaceStyle8;
                break;
            case 9:
                font=TypefaceStyle9;
                break;
            case 10:
                font=TypefaceStyle10;
                break;
            case 11:
                font=TypefaceStyle11;
                break;
            case 12:
                font=TypefaceStyle12;
                break;
            case 13:
                font=TypefaceStyle13;
                break;
            case 14:
                font=TypefaceStyle14;
                break;
            case 15:
                font=TypefaceStyle15;
                break;
            case 16:
                font=TypefaceStyle16;
                break;
            case 17:
                font=TypefaceStyle17;
                break;
            case 18:
                font=TypefaceStyle18;
                break;
            case 19:
                font=TypefaceStyle19;
                break;
            case 20:
                font=TypefaceStyle20;
                break;
            case 21:
                font=TypefaceStyle21;
                break;
            case 22:
                font=TypefaceStyle22;
                break;
            case 23:
                font=TypefaceStyle23;
                break;
            case 24:
                font=TypefaceStyle24;
                break;
            case 25:
                font=TypefaceStyle25;
                break;
            case 26:
                font=TypefaceStyle26;
                break;
            case 27:
                font=TypefaceStyle27;
                break;
            case 28:
                font=TypefaceStyle28;
                break;
            case 29:
                font=TypefaceStyle29;
                break;
            case 30:
                font=TypefaceStyle30;
                break;
            case 31:
                font=TypefaceStyle31;
                break;
            case 32:
                font=TypefaceStyle32;
                break;
            case 33:
                font=TypefaceStyle33;
                break;
            case 34:
                font=TypefaceStyle34;
                break;
            case 35:
                font=TypefaceStyle35;
                break;
            case 36:
                font=TypefaceStyle36;
                break;
        }


        return font;
    }


    public static Typeface TypefaceStyleDefault =Typeface.create("sans-serif", Typeface.NORMAL);
    public static Typeface  TypefaceStyle1 =Typeface.create("sans-serif", Typeface.ITALIC);
    public static Typeface  TypefaceStyle2 =Typeface.create("sans-serif", Typeface.BOLD);
    public static Typeface  TypefaceStyle3 =Typeface.create("sans-serif", Typeface.BOLD_ITALIC);
    public static Typeface  TypefaceStyle4 =Typeface.create("sans-serif-light", Typeface.NORMAL);
    public static Typeface  TypefaceStyle5 =Typeface.create("sans-serif-light", Typeface.ITALIC);
    public static Typeface  TypefaceStyle6 =Typeface.create("sans-serif-thin", Typeface.NORMAL);
    public static Typeface  TypefaceStyle7 =Typeface.create("sans-serif-thin", Typeface.ITALIC);
    public static Typeface  TypefaceStyle8=Typeface.create("sans-serif-condensed", Typeface.NORMAL);
    public static Typeface  TypefaceStyle9 =Typeface.create("sans-serif-condensed", Typeface.ITALIC);
    public static Typeface  TypefaceStyle10 =Typeface.create("sans-serif-condensed-light", Typeface.NORMAL);
    public static Typeface TypefaceStyle11 =Typeface.create("sans-serif-condensed-light", Typeface.ITALIC);
    public static Typeface TypefaceStyle12 =Typeface.create("sans-serif-condensed", Typeface.BOLD);
    public static Typeface TypefaceStyle13 =Typeface.create("sans-serif-condensed", Typeface.BOLD_ITALIC);
    public static Typeface TypefaceStyle14 =Typeface.create("sans-serif-medium", Typeface.NORMAL);
    public static Typeface TypefaceStyle15 =Typeface.create("sans-serif-medium", Typeface.ITALIC);
    public static Typeface TypefaceStyle16 =Typeface.create("sans-serif-black", Typeface.NORMAL);
    public static Typeface TypefaceStyle17 =Typeface.create("sans-serif-black", Typeface.ITALIC);
    public static Typeface TypefaceStyle18 =Typeface.create("cursive", Typeface.NORMAL);
    public static Typeface TypefaceStyle19 =Typeface.create("cursive", Typeface.BOLD);
    public static Typeface TypefaceStyle20 =Typeface.create("casual", Typeface.NORMAL);
    public static Typeface TypefaceStyle21 =Typeface.create("serif", Typeface.NORMAL);
    public static Typeface TypefaceStyle22 =Typeface.create("serif", Typeface.ITALIC);
    public static Typeface TypefaceStyle23 =Typeface.create("serif", Typeface.BOLD);
    public static Typeface TypefaceStyle24 =Typeface.create("serif", Typeface.BOLD_ITALIC);
    public static Typeface TypefaceStyle25 =Typeface.createFromFile("system/fonts/leoshouxie.ttf");
    public static Typeface TypefaceStyle26=Typeface.createFromFile("system/fonts/leozlyjt.ttf");
    public static Typeface TypefaceStyle27=Typeface.createFromFile("system/fonts/leolove.ttf");
    public static Typeface TypefaceStyle28=Typeface.createFromFile("system/fonts/leohz.ttf");
    public static Typeface TypefaceStyle29=Typeface.createFromFile("system/fonts/leoguzhuan.ttf");
    public static Typeface TypefaceStyle30=Typeface.createFromFile("system/fonts/leody.ttf");
    public static Typeface TypefaceStyle31=Typeface.createFromFile("system/fonts/leokongxin.ttf");
    public static Typeface TypefaceStyle32=Typeface.createFromFile("system/fonts/leomudan.ttf");
    public static Typeface TypefaceStyle33=Typeface.createFromFile("system/fonts/leofzkt.ttf");
    public static Typeface TypefaceStyle34=Typeface.createFromFile("system/fonts/leofzybkt.ttf");
    public static Typeface TypefaceStyle35=Typeface.createFromFile("system/fonts/leohypinyin.ttf");
    public static Typeface TypefaceStyle36=Typeface.createFromFile("system/fonts/LeoHitomi.ttf");
    public static Typeface DefaultLockClock=Typeface.createFromFile("system/fonts/Clock2017L.ttf");


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

    public static GradientDrawable LeoGradientDrawable(int StartColor, int CenterColor, int EndColor, int FourColor, int fivecolor, int sixrColor,
                                                       int EnableCenterColor , int GradientBgStyle, boolean StrokeEnabled, int StrokeThickness,
                                                       int DashWidth, int DashGap, int DashColor , int CornerRadius , int GradientBgType , int ColorRadius){
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

                Bitmap finalBitmap = LeoGlobalBlur.with(cxt)
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

    public static void LeoComponetURL(Context context,String str) {


        String[] split = str.split("/");
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(split[0], split[1]));
        intent.setFlags(268435456);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            Toast.makeText(context,context.getString(getLeoResource(context,"string/no_activity")), Toast.LENGTH_LONG).show();
        }
    }
}