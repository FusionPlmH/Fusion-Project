package com.android.fusionleo.statusbar;


import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.provider.Settings;
import android.util.Log;



import com.android.systemui.SystemUIApplication;


import static com.android.fusionleo.global.LeoGlobalUtils.*;
import static com.android.fusionleo.global.LeoGlobalValues.*;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.QSonColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.Transparency;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mLeoLockColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mNotificationPanelCarrierLabelColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mRedColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mStatusBarClockColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mWhiteColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mYellowColor;

public class LeoStatusbarSettings{
    public  static boolean setLeoUesrStatusBarClockIs12;
    public  static boolean setLeoUesrStatusBarClockSeconds;
    public  static boolean setLeoUesrStatusBarClockSingle;//单行显示
    public  static int  setLeoUesrStatusBarClockDateDisplay;//日期显示开关
    public  static boolean setLeoUesrStatusBarDateWeekDisplay;//星期显示开关
    public  static boolean setLeoUesrStatusBarClockDetailsDisplay;//时间细节开关
    public  static String  setLeoUesrStatusBarClockDateFormat;//日期格式风格
    public  static int  setLeoUesrStatusBarClockDetails;//时间细节风格
    public  static int setLeoUesrStatusBarDateWeek;//星期风格
    public  static int setLeoUesrStatusBarClockFontStyle;
    public  static int setLeoUesrStatusBarClockDateENStyle;//英文日期
    public  static int setLeoUesrStatusBarClockSingleFontSize;//字体大小
    public  static  int setLeoUesrStatusBarClockMultiFontSize;//字体大小
    public  static int setLeoUesrStatusBarClockColor;//字体大小
    public  static int setLeoUesrStatusBarClockPosition;
    public  static boolean  setLeoUesrStatusBarClockDisable;
    public  static int setLeoUesrStatusBarClockAMPM;
    public static int setLeoUesrStatusBarClockDatePosition;
    public static int setLeoUesrStatusBarClockDateWeekPosition;
    public static int setLeoUesrStatusBarClockDateDetailsPosition;
    public static int setLeoUesrStatusBarClockColorEnabled;
    public static int setLeoUesrStatusBarClockRandomColor;
    public static int setLeoUesrStatusBarClockDateSymbol;
    public  static boolean  setLeoUesrClockOnClickEnabled=false;


    public  static boolean  setLeoUesrStatusbarNetworkAutoHideEnabled=false;
    public  static boolean  setLeoUesrStatusbarNetworkShowArrowsEnabled=true;
    public  static int  setLeoUesrStatusbarNetworkShowArrowsStyle=0;
    public  static int  setLeoUesrStatusbarNetworkAutoHideThreshold=10;
    public  static int  setLeoUesrStatusbarNetworkState=0;
    public  static boolean  setLeoUesrStatusbarNetworkUnit=false;
    public  static int  setLeoUesrStatusbarNetworkArrowsOrientation=0;
    public  static float  setLeoUesrStatusbarNetworkSize;
    public  static int  setLeoUesrStatusbarNetworkFont=0;
    public  static boolean  setLeoUesrStatusbarNetworkText=false;
    public  static boolean  setLeoUesrStatusbarNetworkSingle=false;
    public  static int  setLeoUesrStatusBarNetworkTrafficRandomColor;
    public  static int setLeoUesrNetworkTrafficCustomColorEnabled;
    public  static int setLeoUesrNetworkTrafficALLColorEnabled;
    public  static int  setLeoUesrNetworkTrafficTextColor;
    public  static int setLeoUesrNetworkTrafficIconColor;
    public  static int setLeoUesrNetworkTrafficALLColor;

    public static int setLeoUesrStatusBarCarrierColorEnabled;

    public static int setLeoUesrStatusBarCarrierRandomColor;

    public  static int setLeoUesrStatusBarCarrierSingleSize;
    public  static int setLeoUesrStatusBarCarrierMultiSize;
    public  static String setLeoUesrStatusBarCarrierStringSingle;
    public  static String getSetLeoUesrStatusBarCarrierStringMulti;
    public  static int getSetLeoUesrStatusBarCarrierFont;
    public  static int getSetLeoUesrStatusBarCarrierColor;
  //  public  static int getSetLeoUesrStatusBarCarrierOrientation;
    public  static boolean setLeoUesrStatusBarCarrierStyle;
  //  public  static boolean getSetLeoUesrStatusBarCarrier;
    public  static boolean setLeoUesrStatusBarCarrierSingle;

    public static boolean  setLeoUesrStatusBarTemperatureSingle;
    public static boolean  setLeoUesrStatusBarTemperatureDisplay;
    public static int  setLeoUesrStatusBarTemperatureSingleSize;
    public static int  setLeoUesrStatusBarTemperatureMultiSize;
    public static int  setLeoUesrStatusBarTemperatureColor;
    public static int  setLeoUesrStatusBarTemperatureFont;
    public static int setLeoUesrStatusBarTemperatureColorEnabled;
    public static int setLeoUesrStatusBarTemperatureRandomColor;

    public  static boolean setLeoUesrStatusBarBatteryBarAnimate;
    public  static boolean setLeoUesrStatusBarBatteryBarChargingColorEnabled;
    public  static boolean setLeoUesrStatusBarBatteryBarBlendColorEnabled;
    public  static boolean setLeoUesrStatusBarBatteryBarBlendReversedColorEnabled;
    public  static int setLeoUesrStatusBarBatteryBarColor;
    public  static int setLeoUesrStatusBarBatteryBarChargingColor;
    public  static int setLeoUesrStatusBarBatteryBarLowColor;
    public  static int setLeoUesrStatusBarBatteryBarDP;
    public  static int setLeoUesrStatusBarBatteryBarStyle;
    public  static int setLeoUesrStatusBarBatteryBar;

    public static int  setLeoUesrMainBatteryColorTransform;
    public static int setLeoUesrMinBatteryStyle;
    public static String setLeoUesrMainBatteryPackage;
    public static int setLeoUesrMainBatteryTextStandbyColor;
    public static int setLeoUesrMainBatteryIconStandbyColor;
    public static int setLeoUesrMainBatteryIconSize;
    public static int setLeoUesrMainBatteryTextSize;
    public static int setLeoUesrMainBatteryTextFont;
    public static int setLeoUesrMainBatteryDefault;
    public static int setLeoUesrStatusBarMainBatteryRandomColor;
    public  static int  setLeoUesrNetworkTrafficLocation;
    public static int  setLeoUesrStatusBarOrientation;
    public  static boolean setLeoUesrStatusBarCarrier;
    public  static int setLeoUesrStatusBarCarrierOrientation;

    public  static int setLeoUesrKeyguardCarrierSingleSize;
    public  static int setLeoUesrKeyguardCarrierMultiSize;
    public  static String setLeoUesrKeyguardCarrierStringSingle;
    public  static String getSetLeoUesrKeyguardCarrierStringMulti;
    public  static int setLeoUesrKeyguardCarrierFont;
    public  static int setLeoUesrKeyguardCarrierColor;
    public  static boolean setLeoUesrKeyguardCarrierSingle;
    public  static boolean setLeoUesrKeyguardCarrier=true;
    public  static boolean setLeoUesrKeyguardCarrierStyle;
    public static int setLeoUesrKeyguardCarrierColorEnabled;
    public static int setLeoUesrKeyguardCarrierRandomColor;

    public static boolean setLeoUesrStatusBarLogoVisible;
    public static int  setLeoUesrStatusBarLogoLocation;
    public static int setLeoUesrStatusBarLogoColor;
    public static int setLeoUesrStatusBarLogoStyle;
    public static float setLeoUesrStatusBarLogoSize;
    public static int setLeoUesrStatusBarLogoColorEnabled;

    public static int setLeoUesrStatusBarLogoRandomColor;


    public static boolean setLeoUesrStatsusBarBlurWallpaperAlphaEnabled;
    public static int setLeoUesrStatsusBarBlurWallpaperColorEnabled;
    public static int    setLeoUesrStatsusBarStrokeDashColor;
    public static int    setLeoUesrStatsusBarStrokeThickness;
    public static int    setLeoUesrStatsusBarStrokeDashWidth;
    public static int    setLeoUesrStatsusBarStrokeDashGap;
    public static boolean  setLeoUesrStatsusBarStrokeEnabled;
    public  static boolean setLeoUesrStatsusBarShowBG;
    public  static int setLeoUesrStatsusBarBGStyle;
    public  static int setLeoUesrStatsusBarBgBasicColor;
    public  static int setLeoUesrStatsusBarGradientBgStartColor;
    public  static int setLeoUesrStatsusBarGradientBgCenterColor;
    public  static int setLeoUesrStatsusBarGradientBgEndColor;
    public  static int setLeoUesrStatsusBarGradientEnableCenterColor;
    public  static int setLeoUesrStatsusBarBgGradientBgStyle;
    public  static int setLeoUesrStatsusBarGradientBgType;
    public  static int setLeoUesrStatsusBarGradientBackGroundCornerRadius;
    public  static int setLeoUesrStatsusBarGradientBackGroundColorRadius;
    public  static String setLeoUesrStatsusBarBgWallpaper;
    public  static int setLeoUesrStatsusBarWallpaperColorEnable;
    public  static int setLeoUesrStatsusBarWallpaperColor;
    public  static int setLeoUesrStatsusBarWallpaperAlpha;
    public  static int setLeoUesrStatsusBarBlurBgDegree;
    public  static boolean setLeoUesrStatsusBarBgWallpaperAlphaEnable;
    public  static int  setLeoUesrStatsusBarGradientColorFour;
    public  static int  setLeoUesrStatsusBarGradientColorFive;
    public  static int  setLeoUesrStatsusBarGradientColorSix;
    public  static int  setLeoUesrStatsusBarGradientColorEnabled;
    public  static int  setLeoUesrStatsusBarBgWallpaperBlurEnabled;
    static int mBackgroundWallpaperColor=mWhiteColor;
    static int mDefaultStrokeColor=QSonColor;
    public  static int  setLeoUesrStatsusBarWifiIconStyle;
    public  static boolean  setLeoUesrStatsusBarStatsusBarWifiIconCustom=false;
    public  static int  setLeoUesrStatsusBarSignalIconStyle;
    public  static boolean  setLeoUesrLeoStatsusBarFlashlightIcon=false;


    public static int setLeoUesrPulldownCarrierColor;
    public static int setLeoUesrPulldownCarrierSize;
    public static int setLeoUesrPulldownCarrierFont;
    public  static String setLeoUesrPullDownCarrierString;
    public  static String setLeoUesrPullDownCarrierStringA;
    public static int setLeoUesrPulldownCarrierColorEnabled;
    public static int setLeoUesrPulldownCarrierRandomColor;
    public static int setLeoUesrPulldownCarrier;

