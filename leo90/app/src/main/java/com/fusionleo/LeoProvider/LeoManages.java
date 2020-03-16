package com.fusionleo.LeoProvider;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;


import static com.android.systemui.SystemUIApplication.getContext;

import static com.fusionleo.LeoX.systemui.LeoConfig.Copyright;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoBoolean;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoInt;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoIntForUser;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoString;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoSystemProper;
import static com.fusionleo.LeoX.systemui.LeoConfig.readCurrentFile;
import static com.fusionleo.LeoX.systemui.LeoConfig.rt100foleo;


public class LeoManages{
    public static  String Config = rt100foleo("c2VjXzkuMA==");
    static {
        System.loadLibrary(Config);
    }
    public static String TAG = LeoManages.class.getSimpleName();


    static native String getLeoPreList();
    public static final String LEOPREFE=getLeoPreList();
    public static final String KEYGUARDLUNAR=rt100foleo("a2V5Z3VhcmRfbHVuYXI=");
    public static  String mLeoGlobalService=getLeoService();
    public  static  String ConfigManager=getLeoframe();
    static native String getLeoService();
    static native String getLeoframe();
    static native String getSafetyCode();
    static native String getLeoAction();
    static native String getLeoGradientColorOne();
    static native String getLeoGradientColorTwo();
    static native String getLeoGradientColorthee();
    static native String getLeoGradientColorFour();
    static native String getLeoGradientColorFive();
    static native String getLeoGradientColorSix();
    static native String getLeoStrokeThickness();
    static native String getLeoStrokeDashWidth();
    static native String getLeoStrokeDashGap();
    static native String getLeoStrokeDashed();
    static native String getLeoGradientStyle();
    static native String getLeoAlpha();
    static native String getLeoWallpaper();
    static native String getLeoWallpaperBlur();
    static native String getLeoEnabled();
    static native String getLeoSize();
    static native String getLeoFont();
    static native String getLeoSymbol();
    static native String getLeoSymbolString();
    static native String getLeoStr();
    static native String getLeoDisable();
    static native String getLeoStyle();
    static native String getLeoColor();

    static native String getLeoGlobalVibratorEnable();
    static native String getLeoGlobalVibratorLevel();

    static native String getLeoStatusbarClock();
    static native String getLeoStatusbarLogo();
    static native String getLeoStatusbarNetworkTraffic();
    static native String getLeoStatusbarBattery();
    static native String getLeoStatusbarSignal();
    static native String getLeoStatusbarCarrier();
    static native String getLeoStatusbarBatteryBar();
    static native String getLeoStatusbarTemp();
    static native String getLeoNavBG();
    public static boolean setLeoStatusBarClockShow=true;
    public static boolean setLeoStatusBarClockShowSeconds=false;

    public static int setLeoStatusBarClockAMPMStyle=0;
    public static int setLeoStatusBarClockDateShow=0;
    public static int setLeoStatusBarClockDateStyle=0;
    public static String setLeoStatusBarClockDateFormat;
    public static int setLeoStatusBarClockDatePosition;
    public static boolean setLeoStatusBarClockAutoHide=false;
    public static int setLeoStatusBarClockHideDuration;
    public static int setLeoStatusBarClockShowDuration;
    public static int setLeoStatusBarClockSingleSize=14;
    public static int setLeoStatusBarClockMultiSize=10;
    public static boolean setLeoStatusBarClockSingleLine;
    public static int setLeoStatusBarClockFont;
    public static boolean setLeoStatusBarClock12Format;
    public static boolean setLeoStatusBarClockChinaDetail;
    public static int setLeoStatusBarClockChinaDetailStyle;
    public static int setLeoStatusBarClockChinaOrientation;
    public static int setLeoStatusBarClockChinaDetailSymbol;
    public static String setLeoStatusBarClockChinaDetailStr;
    public static String setLeoStatusBarClockChinaDetailSymbolStr;
    public static int setLeoStatusBarClockWeekOrientation;
    public static int setLeoStatusBarClockWeekStyle;
    public static int setLeoStatusBarClockWeekSymbol;
    public static String setLeoStatusBarClockWeekSymbolStr;
    public static boolean setLeoStatusBarClockWeekShow;

    public static float setLeoStatusBarClockStartPadding;
    public static float setLeoStatusBarClockEndPadding;

    public static int setLeoStatusBarClockColor;
    public static int setLeoStatusBarDarkClockColor;

    public static boolean setLeoStatusBarClockOnClick=false;
    public static int setLeoStatusBarClockOnLong=0;
    public static int   setLeoStatusBarClockCustomColorEnabled;
    public static int  setLeoStatusBarClockCustomDarkColorEnabled;
    public static int setLeoStatusBarClockVibratorEnable;
    public static int setLeoStatusBarClockVibratorLevel;
    public static int setLeoStatusBarClockLunarMonthStyle;
    public static int setLeoStatusBarClockOrientation;
    public static boolean setLeoKeyguardStatusBarViewVisibilities;
    public static   boolean  VersionNumber(){
        return getVersionName().equals(getLeoSystemProper(rt100foleo("cm8ubGVvLnNhbHQuZnJhbWU=")));
    }

