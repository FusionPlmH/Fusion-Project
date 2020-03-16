

package com.android.systemui.statusbar.phone;


import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.keyguard.CarrierText;
import com.android.server.policy.PhoneWindowManager;
import com.android.systemui.BatteryMeterView;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;
import com.android.systemui.SystemUI;
import com.android.systemui.SystemUIApplication;
import com.android.systemui.fusionleo.LeoKeyguardWeather;
import com.android.systemui.fusionleo.LeoLogoView;
import com.android.systemui.fusionleo.LeoMainBattery;
import com.android.systemui.fusionleo.LeoNetworkTraffic;

import com.android.systemui.fusionleo.LeoTemp;
import com.fusionleo.LeoX.systemui.FloatWindowManager;
import com.fusionleo.LeoX.systemui.LeoConfig;
import com.fusionleo.LeoProvider.LeoObserver;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.NetspeedView;
import com.android.systemui.util.LeoDrawable;
import com.samsung.android.feature.SemCscFeature;


import static android.view.View.GONE;
import static android.view.View.VISIBLE;


import static com.android.systemui.SystemUIApplication.getContext;
import static com.fusionleo.LeoProvider.LeoManages.mLeoStatusBarMainBattery;
import static com.fusionleo.LeoProvider.LeoManages.mLeoStatusBarNetworkTraffic;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarSignalOrientation;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusbarMainBatteryEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusbarMainBatterySize;
import static com.fusionleo.LeoProvider.LeoManages.*;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBGStyle;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgBasicColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgGradientBgStyle;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgWallpaper;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgWallpaperAlpha;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgWallpaperAlphaEnable;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgWallpaperBlurEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBlurBgDegree;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBackGroundColorRadius;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBackGroundCornerRadius;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBgCenterColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBgEndColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBgStartColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBgType;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientColorFive;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientColorFour;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientColorSix;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientEnableCenterColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarShowBG;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarStrokeDashColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarStrokeDashGap;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarStrokeDashWidth;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarStrokeEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarStrokeThickness;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarWallpaperColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarWallpaperColorEnable;
import static com.android.systemui.util.LeoDrawable.getLeoDrawable;
import static com.android.systemui.util.LeoDrawable.setMinipopVisibility;



public class SaltStatusBarIconOpensource {
    public static Settings.System LeoSettings;
    public static  void   getSaltStatusBarIconOpensourceDrawable(){
        Context context=getContext();
        boolean wifion=LeoSettings.getInt(context.getContentResolver(),"leo_salt_statusbar_signal_wifi_enabled", 0)==1;  //启用WIIF  自定义  默认值0
        int wifiStyle=LeoSettings.getInt(context.getContentResolver(),"leo_salt_statusbar_signal_wifi_style", 0);//选择WIFI  图标 ,默认值0
        boolean Signal=LeoSettings.getInt(context.getContentResolver(),"leo_salt_statusbar_signal_enabled", 0)==1; //启用信号自定义 默认值 0
        int SignalStyle=LeoSettings.getInt(context.getContentResolver(),"leo_salt_statusbar_signal_style", 0); //选择信号图标 默认值 0
        updateLeoWifiIcons(wifion,wifiStyle);
        Signal5IconStyle(Signal, SignalStyle);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("I'm from China");
        stringBuilder.append("developer");
        stringBuilder.append(new String(new char[]{'s', 'a', 'l', 't'}));
        if (Signal) {
            Rune.STATBAR_ICON_BRANDING = SemCscFeature.getInstance().getString("CscFeature_Leo_ConfigOpBrandingForIndicatorIcon", "");
        } else {
            Rune.STATBAR_ICON_BRANDING = SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon", "");
        }
    }
    public  static  int[][] mLeoStatusBarWifiIconStyle;