    public  static boolean  setLeoUesrDeviceInfo=false;
    public  static int  setLeoUesrDeviceInfoSize;
    public  static int  setLeoUesrDeviceInfoStyle;
    public  static int  setLeoUesrDeviceInfoStyleTwo;
    public  static int  setLeoUesrDeviceInfoStyleThree;
    public  static int  setLeoUesrDeviceInfoStyleFour;
    public  static int  setLeoUesrDeviceInfoStyleFive;
    public  static int  setLeoUesrDeviceInfoOrientation;
    public  static int  setLeoUesrDeviceInfoFont;
    public  static int  setLeoUesrDeviceInfoFontTwo;
    public  static int  setLeoUesrDeviceInfoFontThree;
    public  static int  setLeoUesrDeviceInfoFontFour;
    public  static int  setLeoUesrDeviceInfoFontFive;
    public  static int  setLeoUesrDeviceInfoColor;
    public  static int  setLeoUesrDeviceInfoColorTwo;
    public  static int  setLeoUesrDeviceInfoColorThree;
    public  static int  setLeoUesrDeviceInfoColorFour;
    public  static int  setLeoUesrDeviceInfoColorFive;
    public  static int  setLeoUesrDeviceInfoColorAll;
    public  static int  setLeoUesrDeviceInfoALLColor;
    public  static int  setLeoUesrDeviceInfoCustomColor;
    public  static int  setLeoUesrDeviceInfoArray;
    public static int setLeoUesrDeviceInfoRandomColor;

    public static int setLeoUesrStatusbarVoltageStyle;
    public static boolean setLeoUesrStatusbarVoltageDisplay;
    public static boolean setLeoUesrStatusbarVoltageSingle;
    public static int setLeoUesrStatusbarVoltageSingleSize;
    public static int setLeoUesrStatusbarVoltageMultiSize;
    public static int setLeoUesrStatusbarVoltageFont;
    public static int setLeoUesrStatusbarVoltageColorEnabled;
    public static int setLeoUesrStatusbarVoltageColor;
    public static int setLeoUesrStatusbarVoltageRandomColor;
    public static int setLeoUesrStatusbarVoltageOrientation;

    public static boolean setLeoUesrPulldownAnalogClockDateEnable;
    public static int setLeoUesrPulldownAnalogClockDialStyle;
    public static int setLeoUesrPulldownAnalogClockDateColor;
    public static int setLeoUesrPulldownAnalogClockSecondColor;
    public static int setLeoUesrPulldownAnalogClockMinutColor;
    public static int setLeoUesrPulldownAnalogClockDialColor;
    public static int setLeoUesrPulldownAnalogClockHourColor;
    public static int setLeoUesrPulldownAnalogClockColorEnable;
    public static int setLeoUesrPulldownAnalogClockDateSize;
    public static int setLeoUesrPulldownAnalogClockSize;
    public static int setLeoUesrPulldownAnalogClockDateFont;
    public static boolean setLeoUesrPulldownAnalogEnable=false;
    public  static int setLeoUesrPowerMenuBGStyle;
    public  static int setLeoUesrPowerMenuBgBasicColor;
    public  static int setLeoUesrPowerMenuGradientBgStartColor;
    public  static int setLeoUesrPowerMenuGradientBgCenterColor;
    public  static int setLeoUesrPowerMenuGradientBgEndColor;
    public  static int setLeoUesrPowerMenuGradientEnableCenterColor;
    public  static boolean setLeoUesrPowerMenuShowBG;
    public  static int setLeoUesrPowerMenuBgGradientBgStyle;
    public  static int setLeoUesrPowerMenuGradientBgType;
    public  static int setLeoUesrPowerMenuGradientBackGroundCornerRadius;
    public  static int setLeoUesrPowerMenuGradientBackGroundColorRadius;
    public  static String setLeoUesrPowerMenuBgWallpaper;
    public  static int setLeoUesrPowerMenuWallpaperColorEnable;
    public  static int setLeoUesrPowerMenuWallpaperColor;
    public static int    setLeoUesrPowerMenuStrokeDashColor;
    public static int    setLeoUesrPowerMenuStrokeThickness;
    public static int    setLeoUesrPowerMenuStrokeDashWidth;
    public static int    setLeoUesrPowerMenuStrokeDashGap;
    public static boolean  setLeoUesrPowerMenuStrokeEnabled;
    public static boolean setLeoUesrPowerMenuBlurWallpaperAlphaEnabled;
    public static int setLeoUesrPowerMenuBlurWallpaperColorEnabled;
    public  static int  setLeoUesrPowerMenuBgWallpaperAlpha;
    public  static boolean  setLeoUesrPowerMenuBgWallpaperAlphaEnable;
    public  static int  setLeoUesrPowerMenuBlurBgDegree;
    public  static int  setLeoUesrPowerMenuGradientColorFour;
    public  static int  setLeoUesrPowerMenuGradientColorFive;
    public  static int  setLeoUesrPowerMenuGradientColorSix;
    public  static int  setLeoUesrPowerMenuGradientColorEnabled;
    public  static int  setLeoUesrPowerMenuBgWallpaperBlurEnabled;

    public  static int  setLeoUesrKeyguardStatusBar;
    public  static boolean  setLeoUesrBiologicalUnlock=false;

    static {
        System.loadLibrary(SSSSOSSSS);
    }
    public  static int  setLeoUesrMipHomeAction=0;
    public  static int  setLeoUesrMipVibrate=0;
    public  static int  setLeoUesrMipVibrateLevel=10;
    public  static String setLeoUesrMipHomeActionApp;
    public  static int  setLeoUesrMipTaskAction=0;
    public  static String setLeoUesrMipTaskActionApp;
    public  static int  setLeoUesrMipFlashlightAction=0;
    public  static String setLeoUesrMipFlashlightActionApp;
    public  static int  setLeoUesrMipBackAction=0;
    public  static String setLeoUesrMipBackActionApp;
    public  static boolean  setLeoUesrMipEnable=false;

    public  static boolean setLeoUesrFloatingDisplay;
    public  static int setLeoUesrFloatingDownSlideDelete;
    public  static int setLeoUesrFloatingVibrate;
    public  static int setLeoUesrFloatingVibratelevel;
    public  static int setLeoUesrFloatingLeftStyle;
    public  static int setLeoUesrFloatingRightStyle;
    public  static int setLeoUesrFloatingDownStyle;
    public  static int setLeoUesrFloatingUPStyle;
    public  static int setLeoUesrFloatingClickStyle;
    public  static String setLeoUesrFloatingLeftString;
    public  static String setLeoUesFloatingRightString;
    public  static String setLeoUesrFloatingDownString;
    public  static String setLeoUesrFloatingUPString;
    public  static String setLeoUesrFloatingClickString;

    public  static int   setLeoUesrStatusBarLeftClickAction;
    public  static String setLeoUesrStatusBarLeftClickApp;
    public  static int setLeoUesrStatusBarLeftLongClickAction;
    public  static boolean setLeoUesrStatusBarLeftAction;
    public  static String setLeoUesrStatusBarLeftLongClickApp;
    public  static int setLeoUesrStatusBarGesturesVibratorEnable;
    public static int setLeoUesrStatusBarGestureVibrationLevel;
    public  static int   setLeoUesrStatusBarRightClickAction;
    public  static String setLeoUesrStatusBarRightClickApp;
    public  static int setLeoUesrStatusBarRightLongClickAction;
    public  static boolean setLeoUesrStatusBarRightAction;
    public  static String setLeoUesrStatusBarRightLongClickApp;



    public  static int setLeoUesrStatusBarGestureDoubleEnabled;
    public  static String setLeoUesrStatusBarGestureDoubleApp;
    public  static int setLeoUesrStatusBarGestureDouble=0;


    public  static boolean setLeoUesrPowerMenuStyle=false;



    public static int setNotificationPanelDataUsageOrientation=0;
    public static int setNotificationPanelDataUsageTextFont=0;
    public static int setNotificationPanelDataUsageTextSize=13;
    public static boolean setNotificationPanelDataUsageEnabled=true;

    public static int setNotificationPanelBlurLevel=15;
    public static boolean setNotificationPanelBlurEnabled=false;

    public static int setLeoUesrBottomBarViewClearAllFont=0;
    public static int setLeoUesrBottomBarViewNotiSettingFont=0;
    public static int setLeoUesrBottomBarViewNotiSettingCustom=0;
    public static String setLeoUesrBottomBarViewNotiSettingCustomString;
    public static int setLeoUesrBottomBarViewClearAllCustom=0;
    public static String setLeoUesrBottomBarViewClearAllCustomString;
    public static int setLeoUesrBottomBarViewClearAllSettingSize=13;

    public  static String  setLeoUesrHeaderCustomDateFormat;
    public  static int  setLeoUesrHeaderDateWeekOrientation;
    public  static int  setLeoUesrHeaderDateWeekStyle;
    public  static int  setLeoUesrHeaderDateSize;
    public  static int  setLeoUesrHeaderDateFont;
    public  static int  setLeoUesrHeaderDateSymbol;
    public  static boolean setLeoUesrHeaderDateWeekDisplay;
    public  static boolean setLeoUesrHeaderDateDisplay;
    public static boolean  setLeoUesrHeaderLunarDisplay;
    public static int  setLeoUesrHeaderLunarSymbol;
    public static int  setLeoUesrHeaderLunarOrientation;
    public static int  setLeoUesrHeaderLunarStyle;
    public static boolean  setLeoUesrHeaderLunarConstellation;
    public  static int  setLeoUesrHeaderTextLunarFont;
    private static final String TAG = "LeoStatusSettings" ;
    public static boolean setLeoUesrHeaderDateClickEnabled;
    public static boolean setLeoUesrHeaderDateLongClickEnabled;
    public static int setLeoUesrHeaderDateClick;
    public static int setLeoUesrHeaderDateLongClick;
    public static String setLeoUesrHeaderDateClickString;
    public static String setLeoUesrHeaderDateLongClickString;

    public static int setLeoUesrHeaderDateVibrate;
    public static int setLeoUesrHeaderDateVibrateLevel;

    public  static boolean setLeoUesrPowerActionsLabelCustomEnable=false;
    public  static boolean setLeoUesrPowerActionsLabelRandomColor=true;
    public  static int setLeoUesrPowerActionsLabelSize;
    public  static int setLeoUesrPowerActionsLabelWhiteColor;
    public  static int setLeoUesrPowerActionsLabelblackColor;
    public  static int setLeoUesrPowerActionsLabelFont;