    public static void LeoSysUiManages(Context context){
        if(VersionNumber()){
            setLeoStatusBarClockShow=getLeoInt(context,mLeoStatusBarClock[0],1)==1;
            setLeoStatusBarClockShowSeconds=getLeoInt(context,mLeoStatusBarClock[1],0)==1;
            final  String author=Copyright;
            setLeoStatusBarClockAMPMStyle=getLeoInt(context,mLeoStatusBarClock[3],0);
            setLeoStatusBarClockDateShow=getLeoInt(context,mLeoStatusBarClock[4],0);
            setLeoStatusBarClockDateStyle=getLeoInt(context,mLeoStatusBarClock[5],0);
            setLeoStatusBarClockDateFormat=getLeoString(context,mLeoStatusBarClock[6]);
            setLeoStatusBarClockDatePosition=getLeoInt(context,mLeoStatusBarClock[7],1);
            setLeoStatusBarClockAutoHide=getLeoInt(context,mLeoStatusBarClock[8],0)==1;
            setLeoStatusBarClockHideDuration=getLeoInt(context,mLeoStatusBarClock[9],0);
            setLeoStatusBarClockShowDuration=getLeoInt(context,mLeoStatusBarClock[10],0);
            setLeoStatusBarClockSingleLine=getLeoInt(context,mLeoStatusBarClock[11],1) == 1;
            setLeoStatusBarClockSingleSize=getLeoInt(context,mLeoStatusBarClock[12],14);
            setLeoStatusBarClockMultiSize=getLeoInt(context,mLeoStatusBarClock[13],10);
            setLeoStatusBarClockFont=getLeoInt(context,mLeoStatusBarClock[14],0);
            setLeoStatusBarClock12Format=getLeoInt(context,mLeoStatusBarClock[15],1)==1;
            setLeoStatusBarClockChinaDetail=getLeoInt(context,mLeoStatusBarClock[16],0)==1;
            setLeoStatusBarClockChinaDetailStyle=getLeoInt(context,mLeoStatusBarClock[17],0);
            setLeoStatusBarClockChinaDetailStr=getLeoString(context,mLeoStatusBarClock[18]);
            setLeoStatusBarClockChinaOrientation=getLeoInt(context,mLeoStatusBarClock[19],0);
            setLeoStatusBarClockChinaDetailSymbol=getLeoInt(context,mLeoStatusBarClock[20],0);
            setLeoStatusBarClockChinaDetailSymbolStr=getLeoString(context,mLeoStatusBarClock[21]);
            setLeoStatusBarClockWeekOrientation=getLeoInt(context,mLeoStatusBarClock[22],0);
            setLeoStatusBarClockWeekStyle=getLeoInt(context,mLeoStatusBarClock[23],0);
            setLeoStatusBarClockWeekSymbol=getLeoInt(context,mLeoStatusBarClock[24],0);
            setLeoStatusBarClockWeekSymbolStr=getLeoString(context,mLeoStatusBarClock[25]);
            setLeoStatusBarClockWeekShow=getLeoInt(context,mLeoStatusBarClock[26],0) == 1;
            setLeoStatusBarClockStartPadding=getLeoInt(context,mLeoStatusBarClock[27],1)/ 0.2F;
            setLeoStatusBarClockEndPadding=getLeoInt(context,mLeoStatusBarClock[28],1)/ 0.2F;
            setLeoStatusBarClockOnClick=getLeoInt(context,mLeoStatusBarClock[29],0) == 1;
            setLeoStatusBarClockOnLong=getLeoInt(context,mLeoStatusBarClock[30],0);
            setLeoStatusBarClockCustomColorEnabled=getLeoInt(context,mLeoStatusBarClock[31],0);
            setLeoStatusBarClockColor=getLeoInt(context,mLeoStatusBarClock[32],mLightModeFillColor);
            setLeoStatusBarClockVibratorLevel=getLeoInt(context,mLeoStatusBarClock[33],15);
            setLeoStatusBarClockVibratorEnable=getLeoInt(context,mLeoStatusBarClock[34],0);
            setLeoStatusBarClockCustomDarkColorEnabled=getLeoInt(context,mLeoStatusBarClock[35],0);
            setLeoStatusBarDarkClockColor=getLeoInt(context,mLeoStatusBarClock[36],mDarkModeFillColor);
            setLeoStatusBarClockLunarMonthStyle=getLeoInt(context, mLeoStatusBarClock[2], 0);
            setLeoStatusBarClockOrientation=getLeoInt(context, mLeoStatusBarClock[37], 0);
            ////
            setLeoStatusBarLogoShow=getLeoInt(context,mLeoStatusBarLogo[0],0) == 1;
            setLeoStatusBarLogoStyle=getLeoInt(context,mLeoStatusBarLogo[1],0) ;
            setLeoStatusBarLogoSize=getLeoInt(context,mLeoStatusBarLogo[2],8)/ 8.0F;
            setLeoStatusBarLogoStartPadding=getLeoInt(context,mLeoStatusBarLogo[3],1)/ 0.2F;
            setLeoStatusBarLogoEndPadding=getLeoInt(context ,mLeoStatusBarLogo[4],1)/ 0.2F;
            setLeoStatusBarLogoCustomColorEnabled=getLeoInt(context,mLeoStatusBarLogo[5],0);
            setLeoStatusBarLogoCustomDarkColorEnabled=getLeoInt(context,mLeoStatusBarLogo[6],0);
            setLeoStatusBarLogoColor=getLeoInt(context,mLeoStatusBarLogo[7],mLightModeFillColor);
            setLeoStatusBarDarkLogoColor=getLeoInt(context,mLeoStatusBarLogo[8],mDarkModeFillColor);
            setLeoStatusBarDarkLogoOrientation=getLeoInt(context,mLeoStatusBarLogo[9],0);
            ////////////////////////////////
            setLeoStatusbarNetworkAutoHideEnabled=getLeoInt(context,mLeoStatusBarNetworkTraffic[0],0) == 1;
            setLeoUesrStatusbarNetworkShowArrowsEnabled=getLeoInt(context,mLeoStatusBarNetworkTraffic[1],0) == 1;
            setLeoUesrStatusbarNetworkShowArrowsStyle=getLeoInt(context,mLeoStatusBarNetworkTraffic[2],0);
            setLeoUesrStatusbarNetworkUnit=getLeoInt(context,mLeoStatusBarNetworkTraffic[3],0)==1;
            setLeoUesrStatusbarNetworkArrowsOrientation=getLeoInt(context,mLeoStatusBarNetworkTraffic[4],0)==1;
            setLeoUesrStatusbarNetworkSize = getLeoInt(context,mLeoStatusBarNetworkTraffic[5] , 10)/ 10.0F;
            setLeoUesrStatusbarNetworkFont=getLeoInt(context,mLeoStatusBarNetworkTraffic[6],0);
            setLeoUesrStatusbarNetworkText=getLeoInt(context,mLeoStatusBarNetworkTraffic[7],0)==1;
            setLeoUesrStatusbarNetworkSingle=getLeoInt(context,mLeoStatusBarNetworkTraffic[8],0)==1;
            setLeoStatusBarStatusbarNetworkOrientation=getLeoInt(context,mLeoStatusBarNetworkTraffic[9],1);
            setLeoUesrStatusbarNetworkState=getLeoInt(context,mLeoStatusBarNetworkTraffic[10],0);
            setLeoUesrStatusbarNetworkAutoHideThreshold=getLeoInt(context,mLeoStatusBarNetworkTraffic[11],0);
            setLeoStatusBarNetworkStartPadding=getLeoInt(context,mLeoStatusBarNetworkTraffic[12],1)/ 0.2F;
            setLeoStatusBarNetworkEndPadding=getLeoInt(context ,mLeoStatusBarNetworkTraffic[13],1)/ 0.2F;
            setLeoStatusBarNetworkArrowsPadding=getLeoInt(context ,mLeoStatusBarNetworkTraffic[14],1)/ 0.2F;
            setLeoStatusBarNetworkCustomColorEnabled=getLeoInt(context,mLeoStatusBarNetworkTraffic[15],0);
            setLeoStatusBarNetworkCustomDarkColorEnabled=getLeoInt(context,mLeoStatusBarNetworkTraffic[16],0);
            setLeoStatusBarNetworkColor=getLeoInt(context,mLeoStatusBarNetworkTraffic[17],mLightModeFillColor);
            setLeoStatusBarNetworkDarkColor=getLeoInt(context,mLeoStatusBarNetworkTraffic[18],mDarkModeFillColor);
            setLeoStatusBarNetworkIconColor=getLeoInt(context,mLeoStatusBarNetworkTraffic[19],mLightModeFillColor);
            setLeoStatusBarNetworkIconDarkColor=getLeoInt(context,mLeoStatusBarNetworkTraffic[20],mDarkModeFillColor);
            setLeoUesrStatusbarNetworkExtendsColor=getLeoInt(context,mLeoStatusBarNetworkTraffic[21],0)==1;

            //////////////////////////////////
            setLeoStatusbarMainBatteryPackage=getLeoString(context,mLeoStatusBarMainBattery[0]);
            setLeoStatusbarMainBatteryEnabled=getLeoInt(context,mLeoStatusBarMainBattery[1],0);
            setLeoStatusbarMainBatterySize= getLeoInt(context,mLeoStatusBarMainBattery[2] ,60);
            setLeoStatusBarMainBatteryStartPadding=getLeoInt(context,mLeoStatusBarMainBattery[3],1)/ 0.2F;
            setLeoStatusBarMainBatteryEndPadding=getLeoInt(context ,mLeoStatusBarMainBattery[4],1)/ 0.2F;
            setLeoStatusBarMainBatteryCustomColorEnabled=getLeoInt(context,mLeoStatusBarMainBattery[5],0);
            setLeoStatusBarMainBatteryCustomDarkColorEnabled=getLeoInt(context,mLeoStatusBarMainBattery[6],0);
            setLeoStatusBarMainBatteryColor=getLeoInt(context,mLeoStatusBarMainBattery[7],mLightModeFillColor);
            setLeoStatusBarMainBatteryDarkColor=getLeoInt(context,mLeoStatusBarMainBattery[8],mDarkModeFillColor);
            setLeoStatusBarBatteryPercentSize=getLeoInt(context,mLeoStatusBarMainBattery[9],15);
            setLeoStatusBarBatteryPercentFont=getLeoInt(context,mLeoStatusBarMainBattery[10],0);
            setLeoStatusBarMainBatteryLowStyle=getLeoInt(context,mLeoStatusBarMainBattery[11],15);
            setLeoStatusBarSignalOrientation=getLeoInt(context,mLeoStatusBarMainBattery[12],0);

            ////////////////
            setLeoStatusBarCarrierShow=getLeoInt(context,mLeoStatusBarCarrier[0],0)==1;
            setLeoStatusBarCarrierCustom=getLeoInt(context,mLeoStatusBarCarrier[1],0);
            setLeoStatusBarCarrierSingleLine=getLeoInt(context,mLeoStatusBarCarrier[2],0);
            setLeoStatusBarCarrierSingleSize=getLeoInt(context,mLeoStatusBarCarrier[3],14);
            setLeoStatusBarCarrierMultiSize=getLeoInt(context,mLeoStatusBarCarrier[4],10);
            setLeoStatusBarCarrierStringA=getLeoString(context,mLeoStatusBarCarrier[5]);
            setLeoStatusBarCarrierStringB=getLeoString(context,mLeoStatusBarCarrier[6]);
            setLeoStatusBarCarrierFont=getLeoInt(context,mLeoStatusBarCarrier[7],0);
            setLeoStatusBarCarrierStartPadding=getLeoInt(context,mLeoStatusBarCarrier[8],1)/ 0.2F;
            setLeoStatusBarCarrierEndPadding=getLeoInt(context ,mLeoStatusBarCarrier[9],1)/ 0.2F;
            setLeoStatusBarCarrierCustomColorEnabled=getLeoInt(context,mLeoStatusBarCarrier[10],0);
            setLeoStatusBarCarrierCustomDarkColorEnabled=getLeoInt(context,mLeoStatusBarCarrier[11],0);
            setLeoStatusBarCarrierColor=getLeoInt(context,mLeoStatusBarCarrier[12],mLightModeFillColor);
            setLeoStatusBarDarkCarrierColor=getLeoInt(context,mLeoStatusBarCarrier[13],mDarkModeFillColor);
            setLeoStatusBarCarrierOrientation=getLeoInt(context,mLeoStatusBarCarrier[14],0);
            ////////////////
            setLeoStatusBarBatteryBarThickness=getLeoInt(context,mLeoStatusBarMainBattery[13],1);
            setLeoStatusBarBatteryBarStyle=getLeoInt(context,mLeoStatusBarMainBattery[14],0);
            setLeoStatusBarBatteryBarLocation=getLeoInt(context,mLeoStatusBarMainBattery[15],0);
            setLeoStatusBarBatteryBarColor=getLeoInt(context,mLeoStatusBarMainBattery[16],0xFFFFFFFF);
            setLeoStatusBarBatteryBarChargingColor=getLeoInt(context,mLeoStatusBarMainBattery[17],0xFF00FF00);
            setLeoStatusBarBatteryBarLowColorWarning=getLeoInt(context,mLeoStatusBarMainBattery[18],0xFFFF6600);

            setLeoStatusBarBatteryBarAnimateCharging=getLeoInt(context,mLeoStatusBarMainBattery[19],0)==1;
            setLeoStatusBarBatteryBarLowColor=getLeoInt(context,mLeoStatusBarMainBattery[20], 0xFFFF4444);
            setLeoStatusBarBatteryBarHighColor=getLeoInt(context,mLeoStatusBarMainBattery[21],0xFF99CC00);
            setLeoStatusBarBatteryBarGradientColorEnabled=getLeoInt(context,mLeoStatusBarMainBattery[22],0)==1;
            ////////////////
            setLeoStatusBarTempEnabled=getLeoInt(context,mLeoStatusBarTemp[0],0)==1;
            setLeoStatusBarTempStyle=getLeoInt(context,mLeoStatusBarTemp[1],0);
            setLeoStatusBarTempSize=getLeoInt(context,mLeoStatusBarTemp[2],9);
            setLeoStatusBarTempFont=getLeoInt(context,mLeoStatusBarTemp[3],0);
            setLeoStatusBarTempStartPadding=getLeoInt(context,mLeoStatusBarTemp[4],1)/ 0.2F;
            setLeoStatusBarTempEndPadding=getLeoInt(context ,mLeoStatusBarTemp[5],1)/ 0.2F;
            setLeoStatusBarTempCustomColorEnabled=getLeoInt(context,mLeoStatusBarTemp[6],0);
            setLeoStatusBarTempCustomDarkColorEnabled=getLeoInt(context,mLeoStatusBarTemp[7],0);
            setLeoStatusBarTempColor=getLeoInt(context,mLeoStatusBarTemp[8],mLightModeFillColor);
            setLeoStatusBarDarkTempColor=getLeoInt(context,mLeoStatusBarTemp[9],mDarkModeFillColor);
            setLeoStatusBarTempOrientation=getLeoInt(context,mLeoStatusBarTemp[10],1);
            ////////////////
            setLeoStatusBarSlideGestureEnabled=getLeoInt(context,mLeoStatusBarGesture[4],0);
            setLeoStatusBarLongPressGestureEnabled=getLeoInt(context,mLeoStatusBarGesture[3],0);
            setLeoStatusBarGestureVibratorEnable=getLeoInt(context,mLeoStatusBarGesture[5],0);
            setLeoStatusBarGestureLongPress=getLeoInt(context,mLeoStatusBarGesture[0],0);
            setLeoStatusBarGestureLeftSlide=getLeoInt(context,mLeoStatusBarGesture[1],0);
            setLeoStatusBarGestureRightSlide=getLeoInt(context,mLeoStatusBarGesture[2],0);
            setLeoStatusBarGestureVibratorLevel=getLeoInt(context,mLeoStatusBarGesture[6],16);

            setLeoStatusBarLeftGestureEnable=getLeoInt(context,mLeoStatusBarGesture[7],0)==1;
            setLeoStatusBarRightGestureEnable=getLeoInt(context,mLeoStatusBarGesture[8],0)==1;
            setLeoStatusBarLeftGesture=getLeoInt(context,mLeoStatusBarGesture[9],0);
            setLeoStatusBarRightGesture=getLeoInt(context,mLeoStatusBarGesture[10],0);

            ///////
            setLeoUesrStatusbarShowBG=getLeoInt(context,
                    CustomStatusbarBg[0] ,0) == 1;
            setLeoUesrStatusbarBGStyle =
                    getLeoInt(context,CustomStatusbarBg[1], 0);
            setLeoUesrStatusbarBgBasicColor =getLeoInt(context,
                    CustomStatusbarBg[2], Color.TRANSPARENT);
            setLeoUesrStatusbarGradientBgStartColor =getLeoInt(context,
                    CustomStatusbarBg[3], Color.TRANSPARENT);
            setLeoUesrStatusbarGradientBgCenterColor =getLeoInt(context,
                    CustomStatusbarBg[4], Color.TRANSPARENT);
            setLeoUesrStatusbarGradientBgEndColor =getLeoInt(context,
                    CustomStatusbarBg[5],Color.TRANSPARENT);
            setLeoUesrStatusbarGradientColorFour = getLeoInt(context,
                    CustomStatusbarBg[6], Color.TRANSPARENT);
            setLeoUesrStatusbarGradientColorFive = getLeoInt(context,
                    CustomStatusbarBg[7],Color.TRANSPARENT);
            setLeoUesrStatusbarGradientColorSix = getLeoInt(context,
                    CustomStatusbarBg[8], Color.TRANSPARENT);
            setLeoUesrStatusbarGradientEnableCenterColor =getLeoInt(context,
                    CustomStatusbarBg[9], 0);
            setLeoUesrStatusbarBgGradientBgStyle=getLeoInt(context,
                    CustomStatusbarBg[10],0);
            setLeoUesrStatusbarGradientBgType=getLeoInt(context,
                    CustomStatusbarBg[11] ,0);
            setLeoUesrStatusbarGradientBackGroundColorRadius=getLeoInt(context,
                    CustomStatusbarBg[12] ,0);
            setLeoUesrStatusbarStrokeEnabled =getLeoInt(context,
                    CustomStatusbarBg[13], 0)==1;
            setLeoUesrStatusbarStrokeDashGap=getLeoInt(context,
                    CustomStatusbarBg[14],15);
            setLeoUesrStatusbarStrokeDashWidth=getLeoInt(context,
                    CustomStatusbarBg[15],15);
            setLeoUesrStatusbarStrokeThickness=getLeoInt(context,
                    CustomStatusbarBg[16],15);
            setLeoUesrStatusbarStrokeDashColor=getLeoInt(context,
                    CustomStatusbarBg[17], Color.parseColor("#ff00aeff"));
            setLeoUesrStatusbarBgWallpaper =getLeoString(context,
                    CustomStatusbarBg[18]);
            setLeoUesrStatusbarWallpaperColorEnable=getLeoInt(context,
                    CustomStatusbarBg[19],0);
            setLeoUesrStatusbarWallpaperColor=getLeoInt(context,
                    CustomStatusbarBg[20],  Color.parseColor("#FFFFFFFF"));
            setLeoUesrStatusbarBgWallpaperAlphaEnable =getLeoInt(context,
                    CustomStatusbarBg[21], 0) == 1;
            setLeoUesrStatusbarBgWallpaperAlpha =getLeoInt(context,
                    CustomStatusbarBg[22], 255);
            setLeoUesrStatusbarBgWallpaperBlurEnabled = getLeoInt(context,
                    CustomStatusbarBg[23], 0)==1;
            setLeoUesrStatusbarBlurBgDegree=getLeoInt(context,
                    CustomStatusbarBg[24],15);
            setLeoUesrStatusbarGradientBackGroundCornerRadius=getLeoInt(context,
                    CustomStatusbarBg[25], 0);

            ///////
            setLeoUesrNavShowBG=getLeoInt(context,
                    CustomNavBg[0] ,0) == 1;
            setLeoUesrNavBGStyle =
                    getLeoInt(context,CustomNavBg[1], 0);
            setLeoUesrNavBgBasicColor =getLeoInt(context,
                    CustomNavBg[2], Color.TRANSPARENT);
            setLeoUesrNavGradientBgStartColor =getLeoInt(context,
                    CustomNavBg[3], Color.TRANSPARENT);
            setLeoUesrNavGradientBgCenterColor =getLeoInt(context,
                    CustomNavBg[4], Color.TRANSPARENT);
            setLeoUesrNavGradientBgEndColor =getLeoInt(context,
                    CustomNavBg[5],Color.TRANSPARENT);
            setLeoUesrNavGradientColorFour = getLeoInt(context,
                    CustomNavBg[6], Color.TRANSPARENT);
            setLeoUesrNavGradientColorFive = getLeoInt(context,
                    CustomNavBg[7],Color.TRANSPARENT);
            setLeoUesrNavGradientColorSix = getLeoInt(context,
                    CustomNavBg[8], Color.TRANSPARENT);
            setLeoUesrNavGradientEnableCenterColor =getLeoInt(context,
                    CustomNavBg[9], 0);
            setLeoUesrNavBgGradientBgStyle=getLeoInt(context,
                    CustomNavBg[10],0);
            setLeoUesrNavGradientBgType=getLeoInt(context,
                    CustomNavBg[11] ,0);
            setLeoUesrNavGradientBackGroundColorRadius=getLeoInt(context,
                    CustomNavBg[12] ,0);
            setLeoUesrNavStrokeEnabled =getLeoInt(context,
                    CustomNavBg[13], 0)==1;
            setLeoUesrNavStrokeDashGap=getLeoInt(context,
                    CustomNavBg[14],15);
            setLeoUesrNavStrokeDashWidth=getLeoInt(context,
                    CustomNavBg[15],15);
            setLeoUesrNavStrokeThickness=getLeoInt(context,
                    CustomNavBg[16],15);
            setLeoUesrNavStrokeDashColor=getLeoInt(context,
                    CustomNavBg[17], Color.parseColor("#ff00aeff"));
            setLeoUesrNavBgWallpaper =getLeoString(context,
                    CustomNavBg[18]);
            setLeoUesrNavWallpaperColorEnable=getLeoInt(context,
                    CustomNavBg[19],0);
            setLeoUesrNavWallpaperColor=getLeoInt(context,
                    CustomNavBg[20],  Color.parseColor("#FFFFFFFF"));
            setLeoUesrNavBgWallpaperAlphaEnable =getLeoInt(context,
                    CustomNavBg[21], 0) == 1;
            setLeoUesrNavBgWallpaperAlpha =getLeoInt(context,
                    CustomNavBg[22], 255);
            setLeoUesrNavBgWallpaperBlurEnabled = getLeoInt(context,
                    CustomNavBg[23], 0)==1;
            setLeoUesrNavBlurBgDegree=getLeoInt(context,
                    CustomNavBg[24],15);
            setLeoUesrNavGradientBackGroundCornerRadius=getLeoInt(context,
                    CustomNavBg[25], 0);
            ////////////////
            setLeoUesrStatusbarWifiIconEnabled=getLeoInt(context,
                    StatusbarIcon[0], 0)==1;
            setLeoUesrStatusbarWIFIIcon=getLeoInt(context,
                    StatusbarIcon[1], 1);
            setLeoUesrStatusbarSignalIconEnabled=getLeoInt(context,
                    StatusbarIcon[2], 0)==1;
            setLeoUesrStatusbarSignalIcon=getLeoInt(context,
                    StatusbarIcon[3], 15);
            setLeoUesrStatusbarIconPaddingEnabled=getLeoInt(context,
                    StatusbarIcon[4], 0)==1;
            setLeoUesrStatusbarIconPadding=getLeoInt(context,
                    StatusbarIcon[5], 11);
            setLeoStatusBar5Gicon=getLeoInt(context,
                    StatusbarIcon[6], 0)!= 0;

            ////////////////
            setLeoNotificationPanelCustomCarrier=getLeoInt(context,
                    NotificationPanel[0], 0);
            setLeoNotificationPanelCustomCarrierStringA=getLeoString(context,
                    NotificationPanel[1]);
            setLeoNotificationPanelCustomCarrierStringB=getLeoString(context,
                    NotificationPanel[2]);
            //int PanelCarrierColor=getLeoContext.getColor(getLeoUIResource("color/notification_panel_carrier_label_text_color"));
            int PanelCarrierColor=-1;
            setLeoNotificationPanelCarrierColor=getLeoInt(context,

                    NotificationPanel[3],PanelCarrierColor);
            setLeoNotificationPanelCarrierFont=getLeoInt(context,
                    NotificationPanel[4], 0);
            setLeoNotificationPanelCarrierSize=getLeoInt(context,
                    NotificationPanel[5], 13);
            setLeoNotificationPanelCarrierMulti=getLeoInt(context,
                    NotificationPanel[6], 0);
            setLeoNotificationPanelCarrierSymbol=getLeoInt(context,
                    NotificationPanel[7], 0);
            setLeoNotificationPanelCustomCarrierSymbol=getLeoString(context,
                    NotificationPanel[8]);
            setLeoNotificationPanelAnalogClockShow=getLeoInt(context,
                    NotificationPanel[9], 0)==1;
            setLeoNotificationPanelAnalogClockDial=getLeoInt(context,
                    NotificationPanel[10], 0);
            setLeoNotificationPanelAnalogClockDialColor=getLeoInt(context,
                    NotificationPanel[11], 0xff0074d4);
            setLeoNotificationPanelAnalogClockHourColor=getLeoInt(context,
                    NotificationPanel[12], 0xff808080);
            setLeoNotificationPanelAnalogClockMinuteColor=getLeoInt(context,
                    NotificationPanel[13], 0xff808080);

            setLeoKeyguardDoubleTapToSleepEnabled=getLeoInt(context,
                    NotificationPanel[14], 0)==1;
            setLeoKeyguardDoubleTapToSleepAnywhere=getLeoInt(context,
                    NotificationPanel[15], 0)==1;
            setLeoKeyguardDoubleTap=getLeoInt(context,
                    NotificationPanel[16], 0);

            setLeoKeyguardAlarm
            =getLeoInt(context,
                    KeyguardAlarm[0], 0)==1;
            setLeoKeyguardAlarmIcon=getLeoInt(context,
                    KeyguardAlarm[1], 1)==1;

            setLeoKeyguardAlarmColorEnr=getLeoInt(context,
                    KeyguardAlarm[2], 0);
            setLeoKeyguardAlarmColor=getLeoInt(context,
                    KeyguardAlarm[4], mLightModeFillColor);
            setLeoKeyguardAlarmIconColor=getLeoInt(context,
                    KeyguardAlarm[3], mLightModeFillColor);
            setLeoKeyguardAlarmSize=getLeoInt(context,
                    KeyguardAlarm[5], 14);
            setLeoKeyguardAlarmColorFont=getLeoInt(context,
                    KeyguardAlarm[6], 0);
            setLeoKeyguardAlarmcapEnr=getLeoInt(context,
                    KeyguardAlarm[7], 1);


            setLeoKeyguardCarrier=getLeoInt(context,
                    mLeoKeyguardCarrier[0], 1)==1;
            setLeoKeyguardCustomCarrier=getLeoInt(context,
                    mLeoKeyguardCarrier[1], 0);
            setLeoKeyguardCarrierMulti=getLeoInt(context,
                    mLeoKeyguardCarrier[2], 0);
            setLeoKeyguardCarrierSize=getLeoInt(context,
                    mLeoKeyguardCarrier[3], 14);
            setLeoKeyguardCustomCarrierStringA=getLeoString(context,
                    mLeoKeyguardCarrier[4]);
            setLeoKeyguardCustomCarrierStringB=getLeoString(context,
                    mLeoKeyguardCarrier[5]);
            setLeoKeyguardCarrierFont=getLeoInt(context,
                    mLeoKeyguardCarrier[6], 0);
            setLeoKeyguardCarrierFont=getLeoInt(context,
                    mLeoKeyguardCarrier[5], 0);
            setLeoKeyguardCarrierSymbol=getLeoInt(context,
                    mLeoKeyguardCarrier[7], 0);
            setLeoKeyguardCustomCarrierSymbol=getLeoString(context,
                    mLeoKeyguardCarrier[8]);

            setLeoKeyguardCarrierCustomColorEnabled=getLeoInt(context,mLeoKeyguardCarrier[9],0);
            setLeoKeyguardCustomDarkColorEnabled=getLeoInt(context,mLeoKeyguardCarrier[10],0);
            setLeoKeyguardCarrierColor=getLeoInt(context,mLeoKeyguardCarrier[11],mLightModeFillColor);
            setLeoKeyguardDarkCarrierColor=getLeoInt(context,mLeoKeyguardCarrier[12],mDarkModeFillColor);
            setLeoKeyguardStatusBarViewVisibilities=getLeoInt(context,
                    mLeoKeyguardCarrier[13], 0)==1;
////////////////////////////////////////////
            setLeoQSheaderDateDisplayEnabled=getLeoInt(context,
                    mLeoQSHeadsDate[0],1)==1;
            setLeoQSheaderDateClickEnabled=getLeoInt(context,
                    mLeoQSHeadsDate[1],0)==1;

            setLeoQSheaderDateWeekDisplayEnabled=getLeoInt(context,
                    mLeoQSHeadsDate[2],1)==1;
            setLeoQSheaderDateLunarDisplayEnabled=getLeoInt(context,
                    mLeoQSHeadsDate[3],1)==1;
            setLeoQSheaderDateLunarFestivalSymbolEnabled=getLeoInt(context,
                    mLeoQSHeadsDate[4],0)==1;
            setLeoQSheaderDateLunarZodiacSymbolEnabled=getLeoInt(context,
                    mLeoQSHeadsDate[5],0)==1;
            setLeoQSheaderDateLunarMonthStyle=getLeoInt(context,
                    mLeoQSHeadsDate[6],0);
            setLeoQSheaderDateLunarStyle=getLeoInt(context,
                    mLeoQSHeadsDate[7],1);
            setLeoQSheaderDateLunarSymbolStyle=getLeoInt(context,
                    mLeoQSHeadsDate[8],0);
            setLeoQSheaderDateLunarSymbolStr=getLeoString(context,
                    mLeoQSHeadsDate[9]);
            setLeoQSheaderDateWeekLocation=getLeoInt(context,
                    mLeoQSHeadsDate[10],0);
            setLeoQSheaderDateWeekStyle=getLeoInt(context,
                    mLeoQSHeadsDate[11],0);
            setLeoQSheaderDateWeekSymbolStyle=getLeoInt(context,
                    mLeoQSHeadsDate[12],1);
            setLeoQSheaderDateFormat=getLeoString(context,
                    mLeoQSHeadsDate[13]);
            setLeoQSheaderDateDateFont=getLeoInt(context,
                    mLeoQSHeadsDate[14],0);
            setLeoQSheaderDateLunarFont=getLeoInt(context,
                    mLeoQSHeadsDate[15],0);
            setLeoQSheaderDateSize=getLeoInt(context,
                    mLeoQSHeadsDate[16],16);
            setLeoQSheaderDateClickStyle=getLeoInt(context,
                    mLeoQSHeadsDate[17],0);

            setLeoQSheaderDateVibratorEnabled=getLeoInt(context,
                    mLeoQSHeadsDate[18],0);
            setLeoQSheaderDateVibratorLevel=getLeoInt(context,
                    mLeoQSHeadsDate[19],0);
            setLeoQSheaderBoxDateSize=getLeoInt(context,
                    mLeoQSHeadsDate[20],20);
            setLeoQSheaderDateClickCollapsePanels=getLeoInt(context,
                    mLeoQSHeadsDate[21],1);
//////////////////////////////
            setLeoQSheaderClockEnabled=getLeoBoolean(context,
                    mLeoQSHeadsClock[0],1);
            setLeoQSheaderClockChinaTimeDetailsEnabled=getLeoBoolean(context,
                    mLeoQSHeadsClock[1],0);
            setLeoQSheaderClockActionEnabled=getLeoBoolean(context,
                    mLeoQSHeadsClock[2],0);
            setLeoQSheaderClockVibratorEnabled=getLeoInt(context,
                    mLeoQSHeadsClock[3],0);
            setLeoQSheaderClockVibratorLevel=getLeoInt(context,
                    mLeoQSHeadsClock[4],15);
            setLeoQSheaderClockClickCollapsePanels=getLeoInt(context,
                    mLeoQSHeadsClock[5],1);
            setLeoQSheaderClockSize=getLeoInt(context,
                    mLeoQSHeadsClock[6],16);
            setLeoQSheaderClockBoxSize=getLeoInt(context,
                    mLeoQSHeadsClock[7],44);
            setLeoQSheaderClockActionStyle=getLeoInt(context,
                    mLeoQSHeadsClock[8],0);
            setLeoQSheaderClockFont=getLeoInt(context,
                    mLeoQSHeadsClock[9],0);
            setLeoQSheaderClockChinaTimeDetailStyle=getLeoInt(context,
                    mLeoQSHeadsClock[10],0);
            setLeoQSheaderClockChinaTimeDetailStr=getLeoString(context,
                    mLeoQSHeadsClock[11]);
            setLeoQSheaderClockChinaTimeDetailZoomEnabled=getLeoInt(context,
                    mLeoQSHeadsClock[12],0);
            setLeoQSheaderClockChinaTimeDetailScaling=getLeoInt(context,
                    mLeoQSHeadsClock[13],0);
            setLeoQSheaderClockChinaTimeDetailOrientation=getLeoInt(context,
                    mLeoQSHeadsClock[14],0);

            setLeoQSheaderClockChinaTimeDetailSymbolStyle=getLeoInt(context,
                    mLeoQSHeadsClock[15],0);
            ///////
            setLeoQLeoButtonActionEnabled=getLeoBoolean(context,
                    mLeoQSHeadsButton[0],1);
            setLeoQSSettingButtonActionEnabled=getLeoBoolean(context,
                    mLeoQSHeadsButton[1],1);
            setLeoQSSearchButtonActionEnabled=getLeoBoolean(context,
                    mLeoQSHeadsButton[2],1);
            setLeoQsLeoButtonActionStyle=getLeoInt(context,
                    mLeoQSHeadsButton[3],0);
            setLeoQsSettingActionStyle=getLeoInt(context,
                    mLeoQSHeadsButton[4],1);
            setLeoQsSearchActionStyle=getLeoInt(context,
                    mLeoQSHeadsButton[5],0);
            setLeoQLeoButtonActionCollapsePanels=getLeoInt(context,
                    mLeoQSHeadsButton[6],1);
            /////
            setLeoQSNotificationShelfSize=getLeoInt(context,
                    mLeoQSNotificationShelf[0],13);
            setLeoQSClearAllShelfFont=getLeoInt(context,
                    mLeoQSNotificationShelf[1],0);
            setLeoQSNotiSettingShelfFont=getLeoInt(context,
                    mLeoQSNotificationShelf[2],0);
            setLeoQsClearAllShelfStrEnabled=getLeoBoolean(context,
                    mLeoQSNotificationShelf[3],0);
            setLeoQSNotiSettingShelfStrEnabled=getLeoBoolean(context,
                    mLeoQSNotificationShelf  [4],0);
            setLeoQSClearAllShelfStr=getLeoString(context,
                    mLeoQSNotificationShelf[5]);
            setLeoQSNotiSettingShelfStr=getLeoString(context,
                    mLeoQSNotificationShelf[6]);

            /////////////////////
            setLeoQsDataUsageBarEnabled=getLeoInt(context,
                    mLeoQsBar[0],1) ==1;
            setLeoQsMultiSIMBarEnabled=getLeoInt(context,
                    mLeoQsBar[1],1) != 0;
            setLeoQSDataUsageOrientation=getLeoInt(context,
                    mLeoQsBar[2],0) ;
            setLeoQSDataUsageSize=getLeoInt(context,
                    mLeoQsBar[3],13) ;
            setLeoQSDataUsageFont=getLeoInt(context,
                    mLeoQsBar[4],0) ;

            /////////////////////
            setLeoFloatBallEnabled=getLeoBoolean(context,
                    mLeoFloatBall[0 ],0);
            setLeoFloatBallDownSlideDelete=getLeoInt(context,
                    mLeoFloatBall[1],0) ;
            setLeoFloatBallIconStyle=getLeoInt(context,
                    mLeoFloatBall[2],0) ;
            setLeoFloatBallIconSize=getLeoInt(context,
                    mLeoFloatBall[3],10)/10.0f ;
            setLeoFloatBallVibratorEnabled=getLeoInt(context,
                    mLeoFloatBall[4],0) ;
            setLeoFloatBallVibratorLevel=getLeoInt(context,
                    mLeoFloatBall[5],15) ;
            setLeoFloatBallClickAction=getLeoInt(context,
                    mLeoFloatBall[6],0) ;
            setLeoFloatBallUPAction=getLeoInt(context,
                    mLeoFloatBall[7],0) ;
            setLeoFloatBallDownAction=getLeoInt(context,
                    mLeoFloatBall[8],0) ;
            setLeoFloatBallLeftAction=getLeoInt(context,
                    mLeoFloatBall[9],0) ;
            setLeoFloatBallRightAction=getLeoInt(context,
                    mLeoFloatBall[10],0) ;
            setLeoFloatBallAlpha=getLeoInt(context,
                    mLeoFloatBall[11],255) ;
            ////
            setLeoMiniPopEnabled=getLeoBoolean(context,
                    mLeoFloatBall[12],0);
            setLeoMiniVibratorEnabled=getLeoInt(context,
                    mLeoFloatBall[13],0) ;
            setLeoMiniVibratorLevel=getLeoInt(context,
                    mLeoFloatBall[14],15) ;
            setLeoMiniBackAction=getLeoInt(context,
                    mLeoFloatBall[15],0) ;
            setLeoMiniHomeAction=getLeoInt(context,
                    mLeoFloatBall[16],0) ;
            setLeoMiniRecentAction=getLeoInt(context,
                    mLeoFloatBall[17],0) ;
            setLeoMiniFlashlightAction=getLeoInt(context,
                    mLeoFloatBall[18],0) ;
            ////////////
            setLeoDeviceInfoEnabled=getLeoInt(context,
                    mLeoDeviceInfo[0],0)==1;
            setLeoDeviceInfoOrientation=getLeoInt(context,
                    mLeoDeviceInfo[1],2);
            setLeoDeviceInfoSize=getLeoInt(context,
                    mLeoDeviceInfo[2],13);
            setLeoDeviceInfoOneStyle=getLeoInt(context,
                    mLeoDeviceInfo[3],0);
            setLeoDeviceInfoOneStyleColor=getLeoInt(context,
                    mLeoDeviceInfo[4],PanelCarrierColor);
            setLeoDeviceInfoOneStyleFont=getLeoInt(context,
                    mLeoDeviceInfo[5],0);
            setLeoDeviceInfoTwoStyle=getLeoInt(context,
                    mLeoDeviceInfo[6],1);
            setLeoDeviceInfoTwoStyleColor=getLeoInt(context,
                    mLeoDeviceInfo[7],PanelCarrierColor);
            setLeoDeviceInfoTwoStyleFont=getLeoInt(context,
                    mLeoDeviceInfo[8],0);
            setLeoDeviceInfoThreeStyle=getLeoInt(context,
                    mLeoDeviceInfo[9],2);
            setLeoDeviceInfoThreeStyleColor=getLeoInt(context,
                    mLeoDeviceInfo[10],PanelCarrierColor);
            setLeoDeviceInfoThreeStyleFont=getLeoInt(context,
                    mLeoDeviceInfo[11],0);

            setLeoDeviceInfoFourStyle=getLeoInt(context,
                    mLeoDeviceInfo[12],0);
            setLeoDeviceInfoFourStyleColor=getLeoInt(context,
                    mLeoDeviceInfo[13],PanelCarrierColor);
            setLeoDeviceInfoFourStyleFont=getLeoInt(context,
                    mLeoDeviceInfo[14],0);

            setLeoDeviceInfoFiveStyle=getLeoInt(context,
                    mLeoDeviceInfo[15],0);
            setLeoDeviceInfoFiveStyleColor=getLeoInt(context,
                    mLeoDeviceInfo[16],PanelCarrierColor);
            setLeoDeviceInfoFiveStyleFont=getLeoInt(context,
                    mLeoDeviceInfo[17],0);
            setLeoDeviceInfoList=getLeoInt(context,
                    mLeoDeviceInfo[18],3);

            setLeoDeviceInfoStatusbar=getLeoInt(context,
                    mLeoDeviceInfo[19],0)==1;
            setLeoDeviceInfoStatusbarFont=getLeoInt(context,
                    mLeoDeviceInfo[20],0);
            setLeoDeviceInfoStatusbarSize=getLeoInt(context,
                    mLeoDeviceInfo[21],13);
            setLeoDeviceInfoStatusbarStyle=getLeoInt(context,
                    mLeoDeviceInfo[22],4);

            setLeoQSTileSize=getLeoInt(context,
                    mLeoQSButton[0],13);
            setLeoQSTileFont=getLeoInt(context,
                    mLeoQSButton[1],0);

            setLeoPulldownBlur=getLeoInt(context,
                    mLeoPulldownBlur[0],0) != 0;
            setLeoPulldownBlurStyle=getLeoInt(context,
                    mLeoPulldownBlur[1],15);



            setLeoNavGestureEnabled=getLeoIntForUser(context,
                    mLeoNavGesture[0],0, -2)==1;
            setLeoNavGesture=getLeoInt(context,
                    mLeoNavGesture[1],0);
            setLeoNavGestureVibratorEnable=getLeoInt(context,
                    mLeoNavGesture[2],0);
            setLeoNavGestureVibratorLevel=getLeoInt(context,
                    mLeoNavGesture[3],15);
            ///////////////
            setLeoKeyguardLunar=getLeoInt(context,
                    mLeoKeyguardLunar[0],1)==1;
            setLeoKeyguardLunarStyle=getLeoInt(context,
                    mLeoKeyguardLunar[1],5);
            setLeoKeyguardLunarMonthStyle=getLeoInt(context,
                    mLeoKeyguardLunar[2],0);
            setLeoKeyguardLunarFestivalSymbolEnabled=getLeoInt(context,
                    mLeoKeyguardLunar[3],0)==1;
            setLeoKeyguardLunarZodiacSymbolEnabled=getLeoInt(context,
                    mLeoKeyguardLunar[4],0)==1;
            setLeoKeyguardLunarColorEnabled=getLeoInt(context,
                    mLeoKeyguardLunar[5],0)==1;
            setLeoKeyguardLunarColor=getLeoInt(context,
                    mLeoKeyguardLunar[6],mLightModeFillColor);
            setLeoKeyguardLunarSize=getLeoInt(context,
                    mLeoKeyguardLunar[7],15);
            setLeoKeyguardLunarFont=getLeoInt(context,
                    mLeoKeyguardLunar[8],0);
        }
    }
    public static boolean setLeoKeyguardLunar=true;
    public static int setLeoKeyguardLunarStyle=5;
    public static int setLeoKeyguardLunarMonthStyle=0;
    public static boolean setLeoKeyguardLunarFestivalSymbolEnabled=false;
    public static boolean setLeoKeyguardLunarZodiacSymbolEnabled=false;
    public static boolean setLeoKeyguardLunarColorEnabled=false;
    public static int setLeoKeyguardLunarColor;
    public static int setLeoKeyguardLunarSize=15;
    public static int setLeoKeyguardLunarFont=0;
    public static final String[]  mLeoKeyguardLunar={
            LEOPREFE+KEYGUARDLUNAR+getLeoEnabled(),
            LEOPREFE+KEYGUARDLUNAR+getLeoStyle(),
            LEOPREFE+KEYGUARDLUNAR+"_month"+getLeoStyle(),
            LEOPREFE+KEYGUARDLUNAR+"_festival_symbol"+getLeoEnabled(),
            LEOPREFE+KEYGUARDLUNAR+"_zodiac_symbol"+getLeoEnabled(),
            LEOPREFE+KEYGUARDLUNAR+"_color"+getLeoEnabled(),
            LEOPREFE+KEYGUARDLUNAR+"_color",
            LEOPREFE+KEYGUARDLUNAR+getLeoSize(),
            LEOPREFE+KEYGUARDLUNAR+getLeoFont(),
    };
    static native String getLeoPulldownBlur();
    public static final String[]  mLeoPulldownBlur={
            LEOPREFE+getLeoPulldownBlur()+getLeoEnabled(),
            LEOPREFE+getLeoPulldownBlur()+getLeoStyle(),
    };