    public static String LeoWifiStyle(int  style) {

        switch ( style) {
            case 1:
                return "wifi_signal_2";
            case 2:
                return "wifi_signal_3";
            case 3:
                return "wifi_signal_4";
            case 4:
                return "wifi_signal_5";
            case 5:
                return "wifi_signal_6";
            case 6:
                return "wifi_signal_7";
            case 7:
                return "wifi_signal_8";
            case 8:
                return "wifi_signal_9";
            case 9:
                return "wifi_signal_10";
            case 10:
                return "wifi_signal_11";
            case 11:
                return "wifi_signal_12";
            case 12:
                return "wifi_signal_13";
            default:
                return "wifi_signal";
        }
    }
    public static int getLeoAndroidResource(String resource ) {
        return getContext().getResources().getIdentifier(resource, null, "android");

    }
    static String mDrawabe="drawable/stat_sys_";
    static void  updateLeoWifiIcons(boolean of,int sss) {
        int mWIFIA;
        int mWIFIB;
        int  mWIFIC;
        int   mWIFID;
        int  mWIFIE;
        int mActivityA;
        int mActivityB;
        int  mActivityC;
        int   mActivityD;
        String Drawabe=mDrawabe;
        int  mWIFIA1=getLeoResource(Drawabe+LeoWifiStyle(0)+"_0");
        int  mWIFIB1=getLeoResource(Drawabe+LeoWifiStyle(0)+"_1");
        int  mWIFIC1=getLeoResource(Drawabe+LeoWifiStyle(0)+"_2");
        int  mWIFID1=getLeoResource(Drawabe+LeoWifiStyle(0)+"_3");
        int  mWIFIE1=getLeoResource(Drawabe+LeoWifiStyle(0)+"_4");
        int  mActivityA1=getLeoResource(Drawabe+"wifi_signal_no_inout");
        int  mActivityB1=getLeoResource(Drawabe+"wifi_signal_in");
        int mActivityC1=getLeoResource(Drawabe+"wifi_signal_out");
        int mActivityD1=getLeoResource(Drawabe+"wifi_signal_inout");

            if(of){
                mWIFIA=getLeoResource(Drawabe+LeoWifiStyle(sss)+"_0");
                mWIFIB=getLeoResource(Drawabe+LeoWifiStyle(sss)+"_1");
                mWIFIC=getLeoResource(Drawabe+LeoWifiStyle(sss)+"_2");
                mWIFID=getLeoResource(Drawabe+LeoWifiStyle(sss)+"_3");
                mWIFIE=getLeoResource(Drawabe+LeoWifiStyle(sss)+"_4");
                int f=getLeoAndroidResource("drawable/default_lock_wallpaper");
                mActivityA=f;
                mActivityB=f;
                mActivityC=f;
                mActivityD=f;
            }else{
                mWIFIA=mWIFIA1;
                mWIFIB=mWIFIB1;
                mWIFIC=mWIFIC1;
                mWIFID=mWIFID1;
                mWIFIE=mWIFIE1;
                mActivityA= mActivityA1;
                mActivityB=mActivityB1;
                mActivityC=mActivityC1;
                mActivityD=mActivityD1;
            }


        mLeoStatusBarWIFIActivity= new int[]{mActivityA,mActivityB,mActivityC, mActivityD};
        mLeoStatusBarWifiIconStyle =  new int[][]{new int[]{mWIFIA, mWIFIB, mWIFIC, mWIFID, mWIFIE}, new int[]{mWIFIA, mWIFIB, mWIFIC, mWIFID, mWIFIE}};

    }
    public static String ChinaIconSignalStyle(int style) {
        switch ( style) {
            case 1:
                return "signal_2";
            case 2:
                return "signal_3";
            case 3:
                return "signal_4";
            case 4:
                return "signal_5";
            case 5:
                return "signal_6";
            case 6:
                return "signal_7";
            case 7:
                return "signal_8";
            case 8:
                return "signal_9";
            case 9:
                return "signal_10";
            case 10:
                return "signal_11";
            case 11:
                return "signal_12";
            case 12:
                return "signal_13";
            case 13:
                return "signal_14";
            case 14:
                return "signal_15";
            case 15:
                return "signal_16";
            case 16:
                return "signal_17";
            case 17:
                return "signal_18";
            case 18:
                return "signal_19";
            case 19:
                return "signal_20";
            case 20:
                return "signal_21";
            case 21:
                return "signal_22";
            default:
                return "signal_5_level";
        }
    }
    public  static  int[] mLeoStatusBarWIFIActivity;
    static void Signal5IconStyle(boolean of,int sing){

        String Drawabe=mDrawabe;

        int mSIGNALA;
        int mSIGNALB;
        int mSIGNALC;
        int mSIGNALD;
        int mSIGNALE;
        int mSIGNALF;
        String dsd=Drawabe+ChinaIconSignalStyle(0);
        int amSIGNALA=getLeoResource(dsd+"_0_simplified_auto_rotate");
        int amSIGNALB=getLeoResource(dsd+"_1_simplified_auto_rotate");
        int amSIGNALC=getLeoResource(dsd+"_2_simplified_auto_rotate");
        int amSIGNALD=getLeoResource(dsd+"_3_simplified_auto_rotate");
        int amSIGNALE=getLeoResource(dsd+"_4_simplified_auto_rotate");
        int amSIGNALF= getLeoResource(dsd+"_5_simplified_auto_rotate");
            if(of){
                mSIGNALA=getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_0_auto_rotate");
                mSIGNALB=getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_1_auto_rotate");
                mSIGNALC=getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_2_auto_rotate");
                mSIGNALD=getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_3_auto_rotate");
                mSIGNALE=getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_4_auto_rotate");
                mSIGNALF=  mSIGNALE;
            }else{
                mSIGNALA=amSIGNALA;
                mSIGNALB=amSIGNALB;
                mSIGNALC=amSIGNALC;
                mSIGNALD=amSIGNALD;
                mSIGNALE=amSIGNALE;
                mSIGNALF=amSIGNALF;
            }



        mLeoStatusBarSignal5IconStyle=  new int[][]{new int[]{mSIGNALA, mSIGNALB, mSIGNALC,mSIGNALD, mSIGNALE,mSIGNALF}, new int[]{mSIGNALA, mSIGNALB, mSIGNALC,mSIGNALD, mSIGNALE,mSIGNALF}};
    }
    public  static  int[][] mLeoStatusBarSignal5IconStyle;
    public static int getLeoResource(String resource) {
        return getContext().getResources().getIdentifier(resource, null,"com.android.systemui");
    }
 }