    public  static boolean setLeoUesrPowerActionsStateCustomEnable=false;
    public  static boolean setLeoUesrPowerActionsStateRandomColor=true;
    public  static int setLeoUesrPowerActionsStateSize;
    public  static int setLeoUesrPowerActionsStateWhiteColor;
    public  static int setLeoUesrPowerActionsStateblackColor;
    public  static int setLeoUesrPowerActionsStateFont;

    public  static boolean setLeoUesrPowerActionsDescriptionCustomEnable=false;
    public  static boolean setLeoUesrPowerActionsDescriptionRandomColor=true;
    public  static int setLeoUesrPowerActionsDescriptionSize;
    public  static int setLeoUesrPowerActionsDescriptionWhiteColor;
    public  static int setLeoUesrPowerActionsDescriptionblackColor;
    public  static int setLeoUesrPowerActionsDescriptionFont;

    public  static boolean setLeoUesrPowerPowerIconNumberCustomEnabled=false;
    public  static int setLeoUesrPowerIconNumberCustomLandscape;
    public  static int setLeoUesrPowerIconNumberCustomPortrait;

    public  static boolean setLeoUesrHeaderQSClockCustomEnabled=false;
    public  static int setLeoUesrHeaderQSClockSize;
    public  static int setLeoUesrHeaderQSClockFont;
    public  static boolean setLeoUesrHeaderQSClockVisibility=true;
    public  static boolean setLeoUesrHeaderQSClockBigCustomEnabled=false;
    public  static boolean setLeoUesrHeaderQSClockBigVisibility=true;
    public  static int setLeoUesrHeaderQSClockBigSize;
    public  static int setLeoUesrHeaderQSClockBigFont;

    public static int setLeoUesrHeaderQSClockVibrate;
    public static int setLeoUesrHeaderQSClockVibrateLevel;
    public static boolean setLeoUesrHeaderQSClockClickEnabled;
    public static boolean setLeoUesrHeaderQSClockLongClickEnabled;
    public static int setLeoUesrHeaderQSClockClick;
    public static int setLeoUesrHeaderQSClockLongClick;
    public static String setLeoUesrHeaderQSClockClickString;
    public static String setLeoUesrHeaderQSClockLongClickString;

    public  static boolean setLeoUesrHeaderSearchButtonVisibility=true;
    public  static boolean setLeoUesrHeaderSettingsButtonVisibility=true;
    public static int setLeoUesrHeaderSearchButtonClick;
    public static int setLeoUesrHeaderSettingsButtonClick;
    public static String setLeoUesrHeaderSearchButtonString;
    public static String setLeoUesrHeaderSettingsButtonClickString;


    public static boolean setLeoUesrKeyguardAlarmDisplay=false;
    public static boolean setLeoUesrKeyguardAlarmIconDisplay=true;
    public static boolean setLeoUesrKeyguardAlarmFormat=false;
    public static int setLeoUesrKeyguardAlarmTextSize=20;
    public static int setLeoUesrKeyguardAlarmTextFont=0;
    public static boolean setLeoUesrKeyguardAlarmColorEnable=false;
    public static int setLeoUesrKeyguardAlarmColor;

    public static boolean setLeoUesrKeyguardWeatherDisplay;
    public static boolean setLeoUesrKeyguardWeatherLocationDisplay=false;
    public static boolean setLeoUesrKeyguardWeatherCurrentTempDisplay=true;
    public static boolean setLeoUesrKeyguardWeatherRealFeelDisplay=false;
    public static boolean setLeoUesrKeyguardWeatherLowHighTempDisplay=false;
    public static boolean setLeoUesrKeyguardWeatherAQIDisplay=false;
    public static boolean setLeoUesrKeyguardWeatherStateDisplay=true;
    public static boolean setLeoUesrKeyguardWeatherSunriseDisplay=false;
    public static boolean setLeoUesrKeyguardWeatherSunsetDisplay=false;
    public static boolean setLeoUesrKeyguardWeatherLocationIconDisplay=false;
    public static boolean setLeoUesrKeyguardWeatherSunriseIconDisplay=false;
    public static boolean setLeoUesrKeyguardWeatherSunsetIconDisplay=false;
    public static int setLeoUesrKeyguardWeatherLocationFont;
    public static int setLeoUesrKeyguardWeatherCurrentFont;
    public static int setLeoUesrKeyguardWeatherRealFeelFont;
    public static int setLeoUesrKeyguardWeatherLowHighTempFont;
    public static int setLeoUesrKeyguardWeatherAQIFont;
    public static int setLeoUesrKeyguardWeatherStateFont;
    public static int setLeoUesrKeyguardWeatherSunriseFont;
    public static int setLeoUesrKeyguardWeatherSunsetFont;