    public static final String[]  mLeoNavGesture={
            LEOPREFE+getLeoNavGesture()+getLeoEnabled(),
            LEOPREFE+getLeoNavGesture()+getLeoStyle(),
            LEOPREFE+getLeoNavGesture()+getLeoGlobalVibratorEnable(),
            LEOPREFE+getLeoNavGesture()+getLeoGlobalVibratorLevel(),
    };

    static native String getLeoNavGesture();

    public static boolean setLeoNavGestureEnabled=false;
    public static int setLeoNavGesture;
    public static int  setLeoNavGestureVibratorEnable=0;
    public static int  setLeoNavGestureVibratorLevel=15;

    public static boolean setLeoPulldownBlur=false;
    public static int setLeoPulldownBlurStyle;

    public static int setLeoDeviceInfoStatusbarFont;
    public static int setLeoDeviceInfoStatusbarSize;
    public static int setLeoDeviceInfoStatusbarStyle;
    public static boolean setLeoDeviceInfoStatusbar;
    public static int  setLeoQSTileSize=13;
    public static int  setLeoQSTileFont=0;

    public static boolean  setLeoDeviceInfoEnabled=false;
    public static int setLeoDeviceInfoOrientation;
    public static int setLeoDeviceInfoSize=13;
    public static int setLeoDeviceInfoOneStyle;
    public static int setLeoDeviceInfoOneStyleColor;
    public static int setLeoDeviceInfoOneStyleFont;
    public static int setLeoDeviceInfoTwoStyle;
    public static int setLeoDeviceInfoTwoStyleColor;
    public static int setLeoDeviceInfoTwoStyleFont;
    public static int setLeoDeviceInfoThreeStyle;
    public static int setLeoDeviceInfoThreeStyleColor;
    public static int setLeoDeviceInfoThreeStyleFont;
    public static int setLeoDeviceInfoFourStyle;
    public static int setLeoDeviceInfoFourStyleColor;
    public static int setLeoDeviceInfoFourStyleFont;
    public static int setLeoDeviceInfoFiveStyle;
    public static int setLeoDeviceInfoFiveStyleColor;
    public static int setLeoDeviceInfoFiveStyleFont;
    public static int setLeoDeviceInfoList;
    static native String getLeoDeviceInfo();
    public static final String[]  mLeoDeviceInfo={
            LEOPREFE+getLeoDeviceInfo()+getLeoEnabled(),
            LEOPREFE+getLeoDeviceInfo()+"_orientation",
            LEOPREFE+getLeoDeviceInfo()+getLeoSize(),
            LEOPREFE+getLeoDeviceInfo()+"_one"+getLeoStyle(),
            LEOPREFE+getLeoDeviceInfo()+"_one"+getLeoColor(),
            LEOPREFE+getLeoDeviceInfo()+"_one"+getLeoFont(),
            LEOPREFE+getLeoDeviceInfo()+"_two"+getLeoStyle(),
            LEOPREFE+getLeoDeviceInfo()+"_two"+getLeoColor(),
            LEOPREFE+getLeoDeviceInfo()+"_two"+getLeoFont(),
            LEOPREFE+getLeoDeviceInfo()+"_three"+getLeoStyle(),
            LEOPREFE+getLeoDeviceInfo()+"_three"+getLeoColor(),
            LEOPREFE+getLeoDeviceInfo()+"_three"+getLeoFont(),
            LEOPREFE+getLeoDeviceInfo()+"_four"+getLeoStyle(),
            LEOPREFE+getLeoDeviceInfo()+"_four"+getLeoColor(),
            LEOPREFE+getLeoDeviceInfo()+"_four"+getLeoFont(),
            LEOPREFE+getLeoDeviceInfo()+"_five"+getLeoStyle(),
            LEOPREFE+getLeoDeviceInfo()+"_five"+getLeoColor(),
            LEOPREFE+getLeoDeviceInfo()+"_five"+getLeoFont(),
            LEOPREFE+getLeoDeviceInfo()+"_list",
            LEOPREFE+getLeoDeviceInfo()+"_statusbar"+getLeoEnabled(),
            LEOPREFE+getLeoDeviceInfo()+"_statusbar"+getLeoFont(),
            LEOPREFE+getLeoDeviceInfo()+"_statusbar"+getLeoSize(),
            LEOPREFE+getLeoDeviceInfo()+"_statusbar"+getLeoStyle(),
    };
    public static final String[]  mLeoFloatBall={
            LEOPREFE+getLeoFloatBall()+getLeoEnabled(),
            LEOPREFE+getLeoFloatBall()+"_remove"+getLeoEnabled(),
            LEOPREFE+getLeoFloatBall()+getLeoStyle(),
            LEOPREFE+getLeoFloatBall()+getLeoSize(),
            LEOPREFE+getLeoFloatBall()+getLeoGlobalVibratorEnable(),
            LEOPREFE+getLeoFloatBall()+getLeoGlobalVibratorLevel(),
            LEOPREFE+getLeoFloatBall()+"_onclick"+getLeoAction(),
            LEOPREFE+getLeoFloatBall()+"_up"+getLeoAction(),
            LEOPREFE+getLeoFloatBall()+"_down"+getLeoAction(),
            LEOPREFE+getLeoFloatBall()+"_left"+getLeoAction(),
            LEOPREFE+getLeoFloatBall()+"_right"+getLeoAction(),
            LEOPREFE+getLeoFloatBall()+getLeoAlpha(),
            LEOPREFE+getLeoMiniPOP()+getLeoEnabled(),
            LEOPREFE+getLeoMiniPOP()+getLeoGlobalVibratorEnable(),
            LEOPREFE+getLeoMiniPOP()+getLeoGlobalVibratorLevel(),
            LEOPREFE+getLeoMiniPOP()+"_back"+getLeoAction(),
            LEOPREFE+getLeoMiniPOP()+"_home"+getLeoAction(),
            LEOPREFE+getLeoMiniPOP()+"_recent"+getLeoAction(),
            LEOPREFE+getLeoMiniPOP()+"_flashlight"+getLeoAction(),
    };
    public static boolean  setLeoMiniPopEnabled=false;
    public static int setLeoMiniVibratorEnabled=0;
    public static int setLeoMiniVibratorLevel=15;
    public static int setLeoMiniBackAction=0;
    public static int setLeoMiniHomeAction=0;
    public static int setLeoMiniRecentAction=0;
    public static int setLeoMiniFlashlightAction=0;
    public static int setLeoFloatBallVibratorEnabled=0;
    public static int setLeoFloatBallVibratorLevel=15;
    public static float  setLeoFloatBallIconSize=10/10.0f;
    public static int  setLeoFloatBallDownSlideDelete;
    public static int  setLeoFloatBallIconStyle;
    public static int  setLeoFloatBallUPAction;
    public static int  setLeoFloatBallClickAction;
    public static int  setLeoFloatBallDownAction;
    public static int  setLeoFloatBallLeftAction;
    public static int  setLeoFloatBallRightAction;
    public static int  setLeoFloatBallAlpha;
    public static boolean  setLeoFloatBallEnabled=false;
    public static final String[]  mLeoQsBar={
            LEOPREFE+getLeoQSBar()+getLeoEnabled(),
            LEOPREFE+getLeoQSBar()+"_multisim"+getLeoEnabled(),
            LEOPREFE+getLeoQSBar()+"_orientation",
            LEOPREFE+getLeoQSBar()+getLeoSize(),
            LEOPREFE+getLeoQSBar()+getLeoFont(),

    };

    static native String getLeoMiniPOP();


    static native String getLeoQSButtonShelf();
    static native String getLeoQSBar();
    static native String getLeoFloatBall();
    public static int  setLeoQSDataUsageOrientation=0;
    public static int  setLeoQSDataUsageSize=13;
    public static int  setLeoQSDataUsageFont=0;
    public static boolean setLeoQsDataUsageBarEnabled=true;
    public static boolean setLeoQsMultiSIMBarEnabled=true;
    public static int  setLeoQSNotificationShelfSize=13;
    public static int  setLeoQSClearAllShelfFont=0;
    public static int  setLeoQSNotiSettingShelfFont=0;
    public static boolean setLeoQsClearAllShelfStrEnabled=false;
    public static boolean setLeoQSNotiSettingShelfStrEnabled=false;
    public static String setLeoQSClearAllShelfStr;
    public static String setLeoQSNotiSettingShelfStr;

    public static boolean setLeoStatusBar5Gicon;
    public static final String[] mLeoQSNotificationShelf={
            LEOPREFE+getLeoQSButtonShelf()+"_all"+getLeoSize(),
            LEOPREFE+getLeoQSButtonShelf()+"_clear"+getLeoFont(),
            LEOPREFE+getLeoQSButtonShelf()+"_notie"+getLeoFont(),
            LEOPREFE+getLeoQSButtonShelf()+"_clear",
            LEOPREFE+getLeoQSButtonShelf()+"_notie",
            LEOPREFE+getLeoQSButtonShelf()+"_clear"+getLeoStr(),
            LEOPREFE+getLeoQSButtonShelf()+"_notie"+getLeoStr(),
    };
    public static final String mLeobutton=new String(new char[]{'b', 'u', 't', 't','o','n'});
    public static final String[] mLeoQSHeadsButton={
            LEOPREFE+getLeoQSButton()+"_leo"+mLeobutton+getLeoEnabled(),
            LEOPREFE+getLeoQSButton()+"_setting"+mLeobutton+getLeoEnabled(),
            LEOPREFE+getLeoQSButton()+"_search"+mLeobutton+getLeoEnabled(),
            LEOPREFE+getLeoQSButton()+"_leo"+mLeobutton+getLeoStyle(),
            LEOPREFE+getLeoQSButton()+"_setting"+mLeobutton+getLeoStyle(),
            LEOPREFE+getLeoQSButton()+"_search"+mLeobutton+getLeoStyle(),
            LEOPREFE+getLeoQSButton()+"_leo"+mLeobutton+"_collapsepanel"+getLeoEnabled(),
    };
    public static final String[] mLeoQSButton={
            LEOPREFE+getLeoQSButton()+"_text"+getLeoSize(),
            LEOPREFE+getLeoQSButton()+"_text"+getLeoFont()
    };