    public static boolean setLeoUesrKeyguardWeatherColorEnable=false;
    public static int setLeoUesrKeyguardWeatherAllColorEnable;
    public static int setLeoUesrKeyguardWeatherAllColor;
    public static int setLeoUesrKeyguardWeatherLocationColor;
    public static int setLeoUesrKeyguardWeatherCurrentTempColor;
    public static int setLeoUesrKeyguardWeatherRealFeelColor;
    public static int setLeoUesrKeyguardWeatherLowHighTempColor;
    public static int setLeoUesrKeyguardWeatherAQIColor;
    public static int setLeoUesrKeyguardWeatherStateColor;
    public static int setLeoUesrKeyguardWeatherSunriseColor;
    public static int setLeoUesrKeyguardWeatherSunsetColor;
    static  int colorlock=mLeoLockColor;
    public static void LeoStatusSettings(Context context){
        if (getLeoOS().equals(getOnema())) {
            Log.w(new String(new char[]{'L', 'E', 'O', 'S', 'T', 'A', 'T', 'U', 'S', 'S', 'E', 'T', 'T', 'N', 'G', 'S'}), AUTHOR);
            if (getCode() .equals(getOCodeN())) {
                Log.v(new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}), AUTHOR);

                setLeoUesrKeyguardWeatherColorEnable =getLeoInt(context,
                        getLeoKeyguardWeatherColorEnable(), 0)==1;
                setLeoUesrKeyguardWeatherAllColorEnable=getLeoInt(context,
                        getLeoKeyguardWeatherAllColorEnable(), 0);
                setLeoUesrKeyguardWeatherAllColor=getLeoInt(context,
                        getLeoKeyguardWeatherAllColor(), colorlock);
                setLeoUesrKeyguardWeatherLocationColor=getLeoInt(context,
                        getLeoKeyguardWeatherLocationColor(), colorlock);
                setLeoUesrKeyguardWeatherCurrentTempColor=getLeoInt(context,
                        getLeoKeyguardWeatherCurrentTempColor(),colorlock);
                setLeoUesrKeyguardWeatherRealFeelColor=getLeoInt(context,
                        getLeoKeyguardWeatherRealFeelColor(), colorlock);
                setLeoUesrKeyguardWeatherLowHighTempColor=getLeoInt(context,
                        getLeoKeyguardWeatherLowHighTempColor(), colorlock);
                setLeoUesrKeyguardWeatherAQIColor=getLeoInt(context,
                        getLeoKeyguardWeatherAQIColor(), colorlock);
                setLeoUesrKeyguardWeatherStateColor=getLeoInt(context,
                        getLeoKeyguardWeatherStateColor(), colorlock);
                setLeoUesrKeyguardWeatherSunriseColor=getLeoInt(context,
                        getLeoKeyguardWeatherSunriseColor(), colorlock);
                setLeoUesrKeyguardWeatherSunsetColor=getLeoInt(context,
                        getLeoKeyguardWeatherSunsetColor(), colorlock);

                setLeoUesrKeyguardWeatherLocationFont=getLeoInt(context,
                        getLeoKeyguardWeatherLocationFont(), 0);
                setLeoUesrKeyguardWeatherCurrentFont=getLeoInt(context,
                        getLeoKeyguardWeatherCurrentFont(), 0);
                setLeoUesrKeyguardWeatherRealFeelFont=getLeoInt(context,
                        getLeoKeyguardWeatherRealFeelFont(), 0);
                setLeoUesrKeyguardWeatherLowHighTempFont=getLeoInt(context,
                        getLeoKeyguardWeatherLowHighTempFont(), 0);
                setLeoUesrKeyguardWeatherAQIFont=getLeoInt(context,
                        getLeoKeyguardWeatherAQIFont(), 0);
                setLeoUesrKeyguardWeatherStateFont=getLeoInt(context,
                        getLeoKeyguardWeatherStateFont(), 0);
                setLeoUesrKeyguardWeatherSunriseFont=getLeoInt(context,
                        getLeoKeyguardWeatherSunriseFont(), 0);
                setLeoUesrKeyguardWeatherSunsetFont=getLeoInt(context,
                        getLeoKeyguardWeatherSunsetFont(), 0);

                setLeoUesrKeyguardWeatherDisplay =getLeoInt(context,
                        getLeoKeyguardWeatherDisplay(), 0)==1;
                setLeoUesrKeyguardWeatherLocationDisplay =getLeoInt(context,
                        getLeoKeyguardWeatherLocationDisplay(), 0)==1;
                setLeoUesrKeyguardWeatherCurrentTempDisplay =getLeoInt(context,
                        getLeoKeyguardWeatherCurrentTempDisplay(), 1)==1;
                setLeoUesrKeyguardWeatherRealFeelDisplay=getLeoInt(context,
                        getLeoKeyguardWeatherRealFeelDisplay(), 0)==1;
                setLeoUesrKeyguardWeatherLowHighTempDisplay=getLeoInt(context,
                        getLeoKeyguardWeatherLowHighTempDisplay(),0)==1;
                setLeoUesrKeyguardWeatherAQIDisplay =getLeoInt(context,
                        getLeoKeyguardWeatherAQIDisplay(),0)==1;
                setLeoUesrKeyguardWeatherStateDisplay=getLeoInt(context,
                        getLeoKeyguardWeatherStateDisplay(), 1)==1;
                setLeoUesrKeyguardWeatherSunriseDisplay=getLeoInt(context,
                        getLeoKeyguardWeatherSunriseDisplay(), 0)==1;
                setLeoUesrKeyguardWeatherSunsetDisplay =getLeoInt(context,
                        getLeoKeyguardWeatherSunsetDisplay(), 0)==1;
                setLeoUesrKeyguardWeatherLocationIconDisplay=getLeoInt(context,
                        getLeoKeyguardWeatherLocationIconDisplay(), 0)==1;
                setLeoUesrKeyguardWeatherSunriseIconDisplay=getLeoInt(context,
                        getLeoKeyguardWeatherSunriseIconDisplay(), 0)==1;
                setLeoUesrKeyguardWeatherSunsetIconDisplay =getLeoInt(context,
                        getLeoKeyguardWeatherSunsetIconDisplay(), 0)==1;


                /////////////////////////////////////////////////////
                setLeoUesrKeyguardAlarmDisplay=getLeoInt(context,
                        getLeoKeyguardAlarmDisplay(), 0)==1;
                setLeoUesrKeyguardAlarmIconDisplay=getLeoInt(context,
                        getLeoKeyguardAlarmIconDisplay(), 0)==1;
                setLeoUesrKeyguardAlarmFormat=getLeoInt(context,
                        getLeoKeyguardAlarmFormat(), 0)==1;
                setLeoUesrKeyguardAlarmTextSize=getLeoInt(context,
                        getLeoKeyguardAlarmTextSize(), 20);
                setLeoUesrKeyguardAlarmTextFont=getLeoInt(context,
                        getLeoKeyguardAlarmTextFont(), 0);
                setLeoUesrKeyguardAlarmColorEnable=getLeoInt(context,
                        getLeoKeyguardAlarmColorEnable(), 0)==1;
                setLeoUesrKeyguardAlarmColor=getLeoInt(context,
                        getLeoKeyguardAlarmColor(), mLeoLockColor);
                /////////////////////

                //////////////////////////////////////////////
                setLeoUesrHeaderSearchButtonVisibility=getLeoInt(context,
                        getLeoHeaderSearchButtonVisibility(), 0)==1;
                setLeoUesrHeaderSettingsButtonVisibility=getLeoInt(context,
                        getLeoHeaderSettingsButtonVisibility(), 0)==1;
                setLeoUesrHeaderSearchButtonClick=getLeoInt(context,
                        getLeoHeaderSearchButtonClick() , 0);
                setLeoUesrHeaderSettingsButtonClick=getLeoInt(context,
                        getLeoHeaderSettingsButtonClick() , 0);
                setLeoUesrHeaderSearchButtonString=getLeoString(context,
                        getLeoHeaderSearchButtonString());
                setLeoUesrHeaderSettingsButtonClickString=getLeoString(context,
                        getLeoHeaderSettingsButtonClickString());
                //////////////////////////////////
                setLeoUesrHeaderQSClockVibrate=getLeoInt(context,
                        getLeoHeaderQSClockVibrate() , 0);
                setLeoUesrHeaderQSClockVibrateLevel=getLeoInt(context,
                        getLeoHeaderQSClockVibrateLevel() , 10);
                setLeoUesrHeaderQSClockClickEnabled= getLeoInt(context,
                        getLeoHeaderQSClockClickEnabled(), 0) == 1;
                setLeoUesrHeaderQSClockLongClickEnabled = getLeoInt(context,
                        getLeoHeaderQSClockLongClickEnabled(), 0) == 1;
                setLeoUesrHeaderQSClockClick=getLeoInt(context,
                        getLeoHeaderQSClockClick() , 0);
                setLeoUesrHeaderQSClockLongClick =getLeoInt(context,
                        getLeoHeaderQSClockLongClick() , 0);
                setLeoUesrHeaderQSClockClickString=getLeoString(context,
                        getLeoHeaderQSClockClickString());
                setLeoUesrHeaderQSClockLongClickString=getLeoString(context,
                        getLeoHeaderQSClockLongClickString());

                setLeoUesrHeaderQSClockCustomEnabled=getLeoInt(context,
                        getLeoHeaderQSClockCustomEnabled(), 0)==1;
                setLeoUesrHeaderQSClockSize=getLeoInt(context,
                        getLeoHeaderQSClockSize(), 19);
                setLeoUesrHeaderQSClockFont=getLeoInt(context,
                        getLeoHeaderQSClockFont(), 0);
                setLeoUesrHeaderQSClockVisibility=getLeoInt(context,
                        getLeoHeaderQSClockVisibility(), 0)==1;

                setLeoUesrHeaderQSClockBigCustomEnabled=getLeoInt(context,
                        getLeoHeaderQSClockBigCustomEnabled(), 0)==1;
                setLeoUesrHeaderQSClockBigSize=getLeoInt(context,
                        getLeoHeaderQSClockBigSize(), 44);
                setLeoUesrHeaderQSClockBigFont=getLeoInt(context,
                        getLeoHeaderQSClockBigFont(), 0);
                setLeoUesrHeaderQSClockBigVisibility=getLeoInt(context,
                        getLeoHeaderQSClockBigVisibility(), 0)==1;
                /////////////////////////////////////////////////////////////
                setLeoUesrPowerIconNumberCustomLandscape=getLeoInt(context,
                        getLeoPowerIconNumberCustomLandscape(), 3);
                setLeoUesrPowerIconNumberCustomPortrait=getLeoInt(context,
                        getLeoPowerIconNumberCustomPortrait(), 2);
                ////////////////////////////////////
                setLeoUesrPowerActionsDescriptionCustomEnable= getLeoInt(context,
                        getLeoPowerActionsDescriptionCustomEnable(), 0) == 1;
                setLeoUesrPowerActionsDescriptionRandomColor= getLeoInt(context,
                        getLeoPowerActionsDescriptionRandomColor(), 0) == 1;
                setLeoUesrPowerActionsDescriptionSize=getLeoInt(context,
                        getLeoPowerActionsDescriptionSize(), 13);
                setLeoUesrPowerActionsDescriptionWhiteColor=getLeoInt(context,
                        getLeoPowerActionsDescriptionWhiteColor(), Color.parseColor("#757575"));
                setLeoUesrPowerActionsDescriptionblackColor=getLeoInt(context,
                        getLeoPowerActionsDescriptionblackColor(),  Color.parseColor( "#c3c3c3"));
                setLeoUesrPowerActionsDescriptionFont=getLeoInt(context,
                        getLeoPowerActionsDescriptionFont(), 0);

                setLeoUesrPowerActionsStateCustomEnable= getLeoInt(context,
                        getLeoPowerActionsStateCustomEnable(), 0) == 1;
                setLeoUesrPowerActionsStateRandomColor= getLeoInt(context,
                        getLeoPowerActionsStateRandomColor(), 0) == 1;
                setLeoUesrPowerActionsStateSize=getLeoInt(context,
                        getLeoPowerActionsStateSize(), 13);
                setLeoUesrPowerActionsStateWhiteColor=getLeoInt(context,
                        getLeoPowerActionsStateWhiteColor(), Color.parseColor("#757575"));
                setLeoUesrPowerActionsStateblackColor=getLeoInt(context,
                        getLeoPowerActionsStateblackColor(),  Color.parseColor( "#c3c3c3"));
                setLeoUesrPowerActionsStateFont=getLeoInt(context,
                        getLeoPowerActionsStateFont(), 0);

                setLeoUesrPowerActionsLabelCustomEnable= getLeoInt(context,
                        getLeoPowerActionsLabelCustomEnable(), 0) == 1;
                setLeoUesrPowerActionsLabelRandomColor= getLeoInt(context,
                        getLeoPowerActionsLabelRandomColor(), 0) == 1;
                setLeoUesrPowerActionsLabelSize=getLeoInt(context,
                        getLeoPowerActionsLabelSize(), 15);
                setLeoUesrPowerActionsLabelWhiteColor=getLeoInt(context,
                        getLeoPowerActionsLabelWhiteColor(), Color.parseColor("#252525"));
                setLeoUesrPowerActionsLabelblackColor=getLeoInt(context,
                        getLeoPowerActionsLabelblackColor(),  Color.parseColor( "#fafafa"));
                setLeoUesrPowerActionsLabelFont=getLeoInt(context,
                        getLeoPowerActionsLabelFont(), 0);
                ////////////////////////////////////////
                setLeoUesrHeaderDateVibrate=getLeoInt(context,
                        getLeoHeaderDateVibrate() , 0);
                setLeoUesrHeaderDateVibrateLevel=getLeoInt(context,
                        getLeoHeaderDateVibrateLevel() , 10);
                setLeoUesrHeaderDateClickEnabled = getLeoInt(context,
                        getLeoHeaderDateClickEnabled(), 0) == 1;
                setLeoUesrHeaderDateLongClickEnabled = getLeoInt(context,
                        getLeoHeaderDateLongClickEnabled(), 0) == 1;
                setLeoUesrHeaderDateClick=getLeoInt(context,
                        getLeoHeaderDateClick() , 0);
                setLeoUesrHeaderDateLongClick =getLeoInt(context,
                        getLeoHeaderDateLongClick() , 0);
                setLeoUesrHeaderDateClickString=getLeoString(context,
                        getLeoHeaderDateClickString());
                setLeoUesrHeaderDateLongClickString=getLeoString(context,
                        getLeoHeaderDateLongClickString());
                ///////////////////////////////////////////////////////
                setLeoUesrHeaderLunarDisplay = getLeoInt(context,
                        getLeoPulldownLunarVisible(), 1) != 0;
                setLeoUesrHeaderLunarSymbol =getLeoInt(context,
                        getLeoPulldownLunarSymbol() , 1);
                setLeoUesrHeaderLunarOrientation =getLeoInt(context,
                        getLeoPulldownLunarOrientation() , 0);
                setLeoUesrHeaderLunarStyle =getLeoInt(context,
                        getLeoPulldownLunarStyle() , 0);
                setLeoUesrHeaderLunarConstellation = getLeoInt(context,
                        getLeoPulldownLunarConstellation(),0) == 1;
                setLeoUesrHeaderTextLunarFont=getLeoInt(context,getLeoHeaderTextLunarFont(),0) ;
                setLeoUesrHeaderCustomDateFormat=getLeoString(context,getLeoHeaderDateFormat());
                setLeoUesrHeaderDateWeekOrientation= getLeoInt(context, getLeoHeaderDateWeekOrientation() , 0);
                setLeoUesrHeaderDateWeekStyle= getLeoInt(context, getLeoHeaderDateWeek() , 0);
                setLeoUesrHeaderDateSize= getLeoInt(context, getLeoHeaderDateSize() , 19);
                setLeoUesrHeaderDateFont= getLeoInt(context, getLeoHeaderDateFontStyle(), 0 );
                setLeoUesrHeaderDateSymbol= getLeoInt(context, getLeoHeaderDateSymbol() , 1 );
                setLeoUesrHeaderDateWeekDisplay = getLeoInt(context, getLeoHeaderDateWeekDisplay() , 1) != 0;
                setLeoUesrHeaderDateDisplay =getLeoInt(context,  getLeoHeaderDateVisible(), 1) != 0;
               //////////////////////////////////////////////////////////////////
                setLeoUesrBottomBarViewClearAllFont=getLeoInt(context,
                        getLeoBottomBarViewClearAllFont(), 0);
                setLeoUesrBottomBarViewNotiSettingFont=getLeoInt(context,
                        getLeoBottomBarViewNotiSettingFont(), 0);
                setLeoUesrBottomBarViewNotiSettingCustom=getLeoInt(context,
                        getLeoBottomBarViewNotiSettingCustom(), 0);
                setLeoUesrBottomBarViewNotiSettingCustomString= getLeoString(context,
                        getLeoBottomBarViewNotiSettingCustomString());
                setLeoUesrBottomBarViewClearAllCustom=getLeoInt(context,
                        getLeoBottomBarViewClearAllCustom(), 0);
                setLeoUesrBottomBarViewClearAllCustomString= getLeoString(context,
                        getLeoBottomBarViewClearAllCustomString());
                setLeoUesrBottomBarViewClearAllSettingSize=getLeoInt(context,
                        getLeoBottomBarViewClearAllSettingSize(), 13);
                //////////////////////////////////////////////////////////
                setNotificationPanelBlurEnabled =getLeoInt(context,
                        getLeoNotificationPanelBlurLevel(), 0) != 0;
                setNotificationPanelBlurLevel=getLeoInt(context,
                        getLeoNotificationPanelBlurEnabled(), 15);
                  ////////////////////////////////////////////////////////////////////////////////////////////////
                setNotificationPanelDataUsageEnabled =getLeoInt(context,
                        getLeoNotificationPanelDataUsageEnabled(), 0)==1;
                setNotificationPanelDataUsageOrientation=getLeoInt(context,
                        getLeoNotificationPanelDataUsageOrientation(), 0);
                setNotificationPanelDataUsageTextFont =getLeoInt(context,
                        getLeoNotificationPanelDataUsageTextFont(), 0);
                setNotificationPanelDataUsageTextSize=getLeoInt(context,
                        getLeoNotificationPanelDataUsageTextSize(), 13);
/////////////////////////////////////////////////////////////////
                setLeoUesrPowerMenuStyle= getLeoInt(context,
                        getLeoPowerMenuStyle(), 0) != 0;

                /////////////////////////////////////////////////////

                setLeoUesrStatusBarGestureDoubleEnabled =getLeoInt(context,
                        getLeosetLeoUesrStatusBarGestureDoubleEnabled(),0);

                setLeoUesrStatusBarGestureDouble =getLeoInt(context,
                        getLeoStatusBarDoubleAction(), 0);
                setLeoUesrStatusBarGestureDoubleApp = getLeoString(context,
                        getLeoStatusBarGestureDoubleApp());

                /////////////////////////////////////////////////////////
                setLeoUesrStatusBarRightClickAction =getLeoInt(context,
                        getLeoStatusBarRightClickAction () , 0);
                setLeoUesrStatusBarRightClickApp = getLeoString(context,
                        getLeoStatusBarRightClickApp()  );
                setLeoUesrStatusBarRightLongClickAction =getLeoInt(context,
                        getLeoStatusBarRightLongClickAction() , 0);
                setLeoUesrStatusBarRightAction = getLeoInt(context,
                        getLeoStatusBarRightAction() , 0) != 0;
                setLeoUesrStatusBarRightLongClickApp =  getLeoString(context,
                        getLeoStatusBarRightLongClickApp() );
                ///////////////
                setLeoUesrStatusBarGesturesVibratorEnable =getLeoInt(context,
                        getLeoStatusBarGesturesVibratorEnable(), 0) ;
                setLeoUesrStatusBarGestureVibrationLevel= getLeoInt(context, getLeoStatusBarGestureVibrationLevel(), 10);
                setLeoUesrStatusBarLeftClickAction =getLeoInt(context,
                        getLeoStatusBarLeftClickAction () , 0);
                setLeoUesrStatusBarLeftClickApp = getLeoString(context,
                        getLeoStatusBarLeftClickApp()  );
                setLeoUesrStatusBarLeftLongClickAction =getLeoInt(context,
                        getLeoStatusBarLeftLongClickAction() , 0);
                setLeoUesrStatusBarLeftAction = getLeoInt(context,
                        getLeoStatusBarLeftAction() , 0) != 0;
                setLeoUesrStatusBarLeftLongClickApp =  getLeoString(context,
                        getLeoStatusBarLeftLongClickApp() );
                /////////////////////////////////////////////////////////////
                setLeoUesrFloatingDisplay=getLeoInt(context,getLeoFloatingDisplay(),0)==1;
                setLeoUesrFloatingDownSlideDelete= getLeoInt(context,
                        getLeoFloatingDownSlideDelete(),0);
                setLeoUesrFloatingVibrate= getLeoInt(context,
                        getLeoFloatingVibrate(),0);
                setLeoUesrFloatingVibratelevel= getLeoInt(context,
                        getLeoFloatingVibratelevel(),0);
                setLeoUesrFloatingLeftStyle= getLeoInt(context,
                        getLeoFloatingLeftStyle(),0);
                setLeoUesrFloatingRightStyle= getLeoInt(context,
                        getLeoFloatingRightStyle(),0);
                setLeoUesrFloatingDownStyle= getLeoInt(context,
                        getLeoFloatingDownStyle(),0);
                setLeoUesrFloatingUPStyle= getLeoInt(context,
                        getLeoFloatingUPStyle(),0);
                setLeoUesrFloatingClickStyle= getLeoInt(context,
                        getLeoFloatingClickStyle(),0);
                setLeoUesrFloatingLeftString=getLeoString(context, getLeoFloatingLeftString());
                setLeoUesFloatingRightString=getLeoString(context, getLeoFloatingRightString());
                setLeoUesrFloatingDownString=getLeoString(context, getLeoFloatingDownString());
                setLeoUesrFloatingUPString=getLeoString(context, getLeoFloatingUPString());
                setLeoUesrFloatingClickString=getLeoString(context, getLeoFloatingClickString());
                ////////////////////
                setLeoUesrMipEnable= getLeoInt(context, getLeoMipEnable(),0) == 1;
                setLeoUesrMipBackAction=getLeoInt(context, getLeoMipBackAction(),0);
                setLeoUesrMipBackActionApp=getLeoString(context,
                        getLeoLeoMipBackActionString());
                setLeoUesrMipFlashlightAction=getLeoInt(context, getLeoMipFlashlightAction(),0);
                setLeoUesrMipFlashlightActionApp=getLeoString(context,
                        getLeoLeoMipFlashlightActionString());
                setLeoUesrMipTaskAction=getLeoInt(context, getLeoMipTaskAction(),0);
                setLeoUesrMipTaskActionApp=getLeoString(context,
                        getLeoLeoMipTaskActionString());
                setLeoUesrMipHomeAction=getLeoInt(context, getLeoMipHomeAction(),0);
                setLeoUesrMipHomeActionApp=getLeoString(context,
                        getLeoMipHomeActionString());
                setLeoUesrMipVibrate=getLeoInt(context, getLeoLeoMipActionVibrate(),0);
                setLeoUesrMipVibrateLevel=getLeoInt(context, getLeoMipActionVibrateLevel(),10);

                setLeoUesrBiologicalUnlock = getLeoInt(context,
                        getLeoBiologicalUnlock()  , 0)==1;
                setLeoUesrKeyguardStatusBar = getLeoInt(context,
                        getLeoKeyguardStatusBarGone()  , 0);
////////////////////////////////
                setLeoUesrPowerMenuGradientColorFour = getLeoInt(context,
                        getLeoPowerMenuGradientColorFour()  , Transparency);
                setLeoUesrPowerMenuGradientColorFive = getLeoInt(context,
                        getLeoPowerMenuGradientColorFive()  , Transparency);
                setLeoUesrPowerMenuGradientColorSix = getLeoInt(context,
                        getLeoPowerMenuGradientColorSix()  , Transparency);
                setLeoUesrPowerMenuGradientColorEnabled = getLeoInt(context,
                        getLeoPowerMenuGradientColorEnabled()  , 0);

                setLeoUesrPowerMenuBgWallpaperBlurEnabled = getLeoInt(context,
                        getLeoPowerMenuBgWallpaperBlurEnabled()  , 0);
                setLeoUesrPowerMenuBGStyle =getLeoInt(context,
                        getLeoPowerMenuBGStyle(), 0);
                setLeoUesrPowerMenuBgBasicColor =getLeoInt(context,
                        getLeoPowerMenuBgBasicColor() , Transparency);
                setLeoUesrPowerMenuGradientBgStartColor =getLeoInt(context,
                        getLeoPowerMenuGradientBgStartColor() , Transparency);
                setLeoUesrPowerMenuGradientBgCenterColor = getLeoInt(context,
                        getLeoPowerMenuGradientBgCenterColor (), Transparency);
                setLeoUesrPowerMenuGradientBgEndColor = getLeoInt(context,
                        getLeoPowerMenuGradientBgEndColor (), Transparency);
                setLeoUesrPowerMenuGradientEnableCenterColor =getLeoInt(context,
                        getLeoPowerMenuGradientEnableCenterColor() , 0);
                setLeoUesrPowerMenuShowBG=getLeoInt(context,
                        getLeoPowerMenuShowBG() ,0) == 1;
                setLeoUesrPowerMenuBgGradientBgStyle=getLeoInt(context,
                        getLeoPowerMenuBgGradientBgStyle() ,0);
                setLeoUesrPowerMenuGradientBgType=getLeoInt(context,
                        getLeoPowerMenuGradientBgType() ,0);
                setLeoUesrPowerMenuGradientBackGroundCornerRadius=getLeoInt(context,
                        getLeoPowerMenuGradientBackGroundCornerRadius() ,0);
                setLeoUesrPowerMenuGradientBackGroundColorRadius=getLeoInt(context,
                        getLeoPowerMenuGradientBackGroundColorRadius() ,360);
                setLeoUesrPowerMenuBgWallpaper =  getLeoString(context,
                        getLeoPowerMenuBgWallpaper() );
                setLeoUesrPowerMenuWallpaperColorEnable=getLeoInt(context,
                        getLeoPowerMenuWallpaperColorEnable() ,0);
                setLeoUesrPowerMenuWallpaperColor=getLeoInt(context,
                        getLeoPowerMenuWallpaperColor() ,mBackgroundWallpaperColor);

                setLeoUesrPowerMenuBlurBgDegree=getLeoInt(context,
                        getLeoPowerMenuBlurBgDegree() ,12);
                setLeoUesrPowerMenuBgWallpaperAlphaEnable =getLeoInt(context,
                        getLeoPowerMenuBgWallpaperAlphaEnable() , 0) == 1;
                setLeoUesrPowerMenuBgWallpaperAlpha =getLeoInt(context,
                        getLeoPowerMenuBgWallpaperAlpha() , 255);
                setLeoUesrPowerMenuStrokeEnabled =getLeoInt(context, getLeoPowerMenuStrokeEnabled(), 0)==1;
                setLeoUesrPowerMenuStrokeDashGap=getLeoInt(context, getLeoPowerMenuStrokeDashGap(),6);
                setLeoUesrPowerMenuStrokeDashWidth= getLeoInt(context, getLeoPowerMenuStrokeDashWidth(),3);
                setLeoUesrPowerMenuStrokeThickness=getLeoInt(context, getLeoPowerMenuStrokeThickness(),6);
                setLeoUesrPowerMenuStrokeDashColor= getLeoInt(context, getLeoPowerMenuStrokeDashColor(), mDefaultStrokeColor);
                setLeoUesrPowerMenuBlurWallpaperColorEnabled= getLeoInt(context, getLeoPowerMenuBlurWallpaperColor(),0);
                setLeoUesrPowerMenuBlurWallpaperAlphaEnabled= getLeoInt(context, getLeoPowerMenuBlurWallpaperAlpha(),0) == 1;


                //////////////////////////////////////////////////////
                setLeoUesrPulldownAnalogEnable= getLeoInt(context,
                        getLeoPulldownAnalogClockEnable(),0) != 0;
                setLeoUesrPulldownAnalogClockDateEnable= getLeoInt(context,
                        getLeoPulldownAnalogClockDateEnable(),0) != 0;
                setLeoUesrPulldownAnalogClockDialStyle= getLeoInt(context,
                        getLeoPulldownAnalogClockDialStyle(),0);
                setLeoUesrPulldownAnalogClockDateColor= getLeoInt(context,
                        getLeoPulldownAnalogClockDateColor(),mDefaultStrokeColor);
                setLeoUesrPulldownAnalogClockMinutColor= getLeoInt(context,
                        getLeoPulldownAnalogClockMinutColor(),mWhiteColor);
                setLeoUesrPulldownAnalogClockDialColor= getLeoInt(context,
                        getLeoPulldownAnalogClockDialColor(),mWhiteColor);
                setLeoUesrPulldownAnalogClockHourColor= getLeoInt(context,
                        getLeoPulldownAnalogClockHourColor(),mWhiteColor);
                setLeoUesrPulldownAnalogClockSecondColor= getLeoInt(context,
                        getLeoPulldownAnalogClockSecondColor(),mWhiteColor);
                setLeoUesrPulldownAnalogClockColorEnable= getLeoInt(context,
                        getLeoPulldownAnalogClockColorEnable(),0);
                setLeoUesrPulldownAnalogClockDateSize= getLeoInt(context,
                        getLeoPulldownAnalogClockDateSize(),55);
                setLeoUesrPulldownAnalogClockSize= getLeoInt(context,
                        getLeoPulldownAnalogClockSize(),0);
                setLeoUesrPulldownAnalogClockDateFont= getLeoInt(context,
                        getLeoPulldownAnalogClockDateFont(),0);
                //////////////////////////////////////////////////////////////////
                setLeoUesrStatusbarVoltageOrientation= getLeoInt(context,
                        getLeoStatusbarVoltageOrientation(),0);
                setLeoUesrStatusbarVoltageDisplay= getLeoInt(context,
                        getLeoStatusbarVoltageDisplay(),0) == 1;
                setLeoUesrStatusbarVoltageSingle= getLeoInt(context,
                        getLeoStatusbarVoltageSingle(),1) == 1;
                setLeoUesrStatusbarVoltageStyle= getLeoInt(context,
                        getLeoStatusbarVoltageStyle(),0);
                setLeoUesrStatusbarVoltageSingleSize= getLeoInt(context,
                        getLeoStatusbarVoltageSingleSize(),14);
                setLeoUesrStatusbarVoltageMultiSize= getLeoInt(context,
                        getLeoStatusbarVoltageMultiSize(),9);
                setLeoUesrStatusbarVoltageFont= getLeoInt(context,
                        getLeoStatusbarVoltageFont(),0);
                setLeoUesrStatusbarVoltageColorEnabled= getLeoInt(context,
                        getLeoStatusbarVoltageColorEnabled(),0);
                setLeoUesrStatusbarVoltageColor= getLeoInt(context,
                        getLeoStatusbarVoltageColor(),mStatusBarClockColor);
                setLeoUesrStatusbarVoltageRandomColor= getLeoInt(context,
                        getLeoStatusbarVoltageRandomColor(),0);
//////////////===================================/////////////
                setLeoUesrDeviceInfo = getLeoInt(context,
                        getLeoDeviceInfo(),0) == 1;
                setLeoUesrDeviceInfoSize= getLeoInt(context,
                        getLeoDeviceInfoSize(),13);
                setLeoUesrDeviceInfoStyle= getLeoInt(context,
                        getLeoDeviceInfoStyle(),0);
                setLeoUesrDeviceInfoStyleTwo= getLeoInt(context,
                        getLeoDeviceInfoStyleTwo(),1);
                setLeoUesrDeviceInfoStyleThree= getLeoInt(context,
                        getLeoDeviceInfoStyleThree(),2);
                setLeoUesrDeviceInfoStyleFour= getLeoInt(context,
                        getLeoDeviceInfoStyleFour(),3);
                setLeoUesrDeviceInfoStyleFive= getLeoInt(context,
                        getLeoDeviceInfoStyleFive(),4);
                setLeoUesrDeviceInfoColor= getLeoInt(context,
                        getLeoDeviceInfoColor(),mNotificationPanelCarrierLabelColor);
                setLeoUesrDeviceInfoColorTwo= getLeoInt(context,
                        getLeoDeviceInfoColorTwo(),mNotificationPanelCarrierLabelColor);
                setLeoUesrDeviceInfoColorThree= getLeoInt(context,
                        getLeoDeviceInfoColorThree(),mNotificationPanelCarrierLabelColor);
                setLeoUesrDeviceInfoColorFour= getLeoInt(context,
                        getLeoDeviceInfoColorFour(),mNotificationPanelCarrierLabelColor);
                setLeoUesrDeviceInfoColorFive= getLeoInt(context,
                        getLeoDeviceInfoColorFive(),mNotificationPanelCarrierLabelColor);
                setLeoUesrDeviceInfoOrientation= getLeoInt(context,
                        getLeoDeviceInfoOrientation(),0);
                setLeoUesrDeviceInfoFont= getLeoInt(context,
                        getLeoDeviceInfoFont(),0);
                setLeoUesrDeviceInfoFontTwo= getLeoInt(context,
                        getLeoDeviceInfoFontTwo(),0);
                setLeoUesrDeviceInfoFontThree= getLeoInt(context,
                        getLeoDeviceInfoFontThree(),0);
                setLeoUesrDeviceInfoFontFour= getLeoInt(context,
                        getLeoDeviceInfoFontFour(),0);
                setLeoUesrDeviceInfoFontFive= getLeoInt(context,
                        getLeoDeviceInfoFontFive(),0);
                setLeoUesrDeviceInfoCustomColor= getLeoInt(context,
                        getLeoDeviceInfoCustomColor(),0);
                setLeoUesrDeviceInfoALLColor= getLeoInt(context,
                        getLeoDeviceInfoALLColor(),mNotificationPanelCarrierLabelColor);
                setLeoUesrDeviceInfoColorAll= getLeoInt(context,
                        getLeoDeviceInfoColorAll(),0);
                setLeoUesrDeviceInfoArray= getLeoInt(context,
                        getLeoDeviceInfoArray(),1);
                setLeoUesrDeviceInfoRandomColor= getLeoInt(context,
                        getLeoDeviceInfoRandomColor(),0);

                setLeoUesrPulldownCarrier=getLeoInt(context, getLeoTogglePullDownCarrier(),0);
                setLeoUesrPullDownCarrierString =getLeoString(context,
                        getLeoPullDownCarrierString());
                setLeoUesrPullDownCarrierStringA =getLeoString(context,
                        getLeoPullDownCarrierStringA());
                setLeoUesrPulldownCarrierColor=getLeoInt(context,
                        getLeoPulldownCarrierColor(), -1);
                setLeoUesrPulldownCarrierSize=getLeoInt(context,
                        getLeoPulldownCarrierSize(), 13);
                setLeoUesrPulldownCarrierFont=getLeoInt(context,
                        getLeoPulldownCarrierFont(), 0);
                setLeoUesrPulldownCarrierColorEnabled= getLeoInt(context,
                        getLeoPulldownCarrierColorEnabled(),0);
                setLeoUesrPulldownCarrierRandomColor= getLeoInt(context,
                        getLeoPulldownCarrierRandomColor(),0);


                setLeoUesrLeoStatsusBarFlashlightIcon=getLeoInt(context,
                        getLeoStatsusBarFlashlightIcon(), 0) == 1;

                setLeoUesrStatsusBarSignalIconStyle= getLeoInt(context,
                        getLeoStatsusBarSignalIconStyle() ,0);
                setLeoUesrStatsusBarWifiIconStyle= getLeoInt(context,
                        getLeoStatsusBarWifiIconStyle() ,0);
                setLeoUesrStatsusBarStatsusBarWifiIconCustom=getLeoInt(context,
                        getLeoStatsusBarWifiIconCustom(), 0) == 1;
                /////////////////////////////////////////////////////
                setLeoUesrStatsusBarGradientColorFour = getLeoInt(context,
                        getLeoStatsusBarGradientColorFour()  , Transparency);
                setLeoUesrStatsusBarGradientColorFive = getLeoInt(context,
                        getLeoStatsusBarGradientColorFive()  , Transparency);
                setLeoUesrStatsusBarGradientColorSix = getLeoInt(context,
                        getLeoStatsusBarGradientColorSix()  , Transparency);
                setLeoUesrStatsusBarGradientColorEnabled = getLeoInt(context,
                        getLeoStatsusBarGradientColorEnabled()  , 0);

                setLeoUesrStatsusBarBgWallpaperBlurEnabled = getLeoInt(context,
                        getLeoStatsusBarBgWallpaperBlurEnabled()  , 0);
                setLeoUesrStatsusBarShowBG=getLeoInt(context,
                        getLeoStatsusBarShowBG (),0) == 1;
                setLeoUesrStatsusBarBgGradientBgStyle=getLeoInt(context,
                        getLeoStatsusBarBgGradientBgStyle() ,0);
                setLeoUesrStatsusBarGradientBgType=getLeoInt(context,
                        getLeoStatsusBarGradientBgType() ,0);
                setLeoUesrStatsusBarGradientBackGroundCornerRadius=getLeoInt(context,
                        getLeoStatsusBarGradientBackGroundCornerRadius() ,0);
                setLeoUesrStatsusBarGradientBackGroundColorRadius=getLeoInt(context,
                        getLeoStatsusBarGradientBackGroundColorRadius() ,360);
                setLeoUesrStatsusBarBgWallpaper = getLeoString(context,
                        getLeoStatsusBarBgWallpaper ());
                setLeoUesrStatsusBarWallpaperColorEnable=getLeoInt(context,
                        getLeoStatsusBarWallpaperColorEnable() ,0);
                setLeoUesrStatsusBarWallpaperColor=getLeoInt(context,
                        getLeoStatsusBarWallpaperColor() , mBackgroundWallpaperColor);
                setLeoUesrStatsusBarBGStyle = getLeoInt(context,
                        getLeoStatsusBarBGStyle (), 0);
                setLeoUesrStatsusBarBgBasicColor =getLeoInt(context,
                        getLeoStatsusBarBgBasicColor() ,Transparency);
                setLeoUesrStatsusBarGradientBgStartColor = getLeoInt(context,
                        getLeoStatsusBarGradientBgStartColor (),Transparency);
                setLeoUesrStatsusBarGradientBgCenterColor = getLeoInt(context,
                        getLeoStatsusBarGradientBgCenterColor() ,Transparency);
                setLeoUesrStatsusBarGradientBgEndColor = getLeoInt(context,
                        getLeoStatsusBarGradientBgEndColor() , Transparency);
                setLeoUesrStatsusBarGradientEnableCenterColor = getLeoInt(context,
                        getLeoStatsusBarGradientEnableCenterColor()  , 0);
                setLeoUesrStatsusBarBlurBgDegree=getLeoInt(context,
                        getLeoStatsusBarBlurBgDegree (),12);
                setLeoUesrStatsusBarBgWallpaperAlphaEnable =getLeoInt(context,
                        getLeoStatsusBarBgWallpaperAlphaEnable (), 0) == 1;
                setLeoUesrStatsusBarWallpaperAlpha =getLeoInt(context,
                        getLeoStatsusBarBgWallpaperAlpha(), 255);
                setLeoUesrStatsusBarStrokeEnabled = getLeoInt(context, getLeoStatsusBarStrokeEnabled(), 0)==1;
                setLeoUesrStatsusBarStrokeDashGap=getLeoInt(context, getLeoStatsusBarStrokeDashGap(),6);
                setLeoUesrStatsusBarStrokeDashWidth=getLeoInt(context,getLeoStatsusBarStrokeDashWidth(),3);
                setLeoUesrStatsusBarStrokeThickness= getLeoInt(context, getLeoStatsusBarStrokeThickness(),6);
                setLeoUesrStatsusBarStrokeDashColor=getLeoInt(context, getLeoStatsusBarStrokeDashColor(), mDefaultStrokeColor);
                setLeoUesrStatsusBarBlurWallpaperColorEnabled= getLeoInt(context, getLeoStatsusBarBlurWallpaperColor(),0);
                setLeoUesrStatsusBarBlurWallpaperAlphaEnabled= getLeoInt(context, getLeoStatsusBarBlurWallpaperAlpha(),0) == 1;
////////////////////////

                setLeoUesrStatusBarLogoColorEnabled= getLeoInt(context,
                        getLeoStatusBarLogoColorEnabled(),0);
                setLeoUesrStatusBarLogoRandomColor= getLeoInt(context,
                        getLeoStatusBarLogoRandomColor(),0);
                setLeoUesrStatusBarLogoVisible = getLeoInt(context, getLeoStatusbarLogo() , 0
                ) == 1;
                setLeoUesrStatusBarLogoColor = getLeoInt(context,getLeoStatusbarLogoColor (),mStatusBarClockColor);
                setLeoUesrStatusBarLogoStyle = getLeoInt(context, getLeoStatusbarLogoStyle () , 0);
                setLeoUesrStatusBarLogoSize = getLeoInt(context,getLeoStatusbarLogoSize () ,8)/ 8.0F;
                setLeoUesrStatusBarLogoLocation = getLeoInt(context,getLeoStatusbarLogoPosition()  ,1);

                setLeoUesrKeyguardCarrierColorEnabled= getLeoInt(context,
                        getLeoCarrierKeyguardColorEnabled(),0);
                setLeoUesrKeyguardCarrierRandomColor= getLeoInt(context,
                        getLeoCarrierKeyguardRandomColor(),0);
                setLeoUesrKeyguardCarrier=getLeoInt(context,
                        getLeoCarrierKeyguard(),0) == 1;
                setLeoUesrKeyguardCarrierStyle=getLeoInt(context,
                        getLeoCarrierKeyguardStyle() ,0) == 1;
                setLeoUesrKeyguardCarrierSingle=getLeoInt(context,
                        getLeoCarrierKeyguardSingle() ,1) == 1;
                setLeoUesrKeyguardCarrierSingleSize=getLeoInt(context,
                        getLeoCarrierKeyguardSingleSize() ,15);
                setLeoUesrKeyguardCarrierMultiSize=getLeoInt(context,
                        getLeoCarrierKeyguardMultiSize() ,9);
                setLeoUesrKeyguardCarrierStringSingle =getLeoString(context,
                        getLeoCarrierKeyguardStringSingle());
                getSetLeoUesrKeyguardCarrierStringMulti=getLeoString(context,
                        getLeoCarrierKeyguardStringMulti());
                setLeoUesrKeyguardCarrierFont=getLeoInt(context,
                        getLeoCarrierKeyguardFont() ,0);
                setLeoUesrKeyguardCarrierColor=getLeoInt(context,
                        getLeoCarrierKeyguardColor() ,mStatusBarClockColor);
                setLeoUesrStatusBarCarrierOrientation =getLeoInt(context,
                        getLeoCarrierStatusBarOrientation(),1);
                setLeoUesrStatusBarCarrier=getLeoInt(context,
                        getLeoCarrierStatusBar(),0) == 1;
                setLeoUesrNetworkTrafficLocation = getLeoInt(context, getLeoNetworkTrafficPosition() , 0);
                setLeoUesrStatusBarOrientation =getLeoInt(context,
                        getLeoStatusbarTemperatureOrientation() , 0);

                setLeoUesrStatusBarMainBatteryRandomColor= getLeoInt(context,
                        getLeoStatusBarMainBatteryRandomColor(),0);
                setLeoUesrMinBatteryStyle = getLeoInt(context,getLeoStatusbarMainBatteryStyle()  ,0);
                setLeoUesrMainBatteryPackage=getLeoString(context,getLeoStatusbarMainBatteryPackage());
                setLeoUesrMainBatteryIconStandbyColor = getLeoInt(context,getLeoStatusbarMainBatteryIconStandbyColor()  ,Transparency);
                setLeoUesrMainBatteryTextStandbyColor = getLeoInt(context,getLeoStatusbarMainBatteryTextStandbyColor()  ,mStatusBarClockColor);
                setLeoUesrMainBatteryColorTransform = getLeoInt(context,getLeoStatusbarMainBatteryAllowTransform()  ,0);
                setLeoUesrMainBatteryIconSize = getLeoInt(context,getLeoStatusbarMainBatteryIconSize()  ,60);
                setLeoUesrMainBatteryTextSize = getLeoInt(context,getLeoStatusbarMainBatteryTextSize()  ,13);
                setLeoUesrMainBatteryTextFont = getLeoInt(context,getLeoStatusbarMainBatteryTextFont()  ,0);
                setLeoUesrMainBatteryDefault = getLeoInt(context,getLeoStatusbarMainBatteryCustom()  ,0);
                setLeoUesrStatusBarBatteryBarDP=getLeoInt(context,
                        getLeoStatusBarBatteryBardp(),2);
                setLeoUesrStatusBarBatteryBarStyle=getLeoInt(context,
                        getLeoStatusBarBatteryBarStyle(),0);
                setLeoUesrStatusBarBatteryBar=getLeoInt(context,
                        getLeoStatusBarBatteryBar(),0);
                setLeoUesrStatusBarBatteryBarAnimate=getLeoInt(context,
                        getLeoStatusBarBatteryBarAnimate(),0) == 1;
                setLeoUesrStatusBarBatteryBarChargingColorEnabled=getLeoInt(context,
                        getLeoStatusBarBatteryBarChargingColorEnabled(),1) == 1;
                setLeoUesrStatusBarBatteryBarBlendColorEnabled=getLeoInt(context,
                        getLeoStatusBarBatteryBarBlendColorEnabled(),0) == 1;
                setLeoUesrStatusBarBatteryBarBlendReversedColorEnabled=getLeoInt(context,
                        getLeoStatusBarBatteryBarBlendReversedColorEnabled(),0) == 1;
                setLeoUesrStatusBarBatteryBarColor=getLeoInt(context,
                        getLeoStatusBarBatteryBarColor() ,mWhiteColor);
                setLeoUesrStatusBarBatteryBarLowColor=getLeoInt(context,
                        getLeoStatusBarBatteryBarLowColor(),mRedColor);
                setLeoUesrStatusBarBatteryBarChargingColor=getLeoInt(context,
                        getLeoStatusBarBatteryBarChargingColor(),mYellowColor);

                setLeoUesrStatusBarTemperatureColorEnabled= getLeoInt(context,
                        getLeoStatusBarTemperatureColorEnabled(),0);
                setLeoUesrStatusBarTemperatureRandomColor= getLeoInt(context,
                        getLeoStatusBarTemperatureRandomColor(),0);
                setLeoUesrStatusBarTemperatureColor =getLeoInt(context,
                        getLeoStatusbarTemperatureColor(), mStatusBarClockColor);
                setLeoUesrStatusBarTemperatureFont = getLeoInt(context,
                        getLeoStatusbarTemperatureFont() , 0);
                setLeoUesrStatusBarTemperatureDisplay =getLeoInt(context,
                        getLeoStatusbarTemperature(),0) == 1;
                setLeoUesrStatusBarTemperatureSingleSize =getLeoInt(context,
                        getLeoStatusbarTemperatureSingleSzie(), 14);
                setLeoUesrStatusBarTemperatureMultiSize = getLeoInt(context,
                        getLeoStatusbarTemperatureMultiSize() , 9);
                setLeoUesrStatusBarTemperatureSingle=getLeoInt(context,
                        getLeoStatusbarTemperatureSingle(),0) == 1;
                setLeoUesrStatusBarCarrierStyle=getLeoInt(context,
                        getLeoCarrierStatusBarStyle() ,0) == 1;
                setLeoUesrStatusBarCarrierSingle=getLeoInt(context,
                        getLeoCarrierStatusBarSingle() ,0) == 1;
                setLeoUesrStatusBarCarrierSingleSize=getLeoInt(context,
                        getLeoCarrierStatusBarSingleSize() ,14);
                setLeoUesrStatusBarCarrierMultiSize=getLeoInt(context,
                        getLeoCarrierStatusBarMultiSize() ,9);
                setLeoUesrStatusBarCarrierStringSingle =getLeoString(context,
                        getLeoCarrierStatusBarStringSingle());
                getSetLeoUesrStatusBarCarrierStringMulti=getLeoString(context,
                        getLeoCarrierStatusBarStringMulti());
                getSetLeoUesrStatusBarCarrierFont=getLeoInt(context,
                        getLeoCarrierStatusBarFont() ,0);
                getSetLeoUesrStatusBarCarrierColor=getLeoInt(context,
                        getLeoCarrierStatusBarColor() ,mStatusBarClockColor);

                setLeoUesrStatusBarCarrierColorEnabled= getLeoInt(context,
                        getLeoStatusBarCarrierColorEnabled(),0);
                setLeoUesrStatusBarCarrierRandomColor= getLeoInt(context,
                        getLeoStatusBarCarrierRandomColor(),0);
                setLeoUesrStatusBarNetworkTrafficRandomColor= getLeoInt(context,
                        getLeoStatusBarNetworkTrafficRandomColor(),0);
                setLeoUesrStatusbarNetworkSize = getLeoInt(context, getLeoNetworkTrafficSize() , 10)/ 10.0F;
                setLeoUesrStatusbarNetworkSingle=getLeoInt(context, getLeoNetworkTrafficSingle()   ,0) == 1;
                setLeoUesrStatusbarNetworkFont= getLeoInt(context, getLeoNetworkTrafficfont () , 0);
                setLeoUesrNetworkTrafficTextColor = getLeoInt(context, getLeoNetworkTrafficColor() ,mStatusBarClockColor);
                setLeoUesrStatusbarNetworkArrowsOrientation = getLeoInt(context, getLeoNetworkTrafficArrowLocation ()  ,0);
                setLeoUesrStatusbarNetworkAutoHideEnabled = getLeoInt(context, getLeoNetworkTrafficAuto() , 0) != 0;
                setLeoUesrStatusbarNetworkShowArrowsEnabled= getLeoInt(context, getLeoNetworkTrafficArrow() , 1) != 0;
                setLeoUesrStatusbarNetworkText= getLeoInt(context, getLeoNetworkTrafficText() , 0) != 0;
                setLeoUesrStatusbarNetworkUnit= getLeoInt(context, getLeoNetworkTrafficUnit(), 1)==0;
                setLeoUesrStatusbarNetworkAutoHideThreshold = getLeoInt(context, getLeoNetworkTrafficInterval (), 10);
                setLeoUesrStatusbarNetworkState= getLeoInt(context, getLeoNetworkTrafficState() , 0);
                //  setLeoUesrNetworkTrafficLocation = getLeoInt(context, getLeoNetworkTrafficPosition() , 0);
                setLeoUesrNetworkTrafficIconColor= getLeoInt(context,
                        getLeoNetworkTrafficIconColor(),mStatusBarClockColor);
                setLeoUesrNetworkTrafficALLColor= getLeoInt(context,
                        getLeoNetworkTrafficIconALLColor(),mStatusBarClockColor);
                setLeoUesrNetworkTrafficALLColorEnabled= getLeoInt(context,
                        getLeoNetworkTrafficIconALLColorEnabled(),0);
                setLeoUesrNetworkTrafficCustomColorEnabled= getLeoInt(context,
                        getLeoNetworkTrafficIconCustomColorEnabled(),0);
                setLeoUesrStatusbarNetworkShowArrowsStyle= getLeoInt(context,
                        getLeoNetworkTrafficIconStyle(),0);
                setLeoUesrStatusBarClockDateDisplay=getLeoInt(context,
                        getLeoStatusBarClockDateDisplay(),  0);
                setLeoUesrStatusBarClockSeconds = getLeoInt(context,
                        getLeoStatusBarClockSeconds() ,0) == 1;
                setLeoUesrStatusBarClockSingle=getLeoInt(context,
                        getLeoStatusBarClockSingle(),  1) == 1;
                setLeoUesrStatusBarDateWeekDisplay=getLeoInt(context,
                        getLeoStatusBarClockDateWeekDisplay() , 1) == 1;
                setLeoUesrStatusBarClockDetailsDisplay=getLeoInt(context,
                        getLeoStatusBarClockDetailsDisplay() , 0) == 1;
                setLeoUesrClockOnClickEnabled= getLeoInt(context, getLeoClockOnClickEnabled(),0) == 1;
                setLeoUesrStatusBarClockDateFormat =getLeoString(context,
                        getLeoStatusBarClockDateFormat());
                setLeoUesrStatusBarClockDetails = getLeoInt(context,
                        getLeoStatusBarClockDetailsStyle() , 0);
                setLeoUesrStatusBarDateWeek =getLeoInt(context,
                        getLeoStatusBarClockDateWeekStyle()  , 0);
                setLeoUesrStatusBarClockFontStyle = getLeoInt(context,
                        getLeoStatusBarClockFontStyle() , 0);
                setLeoUesrStatusBarClockDateENStyle = getLeoInt(context,
                        getLeoStatusBarClockDateENStyle (), 0);
                setLeoUesrStatusBarClockSingleFontSize =getLeoInt(context,
                        getLeoStatusBarClockSingleFontSize () , 14);
                setLeoUesrStatusBarClockMultiFontSize =getLeoInt(context,
                        getLeoStatusBarClockMultiFontSize (), 10);
                setLeoUesrStatusBarClockColor =getLeoInt(context,
                        getLeoStatusBarClockColor(), mStatusBarClockColor);
                setLeoUesrStatusBarClockPosition = getLeoInt(context,
                        getLeoStatusBarClockPosition () , 0);
                setLeoUesrStatusBarClockDisable =getLeoInt(context,
                        getLeoStatusBarClockDisable() , 1) == 1;
                setLeoUesrStatusBarClockIs12 = getLeoInt(context,
                        getLeoStatusBarClockIs12() , 1) == 1;
                setLeoUesrStatusBarClockAMPM = getLeoInt(context,
                        getLeoStatusBarClockAMPM() , 2);
                setLeoUesrStatusBarClockDatePosition=getLeoInt(context,
                        getLeoStatusBarClockDatePosition() , 0);
                setLeoUesrStatusBarClockDateWeekPosition = getLeoInt(context,
                        getLeoStatusBarClockWeekPosition() , 0);
                setLeoUesrStatusBarClockDateDetailsPosition=getLeoInt(context,
                        getLeoStatusBarClockDetailsPosition() , 0);
                setLeoUesrStatusBarClockDateSymbol= getLeoInt(context,
                        getLeoStatusBarClockDateSymbol() , 1);
                setLeoUesrStatusBarClockRandomColor= getLeoInt(context,
                        getLeoStatusBarClockRandomColor(),0);
                setLeoUesrStatusBarClockColorEnabled= getLeoInt(context,
                        getLeoStatusBarClockColorEnabled(),0);
                setLeoUesrGlobalActionsEMERGENCY = getLeoInt(context,getLeoGlobalActionsEMERGENCY(), 1);
                setLeoUesrGlobalActionsRESTART =getLeoInt(context,getLeoGlobalActionsRESTART(), 1);
                setLeoUesrGlobalActionsSCREENSHOT = getLeoInt(context, getLeoGlobalActionsSCREENSHOT(), 1);
                setLeoUesrGlobalActionsQUICK_BOOT = getLeoInt(context,getLeoGlobalActionsQUICKBOOT(), 1);
                setLeoUesrGlobalActionsDOWNLOAD = getLeoInt(context, getLeoGlobalActionsDOWNLOAD(), 1);
                setLeoUesrGlobalActionsTORCH = getLeoInt(context,getLeoGlobalActionsTORCH(), 1);
                setLeoUesrGlobalActionsOUTDOOR = getLeoInt(context, getLeoGlobalActionsOUTDOOR(), 1);
                setLeoUesrGlobalActionsMIPOP = getLeoInt(context, getLeoGlobalActionsMIPOP(), 1);
                setLeoUesrGlobalActionsAIRPLANE = getLeoInt(context, getLeoGlobalActionsAIRPLANE(), 1);
                setLeoUesrGlobalActionsWIFI = getLeoInt(context,getLeoGlobalActionsWIFI(), 1);
                setLeoUesrGlobalActionsLEO =getLeoInt(context, getLeoGlobalActionsLEO(), 1);
                setLeoUesrGlobalActionsSOUND =getLeoInt(context, getLeoGlobalActionsSOUND(), 1);
                setLeoUesrGlobalActionsFLOATBLL = getLeoInt(context, getLeoGlobalActionsFLOATBLL(), 1);
                setLeoUesrGlobalActionsSCREENRECORD = getLeoInt(context,getLeoGlobalActionsSCREENRECORD(), 1);
                setLeoUesrGlobalActionsRECOBERY = getLeoInt(context, getLeoGlobalActionsRECOBERY(), 1);
                setLeoUesrGlobalActionsDataMode = getLeoInt(context,getLeoGlobalActionsDataMode(), 1);
                setLeoUesrGlobalActionsSYSTEMUI =getLeoInt(context, getLeoGlobalActionsSYSTEMUI(), 1);

                return;
            }
            return;
        }
    }
    public static int setLeoUesrGlobalActionsAIRPLANE = 0;
    public static int setLeoUesrGlobalActionsDOWNLOAD = 0;
    public static int setLeoUesrGlobalActionsDataMode = 0;
    public static int setLeoUesrGlobalActionsEMERGENCY = 1;
    public static int setLeoUesrGlobalActionsFLOATBLL = 0;
    public static int setLeoUesrGlobalActionsLEO =0;
    public static int setLeoUesrGlobalActionsMIPOP = 0;
    public static int setLeoUesrGlobalActionsOUTDOOR = 0;
    public static int setLeoUesrGlobalActionsQUICK_BOOT = 0;
    public static int setLeoUesrGlobalActionsRECOBERY =0;
    public static int setLeoUesrGlobalActionsRESTART = 1;
    public static int setLeoUesrGlobalActionsSCREENRECORD = 0;
    public static int setLeoUesrGlobalActionsSCREENSHOT = 0;
    public static int setLeoUesrGlobalActionsSOUND = 0;
    public static int setLeoUesrGlobalActionsSYSTEMUI = 0;
    public static int setLeoUesrGlobalActionsTORCH = 0;
    public static int setLeoUesrGlobalActionsWIFI = 0;

    public static int getIntKey(String key, int Int) {
        Log.v(AUTHOR, "LeoRom" );
        return Settings.System.getInt(SystemUIApplication.getContext().getContentResolver(), key, Int);
    }

}