    public static boolean setLeoQLeoButtonActionEnabled=true;
    public static boolean setLeoQSSettingButtonActionEnabled=true;
    public static boolean setLeoQSSearchButtonActionEnabled=true;
    public static int  setLeoQsLeoButtonActionStyle=0;
    public static int  setLeoQsSettingActionStyle=1;
    public static int  setLeoQsSearchActionStyle=0;
    public static int setLeoQLeoButtonActionCollapsePanels=1;
    public static final String mLeoChineseClock="_chinadetail";
    public static final String[] mLeoQSHeadsClock={
            LEOPREFE+getLeoQSClock()+getLeoEnabled(),
            LEOPREFE+getLeoQSClock()+mLeoChineseClock+getLeoEnabled(),
            LEOPREFE+getLeoQSClock()+getLeoAction()+getLeoEnabled(),
            LEOPREFE+getLeoQSClock()+getLeoGlobalVibratorEnable(),
            LEOPREFE+getLeoQSClock()+getLeoGlobalVibratorLevel(),
            LEOPREFE+getLeoQSClock()+"_collapsepanel"+getLeoEnabled(),
            LEOPREFE+getLeoQSClock()+getLeoSize(),
            LEOPREFE+getLeoQSClock()+"_box"+getLeoSize(),
            LEOPREFE+getLeoQSClock()+"_click"+getLeoAction()+getLeoStyle(),
            LEOPREFE+getLeoQSClock()+getLeoFont(),
            LEOPREFE+getLeoQSClock()+mLeoChineseClock+getLeoStyle(),
            LEOPREFE+getLeoQSClock()+mLeoChineseClock+getLeoStr(),
            LEOPREFE+getLeoQSClock()+mLeoChineseClock+"_zoom"+getLeoEnabled(),
            LEOPREFE+getLeoQSClock()+mLeoChineseClock+"_zoom"+getLeoStyle(),
            LEOPREFE+getLeoQSClock()+mLeoChineseClock +"_orientation",
            LEOPREFE+getLeoQSClock()+mLeoChineseClock+getLeoSymbol()+getLeoStyle(),

    };



    public static int setLeoQSheaderClockVibratorEnabled=0;
    public static int setLeoQSheaderClockVibratorLevel=15;
    public static int setLeoQSheaderClockClickCollapsePanels=1;
    public static int  setLeoQSheaderClockActionStyle=0;
    public static boolean setLeoQSheaderClockActionEnabled=false;
    public static int  setLeoQSheaderClockFont=0;
    public static int setLeoQSheaderClockSize=16;
    public static int setLeoQSheaderClockBoxSize=44;
    public static boolean setLeoQSheaderClockEnabled=true;
    public static int setLeoQSheaderClockChinaTimeDetailSymbolStyle=0;


    public static int setLeoQSheaderClockChinaTimeDetailScaling=0;
    public static int setLeoQSheaderClockChinaTimeDetailOrientation=0;
    public static int setLeoQSheaderClockChinaTimeDetailStyle=0;
    public static int setLeoQSheaderClockChinaTimeDetailZoomEnabled=0;
    public static String setLeoQSheaderClockChinaTimeDetailStr;
    public static boolean setLeoQSheaderClockChinaTimeDetailsEnabled=false;

    public static boolean setLeoQSheaderDateDisplayEnabled=true;
    public static boolean setLeoQSheaderDateClickEnabled=false;
    public static boolean setLeoQSheaderDateWeekDisplayEnabled=true;
    public static boolean setLeoQSheaderDateLunarDisplayEnabled=true;
    public static boolean setLeoQSheaderDateLunarFestivalSymbolEnabled=false;
    public static boolean setLeoQSheaderDateLunarZodiacSymbolEnabled=false;
    public static int setLeoQSheaderDateLunarMonthStyle=0;
    public static int setLeoQSheaderDateLunarStyle=1;
    public static int setLeoQSheaderDateLunarSymbolStyle=0;
    public static String setLeoQSheaderDateLunarSymbolStr;
    public static int setLeoQSheaderDateWeekLocation=0;
    public static int setLeoQSheaderDateWeekStyle=0;
    public static int setLeoQSheaderDateWeekSymbolStyle=0;
    public static String setLeoQSheaderDateFormat;
    public static int setLeoQSheaderDateDateFont=0;
    public static int setLeoQSheaderDateLunarFont=0;
    public static int setLeoQSheaderDateSize=16;
    public static int setLeoQSheaderBoxDateSize=20;
    public static int setLeoQSheaderDateClickStyle=0;

    public static int setLeoQSheaderDateVibratorEnabled=0;
    public static int setLeoQSheaderDateVibratorLevel=15;
    public static int setLeoQSheaderDateClickCollapsePanels=1;
    public static final String[] mLeoQSHeadsDate ={
            LEOPREFE+getLeoQSDate()+getLeoEnabled(),
            LEOPREFE+getLeoQSDate()+getLeoAction()+getLeoEnabled(),
            LEOPREFE+getLeoQSDate()+"_week"+getLeoEnabled(),
            LEOPREFE+getLeoQSDate()+getLeoLunar()+getLeoEnabled(),
            LEOPREFE+getLeoQSDate()+getLeoLunar()+"_festival"+getLeoSymbol()+getLeoEnabled(),
            LEOPREFE+getLeoQSDate()+getLeoLunar()+"_sodiac"+getLeoSymbol()+getLeoEnabled(),
            LEOPREFE+getLeoQSDate()+getLeoLunar()+"_month"+getLeoStyle(),
            LEOPREFE+getLeoQSDate()+getLeoLunar()+getLeoStyle(),
            LEOPREFE+getLeoQSDate()+getLeoLunar()+getLeoSymbol()+getLeoStyle(),
            LEOPREFE+getLeoQSDate()+getLeoLunar()+getLeoSymbolString(),
            LEOPREFE+getLeoQSDate()+"_weeklocation"+getLeoStyle(),
            LEOPREFE+getLeoQSDate()+"_week"+getLeoStyle(),
            LEOPREFE+getLeoQSDate()+"_week"+getLeoSymbol()+getLeoStyle(),
            LEOPREFE+getLeoQSDate()+"_format",
            LEOPREFE+getLeoQSDate()+getLeoFont(),
            LEOPREFE+getLeoQSDate()+getLeoLunar()+getLeoFont(),
            LEOPREFE+getLeoQSDate()+getLeoSize(),
            LEOPREFE+getLeoQSDate()+"_click"+getLeoAction()+getLeoStyle(),

            LEOPREFE+getLeoQSDate()+getLeoGlobalVibratorEnable(),
            LEOPREFE+getLeoQSDate()+getLeoGlobalVibratorLevel(),
            LEOPREFE+getLeoQSDate()+"_box"+getLeoSize(),
            LEOPREFE+getLeoQSDate()+"_collapsepanel"+getLeoEnabled(),
    };
    static native String getLeoQSDate();
    static native String getLeoLunar();
    static native String getLeoQSClock();
    static native String getLeoQSButton();

    public static boolean setLeoKeyguardDoubleTapToSleepEnabled=false;
    public static int setLeoKeyguardDoubleTap;
    public static boolean setLeoKeyguardDoubleTapToSleepAnywhere=false;
    public static final String[] mLeoKeyguardCarrier ={
            LEOPREFE+getLeoKeyguardCarrier()+getLeoEnabled(),
            LEOPREFE+getLeoKeyguardCarrier() +"_custom",
            LEOPREFE+getLeoKeyguardCarrier()+"_custom_single"+getLeoEnabled(),
            LEOPREFE+getLeoKeyguardCarrier()+getLeoSize(),
            LEOPREFE+getLeoKeyguardCarrier()+"_custom_single"+getLeoStr(),
            LEOPREFE+getLeoKeyguardCarrier()+"_custom_multi"+getLeoStr(),
            LEOPREFE+getLeoKeyguardCarrier() +getLeoFont()+getLeoStyle(),
            LEOPREFE+getLeoKeyguardCarrier()+getLeoSymbol(),
            LEOPREFE+getLeoKeyguardCarrier()+getLeoSymbolString(),
            LEOPREFE+getLeoKeyguardCarrier()+"_color"+getLeoEnabled(),
            LEOPREFE+getLeoKeyguardCarrier()+"_dark_color"+getLeoEnabled(),
            LEOPREFE+getLeoKeyguardCarrier()+getLeoColor(),
            LEOPREFE+getLeoKeyguardCarrier()+"_dark_color",
            LEOPREFE+"keyguard_statusbar_view",
    };


    public static final String[] KeyguardAlarm={
            LEOPREFE+ getLeoKeyguardAlarm()+getLeoEnabled(),
            LEOPREFE+ getLeoKeyguardAlarm()+"_icon"+getLeoEnabled(),
            LEOPREFE+ getLeoKeyguardAlarm()+getLeoColor()+getLeoEnabled(),
            LEOPREFE+ getLeoKeyguardAlarm()+"_icon"+getLeoColor(),
            LEOPREFE+ getLeoKeyguardAlarm()+"_text"+getLeoColor(),
            LEOPREFE+ getLeoKeyguardAlarm()+"_text"+getLeoSize(),
            LEOPREFE+ getLeoKeyguardAlarm()+"_text"+getLeoFont()+getLeoStyle(),
            LEOPREFE+ getLeoKeyguardAlarm()+"_text"+getLeoEnabled(),
    };
    public static boolean setLeoKeyguardAlarm=false;
    public static boolean  setLeoKeyguardAlarmIcon=true;
    public static int setLeoKeyguardAlarmColorEnr;
    public static int setLeoKeyguardAlarmColorFont;
    public static int setLeoKeyguardAlarmcapEnr;
    public static int setLeoKeyguardAlarmColor;
    public static int setLeoKeyguardAlarmSize;
    public static int setLeoKeyguardAlarmIconColor;
    public static final String[] KeyguardWeather={
            LEOPREFE+ getLeoKeyguardWeather()+getLeoEnabled(),
            LEOPREFE+ getLeoKeyguardWeather()+getLeoStyle(),
            LEOPREFE+ getLeoKeyguardWeather()+"_top",
            LEOPREFE+ getLeoKeyguardWeather()+"_height",
    };
    public static int  setLeoKeyguardCarrierFont=0;

    public static int  setLeoKeyguardCustomCarrier=0;
    public static int  setLeoKeyguardCarrierSymbol=0;
    public static String  setLeoKeyguardCustomCarrierSymbol;
    public static String  setLeoKeyguardCustomCarrierStringA;
    public static String  setLeoKeyguardCustomCarrierStringB;
    public static int  setLeoKeyguardCarrierColor;
    public static int  setLeoKeyguardCarrierCustomColorEnabled;
    public static int  setLeoKeyguardDarkCarrierColor;
    public static int  setLeoKeyguardCustomDarkColorEnabled;
    public static boolean setLeoKeyguardCarrier=true;
    public static int  setLeoKeyguardCarrierSize=14;
    public static int  setLeoKeyguardCarrierMulti;

    public static boolean  setLeoNotificationPanelAnalogClockShow=false;
    public static int  setLeoNotificationPanelAnalogClockDial;
    public static int  setLeoNotificationPanelAnalogClockDialColor,setLeoNotificationPanelAnalogClockHourColor,setLeoNotificationPanelAnalogClockMinuteColor;
    public static int  setLeoNotificationPanelCarrierFont=0;
    public static int  setLeoNotificationPanelCustomCarrier=0;
    public static int  setLeoNotificationPanelCarrierSymbol=0;
    public static String  setLeoNotificationPanelCustomCarrierSymbol;
    public static String  setLeoNotificationPanelCustomCarrierStringA;
    public static String  setLeoNotificationPanelCustomCarrierStringB;
    public static int  setLeoNotificationPanelCarrierColor;
    public static int  setLeoNotificationPanelCarrierSize=13;
    public static int  setLeoNotificationPanelCarrierMulti;

    static native String getLeoKeyguardAction();
    static native String getLeoKeyguardWeather();
    static native String getLeoKeyguardCarrier();
    static native String getLeoKeyguardAlarm();
    static native String getLeoNotificationPanelCarrier();
    static native String getLeoNotificationPanelAnalogClock();
    public static final String[] NotificationPanel={
            LEOPREFE+getLeoNotificationPanelCarrier()+"_custom",
            LEOPREFE+getLeoNotificationPanelCarrier()+"_custom_single"+getLeoStr(),
            LEOPREFE+getLeoNotificationPanelCarrier()+"_custom_multi"+getLeoStr(),
            LEOPREFE+getLeoNotificationPanelCarrier()+getLeoColor(),
            LEOPREFE+getLeoNotificationPanelCarrier()+getLeoFont()+getLeoStyle(),
            LEOPREFE+getLeoNotificationPanelCarrier()+getLeoSize(),
            LEOPREFE+getLeoNotificationPanelCarrier()+"_custom_single"+getLeoEnabled(),
            LEOPREFE+getLeoNotificationPanelCarrier()+getLeoSymbol(),
            LEOPREFE+getLeoNotificationPanelCarrier()+getLeoSymbolString(),

            LEOPREFE+getLeoNotificationPanelAnalogClock()+getLeoEnabled(),
            LEOPREFE+getLeoNotificationPanelAnalogClock()+"_dial"+getLeoStyle(),
            LEOPREFE+getLeoNotificationPanelAnalogClock()+"_dial"+getLeoColor(),
            LEOPREFE+getLeoNotificationPanelAnalogClock()+"_hour"+getLeoColor(),
            LEOPREFE+getLeoNotificationPanelAnalogClock()+"_minute"+getLeoColor(),

            LEOPREFE+getLeoKeyguardAction()+"_doubleTap"+getLeoEnabled(),
            LEOPREFE+getLeoKeyguardAction()+getLeoEnabled(),
            LEOPREFE+getLeoKeyguardAction()+getLeoStyle(),
    };

    public static final String[] CustomStatusbarBg ={
            LEOPREFE+getLeoStatusbarBG()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarBG()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarBG()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBG()+getLeoGradientColorOne()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBG()+getLeoGradientColorTwo()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBG()+getLeoGradientColorthee()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBG()+getLeoGradientColorFour()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBG()+getLeoGradientColorFive()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBG()+getLeoGradientColorSix()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBG()+getLeoGradientColorSix()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarBG()+getLeoGradientStyle()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarBG()+getLeoGradientStyle()+"_type",
            LEOPREFE+getLeoStatusbarBG()+getLeoGradientStyle()+"_radius",
            LEOPREFE+getLeoStatusbarBG()+getLeoStrokeDashed()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarBG()+getLeoStrokeDashed()+getLeoStrokeDashGap(),
            LEOPREFE+getLeoStatusbarBG()+getLeoStrokeDashed()+getLeoStrokeDashWidth(),
            LEOPREFE+getLeoStatusbarBG()+getLeoStrokeDashed()+getLeoStrokeThickness(),
            LEOPREFE+getLeoStatusbarBG()+getLeoStrokeDashed()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBG()+getLeoStyle()+getLeoWallpaper()+"_url",
            LEOPREFE+getLeoStatusbarBG()+getLeoWallpaper()+getLeoColor()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarBG()+getLeoWallpaper()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBG()+getLeoWallpaper()+getLeoAlpha()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarBG()+getLeoWallpaper()+getLeoAlpha(),
            LEOPREFE+getLeoStatusbarBG()+getLeoWallpaperBlur()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarBG()+getLeoWallpaperBlur()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarBG()+"_radius",
    };
    public static int setLeoStatusBarSlideGestureEnabled;
    public static int  setLeoStatusBarLongPressGestureEnabled;
    public static int  setLeoStatusBarGestureVibratorEnable=0;
    public static int  setLeoStatusBarGestureLongPress=0;
    public static int  setLeoStatusBarGestureLeftSlide=0;
    public static int  setLeoStatusBarGestureRightSlide=0;
    public static int  setLeoStatusBarGestureVibratorLevel=15;
    public static boolean setLeoStatusBarLeftGestureEnable;
    public static boolean setLeoStatusBarRightGestureEnable;
    public static int  setLeoStatusBarLeftGesture=0;
    public static int  setLeoStatusBarRightGesture=0;
    static native String getLeoStatusbarGesture();
    static native String getLeoStatusbarBG();
    public static final String[] mLeoStatusBarGesture ={
            LEOPREFE+getLeoStatusbarGesture()+"_longPress"+getLeoAction()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarGesture()+"_leftslide"+getLeoAction()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarGesture()+"_rightslide"+getLeoAction()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarGesture()+"_longPress"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarGesture()+"_slide"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarGesture()+getLeoGlobalVibratorEnable(),
            LEOPREFE+getLeoStatusbarGesture()+getLeoGlobalVibratorLevel(),
            LEOPREFE+getLeoStatusbarGesture()+"_left"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarGesture()+"_right"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarGesture()+"_left"+getLeoAction()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarGesture()+"_right"+getLeoAction()+getLeoStyle(),
    };
    public static final String[] mLeoStatusBarTemp ={
            LEOPREFE+getLeoStatusbarTemp()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarTemp()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarTemp()+getLeoSize(),
            LEOPREFE+getLeoStatusbarTemp()+getLeoFont()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarTemp()+"_start_padding",
            LEOPREFE+getLeoStatusbarTemp()+"_end_padding",
            LEOPREFE+getLeoStatusbarTemp()+getLeoColor()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarTemp()+"_dark_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarTemp()+getLeoColor(),
            LEOPREFE+getLeoStatusbarTemp()+"_dark_color",
            LEOPREFE+getLeoStatusbarTemp()+"_orientation"
    };
    public static boolean  setLeoStatusBarTempEnabled=false;
    public static int  setLeoStatusBarTempStyle=0;
    public static int  setLeoStatusBarTempSize=9;
    public static int  setLeoStatusBarTempFont=0;
    public static float setLeoStatusBarTempStartPadding;
    public static float setLeoStatusBarTempEndPadding;
    public static int   setLeoStatusBarTempCustomColorEnabled=0;
    public static int  setLeoStatusBarTempCustomDarkColorEnabled=0;
    public static int setLeoStatusBarTempColor;
    public static int setLeoStatusBarDarkTempColor;
    public static int setLeoStatusBarTempOrientation=1;

    public static final String[] mLeoStatusBarMainBattery ={
            LEOPREFE+getLeoStatusbarBattery()+"_style_package",
            LEOPREFE+getLeoStatusbarBattery()+"_style",
            LEOPREFE+getLeoStatusbarBattery()+"_size",
            LEOPREFE+getLeoStatusbarBattery()+"_start_padding",
            LEOPREFE+getLeoStatusbarBattery() +"_end_padding",
            LEOPREFE+getLeoStatusbarBattery()+"_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarBattery()+"_dark_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarBattery()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBattery()+"_dark_color",
            LEOPREFE+getLeoStatusbarBattery()+"_text"+getLeoSize(),
            LEOPREFE+getLeoStatusbarBattery()+"_text"+getLeoFont(),
            LEOPREFE+getLeoStatusbarBattery()+"_low_style",
            LEOPREFE+getLeoStatusbarSignal()+"_orientation",
            LEOPREFE+getLeoStatusbarBatteryBar()+getLeoStrokeThickness(),
            LEOPREFE+getLeoStatusbarBatteryBar()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarBatteryBar()+"_location",
            LEOPREFE+getLeoStatusbarBatteryBar()+getLeoColor(),
            LEOPREFE+getLeoStatusbarBatteryBar()+"_charging"+getLeoColor(),
            LEOPREFE+getLeoStatusbarBatteryBar()+"_lowwarning"+getLeoColor(),
            LEOPREFE+getLeoStatusbarBatteryBar()+"_animate",
            LEOPREFE+getLeoStatusbarBatteryBar()+"_low"+getLeoColor(),
            LEOPREFE+getLeoStatusbarBatteryBar()+"_high"+getLeoColor(),
            LEOPREFE+getLeoStatusbarBatteryBar()+"_gradient"+getLeoColor()+getLeoEnabled()
    };
    public static boolean  setLeoStatusBarBatteryBarGradientColorEnabled;
    public static int setLeoStatusBarBatteryBarLowColor;
    public static int setLeoStatusBarBatteryBarHighColor;
    public static boolean  setLeoStatusBarBatteryBarAnimateCharging;
    public static int setLeoStatusBarBatteryBarLowColorWarning;
    public static int setLeoStatusBarBatteryBarChargingColor;
    public static int setLeoStatusBarBatteryBarColor;
    public static int setLeoStatusBarBatteryBarLocation=0;
    public static int setLeoStatusBarBatteryBarStyle=0;
    public static int setLeoStatusBarBatteryBarThickness=1;
    public static int setLeoStatusBarCarrierCustom=0;
    public static int setLeoStatusBarCarrierSingleLine;
    public static String setLeoStatusBarCarrierStringA;
    public static String setLeoStatusBarCarrierStringB;
    public static int setLeoStatusBarCarrierFont;
    public static int setLeoStatusBarCarrierSingleSize=14;
    public static int setLeoStatusBarCarrierMultiSize=10;
    public static float setLeoStatusBarCarrierStartPadding;
    public static float setLeoStatusBarCarrierEndPadding;
    public static int   setLeoStatusBarCarrierCustomColorEnabled;
    public static int  setLeoStatusBarCarrierCustomDarkColorEnabled;
    public static int setLeoStatusBarCarrierColor;
    public static int setLeoStatusBarDarkCarrierColor;
    public static int setLeoStatusBarCarrierOrientation=0;
    public static boolean setLeoStatusBarCarrierShow=false;


    public static final String[] mLeoStatusBarCarrier ={
            LEOPREFE+getLeoStatusbarCarrier()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarCarrier()+"_custom",
            LEOPREFE+getLeoStatusbarCarrier()+"_custom_single"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarCarrier()+"_single"+getLeoSize(),
            LEOPREFE+getLeoStatusbarCarrier()+"_multi"+getLeoSize(),
            LEOPREFE+getLeoStatusbarCarrier()+"_custom_single"+getLeoStr(),
            LEOPREFE+getLeoStatusbarCarrier()+"_custom_multi"+getLeoStr(),
            LEOPREFE+getLeoStatusbarCarrier() +getLeoFont()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarCarrier()+"_start_padding",
            LEOPREFE+getLeoStatusbarCarrier()+"_end_padding",
            LEOPREFE+getLeoStatusbarCarrier()+"_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarCarrier()+"_dark_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarCarrier()+getLeoColor(),
            LEOPREFE+getLeoStatusbarCarrier()+"_dark_color",
            LEOPREFE+getLeoStatusbarCarrier()+"_orientation"
    };

    public static int getLeoUIResource(String resource) {

        return getLeoIdentifier(getContext(),resource);
    }



    public static int getLeoIdentifier(Context context,String resource) {

        return context.getResources().getIdentifier(resource, null,context.getPackageName());
    }
    public static int   setLeoStatusBarSignalOrientation;
    public static int   setLeoStatusBarMainBatteryLowStyle;
    public static int   setLeoStatusBarMainBatteryCustomColorEnabled;
    public static int  setLeoStatusBarMainBatteryCustomDarkColorEnabled;
    public static int setLeoStatusBarMainBatteryColor;
    public static int setLeoStatusBarMainBatteryDarkColor;
    public static int setLeoStatusBarBatteryPercentSize;
    public static int setLeoStatusBarBatteryPercentFont;
    public static float setLeoStatusBarMainBatteryStartPadding;
    public static float setLeoStatusBarMainBatteryEndPadding;
    public  static int  setLeoStatusbarMainBatterySize=60;
    public  static int  setLeoStatusbarMainBatteryEnabled=0;
    public  static String  setLeoStatusbarMainBatteryPackage;
    public  static boolean  setLeoStatusbarNetworkAutoHideEnabled=false;

    public  static boolean  setLeoUesrStatusbarNetworkShowArrowsEnabled=true;
    public  static int  setLeoUesrStatusbarNetworkShowArrowsStyle=0;
    public  static int  setLeoUesrStatusbarNetworkAutoHideThreshold=10;
    public  static int  setLeoUesrStatusbarNetworkState=0;
    public  static boolean  setLeoUesrStatusbarNetworkUnit=false;
    public  static boolean  setLeoUesrStatusbarNetworkArrowsOrientation;
    public  static float  setLeoUesrStatusbarNetworkSize;
    public  static int  setLeoUesrStatusbarNetworkFont=0;
    public  static boolean  setLeoUesrStatusbarNetworkText=false;
    public  static boolean  setLeoUesrStatusbarNetworkSingle=false;
    public static int setLeoStatusBarStatusbarNetworkOrientation;
    public static float setLeoStatusBarNetworkStartPadding;
    public static float setLeoStatusBarNetworkEndPadding;
    public static float setLeoStatusBarNetworkArrowsPadding;
    public static int   setLeoStatusBarNetworkCustomColorEnabled;
    public static int  setLeoStatusBarNetworkCustomDarkColorEnabled;
    public static int setLeoStatusBarNetworkColor;
    public static int setLeoStatusBarNetworkDarkColor;

    public static int setLeoStatusBarNetworkIconColor;
    public static int setLeoStatusBarNetworkIconDarkColor;
    public  static boolean  setLeoUesrStatusbarNetworkExtendsColor=false;

    public  static int mLightModeFillColor =0xC3FFFFFF;
    public  static int  mDarkModeFillColor =0x99000000;
    public static boolean setLeoStatusBarLogoShow=false;
    public static int setLeoStatusBarLogoStyle=0;
    public static float setLeoStatusBarLogoSize;
    public static float setLeoStatusBarLogoStartPadding;
    public static float setLeoStatusBarLogoEndPadding;
    public static int   setLeoStatusBarLogoCustomColorEnabled;
    public static int  setLeoStatusBarLogoCustomDarkColorEnabled;
    public static int setLeoStatusBarLogoColor;
    public static int setLeoStatusBarDarkLogoColor;
    public static int setLeoStatusBarDarkLogoOrientation;


    public static final String[] mLeoStatusBarNetworkTraffic ={
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_autohide"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_icon"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_icon"+getLeoStyle(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_uint"+getLeoStyle(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_icon"+"_orientation",
            LEOPREFE+getLeoStatusbarNetworkTraffic()+getLeoSize(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+getLeoFont()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_text"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_single"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_orientation",
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_state",
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_threshold",
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_start_padding",
            LEOPREFE+getLeoStatusbarNetworkTraffic() +"_end_padding",
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_icon_padding",
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_dark_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+getLeoColor(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_dark_color",
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_icon"+getLeoColor(),
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_icon_dark_color",
            LEOPREFE+getLeoStatusbarNetworkTraffic()+"_extends_color",

    };

    public static final String[] mLeoStatusBarLogo ={
            LEOPREFE+getLeoStatusbarLogo()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarLogo()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarLogo()+getLeoSize(),
            LEOPREFE+getLeoStatusbarLogo()+"_start_padding",
            LEOPREFE+getLeoStatusbarLogo()+"_end_padding",
            LEOPREFE+getLeoStatusbarLogo()+"_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarLogo()+"_dark_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarLogo()+getLeoColor(),
            LEOPREFE+getLeoStatusbarLogo()+"_dark_color",
            LEOPREFE+getLeoStatusbarLogo()+"_orientation"
    };
    public static int setLeoIntKey(String str, int i) {
        return getLeoInt(getContext(), str, i);
    }
    public static final String[] mLeoStatusBarClock ={
            LEOPREFE+getLeoStatusbarClock()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarClock()+"_seconds"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarClock()+"_lunar_month",
            LEOPREFE+getLeoStatusbarClock()+"_ampm"+getLeoStyle(),
            LEOPREFE+getLeoStatusbarClock()+"_date"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarClock()+"_date"+getLeoStyle(),
            LEOPREFE+getLeoStatusbarClock()+"_date_format",
            LEOPREFE+getLeoStatusbarClock()+"_date_orientation",
            LEOPREFE+getLeoStatusbarClock()+"_autohide",
            LEOPREFE+getLeoStatusbarClock()+"_hideduration"+getLeoStyle(),
            LEOPREFE+getLeoStatusbarClock()+"_showduration"+getLeoStyle(),
            LEOPREFE+getLeoStatusbarClock()+"_single"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarClock()+"_single"+getLeoSize(),
            LEOPREFE+getLeoStatusbarClock()+"_multi"+getLeoSize(),
            LEOPREFE+getLeoStatusbarClock()+getLeoFont()+getLeoStyle(),
            LEOPREFE+getLeoStatusbarClock()+"_twelve_format",
            LEOPREFE+getLeoStatusbarClock()+mLeoChineseClock+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarClock()+mLeoChineseClock+getLeoStyle(),
            LEOPREFE+getLeoStatusbarClock()+mLeoChineseClock+getLeoStr(),
            LEOPREFE+getLeoStatusbarClock()+mLeoChineseClock+"_orientation",
            LEOPREFE+getLeoStatusbarClock()+mLeoChineseClock+getLeoSymbol(),
            LEOPREFE+getLeoStatusbarClock()+mLeoChineseClock+getLeoSymbolString(),
            LEOPREFE+getLeoStatusbarClock()+"_week"+"_orientation",
            LEOPREFE+getLeoStatusbarClock()+"_week"+getLeoStyle(),
            LEOPREFE+getLeoStatusbarClock()+"_week"+getLeoSymbol(),
            LEOPREFE+getLeoStatusbarClock()+"_week"+getLeoSymbolString(),
            LEOPREFE+getLeoStatusbarClock()+"_week"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarClock()+"_start_padding",
            LEOPREFE+getLeoStatusbarClock()+"_end_padding",
            LEOPREFE+getLeoStatusbarClock()+"_onclick",
            LEOPREFE+getLeoStatusbarClock()+"_onlong",
            LEOPREFE+getLeoStatusbarClock()+"_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarClock()+getLeoColor(),
            LEOPREFE+getLeoStatusbarClock()+getLeoGlobalVibratorLevel(),
            LEOPREFE+getLeoStatusbarClock()+getLeoGlobalVibratorEnable(),
            LEOPREFE+getLeoStatusbarClock()+"_dark_color"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarClock()+"_dark_color",
            LEOPREFE+getLeoStatusbarClock()+"_orientation"
    };



    public static int    setLeoUesrStatusbarStrokeDashColor;
    public static int    setLeoUesrStatusbarStrokeThickness;
    public static int    setLeoUesrStatusbarStrokeDashWidth;
    public static int    setLeoUesrStatusbarStrokeDashGap;
    public static boolean  setLeoUesrStatusbarStrokeEnabled;
    public  static int setLeoUesrStatusbarBgWallpaperAlpha;
    public  static int  setLeoUesrStatusbarGradientColorFour;
    public  static int  setLeoUesrStatusbarGradientColorFive;
    public  static int  setLeoUesrStatusbarGradientColorSix;

    public  static boolean  setLeoUesrStatusbarBgWallpaperBlurEnabled;

    public  static int setLeoUesrStatusbarBlurBgDegree;
    public  static boolean setLeoUesrStatusbarBgWallpaperAlphaEnable;
    public  static int setLeoUesrStatusbarBGStyle;
    public  static int setLeoUesrStatusbarBgBasicColor;
    public  static int setLeoUesrStatusbarGradientBgStartColor;
    public  static int setLeoUesrStatusbarGradientBgCenterColor;
    public  static int setLeoUesrStatusbarGradientBgEndColor;
    public  static int setLeoUesrStatusbarGradientEnableCenterColor;
    public  static boolean setLeoUesrStatusbarShowBG;
    public  static int setLeoUesrStatusbarBgGradientBgStyle;
    public  static int setLeoUesrStatusbarGradientBgType;
    public  static int setLeoUesrStatusbarGradientBackGroundCornerRadius;
    public  static int setLeoUesrStatusbarGradientBackGroundColorRadius;
    public  static String setLeoUesrStatusbarBgWallpaper;
    public  static int setLeoUesrStatusbarWallpaperColorEnable;
    public  static int setLeoUesrStatusbarWallpaperColor;


    public static int    setLeoUesrNavStrokeDashColor;
    public static int    setLeoUesrNavStrokeThickness;
    public static int    setLeoUesrNavStrokeDashWidth;
    public static int    setLeoUesrNavStrokeDashGap;
    public static boolean  setLeoUesrNavStrokeEnabled;
    public  static int setLeoUesrNavBgWallpaperAlpha;
    public  static int  setLeoUesrNavGradientColorFour;
    public  static int  setLeoUesrNavGradientColorFive;
    public  static int  setLeoUesrNavGradientColorSix;

    public  static boolean  setLeoUesrNavBgWallpaperBlurEnabled;

    public  static int setLeoUesrNavBlurBgDegree;
    public  static boolean setLeoUesrNavBgWallpaperAlphaEnable;
    public  static int setLeoUesrNavBGStyle;
    public  static int setLeoUesrNavBgBasicColor;
    public  static int setLeoUesrNavGradientBgStartColor;
    public  static int setLeoUesrNavGradientBgCenterColor;
    public  static int setLeoUesrNavGradientBgEndColor;
    public  static int setLeoUesrNavGradientEnableCenterColor;
    public  static boolean setLeoUesrNavShowBG;
    public  static int setLeoUesrNavBgGradientBgStyle;
    public  static int setLeoUesrNavGradientBgType;
    public  static int setLeoUesrNavGradientBackGroundCornerRadius;
    public  static int setLeoUesrNavGradientBackGroundColorRadius;
    public  static String setLeoUesrNavBgWallpaper;
    public  static int setLeoUesrNavWallpaperColorEnable;
    public  static int setLeoUesrNavWallpaperColor;

    public  static int setLeoUesrStatusbarWIFIIcon;
    public  static int setLeoUesrStatusbarSignalIcon;
    public  static boolean setLeoUesrStatusbarSignalIconEnabled;
    public  static boolean setLeoUesrStatusbarWifiIconEnabled;
    public  static boolean setLeoUesrStatusbarIconPaddingEnabled;
    public  static boolean setLeoUesrKeyguardStatusbarIconPaddingEnabled;
    public  static int setLeoUesrStatusbarIconPadding;
    public  static int setLeoUesrKeyguardStatusbarIconPadding;
    public static final String[] StatusbarIcon ={
            LEOPREFE+getLeoStatusbarSignal()+"_wifi"+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarSignal()+"_wifi"+getLeoStyle(),
            LEOPREFE+getLeoStatusbarSignal()+getLeoEnabled(),
            LEOPREFE+getLeoStatusbarSignal()+getLeoStyle(),
            LEOPREFE+"statusbar"+"_icon_padding"+getLeoEnabled(),
            LEOPREFE+"statusbar"+"_icon_padding",
            LEOPREFE+"statusbar"+"_icon_5g"+getLeoEnabled()
    };
    public static final String[] CustomNavBg ={
            LEOPREFE+getLeoNavBG()+getLeoEnabled(),
            LEOPREFE+getLeoNavBG()+getLeoStyle(),
            LEOPREFE+getLeoNavBG()+getLeoColor(),
            LEOPREFE+getLeoNavBG()+getLeoGradientColorOne()+getLeoColor(),
            LEOPREFE+getLeoNavBG()+getLeoGradientColorTwo()+getLeoColor(),
            LEOPREFE+getLeoNavBG()+getLeoGradientColorthee()+getLeoColor(),
            LEOPREFE+getLeoNavBG()+getLeoGradientColorFour()+getLeoColor(),
            LEOPREFE+getLeoNavBG()+getLeoGradientColorFive()+getLeoColor(),
            LEOPREFE+getLeoNavBG()+getLeoGradientColorSix()+getLeoColor(),
            LEOPREFE+getLeoNavBG()+getLeoGradientColorSix()+getLeoEnabled(),
            LEOPREFE+getLeoNavBG()+getLeoGradientStyle()+getLeoStyle(),
            LEOPREFE+getLeoNavBG()+getLeoGradientStyle()+"_type",
            LEOPREFE+getLeoNavBG()+getLeoGradientStyle()+"_radius",
            LEOPREFE+getLeoNavBG()+getLeoStrokeDashed()+getLeoEnabled(),
            LEOPREFE+getLeoNavBG()+getLeoStrokeDashed()+getLeoStrokeDashGap(),
            LEOPREFE+getLeoNavBG()+getLeoStrokeDashed()+getLeoStrokeDashWidth(),
            LEOPREFE+getLeoNavBG()+getLeoStrokeDashed()+getLeoStrokeThickness(),
            LEOPREFE+getLeoNavBG()+getLeoStrokeDashed()+getLeoColor(),
            LEOPREFE+getLeoNavBG()+getLeoStyle()+getLeoWallpaper()+"_url",
            LEOPREFE+getLeoNavBG()+getLeoWallpaper()+getLeoColor()+getLeoEnabled(),
            LEOPREFE+getLeoNavBG()+getLeoWallpaper()+getLeoColor(),
            LEOPREFE+getLeoNavBG()+getLeoWallpaper()+getLeoAlpha()+getLeoEnabled(),
            LEOPREFE+getLeoNavBG()+getLeoWallpaper()+getLeoAlpha(),
            LEOPREFE+getLeoNavBG()+getLeoWallpaperBlur()+getLeoEnabled(),
            LEOPREFE+getLeoNavBG()+getLeoWallpaperBlur()+getLeoStyle(),
            LEOPREFE+getLeoNavBG()+"_radius",
    };
    public static String getVersionName()  {
        PackageManager packageManager = getContext().getPackageManager();
        PackageInfo packInfo = null;
        try {
            packInfo = packageManager.getPackageInfo(ConfigManager, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }

        return packInfo.versionName;
    }
}