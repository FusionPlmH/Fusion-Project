package com.os.leo.utils;


import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Color;
import android.provider.Settings;
import android.util.Log;


import static com.android.systemui.UId.setLeoQSThemeMode;
import static com.os.leo.utils.LeoUserValues.*;
import static com.os.leo.utils.LeoUserValues.L;
import static com.os.leo.utils.LeoUserValues.OKS;
import static com.os.leo.utils.LeoUtils.getLeoForUser;
import static com.os.leo.utils.LeoUtils.getLeoInt;
import static com.os.leo.utils.LeoUtils.getLeoString;
import static com.os.leo.utils.LeoUtils.getLeoUri;


public class LeoUserSettings  {

    public static native String getLeoMmsCityPositionEnabled();
    public static native String  getLeoMmsCityPositionColor();
    public static native String  getLeoMmsCityPositionSize();
    public static native String   getLeoMmsCityPositionFont();
    public static native String   getLeoMmsDateColor();
    public static native String   getLeoMmsDateSize();
    public static native String  getLeoMmsDateFont();
    public static native String   getLeoMmsContentColor();
    public static native String   getLeoMmsContentSize();
    public static native String  getLeoMmsContentFont();
    public static native String   getLeoMmsAvatarColor();
    public static native String   getLeoMmsAvatarSize();
    public static native String  getLeoMmsAvatarFont();
    public static native String  getLeoCallLogCityPositionDataStyle();
    public static native String  getLeoCallLogCityPositionFont();
    public static native String  getLeoCallLogCityPositionSize();
    public static native String  getLeoCallLogCityPositionColor();
    public static native String  getLeoCallLogCityPositionEnabled();
    public static native String  getLeoLauncherIconView();
    public static native String  getLeoLauncherEffect();
    public static native String  getLeoToastAnimation();
    static {
        System.loadLibrary(L());
    }
    public static Context mContext;
    public  static boolean setLeoUesrMMSCityEnabled;
    public  static int setLeoUesrMMSCityColor;
    public  static int setLeoUesrMMSCitySize;
    public  static int setLeoUesrMMSCityFont;
    public  static int setLeoUesrMMSDateColor;
    public  static int setLeoUesrMMSDateSize;
    public  static int setLeoUesrMMSDateFont;
    public  static int setLeoUesrMMSContentColor;
    public  static int setLeoUesrMMSContentSize;
    public  static int setLeoUesrMMSContentFont;
    public  static int setLeoUesrMMSNameColor;
    public  static int setLeoUesrMMSNameSize;
    public  static int setLeoUesrMMSNameFont;
    public  static int CallColor=ShallowDarkColor;
    public  static int CallLogColor=CallColor;
    public  static int DeepCallColor=DeepDarkColor;
    public  static boolean setLeoUesrCallCityEnabled;
    public  static int setLeoUesrCallCityColor;
    public  static int setLeoUesrCallCitySize;
    public  static int setLeoUesrCallCityFont;
    public  static int setLeoUesrCallCityData;
    public  static boolean setLeoUesrLauncherIcon;
    public  static int setLeoUesrLauncherEffect;
    public  static String  setLeoUesrToastAnimation;
    public  static int  setLeoUesrPortraitNavBarHeight;
    public  static int  setLeoUesrLandscapeNavBarHeight;
    public  static float setLeoUesrNetworkTrafficMultiFontSize;
    public  static int setLeoUesrNetworkTrafficTextColor;
    public  static int setLeoUesrNetworkTrafficFontStyle;
    public  static boolean setLeoUesrNetworkTrafficSingle;
    public  static int setLeoUesrNetworkTrafficIconLocation;
    public  static boolean setLeoUesrNetworkTrafficActivity;
    public  static boolean setLeoUesrNetworkTrafficIcon;
    public  static boolean setLeoUesrNetworkTrafficText;
    public  static int  setLeoUesrNetworkTrafficUnit;
    public  static int  setLeoUesrNetworkTrafficInterval;
    public  static int  setLeoUesrNetworkTrafficState;
    public  static int  setLeoUesrNetworkTrafficLocation;
    public  static int mDefaultLightTextColor=mLightModeColor;
    public  static String  setLeoUesrHeaderCustomDateFormat;
    public  static int  setLeoUesrHeaderDateWeekOrientation;
    public  static int  setLeoUesrHeaderDateWeekStyle;
    public  static int  setLeoUesrHeaderDateColor;
    public static  int mHeaderDateColor =mDarkModeColor;
    public  static int  setLeoUesrHeaderDateSize;
    public  static int  setLeoUesrHeaderDateFont;
    public  static int  setLeoUesrHeaderDateSymbol;
    public  static boolean setLeoUesrHeaderDateWeekDisplay;
    public  static boolean setLeoUesrHeaderDateDisplay;

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
    public static boolean setLeoUesrStatusBarLogoVisible;
    public static int  setLeoUesrStatusBarLogoLocation;
    public static int setLeoUesrStatusBarLogoColor;
    public static int setLeoUesrStatusBarLogoStyle;
    public static float setLeoUesrStatusBarLogoSize;
    public static int setLeoUesrStatusBarClockDateSymbol;
    public  static boolean setLeoUesrDisplayWeatherLunar;
    public  static boolean setLeoUesrDisplayWeatherLunarConstellation;



    public static boolean  setLeoUesrStatusBarTemperatureSingle;
    public static boolean  setLeoUesrStatusBarTemperatureDisplay;
    public static int  setLeoUesrStatusBarTemperatureSingleSize;
    public static int  setLeoUesrStatusBarTemperatureMultiSize;
    public static int  setLeoUesrStatusBarTemperatureColor;
    public static int  setLeoUesrStatusBarTemperatureFont;
    public static native String  getLeoStatusbarTemperatureFont();
    public static native String  getLeoStatusbarTemperatureColor();
    public static native String  getLeoStatusbarTemperature();
    public static native String  getLeoStatusbarTemperatureMultiSize();
    public static native String  getLeoStatusbarTemperatureSingleSzie();
    public static native String  getLeoStatusbarTemperatureSingle();
    public static native String  getLeoStatusbarTemperatureOrientation();
    public static int  setLeoUesrStatusBarOrientation;
    ////////////////////////////////////////////////////////////////////////////////////
    public static boolean  setLeoUesrHeaderLunarDisplay;
    public static int  setLeoUesrHeaderLunarSymbol;
    public static int  setLeoUesrHeaderLunarOrientation;
    public static int  setLeoUesrHeaderLunarStyle;
    public static int  setLeoUesrHeaderLunarSize;
    public static int  setLeoUesrHeaderLunarColor;
    public static int  setLeoUesrHeaderLunarFont;
    public static boolean  setLeoUesrHeaderLunarConstellation;
    public static native String  getLeoPulldownLunarVisible();
    public static native String  getLeoPulldownLunarStyle();
    public static native String  getLeoPulldownLunarSize();
    public static native String  getLeoPulldownLunarColor();
    public static native String  getLeoPulldownLunarFont();
    public static native String  getLeoPulldownLunarConstellation();
    public static native String  getLeoPulldownLunarSymbol();
    public static native String  getLeoPulldownLunarOrientation();

    ////////////////////////////////////////////////////////////////////////////////////
    public static boolean  setLeoUesrHeaderTextClockDisplay;
    public static int  setLeoUesrHeaderTextClockFont;
    public static int  setLeoUesrHeaderTextClockSize;
    public static int  setLeoUesrHeaderTextClockColor;
    public static native String  getLeoHeadClockDisable();
    public static native String  getLeoHeadClockSize();
    public static native String  getLeoHeadClockColor();
    public static native String  getLeoHeadClockFont();
    ////////////////////////////////////////////////////////////////////////////////////
    public static int  setLeoUesrHeaderSettingButtonColor;
    public static int  setLeoUesrHeaderSettingButton;

    public static int  setLeoUesrHeaderMultiuserButton;
    public static native String  getLeoHeadMultiuserButton();
    public static native String  getLeoHeadSettingButton();
    public static native String  getLeoHeadSettingButtonColor();
    ////////////////////////////////////////////
    public static native String getLeoDataUsageViewVisible ();
    public static native String  getLeoDataUsageColor ();
    public static native String  getLeoDataUsageSize ();
    public static native String  getLeoDataUsageFont ();
    public static native String  getLeoDataUsageGravity();
    public static native String   getLeoQSLabelTextFont();
    public static native String   getLeoQSLabelTextColor();
    public static native String   getLeoQSDividerColor();
    public static native String   getLeoQSDivider();
    public  static boolean  setLeoUesrQSDivider;
    public  static int  setLeoUesrQSDividerColor;
    public  static int   setLeoUesrQSLabelTextColor;
    public  static int   setLeoUesrQSLabelTextFont;
    public static boolean setLeoUesrDataUsageViewVisible;
    public static int setLeoUesrDataUsageColor;
    public static int setLeoUesrDataUsageSize;
    public static int setLeoUesrDataUsageFont;
    public static int setLeoUesrDataUsageGravity;
    public static native String  getLeoBottomBarViewNotiSettingClearAllSize();
    public static native String  getLeoBottomBarViewNotiSettingColor();
    public static native String getLeoBottomBarViewClearAllColor();
    public static native String  getLeoBottomBarViewClearAllFont();
    public static native String  getLeoBottomBarViewNotiSettingFont ();
    public  static int  setLeoUesrBottomBarViewNotiSettingFont;
    public  static int  setLeoUesrBottomBarViewClearAllFont;
    public  static int  setLeoUesrBottomBarViewNotiSettingClearAllSize;
    public  static int  setLeoUesrBottomBarViewNotiSettingColor;
    public  static int  setLeoUesrBottomBarViewClearAllColor;
    //////////////////////////////////////////////////////////////
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
    public static Boolean setLeoUesrRecentsBlurWallpaperAlphaEnabled;
    public static int setLeoUesrRecentsBlurWallpaperColorEnabled;
    public static int    setLeoUesrRecentsStrokeDashColor;
    public static int    setLeoUesrRecentsStrokeThickness;
    public static int    setLeoUesrRecentsStrokeDashWidth;
    public static int    setLeoUesrRecentsStrokeDashGap;
    public static boolean  setLeoUesrRecentsStrokeEnabled;
    public  static int setLeoUesrRecentsBgWallpaperAlpha;


    public  static int setLeoUesrRecentsBlurBgDegree;
    public  static boolean setLeoUesrRecentsBgWallpaperAlphaEnable;
    public  static int setLeoUesrRecentsBGStyle;
    public  static int setLeoUesrRecentsBgBasicColor;
    public  static int setLeoUesrRecentsGradientBgStartColor;
    public  static int setLeoUesrRecentsGradientBgCenterColor;
    public  static int setLeoUesrRecentsGradientBgEndColor;
    public  static int setLeoUesrRecentsGradientEnableCenterColor;
    public  static boolean setLeoUesrRecentsShowBG;
    public  static int setLeoUesrRecentsBgGradientBgStyle;
    public  static int setLeoUesrRecentsGradientBgType;
    public  static int setLeoUesrRecentsGradientBackGroundCornerRadius;
    public  static int setLeoUesrRecentsGradientBackGroundColorRadius;
    public  static String setLeoUesrRecentsBgWallpaper;
    public  static int setLeoUesrRecentsWallpaperColorEnable;
    public  static int setLeoUesrRecentsWallpaperColor;
    public  static int DefaultRecentsBGColor=Transparency;
    public  static int mDefaultStrokeColor=QSonColor;
    ////////////////////////////////////////////////////////////////////////////////////
    public  static int setLeoUesrCustomSignalIconColor;
    public  static int setLeoUesrCustomAllSignalIconColor;
    public  static int setLeoUesrAllSignalIconColor;
    public  static int setLeoUesrWifiIconColor;
    public  static int setLeoUesrWifiArrowsIconColor;
    public  static int setLeoUesrAirplaneIconColor;
    public  static int setLeoUesrSignalIconColor;
    public  static int setLeoUesrMobileTypeIconColor;
    public  static int setLeoUesrMobileArrowsIconColor;
    public  static int setLeoUesrRoamingIconColor;
    public static native String getLeoRoamingIconColor();
    public static native String getLeoMobileArrowsIconColor();
    public static native String getLeoMbileTypeIconColor();
    public static native String getLeoSignalIconColor();
    public static native String getLeoAirplaneIconColor();
    public static native String getLeoWifiArrowsIconColor();
    public static native String getLeoWifiIconColor();
    public static native String getLeoAllSignalIconColor();
    public static native String getLeoCustomAllSignalIconColor();
    public static native String getLeoCustomSignalIconColor();
    ///////////////////////////////
    public  static boolean setLeoUesrStatusBarCarrierStyle;
    public static native String getLeoCarrierStatusBarStyle();
    public  static boolean setLeoUesrStatusBarCarrierSingle;
    public static native String getLeoCarrierStatusBarSingle();
    public static native String getLeoCarrierStatusBarSingleSize();
    public static native String getLeoCarrierStatusBarMultiSize();
    public  static int setLeoUesrStatusBarCarrierSingleSize;
    public  static int setLeoUesrStatusBarCarrierMultiSize;
    public  static String setLeoUesrStatusBarCarrierStringSingle;
    public  static String getSetLeoUesrStatusBarCarrierStringMulti;
    public static native String getLeoCarrierStatusBarStringSingle();
    public static native String getLeoCarrierStatusBarStringMulti();
    public  static int getSetLeoUesrStatusBarCarrierFont;
    public static native String getLeoCarrierStatusBarFont();
    public  static int getSetLeoUesrStatusBarCarrierColor;
    public static native String getLeoCarrierStatusBarColor();
    public  static int getSetLeoUesrStatusBarCarrierOrientation;
    public static native String getLeoCarrierStatusBarOrientation();
    public  static boolean getSetLeoUesrStatusBarCarrier;
    public static native String getLeoCarrierStatusBar();
    /////////////////////////////////////////////////
    public  static int setLeoUesrStatusBarWeatherOrientation;
    public  static int setLeoUesrStatusBarWeatherSingle;
    public  static boolean setLeoUesrStatusBarWeather;
    public  static int setLeoUesrStatusBarWeatherSingleTextSize;
    public  static int setLeoUesrStatusBarWeatherMultiTextSize;
    public  static int setLeoUesrStatusBarWeatherFont;
    public  static int setLeoUesrStatusBarWeatherColor;
    public static native String getLeoWeatherStatusBar();
    public static native String getLeoWeatherOrientationStatusBar();
    public static native String getLeoWeatherSingleStatusBar();
    public static native String getLeoWeatherSingleTextSizeStatusBar();
    public static native String getLeoWeatherMultiTextSizeStatusBar();
    public static native String getLeoWeatherFontStatusBar();
    public static native String getLeoWeatherColorStatusBar();
    //////////////////////////////////////////////////////////
    public  static int setLeoUesrStatusBarBatteryBarColor;
    public  static int setLeoUesrStatusBarBatteryBarChargingColor;
    public  static int setLeoUesrStatusBarBatteryBarLowColor;
    public static native String getLeoStatusBarBatteryBarColor();
    public static native String getLeoStatusBarBatteryBarChargingColor();
    public static native String getLeoStatusBarBatteryBarLowColor();
    public  static boolean setLeoUesrStatusBarBatteryBarAnimate;
    public  static boolean setLeoUesrStatusBarBatteryBarChargingColorEnabled;
    public  static boolean setLeoUesrStatusBarBatteryBarBlendColorEnabled;
    public  static boolean setLeoUesrStatusBarBatteryBarBlendReversedColorEnabled;
    public static native String getLeoStatusBarBatteryBarAnimate();
    public static native String getLeoStatusBarBatteryBarChargingColorEnabled();
    public static native String getLeoStatusBarBatteryBarBlendColorEnabled();
    public static native String getLeoStatusBarBatteryBarBlendReversedColorEnabled();
    public  static int setLeoUesrStatusBarBatteryBarDP;
    public  static int setLeoUesrStatusBarBatteryBarStyle;
    public  static int setLeoUesrStatusBarBatteryBar;
    public static native String getLeoStatusBarBatteryBardp();
    public static native String getLeoStatusBarBatteryBarStyle();
    public static native String getLeoStatusBarBatteryBar();
    public static native String getLeoNavigationBarHideMS();
    public static native String getLeoQSMax();
    public  static int setLeoUesrNavigationBarHideMS;
    public  static int setLeoUesrQSMaxToggles;
    /////////////////////////////////////////
    public  static boolean setLeoUesrKeyguardCarrierStyle;
    public static native String getLeoCarrierKeyguardStyle();
    public  static boolean setLeoUesrKeyguardCarrierSingle;
    public static native String getLeoCarrierKeyguardSingle();
    public static native String getLeoCarrierKeyguardSingleSize();
    public static native String getLeoCarrierKeyguardMultiSize();
    public  static int setLeoUesrKeyguardCarrierSingleSize;
    public  static int setLeoUesrKeyguardCarrierMultiSize;
    public  static String setLeoUesrKeyguardCarrierStringSingle;
    public  static String getSetLeoUesrKeyguardCarrierStringMulti;
    public static native String getLeoCarrierKeyguardStringSingle();
    public static native String getLeoCarrierKeyguardStringMulti();
    public  static int setLeoUesrKeyguardCarrierFont;
    public static native String getLeoCarrierKeyguardFont();
    public  static int setLeoUesrKeyguardCarrierColor;
    public static native String getLeoCarrierKeyguardColor();
    public  static boolean setLeoUesrKeyguardCarrier;
    public static native String getLeoCarrierKeyguard();

    ///////////////////////////////////////////////////////
    public static Boolean setLeoUesrQSPanelBlurWallpaperAlphaEnabled;
    public static int setLeoUesrQSPanelBlurWallpaperColorEnabled;
    public static int    setLeoUesrQSPanelStrokeDashColor;
    public static int    setLeoUesrQSPanelStrokeThickness;
    public static int    setLeoUesrQSPanelStrokeDashWidth;
    public static int    setLeoUesrQSPanelStrokeDashGap;
    public static boolean  setLeoUesrQSPanelStrokeEnabled;
    public  static int setLeoUesrQSPanelBGStyle;
    public  static int setLeoUesrQSPanelBgBasicColor;
    public  static int setLeoUesrQSPanelGradientBgStartColor;
    public  static int setLeoUesrQSPanelGradientBgCenterColor;
    public  static int setLeoUesrQSPanelGradientBgEndColor;
    public  static int setLeoUesrQSPanelGradientEnableCenterColor;
    public  static boolean setLeoUesrQSPanelShowBG;
    public  static int setLeoUesrQSPanelBgGradientBgStyle;
    public  static int setLeoUesrQSPanelGradientBgType;
    public  static int setLeoUesrQSPanelGradientBackGroundCornerRadius;
    public  static int setLeoUesrQSPanelGradientBackGroundColorRadius;
    public  static String setLeoUesrQSPanelBgWallpaper;
    public  static int setLeoUesrQSPanelWallpaperColorEnable;
    public  static int setLeoUesrQSPanelWallpaperColor;
    public  static int  setLeoUesrQSPanelBgWallpaperAlpha;
    public  static boolean  setLeoUesrQSPanelBgWallpaperAlphaEnable;
    public  static int  setLeoUesrQSPanelBlurBgDegree;
    public static native String  getLeoQSPanelBlurBgDegree();
    public static native String  getLeoQSPanelBgWallpaperAlphaEnable();
    public static native String  getLeoQSPanelBgWallpaperAlpha();
    public static native String  getLeoQSPanelBGStyle();
    public static native String  getLeoQSPanelBgBasicColor();
    public static native String  getLeoQSPanelGradientBgStartColor();
    public static native String  getLeoQSPanelGradientBgCenterColor();
    public static native String  getLeoQSPanelGradientBgEndColor();
    public static native String  getLeoQSPanelGradientEnableCenterColor();
    public static native String  getLeoQSPanelShowBG();
    public static native String  getLeoQSPanelBgGradientBgStyle();
    public static native String  getLeoQSPanelGradientBgType();
    public static native String  getLeoQSPanelGradientBackGroundCornerRadius();
    public static native String  getLeoQSPanelGradientBackGroundColorRadius();
    public static native String  getLeoQSPanelBgWallpaper();
    public static native String  getLeoQSPanelWallpaperColorEnable();
    public static native String  getLeoQSPanelWallpaperColor();
    public static native String  getLeoQSPanelStrokeDashColor();
    public static native String  getLeoQSPanelStrokeThickness();
    public static native String  getLeoQSPanelStrokeDashWidth();
    public static native String  getLeoQSPanelStrokeDashGap();
    public static native String  getLeoQSPanelStrokeEnabled();
    public static native String  getLeoQSPanelBlurWallpaperColor();
    public static native String  getLeoQSPanelBlurWallpaperAlpha();





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

    public static native String  getLeoStatsusBarShowBG();
    public static native String  getLeoStatsusBarBgGradientBgStyle();
    public static native String  getLeoStatsusBarGradientBgType();
    public static native String  getLeoStatsusBarGradientBackGroundCornerRadius();
    public static native String  getLeoStatsusBarGradientBackGroundColorRadius();
    public static native String  getLeoStatsusBarBgWallpaper();
    public static native String  getLeoStatsusBarWallpaperColorEnable();
    public static native String  getLeoStatsusBarWallpaperColor();
    public static native String  getLeoStatsusBarBGStyle();
    public static native String  getLeoStatsusBarBgBasicColor();
    public static native String  getLeoStatsusBarGradientBgStartColor();
    public static native String  getLeoStatsusBarGradientBgCenterColor();
    public static native String  getLeoStatsusBarGradientBgEndColor();
    public static native String  getLeoStatsusBarGradientEnableCenterColor();
    public static native String   getLeoStatsusBarBlurBgDegree();
    public static native String  getLeoStatsusBarBgWallpaperAlphaEnable();
    public static native String  getLeoStatsusBarBgWallpaperAlpha();
    public static native String  getLeoStatsusBarBlurWallpaperColor();
    public static native String  getLeoStatsusBarBlurWallpaperAlpha();
    public static native String  getLeoStatsusBarStrokeDashColor();
    public static native String  getLeoStatsusBarStrokeThickness();
    public static native String  getLeoStatsusBarStrokeDashWidth();
    public static native String  getLeoStatsusBarStrokeDashGap();
    public static native String  getLeoStatsusBarStrokeEnabled();

    public  static int setLeoUesrStatsusBarIconPadding;
    public  static boolean setLeoUesrStatsusBarIconPaddingEnable;
    public static native String  getLeoStatsusBarIconPaddingEnable();
    public static native String  getLeoStatsusBarIconPadding();
    public  static int   setLeoUesrStatusBarLeftClickAction;
    public  static String setLeoUesrStatusBarLeftClickApp;
    public  static int setLeoUesrStatusBarLeftLongClickAction;
    public  static boolean setLeoUesrStatusBarLeftAction;
    public  static String setLeoUesrStatusBarLeftLongClickApp;
    public  static int setLeoUesrStatusBarGesturesVibratorEnable;
    public  static int   setLeoUesrStatusBarRightClickAction;
    public  static String setLeoUesrStatusBarRightClickApp;
    public  static int setLeoUesrStatusBarRightLongClickAction;
    public  static boolean setLeoUesrStatusBarRightAction;
    public  static String setLeoUesrStatusBarRightLongClickApp;
    public static native String  getLeoStatusBarLeftClickAction();
    public static native String  getLeoStatusBarLeftClickApp();
    public static native String  getLeoStatusBarLeftLongClickAction();
    public static native String  getLeoStatusBarLeftAction();
    public static native String  getLeoStatusBarLeftLongClickApp();
    public static native String  getLeoStatusBarRightClickAction();
    public static native String  getLeoStatusBarRightClickApp();
    public static native String  getLeoStatusBarRightLongClickAction();
    public static native String  getLeoStatusBarRightAction();
    public static native String  getLeoStatusBarRightLongClickApp();
    public static native String  getLeoStatusBarGesturesVibratorEnable();
    public  static int setLeoUesrStatusBarGestureColor;
    public  static String setLeoUesrStatusBarGestureRightSlideApp;
    public  static int setLeoUesrStatusBarGestureRightSlide;
    public static native String  getLeoStatusBarGestureRightSlide();
    public static native String  getLeoStatusBarGestureRightSlideApp();
    public static native String  getLeoStatusBarRightSlideAction();
    public  static boolean setLeoUesrStatusBarGestureTouchRegionColor;
    public  static String setLeoUesrStatusBarGestureLeftSlideApp;
    public  static int setLeoUesrStatusBarGestureLeftSlide;
    public static native String  getLeoStatusBarGestureLeftSlide();
    public static native String  getLeoStatusBarGestureLeftSlideApp();
    public static native String  getLeoStatusBarLeftSlideAction();
    public  static boolean setLeoUesrStatusBarDoubleAction;
    public  static String setLeoUesrStatusBarGestureDoubleApp;
    public  static int setLeoUesrStatusBarGestureDouble;
    public static native String  getLeoStatusBarGestureDouble();
    public static native String  getLeoStatusBarGestureDoubleApp();
    public static native String  getLeoStatusBarDoubleAction();
    /////////////////////////////////////////********************
    public  static boolean setLeoUesrNavigationBarAllIcon;
    public  static int setLeoUesrNavigationBarAllIconStyle;
    public  static int setLeoUesrNavigationBarHomeIconStyle;
    public  static int setLeoUesrNavigationBarBackIconStyle;
    public  static int setLeoUesrNavigationBarRecentIconStyle;
    public static native String  getLeoNavigationBarAllIcon();
    public static native String  getLeoNavigationBarAllIconStyle();
    public static native String  getLeoNavigationBarHomeIconStyle();
    public static native String  getLeoNavigationBarBackIconStyle();
    public static native String  getLeoNavigationBarRecentIconStyle();
    ////////////////////////////////////////
    public  static boolean setLeoUesrStatusBarCustomWifiIcon;
    public  static boolean setLeoUesrStatusBarCustomSignalIcon;
    public  static int setLeoUesrStatusBarCustomWifiIconStyle;
    public  static int setLeoUesrStatusBarCustomSignalIconStyle;
    public static native String  getLeoStatusBarCustomWifiIcon();
    public static native String  getLeoStatusBarCustomSignalIcon();
    public static native String  getLeoStatusBarCustomWifiIconStyle();
    public static native String  getLeoStatusBarCustomSignalIconStyle();
    ////////////////////////////////////
    public static Boolean setLeoUesrNavigationBarBlurWallpaperAlphaEnabled;
    public static int setLeoUesrNavigationBarBlurWallpaperColorEnabled;
    public static int    setLeoUesrNavigationBarStrokeDashColor;
    public static int    setLeoUesrNavigationBarStrokeThickness;
    public static int    setLeoUesrNavigationBarStrokeDashWidth;
    public static int    setLeoUesrNavigationBarStrokeDashGap;
    public static boolean  setLeoUesrNavigationBarStrokeEnabled;
    public  static int setLeoUesrNavigationBarBGStyle;
    public  static int setLeoUesrNavigationBarBgBasicColor;
    public  static int setLeoUesrNavigationBarGradientBgStartColor;
    public  static int setLeoUesrNavigationBarGradientBgCenterColor;
    public  static int setLeoUesrNavigationBarGradientBgEndColor;
    public  static int setLeoUesrNavigationBarGradientEnableCenterColor;
    public  static boolean setLeoUesrNavigationBarShowBG;
    public  static int setLeoUesrNavigationBarBgGradientBgStyle;
    public  static int setLeoUesrNavigationBarGradientBgType;
    public  static int setLeoUesrNavigationBarGradientBackGroundCornerRadius;
    public  static int setLeoUesrNavigationBarGradientBackGroundColorRadius;
    public  static String setLeoUesrNavigationBarBgWallpaper;
    public  static int setLeoUesrNavigationBarWallpaperColorEnable;
    public  static int setLeoUesrNavigationBarWallpaperColor;
    public  static int  setLeoUesrNavigationBarBgWallpaperAlpha;
    public  static boolean  setLeoUesrNavigationBarBgWallpaperAlphaEnable;
    public  static int  setLeoUesrNavigationBarBlurBgDegree;
    public static native String  getLeoNavigationBarBlurBgDegree();
    public static native String  getLeoNavigationBarBgWallpaperAlphaEnable();
    public static native String  getLeoNavigationBarBgWallpaperAlpha();
    public static native String  getLeoNavigationBarBGStyle();
    public static native String  getLeoNavigationBarBgBasicColor();
    public static native String  getLeoNavigationBarGradientBgStartColor();
    public static native String  getLeoNavigationBarGradientBgCenterColor();
    public static native String  getLeoNavigationBarGradientBgEndColor();
    public static native String  getLeoNavigationBarGradientEnableCenterColor();
    public static native String  getLeoNavigationBarShowBG();
    public static native String  getLeoNavigationBarBgGradientBgStyle();
    public static native String  getLeoNavigationBarGradientBgType();
    public static native String  getLeoNavigationBarGradientBackGroundCornerRadius();
    public static native String  getLeoNavigationBarGradientBackGroundColorRadius();
    public static native String  getLeoNavigationBarBgWallpaper();
    public static native String  getLeoNavigationBarWallpaperColorEnable();
    public static native String  getLeoNavigationBarWallpaperColor();
    public static native String  getLeoNavigationBarStrokeDashColor();
    public static native String  getLeoNavigationBarStrokeThickness();
    public static native String  getLeoNavigationBarStrokeDashWidth();
    public static native String  getLeoNavigationBarStrokeDashGap();
    public static native String  getLeoNavigationBarStrokeEnabled();
    public static native String  getLeoNavigationBarBlurWallpaperColor();
    public static native String  getLeoNavigationBarBlurWallpaperAlpha();
    public static int    setLeoUesrTaskRAMInfoStrokeDashCornerRadius;
    public static int    setLeoUesrTaskRAMInfoFont;
    public static int    setLeoUesrTaskRAMInfoStrokeDashColor;
    public static int    setLeoUesrTaskRAMInfoStrokeThickness;
    public static int    setLeoUesrTaskRAMInfoStrokeDashWidth;
    public static int    setLeoUesrTaskRAMInfoStrokeDashGap;
    public static boolean  setLeoUesrTaskRAMInfoStrokeEnabled;

    public static int setLeoUesrTaskRAMInfoLanguage;
    public static int setLeoUesrTaskRAMInfoTextSize;
    public static int setLeoUesrTaskRAMInfoTextFreeColor;
    public static int setLeoUesrTaskRAMInfoTextUsedColor;
    public static int setLeoUesrTaskRAMInfoTextColor;
    public static int setLeoUesrTaskRAMInfoBGColor;
    public static int setLeoUesrTaskRAMInfoRefresh;

    public static int setLeoUesrTaskRAMInfo;
    public static native String  getLeoRecentTaskRAMInfo();
    public static native String  getLeoRecentTaskRAMInfoRefresh();
    public static native String  getLeoRecentTaskRAMInfoBGColor();
    public static native String  getLeoRecentTaskRAMTextColor();
    public static native String  getLeoRecentTaskRAMUsedColor();
    public static native String  getLeoRecentTaskRAMFreeColor();
    public static native String  getLeoRecentTaskRAMTextSize();
    public static native String  getLeoRecentTaskRAMLanguage();
    public static native String  getLeoRecentTaskRAMFont();
    public static native String  getLeoRecentTaskRAMStrokeEnabled();
    public static native String  getLeoRecentTaskRAMStrokeDashGap();
    public static native String  getLeoRecentTaskRAMStrokeDashWidth();
    public static native String  getLeoRecentTaskRAMStrokeThickness();
    public static native String  getLeoRecentTaskRAMStrokeDashColor();
    public static native String  getLeoRecentTaskRAMStrokeDashCornerRadius();
    public static boolean  setLeoUesrTaskRAMInfoClick;
    public static native String  getLeoRecentTaskRAMClick();

    //////////

    public  static int setLeoUesrLongPressBack;
    public static native String  getLeoLongPressBack();
    public static native String  getLeoLongPressBackApp();
    public  static String setLeoUesrLongPressBackAPP;
    public  static int setLeoUesrLongPressHome;
    public static native String  getLeoLongPressHome();
    public static native String  getLeoLongPressHomeApp();
    public  static String setLeoUesrLongPressHomeAPP;
    public  static int setLeoUesrLongPressRecent;
    public static native String  getLeoLongPressRecent();
    public static native String  getLeoLongPressRecentApp();
    public  static String setLeoUesrLongPressRecentAPP;
    public  static int setLeoUesrClickRecent;
    public static native String  getLeoClickRecent();
    public static native String  getLeoClickRecentApp();
    public  static String setLeoUesrClickRecentAPP;

    public  static int setLeoUesrBixbyAction;
    public  static int setLeoUesrBixbyClick;
    public  static int setLeoUesrBixbyLongPress;
    public  static String setLeoUesrBixbyClickAPP;
    public  static String setLeoUesrBixbyLongPressAPP;
    public static native String  getLeoBixbyAction();
    public static native String  getLeoBixbyClick();
    public static native String  getLeoBixbyLongPress();
    public static native String  getLeoBixbyClickAPP();
    public static native String  getLeoBixbyLongPressAPP();
    public  static int setLeoUesrPowerLongPress;
    public  static String setLeoUesrPowerLongPressAPP;
    public static native String  getLeoPowerLongPress();
    public static native String  getLeoPowerLongPressAPP();
    public  static int setLeoUesrFpDownAction;
    public  static String setLeoUesrFpDownActionAPP;

    public static native String  getLeoFpDownAction();
    public static native String  getLeoFpDownActionAPP();

    public  static int setLeoUesrFpUPAction;
    public  static String setLeoUesrFpUPActionAPP;

    public static native String  getLeoFpUPAction();
    public static native String  getLeoFpUPActionAPP();
    public  static boolean setLeoUesrThreeGesture;
    public static native String  getLeoThreeGesture();
    public  static int setLeoUesrThreeGestureAction;
    public  static String setLeoUesrThreeGestureActionAPP;
    public static native String  getLeoThreeGestureAction();
    public static native String  getLeoThreeGestureActionAPP();
    public  static boolean setLeoUesrNavbarHeightSwitch;
    public static native String  getLeoNavbarHeightSwitch();

    public  static int setLeoUesrPowerDoubleAction;
    public  static String setLeoUesrPowerDoubleActionAPP;
    public  static int setLeoUesrPowerDoubleActionLS;
    public static native String  getLeoPowerDoubleAction();
    public static native String  getLeoPowerDoubleActionAPP();
    public static native String  getLeoPowerDoubleActionLS();
    public  static int getSetLeoUesrPowerLongPressActionLS;
    public static native String  getLeoPowerLongPressActionLS();
    public static native String  getLeoBixbyActionLS();
    public  static int getSetLeoUesrLeoBixbyActionLS;
    public  static int setLeoUesrBixbyLongPressLS;
    public static native String  getLeoBixbyLongPressLS();
    public  static boolean setLeoUesrSoundMakeUP;
    public static native String  getLeoSoundMakeUP();

    public  static boolean setLeoUesrLockScreenRotation;
    public static native String  getLeoLockScreenRotation();



    public static native String   getLeoLauncherDoubleTapEnabled(); ;
    public static native String   getLeoLauncherDoubleTapAction();
    public static native String   getLeoLauncherDoubleTapApp();
    public static native String  getLeoLauncherDoubleTapVibrator();
    public static int setLeoUesrLauncherDoubleTapVibrator;
    public static boolean setLeoUesrLauncherDoubleTapEnabled;
    public static int setLeoUesrLauncherDoubleTapAction;
    public static String setLeoUesrLauncherDoubleTapApp;
    public static boolean setLeoUesrLauncherUPEnabled;
    public static int setLeoUesrLauncherUPAction;
    public static String setLeoUesrLauncherUPApp;
    public static native String   getLeoLauncherUPEnabled(); ;
    public static native String   getLeoLauncherUPAction();
    public static native String   getLeoLauncherUPApp();
    public static boolean setLeoUesrLauncherDownEnabled;
    public static int setLeoUesrLauncherDownAction;
    public static String setLeoUesrLauncherDownApp;
    public static native String   getLeoLauncherDownEnabled(); ;
    public static native String   getLeoLauncherDownAction();
    public static native String   getLeoLauncherDownApp();
    public static int setLeoUesrLauncherGesturalVibrationLevel;
    public static int  setLeoUesrLauncherBlurColor;
    public static int  setLeoUesrLauncherBlurColorAlpha;
    public static Boolean  setLeoUesrLauncherBlurAlphaEnabled;
    public static int  setLeoUesrLauncherBlurColorEnabled;
    public static int    setLeoUesrLauncherBlurView;
    public static String    setLeoUesrLauncherBlurViewString;
    public static int   setLeoUesrLauncherBlurDegree;
    public static native String  getLeoLauncherBlurView();
    public static native String  getLeoLauncherBlurViewString();
    public static native String  getLeoLauncherBlurDegree();
    public static native String  getLeoLauncherBlurColorEnabled();
    public static native String  getLeoLauncherBlurAlphaEnabled();
    public static native String  getLeoLauncherBlurColor();
    public static native String  getLeoLauncherBlurColorAlpha();
    public static native String  getLeoLauncherGesturalVibrationLevel();
    public static int setLeoUesrStatusBarGestureVibrationLevel;
    public static native String  getLeoStatusBarGestureVibrationLevel();
    public static int setLeoUesrNavigationBarGestureVibrationLevel;
    public static int setLeoUesrNavigationBarGestureVibration;
    public static native String  getLeoNavigationBarGestureVibrationLevel();
    public static native String  getLeoNavigationBarGestureVibration();

    public static int setLeoUesrThreeGestureVibrationLevel;
    public static int setLeoUesrThreeGestureVibration;
    public static native String  getLeoThreeGestureVibrationLevel();
    public static native String  getLeoThreeGestureVibration();

    public  static int  setLeoUesrPowerMenuBgWallpaperAlpha;
    public  static boolean  setLeoUesrPowerMenuBgWallpaperAlphaEnable;
    public  static int  setLeoUesrPowerMenuBlurBgDegree;

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
    public static native String  getLeoPowerMenuBGStyle();
    public static native String  getLeoPowerMenuBgBasicColor();
    public static native String  getLeoPowerMenuGradientBgStartColor();
    public static native String  getLeoPowerMenuGradientBgCenterColor();
    public static native String  getLeoPowerMenuGradientBgEndColor();
    public static native String  getLeoPowerMenuGradientEnableCenterColor();
    public static native String  getLeoPowerMenuShowBG();
    public static native String  getLeoPowerMenuBgGradientBgStyle();
    public static native String  getLeoPowerMenuGradientBgType();
    public static native String  getLeoPowerMenuGradientBackGroundCornerRadius();
    public static native String  getLeoPowerMenuGradientBackGroundColorRadius();
    public static native String  getLeoPowerMenuBgWallpaper();
    public static native String  getLeoPowerMenuWallpaperColorEnable();
    public static native String  getLeoPowerMenuWallpaperColor();
    public static native String  getLeoPowerMenuBlurBgDegree();
    public static native String  getLeoPowerMenuBgWallpaperAlphaEnable();
    public static native String  getLeoPowerMenuBgWallpaperAlpha();
    public static native String  getLeoPowerMenuStrokeDashColor();
    public static native String  getLeoPowerMenuStrokeThickness();
    public static native String  getLeoPowerMenuStrokeDashWidth();
    public static native String  getLeoPowerMenuStrokeDashGap();
    public static native String  getLeoPowerMenuStrokeEnabled();
    public static native String  getLeoPowerMenuBlurWallpaperColor();
    public static native String  getLeoPowerMenuBlurWallpaperAlpha();

    public static int setLeoUesrPulldownOutdoorEnabled;
    public static int setLeoUesrPulldownOutdoorAction;
    public static String setLeoUesrPulldownOutdoorActionApp;
    public static int setLeoUesrPulldownOutdoorIconStyle;
    public static int setLeoUesrPulldownOutdoorIconColor;
    public static int setLeoUesrPulldownOutdoorVibrator;
    public static int setLeoUesrPulldownOutdoorVibratorLevel;
    public static native String  getLeoPulldownOutdoorEnabled();
    public static native String  getLeoPulldownOutdoorAction();
    public static native String  getLeoPulldownOutdoorActionApp();
    public static native String  getLeoPulldownOutdoorIconStyle();
    public static native String  getLeoPulldownOutdoorIconColor();
    public static native String  getLeoPulldownOutdoorVibrator();
    public static native String  getLeoPulldownOutdoorVibratorLevel();
    public static int setLeoUesrPulldownCarrier;
    public static int setLeoUesrPulldownCarrierColor;
    public static int setLeoUesrPulldownCarrierSize;
    public static int setLeoUesrPulldownCarrierFont;
    public static native String  getLeoPulldownCarrier();
    public static native String  getLeoPulldownCarrierColor();
    public static native String  getLeoPulldownCarrierSize();
    public static native String  getLeoPulldownCarrierFont();
    public static int setLeoUesrKeyguardStatusBar;
    public static native String  getLeoKeyguardStatusBar();
    public static int setLeoUesrPowerTextStatus;
    public static int setLeoUesrPowerTextColor;
    public static int setLeoUesrPowerTextSize;
    public static int setLeoUesrPowerTextFont;
    public static native String  getLeoPowerTextStatus();
    public static native String  getLeoPowerTextColor();
    public static native String  getLeoPowerTextSize();
    public static native String  getLeoPowerTextFont();
    public static int setLeoUesrPowerTextLinkWhiteTheme;
    public static native String  getLeoPowerTextLinkWhiteTheme();
    public static int setLeoUesrPowerTextHint;
    public static int setLeoUesrPowerTextHintColor;
    public static int setLeoUesrPowerTextHintFont;
    public static int setLeoUesrPowerTextHintSize;
    public static int setLeoUesrPowerTextHintLinkWhiteTheme;
    public static native String  getLeoPowerTextHint();
    public static native String  getLeoPowerTextHintColor();
    public static native String  getLeoPowerTextHintFont();
    public static native String  getLeoPowerTextHintSize();
    public static native String  getLeoPowerTextHintLinkWhiteTheme();
    public static int setLeoUesrPowerImageView;
    public static float setLeoUesrPowerImageViewSize;
    public static int setLeoUesrPowerImageViewColor;
    public static native String  getLeoPowerImageView();
    public static native String  getLeoPowerImageViewSize();
    public static native String  getLeoPowerImageViewColor();
    public static boolean setLeoUesrScrambleKeyPad = false;
    public static native String  getLeoPinCode();
    public static native String getLeoHideIrisView();
    public static boolean setLeoUesrHideIrisView = false;
    public static boolean setLeoUesrBiometricUnlock = false;
    public static native String getLeoBiometricUnlock();
    public static boolean setLeoUesrFlashlightLowBattery = false;
    public static native String getLeoFlashlightLowBattery();

    public static int setLeoUesrPullDownBlurEffect;
    public static float setLeoUesrPullDownBlurEffectStyle;
    public static native String  getLeoPullDownBlurEffectStyle();
    public static native String  getLeoPullDownBlurEffect();



    public static native String  getLeoTogglePullDownCarrier();

    public  static String setLeoUesrPullDownCarrierString;
    public  static String setLeoUesrPullDownCarrierStringA;
    public static native String  getLeoPullDownCarrierString();
    public static native String  getLeoPullDownCarrierStringA();
    public  static int  setLeoUesrMipHomeAction=0;
    public  static int  setLeoUesrMipVibrate=0;
    public  static int  setLeoUesrMipVibrateLevel=70;
    public  static String setLeoUesrMipHomeActionApp;
    public static native String   getLeoMipHomeAction();
    public static native String  getLeoMipHomeActionString();
    public static native String  getLeoLeoMipActionVibrate();
    public static native String  getLeoMipActionVibrateLevel();
    public  static int  setLeoUesrMipTaskAction=0;
    public  static String setLeoUesrMipTaskActionApp;
    public static native String  getLeoMipTaskAction();
    public static native String  getLeoLeoMipTaskActionString();
    public  static int  setLeoUesrMipFlashlightAction=0;
    public  static String setLeoUesrMipFlashlightActionApp;
    public static native String  getLeoMipFlashlightAction();
    public static native String  getLeoLeoMipFlashlightActionString();
    public  static int  setLeoUesrMipBackAction=0;
    public  static String setLeoUesrMipBackActionApp;
    public static native String  getLeoMipBackAction();
    public static native String  getLeoLeoMipBackActionString();
    public  static boolean  setLeoUesrMipEnable=false;
    public static native String  getLeoMipEnable();


    public  static boolean  setLeoUesrFlashlightIconEnable=false;
    public static native String  getLeoFlashlightIconEnable();
    public  static boolean  setLeoUesrNavColorEnabled=false;
    public  static boolean  setLeoUesrNavAllColorEnabled=false;
    public static int mStockNavbarIconColor =mDefaultNavaIconColor;
    public  static int  setLeoUesrNavHomeColor;
    public  static int  setLeoUesrNavBackColor;
    public  static int  setLeoUesrNavTaskColor;
    public  static int  setLeoUesrNavImeColor;
    public  static int  setLeoUesrNavPinColor;
    public static native String  getLeoNavColorEnabled();
    public static native String  getLeoNavAllColorEnabled();
    public static native String  getLeoNavHomeColor();
    public static native String  getLeoNavBackColor();
    public static native String  getLeoNavTaskColor();
    public static native String  getLeoNavImeColor();
    public static native String  getLeoNavPinColor();
    public  static int  setLeoUesrNavIconAllColor;

    public static native String  getLeoNavIconAllColor();
    public  static boolean  setLeoUesrClockOnClickEnabled=false;
    public static native String  getLeoClockOnClickEnabled();

    public  static int  setLeoUesrQSbuttonColor;
    public static native String  getLeoQSbuttonColorEnabled();
    public static native String  getLeoQSbuttonONColor();
    public static native String  getLeoQSbuttonOFFColor();


    public  static boolean  setLeoUesrPowerMenuConfirmDialog=false;
    public static native String  getLeoPowerMenuConfirmDialog();
    public  static boolean  setLeoUesrGoogleSmartQuickUnlock=true;
    public static native String  getLeoGoogleSmartQuickUnlock();
    public  static int  setLeoUesrPowerMenuClickState;
    public static native String  getLeoPowerMenuClickState();
    public  static boolean  setLeoUesrHeaderTextClockDetail=false;
    public  static boolean  setLeoUesrHeaderTextClockSecond=false;
    public  static int  setLeoUesrHeaderTextClockDetailSize;
    public  static int  setLeoUesrHeaderTextClockDetailStyle;
    public  static int  setLeoUesrHeaderTextClockDetailFont;
    public  static int  setLeoUesrHeaderTextClockDetailColor;
    public  static int  setLeoUesrHeaderTextClockSecondSize;
    public  static int  setLeoUesrHeaderTextClockSecondColor;
    public  static int  setLeoUesrHeaderTextClockCustomColor;
    public static native String  getLeoHeaderTextClockDetail();
    public static native String  getLeoHeaderTextClockSecond();
    public static native String  getLeoHeaderTextClockDetailStyle();
    public static native String  getLeoHeaderTextClockCustomColor();
    public static native String  getLeoHeaderTextClockDetailColor();
    public static native String  getLeoHeaderTextClockDetailSize();
    public static native String  getLeoHeaderTextClockDetailFont();
    public static native String  getLeoHeaderTextClockSecondColor();
    public static native String  getLeoHeaderTextClockSecondSize();
    public  static int  setLeoUesrHeaderTextClockAllColor;
    public  static int  setLeoUesrHeaderTextClockColorAll;
    public  static int  setLeoUesrHeaderTextLunarColor;
    public  static int  setLeoUesrHeaderTextLunarFont;
    public  static int  setLeoUesrHeaderTextDateAllColor;
    public  static int  setLeoUesrHeaderTextDateColorALL;
    public  static int  setLeoUesrHeaderTextDateColorCustom;
    public static native String  getLeoHeaderTextClockColorAll();
    public static native String  getLeoHeaderTextClockAllColor();
    public static native String  getLeoHeaderTextLunarColor();

    public static native String  getLeoHeaderTextLunarFont();
    public static native String  getLeoHeaderTextDateAllColor();
    public static native String  getLeoHeaderTextDateColorALL();
    public static native String  getLeoHeaderTextDateColorCustom();
    public  static int  setLeoUesrNavBarThoroughDisabled=0;
    public static native String  getLeoNavBarThoroughDisabled();







    public  static int  setLeoUesrStatsusBarGradientColorFour;
    public  static int  setLeoUesrStatsusBarGradientColorFive;
    public  static int  setLeoUesrStatsusBarGradientColorSix;
    public  static int  setLeoUesrStatsusBarGradientColorEnabled;
    public  static int  setLeoUesrStatsusBarBgWallpaperBlurEnabled;
    public static native String  getLeoStatsusBarGradientColorFour();
    public static native String  getLeoStatsusBarGradientColorFive();
    public static native String  getLeoStatsusBarGradientColorSix();
    public static native String  getLeoStatsusBarGradientColorEnabled();
    public static native String  getLeoStatsusBarBgWallpaperBlurEnabled();
    public  static int   setLeoUesrQSPanelGradientColorFour;
    public  static int   setLeoUesrQSPanelGradientColorFive;
    public  static int   setLeoUesrQSPanelGradientColorSix;
    public  static int   setLeoUesrQSPanelGradientColorEnabled;
    public  static int   setLeoUesrQSPanelBgWallpaperBlurEnabled;
    public static native String  getLeoQSPanelGradientColorFour();
    public static native String  getLeoQSPanelGradientColorFive();
    public static native String  getLeoQSPanelGradientColorSix();
    public static native String  getLeoQSPanelGradientColorEnabled();
    public static native String  getLeoQSPanelBgWallpaperBlurEnabled();
    public  static int  setLeoUesrRecentsGradientColorFour;
    public  static int  setLeoUesrRecentsGradientColorFive;
    public  static int  setLeoUesrRecentsGradientColorSix;
    public  static int  setLeoUesrRecentsGradientColorEnabled;
    public  static int  setLeoUesrRecentsBgWallpaperBlurEnabled;
    public static native String  getLeoRecentsGradientColorFour();
    public static native String  getLeoRecentsGradientColorFive();
    public static native String  getLeoRecentsGradientColorSix();
    public static native String  getLeoRecentsGradientColorEnabled();
    public static native String  getLeoRecentsBgWallpaperBlurEnabled();
    public  static int  setLeoUesrRecentsVibratorEnable;
    public  static int  setLeoUesrRecentsVibrationLevel;
    public static native String  getLeoRecentsVibratorEnable();
    public static native String  getLeoRecentsVibrationLevel();

    public  static int  setLeoUesrNavigationBarGradientColorFour;
    public  static int  setLeoUesrNavigationBarGradientColorFive;
    public  static int  setLeoUesrNavigationBarGradientColorSix;
    public  static int  setLeoUesrNavigationBarGradientColorEnabled;
    public  static int  setLeoUesrNavigationBarBgWallpaperBlurEnabled;
    public static native String  getLeoNavigationBarGradientColorFour();
    public static native String  getLeoNavigationBarGradientColorFive();
    public static native String  getLeoNavigationBarGradientColorSix();
    public static native String  getLeoNavigationBarGradientColorEnabled();
    public static native String  getLeoNavigationBarBgWallpaperBlurEnabled();
    public  static int  setLeoUesrPowerMenuGradientColorFour;
    public  static int  setLeoUesrPowerMenuGradientColorFive;
    public  static int  setLeoUesrPowerMenuGradientColorSix;
    public  static int  setLeoUesrPowerMenuGradientColorEnabled;
    public  static int  setLeoUesrPowerMenuBgWallpaperBlurEnabled;
    public static native String  getLeoPowerMenuGradientColorFour();
    public static native String  getLeoPowerMenuGradientColorFive();
    public static native String  getLeoPowerMenuGradientColorSix();
    public static native String  getLeoPowerMenuGradientColorEnabled();
    public static native String  getLeoPowerMenuBgWallpaperBlurEnabled();

    public  static boolean  setLeoUesrDialingCityLocate;
    public static native String  getLeoDialingCityLocate();
    public  static int  setLeoUesrDialingCitySize;
    public static native String  getLeoDialingCitySize();
    public  static int  setLeoUesrDialingCityFont;
    public static native String  getLeoDialingCityFont();
    public  static int  setLeoUesrDialingCityColor;
    public static native String  getLeoDialingCityColor();
    public  static int  setLeoUesrDialingCityData;
    public static native String  getLeoDialingCityData();

    public  static int  setLeoUesrCityColorEnabled;
    public static native String  getLeoCityColorEnabled();
    public  static int  setLeoUesrDualAppEnabled;
    public static native String  getLeoDualAppEnabled();

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
    public static native String  getLeoDeviceInfo();
    public static native String  getLeoDeviceInfoSize();
    public static native String  getLeoDeviceInfoStyle();
    public static native String  getLeoDeviceInfoStyleTwo();
    public static native String  getLeoDeviceInfoStyleThree();
    public static native String  getLeoDeviceInfoStyleFour();
    public static native String  getLeoDeviceInfoStyleFive();
    public static native String  getLeoDeviceInfoOrientation();
    public static native String  getLeoDeviceInfoFont();
    public static native String  getLeoDeviceInfoFontTwo();
    public static native String  getLeoDeviceInfoFontThree();
    public static native String  getLeoDeviceInfoFontFour();
    public static native String  getLeoDeviceInfoFontFive();
    public static native String  getLeoDeviceInfoColor();
    public static native String  getLeoDeviceInfoColorTwo();
    public static native String  getLeoDeviceInfoColorThree();
    public static native String  getLeoDeviceInfoColorFour();
    public static native String  getLeoDeviceInfoColorFive();
    public static native String  getLeoDeviceInfoColorAll();
    public static native String  getLeoDeviceInfoALLColor();
    public static native String  getLeoDeviceInfoCustomColor();
    public static native String  getLeoDeviceInfoArray();
    public  static boolean  setLeoUesrStatusBarPolicyAlarm=true;
    public  static boolean  setLeoUesrStatusBarPolicyBluetooth=true;
    public  static boolean  setLeoUesrStatusBarPolicySound=true;
    public static native String  getLeoStatusBarPolicyAlarm();
    public static native String  getLeoStatusBarPolicyBluetooth();
    public static native String  getLeoStatusBarPolicySound();
    public  static int  setLeoUesrNetworkTrafficIconStyle;
    public static native String  getLeoNetworkTrafficIconStyle();
    public  static int  setLeoUesrNetworkTrafficIconColor;
    public static native String  getLeoNetworkTrafficIconColor();
    public  static int  setLeoUesrNetworkTrafficALLColor;
    public static native String  getLeoNetworkTrafficIconALLColor();
    public  static int  setLeoUesrNetworkTrafficALLColorEnabled;
    public static native String  getLeoNetworkTrafficIconALLColorEnabled();
    public  static int  setLeoUesrNetworkTrafficCustomColorEnabled;
    public static native String  getLeoNetworkTrafficIconCustomColorEnabled();
    public  static int  setLeoUesrHeaderSettingButtonColorEnabled;
    public  static int  setLeoUesrDataUsageColorEnabled;
    public static native String  getLeoHeaderSettingButtonColorEnabled();
    public static native String  getLeoDataUsageColorEnabled();
    public static boolean setLeoUesrKeyguardAodClockWidget;
    public static native String  getLeoKeyguardAodClockWidget();

    public static native String  getLeoKeyguardSingleClockColorCustom();
    public static native String  getLeoKeyguardSingleClockALLColor();
    public static native String  getLeoKeyguardSingleClockALLColorEnabled();
    public static native String  getLeoKeyguardSingleClockHourColor();
    public static native String  getLeoKeyguardSingleClockMinColor();
    public static native String  getLeoKeyguardSingleClockDateColor();
    public static native String  getLeoKeyguardSingleClockChinaTimeDetailColor();
    public static native String  getLeoKeyguardSingleClockColonColor();
    public static native String  getLeoKeyguardSingleClockLunarColor();
    public static native String  getLeoKeyguardSingleClockHourSize();
    public static native String  getLeoKeyguardSingleClockMinSize();
    public static native String  getLeoKeyguardSingleClockDateSize();
    public static native String  getLeoKeyguardSingleClockChinaTimeDetailSize();
    public static native String  getLeoKeyguardSingleClockColonSize();
    public static native String  getLeoKeyguardSingleClockLunarSize();
    public static native String  getLeoKeyguardSingleClockHourFont();
    public static native String  getLeoKeyguardSingleClockMinFont();
    public static native String  getLeoKeyguardSingleClockDateFont();
    public static native String  getLeoKeyguardSingleClockChinaTimeDetailFont();
    public static native String  getLeoKeyguardSingleClockLunarFont();

    public static native String  getLeoKeyguardSingleClockDetailsStyle();
    public static native String  getLeoKeyguardSingleClockDateWeekOrientation();
    public static native String  getLeoKeyguardSingleClockDateWeekSymbol();
    public static native String  getLeoKeyguardSingleClockDateWeekStyle();
    public static native String  getLeoKeyguardSingleClockDateWeekDisplay();
    public static native String  getLeoKeyguardSingleClockDateFormat();
    public static native String  getLeoKeyguardSingleClockDateLunarStyle();
    public static native String  getLeoKeyguardSingleClockDateConstellationLocationStyle();
    public static native String  getLeoKeyguardSingleClockDateConstellationSymbolStyle();
    public static native String  getLeoKeyguardSingleClockDateConstellationDisplay();
    public static native String  getLeoKeyguardSingleClockDateLunarString();
    public static native String  getLeoKeyguardSingleClockDisplay();
    public static native String  getLeoKeyguardSingleClockDateDisplay();
    public static native String  getLeoKeyguardSingleClockLunarDisplay();
    public static native String  getLeoKeyguardSingleClockTimeDetailDisplay();
    public static native String  getLeoKeyguardSingleClockHourVerticalSize();
    public static native String  getLeoKeyguardSingleClockMinVerticalSize();
    public static boolean setLeoUesrKeyguardSingleClockColorCustom=false;
    public static int setLeoUesrKeyguardSingleClockALLColor;
    public static int setLeoUesrKeyguardSingleClockALLColorEnabled;
    public static int setLeoUesrKeyguardSingleClockHourColor;
    public static int setLeoUesrKeyguardSingleClockMinColor;
    public static int setLeoUesrKeyguardSingleClockDateColor;
    public static int setLeoUesrKeyguardSingleClockChinaTimeDetailColor;
    public static int setLeoUesrKeyguardSingleClockColonColor;
    public static int setLeoUesrKeyguardSingleClockLunarColor;
    public static int setLeoUesrKeyguardSingleClockHourSize;
    public static int setLeoUesrKeyguardSingleClockMinSize;
    public static int setLeoUesrKeyguardSingleClockDateSize;
    public static int setLeoUesrKeyguardSingleClockChinaTimeDetailSize;
    public static int setLeoUesrKeyguardSingleClockColonSize;
    public static int setLeoUesrKeyguardSingleClockLunarSize;
    public static int setLeoUesrKeyguardSingleClockHourFont;
    public static int setLeoUesrKeyguardSingleClockMinFont;
    public static int setLeoUesrKeyguardSingleClockDateFont;
    public static int setLeoUesrKeyguardSingleClockChinaTimeDetailFont;
    public static int setLeoUesrKeyguardSingleClockLunarFont;

    public static int setLeoUesrKeyguardSingleClockDetailsStyle;
    public static int setLeoUesrKeyguardSingleClockDateWeekOrientation;
    public static int setLeoUesrKeyguardSingleClockDateWeekSymbol;
    public static int setLeoUesrKeyguardSingleClockDateWeekStyle;
    public static boolean setLeoUesrKeyguardSingleClockDateWeekDisplay=true;
    public static String setLeoUesrKeyguardSingleClockDateFormat;
    public static int setLeoUesrKeyguardSingleClockDateLunarStyle;
    public static int setLeoUesrKeyguardSingleClockDateConstellationLocationStyle;
    public static int setLeoUesrKeyguardSingleClockDateConstellationSymbolStyle;
    public static boolean setLeoUesrKeyguardSingleClockDateConstellationDisplay=false;
    public static String setLeoUesrKeyguardSingleClockDateLunarString;
    public static int setLeoUesrKeyguardSingleClockDisplay=1;
    public static int setLeoUesrKeyguardSingleClockDateDisplay=1;
    public static int setLeoUesrKeyguardSingleClockLunarDisplay;
    public static int setLeoUesrKeyguardSingleClockTimeDetailDisplay=1;
    public static int setLeoUesrKeyguardSingleClockHourVerticalSize;
    public static int setLeoUesrKeyguardSingleClockMinVerticalSize;
    public static int setLeoUesrHideSlotFocusIcon;
    public static int  setLeoUesrStatusBarCustomSignalSlotFocusIconStyle;
    public static native String  getLeoHideSlotFocusIcon();
    public static native String  getLeoStatusBarCustomSignalSlotFocusIconStyle();
    public static native String  getLeoStatusBarClockColorEnabled();
    public static int setLeoUesrStatusBarClockColorEnabled;
    public static int setLeoUesrStatusBarClockRandomColor;
    public static native String  getLeoStatusBarClockRandomColor();
    public static int setLeoUesrStatusBarNetworkTrafficRandomColor;
    public static native String  getLeoStatusBarNetworkTrafficRandomColor();
    public static int setLeoUesrStatusBarLogoColorEnabled;
    public static native String  getLeoStatusBarLogoColorEnabled();
    public static int setLeoUesrStatusBarLogoRandomColor;
    public static native String  getLeoStatusBarLogoRandomColor();
    public static int setLeoUesrStatusBarSignalRandomColor;
    public static native String  getLeoStatusBarSignalRandomColor();

    public static int setLeoUesrStatusBarTemperatureColorEnabled;
    public static native String  getLeoStatusBarTemperatureColorEnabled();
    public static int setLeoUesrStatusBarTemperatureRandomColor;
    public static native String  getLeoStatusBarTemperatureRandomColor();
    public static int setLeoUesrStatusBarCarrierColorEnabled;
    public static native String  getLeoStatusBarCarrierColorEnabled();
    public static int setLeoUesrStatusBarCarrierRandomColor;
    public static native String  getLeoStatusBarCarrierRandomColor();
    public static int setLeoUesrStatusBarWeatherColorEnabled;
    public static native String  getLeoStatusBarWeatherColorEnabled();
    public static int setLeoUesrStatusBarWeatherRandomColor;
    public static native String  getLeoStatusBarWeatherRandomColor();

    public static int setLeoUesrStatusBarMainBatteryRandomColor;
    public static native String  getLeoStatusBarMainBatteryRandomColor();

    public static int setLeoUesrKeyguardCarrierColorEnabled;
    public static native String  getLeoCarrierKeyguardColorEnabled();
    public static int setLeoUesrKeyguardCarrierRandomColor;
    public static native String  getLeoCarrierKeyguardRandomColor();

    public static int setLeoUesrKeyguardSingleClockRandomColor;
    public static native String  getLeoKeyguardSingleClockRandomColor();

    public static int setLeoUesrHeaderDateRandomColor;
    public static native String  getLeoHeaderDateRandomColor();
    public static int setLeoUesrHeaderTextClockRandomColor;
    public static native String  getLeoHeaderTextClockRandomColor();
    public static int setLeoUesrHeaderSettingButtonRandomColor;
    public static native String  getLeoHeaderSettingButtonRandomColor();
    public static int setLeoUesrDataUsageRandomColor;
    public static native String  getLeoDataUsageRandomColor();
    public static int setLeoUesrQSLabelRandomColor;
    public static native String  getLeoQSLabelRandomColor();
    public static native String  getLeoQSbuttonRandomColor();

    public static int setLeoUesrDeviceInfoRandomColor;
    public static native String  getLeoDeviceInfoRandomColor();

    public static int setLeoUesrPulldownCarrierColorEnabled;
    public static native String  getLeoPulldownCarrierColorEnabled();

    public static int setLeoUesrPulldownCarrierRandomColor;
    public static native String  getLeoPulldownCarrierRandomColor();


    public static int setLeoUesrPulldownOutdoorColorEnabled;
    public static native String  getLeoPulldownOutdoorColorEnabled();
    public static int setLeoUesrPulldownOutdoorCloseEnabled;
    public static native String  getLeoPulldownOutdoorCloseEnabled();
    public static int setLeoUesrPulldownOutdoorRandomColor;
    public static native String  getLeoPulldownOutdoorRandomColor();


    public static native String  getLeoNotificationItemShowBG();
    public static native String  getLeoNotificationItemBgBasicColor();
    public  static boolean setLeoUesrNotificationItemShowBG;
    public  static int setLeoUesrNotificationItemBgBasicColor;
    public static int setLeoUesrNotificationItemBlurWallpaperColorEnabled;
    public static int    setLeoUesrNotificationItemStrokeDashColor;
    public static int    setLeoUesrNotificationItemStrokeThickness;
    public static int    setLeoUesrNotificationItemStrokeDashWidth;
    public static int    setLeoUesrNotificationItemStrokeDashGap;
    public static boolean  setLeoUesrNotificationItemStrokeEnabled;
    public  static int setLeoUesrNotificationItemBGStyle;
    public  static int setLeoUesrNotificationItemGradientBgStartColor;
    public  static int setLeoUesrNotificationItemGradientBgCenterColor;
    public  static int setLeoUesrNotificationItemGradientBgEndColor;
    public  static int setLeoUesrNotificationItemGradientEnableCenterColor;
    public  static int setLeoUesrNotificationItemBgGradientBgStyle;
    public  static int setLeoUesrNotificationItemGradientBgType;
    public  static int setLeoUesrNotificationItemGradientBackGroundCornerRadius;
    public  static int setLeoUesrNotificationItemGradientBackGroundColorRadius;
    public  static String setLeoUesrNotificationItemBgWallpaper;
    public  static int setLeoUesrNotificationItemWallpaperColorEnable;
    public  static int setLeoUesrNotificationItemWallpaperColor;
    public  static int setLeoUesrNotificationItemBlurBgDegree;
    public  static int  setLeoUesrNotificationItemGradientColorFour;
    public  static int  setLeoUesrNotificationItemGradientColorFive;
    public  static int  setLeoUesrNotificationItemGradientColorSix;
    public  static int  setLeoUesrNotificationItemGradientColorEnabled;
    public  static int  setLeoUesrNotificationItemBgWallpaperBlurEnabled;
    public static native String  getLeoNotificationItemBgGradientBgStyle();
    public static native String  getLeoNotificationItemGradientBgType();
    public static native String  getLeoNotificationItemGradientBackGroundCornerRadius();
    public static native String  getLeoNotificationItemGradientBackGroundColorRadius();
    public static native String  getLeoNotificationItemBgWallpaper();
    public static native String  getLeoNotificationItemWallpaperColorEnable();
    public static native String  getLeoNotificationItemWallpaperColor();
    public static native String  getLeoNotificationItemBGStyle();
    public static native String  getLeoNotificationItemGradientBgStartColor();
    public static native String  getLeoNotificationItemGradientBgCenterColor();
    public static native String  getLeoNotificationItemGradientBgEndColor();
    public static native String  getLeoNotificationItemGradientEnableCenterColor();
    public static native String   getLeoNotificationItemBlurBgDegree();
  ;
    public static native String  getLeoNotificationItemBlurWallpaperColor();
    public static native String  getLeoNotificationItemStrokeDashColor();
    public static native String  getLeoNotificationItemStrokeThickness();
    public static native String  getLeoNotificationItemStrokeDashWidth();
    public static native String  getLeoNotificationItemStrokeDashGap();
    public static native String  getLeoNotificationItemStrokeEnabled();
    public static native String  getLeoNotificationItemGradientColorFour();
    public static native String  getLeoNotificationItemGradientColorFive();
    public static native String  getLeoNotificationItemGradientColorSix();
    public static native String  getLeoNotificationItemGradientColorEnabled();
    public static native String  getLeoNotificationItemBgWallpaperBlurEnabled();

    public static int setLeoUesrBottomBarViewColorEnabled;
    public static native String  getLeoBottomBarViewColorEnabled();

    public static int setLeoUesrBottomBarViewAllColor;
    public static native String  getLeoBottomBarViewAllColor();

    public static int setLeoUesrottomBarViewAllColorEnabled;
    public static native String  getLeoBottomBarViewAllColorEnabled();

    public static int setLeoUesrBottomBarViewRandomColor;
    public static native String  getLeoBottomBarViewRandomColor();

    public static int setLeoUesrNavIconRandomColor;
    public static native String  getLeoNavIconRandomColor();

    public static int  setLeoUesrKeyguardSingleClockTimeSecondDisplay;
    public static native String  getLeoKeyguardSingleClockTimeSecondDisplay();
    public static int setLeoUesrKeyguardSingleClockTimeSecondFont;
    public static native String  getKeyguardSingleClockTimeSecondFont();
    public static int setLeoUesrKeyguardSingleClockTimeSecondSize;
    public static native String  getLeoKeyguardSingleClockTimeSecondSize();
    public static int setLeoUesrKeyguardSingleClockTimeSecondColor;
    public static native String  getLeoKeyguardSingleClockTimeSecondColor();
    public  static int  setLeoUesrToggleKeysSAction=0;
    public  static int  setLeoUesrTogglePowerKeysSAction=0;
    public static native String getLeoTogglePower();

    public  static int  setLeoUesrToggleLauncherTextColor=0;
    public static native String getLeoToggleLauncherTextColor();
    public  static int  setLeoUesrLauncherTextColor;
    public static native String getLeoLauncherTextColor();
    public  static int  setLeoUesrLauncherTextRandomColor=0;
    public static native String getLeoLauncherTextRandomColor();
    public  static int  setLeoUesrLauncherTextFont=0;
    public static native String getLeoLauncherTextFont();

    public  static boolean  setLeoUesrEnabledBrightnessColorCustom=false;
    public static native String getLeoEnabledBrightnessColorCustom();
    public  static int  setLeoUesrEnabledBrightnessAllColor=0;
    public static native String getLeoEnabledBrightnessAllColor();
    public  static int  setLeoUesrBrightnessAllColor;
    public static native String getLeoBrightnessAllColor();
    public  static int  setLeoUesrBrightnessIconColor;
    public static native String getLeoBrightnessIconColor();
    public  static int  setLeoUesrBrightnessDtailIconColor;
    public static native String getLeoBrightnessDtailIconColor();
    public  static int setLeoUesrBrightnessRandomColor=0;
    public static native String getLeoBrightnessRandomColor();
    public  static String setLeoUesrPowerMenuItem;
    public static native String  getLeoPowerMenuItem();
    public  static int setLeoUesrPowerMenuItemOrder=0;
    public static native String getLeoPowerMenuItemOrder();

    public  static int setLeoUesrBrightnessBGColor;
    public static native String getLeoBrightnessBGColor();
    public  static int setLeoUesrBrightnessActivityColor;
    public static native String getLeoBrightnessActivityColor();
    public  static int setLeoUesrBrightnessControlColor;
    public static native String getLeoBrightnessControlColor();
    public  static int setLeoUesrBrightnessMaxColor;
    public static native String getLeoBrightnessMaxColor();
    public  static boolean setLeoUesrMultiSIMDisplay=true;
    public  static boolean setLeoUesrMultiSIMColorEnabled=false;
    public  static int setLeoUesrMultiSIMALLColorEnabled=0;
    public  static int setLeoUesrMultiSIMALLColor;
    public  static int setLeoUesrMultiSIMCallColor;
    public  static int setLeoUesrMultiSIMmMMSColor;
    public  static int setLeoUesrMultiSIMDataColor;
    public  static int setLeoUesrMultiSIMRandomColor;
    public  static int setLeoUesrMultiSIMTextFont;

    public static native String getLeoMultiSIMDisplay();
    public static native String getLeoMultiSIMColorEnabled();
    public static native String getLeoMultiSIMALLColorEnabled();
    public static native String getLeoMultiSIMALLColor();
    public static native String getLeoMultiSIMCallColor();
    public static native String getLeoMultiSIMmMMSColor();
    public static native String getLeoMultiSIMDataColor();
    public static native String getLeoMultiSIMRandomColor();
    public static native String getLeoMultiSIMTextFont();
	
	 public static int  setLeoUesrMavLandscapeDisabled;
    public static int  setLeoUesrMavPortraitDisabled;
    public static native String  getLeoMavLandscapeDisabled();
    public static native String  getLeoMavPortraitDisabled();
    public  static boolean setLeoUesrDisabledLockPulldown=false;
    public static native String  getLeoDisabledLockPulldown();

    public  static boolean setLeoUesrNotificationItemEnabledCircular=false;
    public static native String  getLeoNotificationItemEnabledCircular();
    public  static int setLeoUesrNotificationItemCircularLevel;
    public static native String  getLeoNotificationItemCircularLevel();



    public  static int setLeoUesrNotificationTransparencyLevel;
    public static native String  getLeoNotificationTransparencyLevel();

    public  static boolean setLeoUesrNotificationEnabledBG;
    public static native String  getLeoNotificationEnabledBG();

    public  static boolean setLeoUesrFullscreenPowerMenu;
    public static native String  getLeoFullscreenPowerMenu();

    public  static boolean setLeoUesrFloatingDisplay;
    public static native String  getLeoFloatingDisplay();

    public  static int setLeoUesrFloatingDownSlideDelete;
    public static native String  getLeoFloatingDownSlideDelete();
    public  static int setLeoUesrFloatingVibrate;
    public static native String  getLeoFloatingVibrate();
    public  static int setLeoUesrFloatingVibratelevel;
    public static native String  getLeoFloatingVibratelevel();

    public  static int setLeoUesrFloatingLeftStyle;
    public static native String  getLeoFloatingLeftStyle();
    public  static int setLeoUesrFloatingRightStyle;
    public static native String  getLeoFloatingRightStyle();
    public  static int setLeoUesrFloatingDownStyle;
    public static native String  getLeoFloatingDownStyle();
    public  static int setLeoUesrFloatingUPStyle;
    public static native String  getLeoFloatingUPStyle();
    public  static int setLeoUesrFloatingClickStyle;
    public static native String  getLeoFloatingClickStyle();

    public  static String setLeoUesrFloatingLeftString;
    public static native String  getLeoFloatingLeftString();
    public  static String setLeoUesFloatingRightString;
    public static native String  getLeoFloatingRightString();
    public  static String setLeoUesrFloatingDownString;
    public static native String  getLeoFloatingDownString();
    public  static String setLeoUesrFloatingUPString;
    public static native String  getLeoFloatingUPString();
    public  static String setLeoUesrFloatingClickString;
    public static native String  getLeoFloatingClickString();

    public  static int setLeoUesrDisableStockBatteryIcon;
    public static native String  getLeoDisableStockBatteryIcon();








    public  static int setLeoUesrKeyguardWeatherEnabled;
    public  static int setLeoUesrKeyguardWeatherLocationEnabled;
    public  static int setLeoUesrKeyguardWeatherCurrentTempEnabled;
    public  static int setLeoUesrKeyguardWeatherLowTempEnabled;
    public  static int setLeoUesrKeyguardWeatherHighTempEnabled;
    public  static int setLeoUesrKeyguardWeatherAQIEnabled;
    public  static int setLeoUesrKeyguardWeatherStateEnabled;
    public  static int setLeoUesrKeyguardWeatherSunriseEnabled;
    public  static int setLeoUesrKeyguardWeatherSunsetEnabled;

    public  static int setLeoUesrKeyguardWeatherLocationFont;
    public  static int setLeoUesrKeyguardWeatherCurrentTempFont;
    public  static int setLeoUesrKeyguardWeatherLowTempFont;
    public  static int setLeoUesrKeyguardWeatherHighTempFont;
    public  static int setLeoUesrKeyguardWeatherAQIFont;
    public  static int setLeoUesrKeyguardWeatherStateFont;
    public  static int setLeoUesrKeyguardWeatherSunriseFont;
    public  static int setLeoUesrKeyguardWeatherSunsetFont;

    public  static int setLeoUesrKeyguardWeatherAllColorEnabled;
    public  static int setLeoUesrKeyguardWeatherAllColor;
    public  static boolean setLeoUesrKeyguardWeatherColorEnabled;
    public  static int setLeoUesrKeyguardWeatherLocationColor;
    public  static int setLeoUesrKeyguardWeatherCurrentTempColor;
    public  static int setLeoUesrKeyguardWeatherLowTempColor;
    public  static int setLeoUesrKeyguardWeatherHighTempColor;
    public  static int setLeoUesrKeyguardWeatherAQIColor;
    public  static int setLeoUesrKeyguardWeatherStateColor;
    public  static int setLeoUesrKeyguardWeatherSunriseColor;
    public  static int setLeoUesrKeyguardWeatherSunsetColor;


    public static native String  getLeoKeyguardWeatherEnabled();
    public static native String  getLeoKeyguardWeatherLocationEnabled();
    public static native String  getLeoKeyguardWeatherCurrentTempEnabled();
    public static native String  getLeoKeyguardWeatherLowTempEnabled();
    public static native String  getLeoKeyguardWeatherHighTempEnabled();
    public static native String  getLeoKeyguardWeatherAQIEnabled();
    public static native String  getLeoKeyguardWeatherStateEnabled();
    public static native String  getLeoKeyguardWeatherSunriseEnabled();
    public static native String  getLeoKeyguardWeatherSunsetEnabled();

    public static native String  getLeoKeyguardWeatherLocationFont();
    public static native String  getLeoKeyguardWeatherCurrentTempFont();
    public static native String  getLeoKeyguardWeatherLowTempFont();
    public static native String  getLeoKeyguardWeatherHighTempFont();
    public static native String  getLeoKeyguardWeatherAQIFont();
    public static native String  getLeoKeyguardWeatherStateFont();
    public static native String  getLeoKeyguardWeatherSunriseFont();
    public static native String  getLeoKeyguardWeatherSunsetFont();

    public static native String  getLeoKeyguardWeatherAllColorEnabled();
    public static native String  getLeoKeyguardWeatherAllColor();
    public static native String  getLeoKeyguardWeatherColorEnabled();
    public static native String  getLeoKeyguardWeatherLocationColor();
    public static native String  getLeoKeyguardWeatherCurrentTempColor();
    public static native String  getLeoKeyguardWeatherLowTempColor();
    public static native String  getLeoKeyguardWeatherHighTempColor();
    public static native String  getLeoKeyguardWeatherAQIColor();
    public static native String  getLeoKeyguardWeatherStateColor();
    public static native String  getLeoKeyguardWeatherSunriseColor();
    public static native String  getLeoKeyguardWeatherSunsetColor();
    public static int mDefaultKeyguardSingleClockColor=Color.parseColor("#fffafafa");

    public  static int setLeoUesrStatusBarGestureActionZoneWidth;
    public static native String  getLeoStatusBarGestureActionZoneWidth();
    public static void LeoSettings(Context context){
        if (getCode().equals(CodeVersions())) {//判断ROM NAME
        Log.v(AUTHOR, "LeoRom Settings" );
        if (mS .equals(ryid())) {//判断ROM NAME
            int mBackgroundWallpaperColor=mWhiteColor;
            int DefaultQSBackground=Color.parseColor("#fffafafa");
            if (OS .equals(OKS())) {//判断ID
                Log.v("LeoRom Settings" , "现在开始 LeoROM 设置" );
                setLeoUesrStatusBarGestureActionZoneWidth= getLeoInt(context,
                        getLeoStatusBarGestureActionZoneWidth(),180);
                setLeoUesrKeyguardWeatherEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherEnabled(),1);
                setLeoUesrKeyguardWeatherLocationEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherLocationEnabled(),1);
                setLeoUesrKeyguardWeatherCurrentTempEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherCurrentTempEnabled(),1);
                setLeoUesrKeyguardWeatherLowTempEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherLowTempEnabled(),1);
                setLeoUesrKeyguardWeatherHighTempEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherHighTempEnabled(),1);
                setLeoUesrKeyguardWeatherAQIEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherAQIEnabled(),1);
                setLeoUesrKeyguardWeatherStateEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherStateEnabled(),1);
                setLeoUesrKeyguardWeatherSunriseEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherSunriseEnabled(),1);
                setLeoUesrKeyguardWeatherSunsetEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherSunsetEnabled(),1);

                setLeoUesrKeyguardWeatherLocationFont= getLeoInt(context,
                        getLeoKeyguardWeatherLocationFont(),0);
                setLeoUesrKeyguardWeatherCurrentTempFont= getLeoInt(context,
                        getLeoKeyguardWeatherCurrentTempFont(),0);
                setLeoUesrKeyguardWeatherLowTempFont= getLeoInt(context,
                        getLeoKeyguardWeatherLowTempFont(),0);
                setLeoUesrKeyguardWeatherHighTempFont= getLeoInt(context,
                        getLeoKeyguardWeatherHighTempFont(),0);
                setLeoUesrKeyguardWeatherAQIFont= getLeoInt(context,
                        getLeoKeyguardWeatherAQIFont(),0);
                setLeoUesrKeyguardWeatherStateFont= getLeoInt(context,
                        getLeoKeyguardWeatherStateFont(),0);
                setLeoUesrKeyguardWeatherSunriseFont= getLeoInt(context,
                        getLeoKeyguardWeatherSunriseFont(),0);
                setLeoUesrKeyguardWeatherSunsetFont= getLeoInt(context,
                        getLeoKeyguardWeatherSunsetFont(),0);

                setLeoUesrKeyguardWeatherAllColorEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherAllColorEnabled(),0);
                setLeoUesrKeyguardWeatherAllColor= getLeoInt(context,
                        getLeoKeyguardWeatherAllColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardWeatherColorEnabled= getLeoInt(context,
                        getLeoKeyguardWeatherColorEnabled(),0)==1;
                setLeoUesrKeyguardWeatherLocationColor= getLeoInt(context,
                        getLeoKeyguardWeatherLocationColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardWeatherCurrentTempColor= getLeoInt(context,
                        getLeoKeyguardWeatherCurrentTempColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardWeatherLowTempColor= getLeoInt(context,
                        getLeoKeyguardWeatherLowTempColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardWeatherHighTempColor= getLeoInt(context,
                        getLeoKeyguardWeatherHighTempColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardWeatherAQIColor= getLeoInt(context,
                        getLeoKeyguardWeatherAQIColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardWeatherStateColor= getLeoInt(context,
                        getLeoKeyguardWeatherStateColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardWeatherSunriseColor= getLeoInt(context,
                        getLeoKeyguardWeatherSunriseColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardWeatherSunsetColor= getLeoInt(context,
                        getLeoKeyguardWeatherSunsetColor(),mDefaultKeyguardSingleClockColor);











                setLeoUesrDisableStockBatteryIcon= getLeoInt(context,
                        getLeoDisableStockBatteryIcon(),0);
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

                /////////////////////////////////////////////////////////////////////////////////////////////////
                setLeoUesrFullscreenPowerMenu=getLeoInt(context,getLeoFullscreenPowerMenu(),0)==1;
                setLeoUesrNotificationEnabledBG=getLeoInt(context,getLeoNotificationEnabledBG(),0)==1;

                setLeoUesrNotificationTransparencyLevel= getLeoInt(context,
                        getLeoNotificationTransparencyLevel(),0);

                setLeoUesrNotificationItemEnabledCircular=getLeoInt(context,getLeoNotificationItemEnabledCircular(),0)==1;
                setLeoUesrNotificationItemCircularLevel= getLeoInt(context,
                        getLeoNotificationItemCircularLevel(),0);


                setLeoUesrDisabledLockPulldown=getLeoInt(context,getLeoDisabledLockPulldown(),0)==1;
				   setLeoUesrMavLandscapeDisabled= getLeoInt(context,
                        getLeoMavLandscapeDisabled(),0);
                setLeoUesrMavPortraitDisabled= getLeoInt(context,
                        getLeoMavPortraitDisabled(),0);
						
                setLeoUesrMultiSIMDisplay=getLeoInt(context,getLeoMultiSIMDisplay(),1) != 0;
                setLeoUesrMultiSIMColorEnabled=getLeoInt(context,getLeoMultiSIMColorEnabled(),0)==1;
                setLeoUesrMultiSIMALLColorEnabled=getLeoInt(context, getLeoMultiSIMALLColorEnabled(),0);
                setLeoUesrMultiSIMALLColor=getLeoInt(context, getLeoMultiSIMALLColor(),mHeaderDateColor);
                setLeoUesrMultiSIMCallColor=getLeoInt(context, getLeoMultiSIMCallColor(),mHeaderDateColor);
                setLeoUesrMultiSIMmMMSColor=getLeoInt(context, getLeoMultiSIMmMMSColor(),mHeaderDateColor);
                setLeoUesrMultiSIMDataColor=getLeoInt(context, getLeoMultiSIMDataColor(),mHeaderDateColor);
                setLeoUesrMultiSIMRandomColor=getLeoInt(context, getLeoMultiSIMRandomColor(),0);
                setLeoUesrMultiSIMTextFont=getLeoInt(context, getLeoMultiSIMTextFont(),0);

                setLeoUesrEnabledBrightnessColorCustom = getLeoInt(context, getLeoEnabledBrightnessColorCustom(), 0)==1;
                setLeoUesrEnabledBrightnessAllColor=getLeoInt(context, getLeoEnabledBrightnessAllColor(),0);
                setLeoUesrBrightnessAllColor=getLeoInt(context, getLeoBrightnessAllColor(),mHeaderDateColor);
                setLeoUesrBrightnessIconColor=getLeoInt(context, getLeoBrightnessIconColor(),mHeaderDateColor);
                setLeoUesrBrightnessDtailIconColor=getLeoInt(context, getLeoBrightnessDtailIconColor(),mHeaderDateColor);
                setLeoUesrBrightnessRandomColor=getLeoInt(context, getLeoBrightnessRandomColor(),0);

                setLeoUesrBrightnessBGColor=getLeoInt(context, getLeoBrightnessBGColor(),Color.parseColor("#ffc2cbce"));
                setLeoUesrBrightnessActivityColor=getLeoInt(context,  getLeoBrightnessActivityColor(),Color.parseColor("#ff35b1ea"));
                setLeoUesrBrightnessControlColor=getLeoInt(context, getLeoBrightnessControlColor(),Color.parseColor("#ff35b1ea"));
                setLeoUesrBrightnessMaxColor=getLeoInt(context,getLeoBrightnessMaxColor(),Color.parseColor("#fff7c0bd"));


                setLeoUesrPowerMenuItem=getLeoString(context, getLeoPowerMenuItem());
                setLeoUesrPowerMenuItemOrder=getLeoInt(context, getLeoPowerMenuItemOrder(),0);


                setLeoUesrToggleLauncherTextColor=getLeoInt(context, getLeoToggleLauncherTextColor(),0);

                setLeoUesrLauncherTextColor=getLeoInt(context, getLeoLauncherTextColor(),-1);

                setLeoUesrLauncherTextRandomColor=getLeoInt(context,getLeoLauncherTextRandomColor(),0);

                setLeoUesrLauncherTextFont=getLeoInt(context, getLeoLauncherTextFont(),0);



                setLeoUesrTogglePowerKeysSAction=getLeoInt(context, getLeoTogglePower(),0);

                setLeoUesrPulldownCarrier=getLeoInt(context,
                        getLeoPulldownCarrier(), 0);
                setLeoUesrToggleKeysSAction=getLeoInt(context, getLeoTogglePullDownCarrier(),0);

                setLeoUesrBottomBarViewColorEnabled= getLeoInt(context,
                        getLeoBottomBarViewColorEnabled(),0);
                setLeoUesrBottomBarViewAllColor= getLeoInt(context,
                        getLeoBottomBarViewAllColor(),0);
                setLeoUesrottomBarViewAllColorEnabled= getLeoInt(context,
                        getLeoBottomBarViewAllColorEnabled(),0);
                setLeoUesrBottomBarViewRandomColor= getLeoInt(context,
                        getLeoBottomBarViewRandomColor(),0);
                setLeoUesrNavIconRandomColor= getLeoInt(context,
                        getLeoNavIconRandomColor(),0);


                setLeoUesrNotificationItemBgGradientBgStyle=getLeoInt(context,
                        getLeoNotificationItemBgGradientBgStyle() ,0);
                setLeoUesrNotificationItemGradientBgType=getLeoInt(context,
                        getLeoNotificationItemGradientBgType() ,0);
                setLeoUesrNotificationItemGradientBackGroundCornerRadius=getLeoInt(context,
                        getLeoNotificationItemGradientBackGroundCornerRadius() ,0);
                setLeoUesrNotificationItemGradientBackGroundColorRadius=getLeoInt(context,
                        getLeoNotificationItemGradientBackGroundColorRadius() ,360);
                setLeoUesrNotificationItemBgWallpaper = getLeoString(context,
                        getLeoNotificationItemBgWallpaper ());
                setLeoUesrNotificationItemWallpaperColorEnable=getLeoInt(context,
                        getLeoNotificationItemWallpaperColorEnable() ,0);
                setLeoUesrNotificationItemWallpaperColor=getLeoInt(context,
                        getLeoNotificationItemWallpaperColor() , mBackgroundWallpaperColor);
                setLeoUesrNotificationItemBGStyle = getLeoInt(context,
                        getLeoNotificationItemBGStyle (), 0);
                setLeoUesrNotificationItemGradientBgStartColor = getLeoInt(context,
                        getLeoNotificationItemGradientBgStartColor (),DefaultQSBackground);
                setLeoUesrNotificationItemGradientBgCenterColor = getLeoInt(context,
                        getLeoNotificationItemGradientBgCenterColor() ,DefaultQSBackground);
                setLeoUesrNotificationItemGradientBgEndColor = getLeoInt(context,
                        getLeoNotificationItemGradientBgEndColor() , DefaultQSBackground);
                setLeoUesrNotificationItemGradientEnableCenterColor = getLeoInt(context,
                        getLeoNotificationItemGradientEnableCenterColor()  , 0);
                setLeoUesrNotificationItemBlurBgDegree=getLeoInt(context,
                        getLeoNotificationItemBlurBgDegree (),12);
                setLeoUesrNotificationItemStrokeEnabled = getLeoInt(context, getLeoNotificationItemStrokeEnabled(), 0)==1;
                setLeoUesrNotificationItemStrokeDashGap=getLeoInt(context, getLeoNotificationItemStrokeDashGap(),6);
                setLeoUesrNotificationItemStrokeDashWidth=getLeoInt(context,getLeoNotificationItemStrokeDashWidth(),3);
                setLeoUesrNotificationItemStrokeThickness= getLeoInt(context, getLeoNotificationItemStrokeThickness(),6);
                setLeoUesrNotificationItemStrokeDashColor=getLeoInt(context, getLeoNotificationItemStrokeDashColor(), mDefaultStrokeColor);
                setLeoUesrNotificationItemBlurWallpaperColorEnabled= getLeoInt(context, getLeoNotificationItemBlurWallpaperColor(),0);
                setLeoUesrNotificationItemGradientColorFour = getLeoInt(context,
                        getLeoNotificationItemGradientColorFour()  , DefaultQSBackground);
                setLeoUesrNotificationItemGradientColorFive = getLeoInt(context,
                        getLeoNotificationItemGradientColorFive()  , DefaultQSBackground);
                setLeoUesrNotificationItemGradientColorSix = getLeoInt(context,
                        getLeoNotificationItemGradientColorSix()  , DefaultQSBackground);
                setLeoUesrNotificationItemGradientColorEnabled = getLeoInt(context,
                        getLeoNotificationItemGradientColorEnabled()  , 0);
                setLeoUesrNotificationItemBgWallpaperBlurEnabled = getLeoInt(context,
                        getLeoNotificationItemBgWallpaperBlurEnabled()  , 0);




                setLeoUesrPulldownOutdoorColorEnabled= getLeoInt(context,
                        getLeoPulldownOutdoorColorEnabled(),0);
                setLeoUesrPulldownOutdoorCloseEnabled= getLeoInt(context,
                        getLeoPulldownOutdoorCloseEnabled(),0);
                setLeoUesrPulldownOutdoorRandomColor= getLeoInt(context,
                        getLeoPulldownOutdoorRandomColor(),0);




                setLeoUesrDeviceInfoRandomColor= getLeoInt(context,
                        getLeoDeviceInfoRandomColor(),0);
                setLeoUesrPulldownCarrierColorEnabled= getLeoInt(context,
                        getLeoPulldownCarrierColorEnabled(),0);
                setLeoUesrPulldownCarrierRandomColor= getLeoInt(context,
                        getLeoPulldownCarrierRandomColor(),0);

                setLeoUesrHeaderDateRandomColor= getLeoInt(context,
                        getLeoHeaderDateRandomColor(),0);
                setLeoUesrHeaderTextClockRandomColor= getLeoInt(context,
                        getLeoHeaderTextClockRandomColor(),0);
                setLeoUesrHeaderSettingButtonRandomColor= getLeoInt(context,
                        getLeoHeaderSettingButtonRandomColor(),0);
                setLeoUesrDataUsageRandomColor= getLeoInt(context,
                        getLeoDataUsageRandomColor(),0);
                setLeoUesrQSLabelRandomColor= getLeoInt(context,
                        getLeoQSLabelRandomColor(),0);



                setLeoUesrKeyguardSingleClockRandomColor= getLeoInt(context,
                        getLeoKeyguardSingleClockRandomColor(),0);


                setLeoUesrKeyguardCarrierColorEnabled= getLeoInt(context,
                        getLeoCarrierKeyguardColorEnabled(),0);
                setLeoUesrKeyguardCarrierRandomColor= getLeoInt(context,
                        getLeoCarrierKeyguardRandomColor(),0);

                setLeoUesrStatusBarMainBatteryRandomColor= getLeoInt(context,
                        getLeoStatusBarMainBatteryRandomColor(),0);
                setLeoUesrStatusBarTemperatureColorEnabled= getLeoInt(context,
                        getLeoStatusBarTemperatureColorEnabled(),0);
                setLeoUesrStatusBarTemperatureRandomColor= getLeoInt(context,
                        getLeoStatusBarTemperatureRandomColor(),0);
                setLeoUesrStatusBarCarrierColorEnabled= getLeoInt(context,
                        getLeoStatusBarCarrierColorEnabled(),0);
                setLeoUesrStatusBarCarrierRandomColor= getLeoInt(context,
                        getLeoStatusBarCarrierRandomColor(),0);
                setLeoUesrStatusBarWeatherColorEnabled= getLeoInt(context,
                        getLeoStatusBarWeatherColorEnabled(),0);
                setLeoUesrStatusBarWeatherRandomColor= getLeoInt(context,
                        getLeoStatusBarWeatherRandomColor(),0);


                setLeoUesrStatusBarLogoColorEnabled= getLeoInt(context,
                        getLeoStatusBarLogoColorEnabled(),0);
                setLeoUesrStatusBarLogoRandomColor= getLeoInt(context,
                        getLeoStatusBarLogoRandomColor(),0);
                setLeoUesrStatusBarSignalRandomColor= getLeoInt(context,
                        getLeoStatusBarSignalRandomColor(),0);
                setLeoUesrStatusBarNetworkTrafficRandomColor= getLeoInt(context,
                        getLeoStatusBarNetworkTrafficRandomColor(),0);
                setLeoUesrStatusBarClockRandomColor= getLeoInt(context,
                        getLeoStatusBarClockRandomColor(),0);
                setLeoUesrStatusBarClockColorEnabled= getLeoInt(context,
                        getLeoStatusBarClockColorEnabled(),0);
                setLeoUesrStatusBarCustomSignalSlotFocusIconStyle= getLeoInt(context,
                        getLeoStatusBarCustomSignalSlotFocusIconStyle(),0);
                setLeoUesrHideSlotFocusIcon =getLeoInt(context,getLeoHideSlotFocusIcon(), 1) != 0 ? 1 : 0;
                setLeoUesrKeyguardSingleClockDisplay= getLeoInt(context,
                        getLeoKeyguardSingleClockDisplay(),1);
                setLeoUesrKeyguardSingleClockDateDisplay= getLeoInt(context,
                        getLeoKeyguardSingleClockDateDisplay(),1);
                setLeoUesrKeyguardSingleClockLunarDisplay= getLeoInt(context,
                        getLeoKeyguardSingleClockLunarDisplay(),1);
                setLeoUesrKeyguardSingleClockTimeDetailDisplay= getLeoInt(context,
                        getLeoKeyguardSingleClockTimeDetailDisplay(),1);

                setLeoUesrKeyguardSingleClockTimeSecondDisplay= getLeoInt(context,
                        getLeoKeyguardSingleClockTimeSecondDisplay(),1);


                setLeoUesrKeyguardSingleClockDateConstellationSymbolStyle= getLeoInt(context,
                        getLeoKeyguardSingleClockDateConstellationSymbolStyle(),0);
                setLeoUesrKeyguardSingleClockDateLunarStyle= getLeoInt(context,
                        getLeoKeyguardSingleClockDateLunarStyle(),0);
                setLeoUesrKeyguardSingleClockDateConstellationLocationStyle= getLeoInt(context,
                        getLeoKeyguardSingleClockDateConstellationLocationStyle(),0);
                setLeoUesrKeyguardSingleClockDateConstellationDisplay= getLeoInt(context,
                        getLeoKeyguardSingleClockDateConstellationDisplay() , 0) == 1;
                setLeoUesrKeyguardSingleClockDateLunarString=getLeoString(context,
                        getLeoKeyguardSingleClockDateLunarString());


                setLeoUesrKeyguardSingleClockDetailsStyle= getLeoInt(context,
                        getLeoKeyguardSingleClockDetailsStyle(),0);
                setLeoUesrKeyguardSingleClockDateWeekOrientation= getLeoInt(context,
                        getLeoKeyguardSingleClockDateWeekOrientation(),0);
                setLeoUesrKeyguardSingleClockDateWeekSymbol= getLeoInt(context,
                        getLeoKeyguardSingleClockDateWeekSymbol(),1);
                setLeoUesrKeyguardSingleClockDateWeekStyle= getLeoInt(context,
                        getLeoKeyguardSingleClockDateWeekStyle(),0);
                setLeoUesrKeyguardSingleClockDateWeekDisplay= getLeoInt(context,
                        getLeoKeyguardSingleClockDateWeekDisplay() , 1) != 0;
                setLeoUesrKeyguardSingleClockDateFormat=getLeoString(context,
                        getLeoKeyguardSingleClockDateFormat());


                setLeoUesrKeyguardSingleClockTimeSecondFont= getLeoInt(context,
                        getKeyguardSingleClockTimeSecondFont(),0);
                setLeoUesrKeyguardSingleClockHourFont= getLeoInt(context,
                        getLeoKeyguardSingleClockHourFont(),0);
                setLeoUesrKeyguardSingleClockMinFont= getLeoInt(context,
                        getLeoKeyguardSingleClockMinFont(),0);
                setLeoUesrKeyguardSingleClockDateFont= getLeoInt(context,
                        getLeoKeyguardSingleClockDateFont(),0);
                setLeoUesrKeyguardSingleClockChinaTimeDetailFont= getLeoInt(context,
                        getLeoKeyguardSingleClockChinaTimeDetailFont(),0);
                setLeoUesrKeyguardSingleClockLunarFont= getLeoInt(context,
                        getLeoKeyguardSingleClockLunarFont(),0);

                int mDefaultKeyguardSingleClockSize=72;
                int mDefaultKeyguardSingleClockVerticalSize=96;
                int mDefaultKeyguardSingleDateSize=14;
                setLeoUesrKeyguardSingleClockTimeSecondSize= getLeoInt(context,
                        getLeoKeyguardSingleClockTimeSecondSize(),mDefaultKeyguardSingleClockSize);
                setLeoUesrKeyguardSingleClockHourSize= getLeoInt(context,
                        getLeoKeyguardSingleClockHourSize(),mDefaultKeyguardSingleClockSize);
                setLeoUesrKeyguardSingleClockMinSize= getLeoInt(context,
                        getLeoKeyguardSingleClockMinSize(),mDefaultKeyguardSingleClockSize);
                setLeoUesrKeyguardSingleClockColonSize= getLeoInt(context,
                        getLeoKeyguardSingleClockColonSize(),mDefaultKeyguardSingleClockSize);

                setLeoUesrKeyguardSingleClockChinaTimeDetailSize= getLeoInt(context,
                        getLeoKeyguardSingleClockChinaTimeDetailSize(),mDefaultKeyguardSingleDateSize);
                setLeoUesrKeyguardSingleClockLunarSize= getLeoInt(context,
                        getLeoKeyguardSingleClockLunarSize(),14);
                setLeoUesrKeyguardSingleClockDateSize= getLeoInt(context,
                        getLeoKeyguardSingleClockDateSize(),mDefaultKeyguardSingleDateSize);

                setLeoUesrKeyguardSingleClockHourVerticalSize= getLeoInt(context,
                        getLeoKeyguardSingleClockHourVerticalSize(),mDefaultKeyguardSingleClockVerticalSize);
                setLeoUesrKeyguardSingleClockMinVerticalSize= getLeoInt(context,
                        getLeoKeyguardSingleClockMinVerticalSize(),mDefaultKeyguardSingleClockVerticalSize);

                setLeoUesrKeyguardSingleClockTimeSecondColor= getLeoInt(context,
                        getLeoKeyguardSingleClockTimeSecondColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardSingleClockHourColor= getLeoInt(context,
                        getLeoKeyguardSingleClockHourColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardSingleClockMinColor= getLeoInt(context,
                        getLeoKeyguardSingleClockMinColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardSingleClockDateColor= getLeoInt(context,
                        getLeoKeyguardSingleClockDateColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardSingleClockChinaTimeDetailColor= getLeoInt(context,
                        getLeoKeyguardSingleClockChinaTimeDetailColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardSingleClockColonColor= getLeoInt(context,
                        getLeoKeyguardSingleClockColonColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardSingleClockLunarColor= getLeoInt(context,
                        getLeoKeyguardSingleClockLunarColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardSingleClockColorCustom= getLeoInt(context,
                        getLeoKeyguardSingleClockColorCustom(),0)==1;
                setLeoUesrKeyguardSingleClockALLColor= getLeoInt(context,
                        getLeoKeyguardSingleClockALLColor(),mDefaultKeyguardSingleClockColor);
                setLeoUesrKeyguardSingleClockALLColorEnabled= getLeoInt(context,
                        getLeoKeyguardSingleClockALLColorEnabled(),0);




                ////////////////////////////////////////////////////
                setLeoUesrKeyguardAodClockWidget = getLeoInt(context,
                        getLeoKeyguardAodClockWidget(),1)==0;
                setLeoUesrHeaderSettingButtonColorEnabled= getLeoInt(context,
                        getLeoHeaderSettingButtonColorEnabled(),0);
                setLeoUesrDataUsageColorEnabled= getLeoInt(context,
                        getLeoDataUsageColorEnabled(),0);

                setLeoUesrNetworkTrafficIconColor= getLeoInt(context,
                        getLeoNetworkTrafficIconColor(),mDefaultLightTextColor);
                setLeoUesrNetworkTrafficALLColor= getLeoInt(context,
                        getLeoNetworkTrafficIconALLColor(),mDefaultLightTextColor);
                setLeoUesrNetworkTrafficALLColorEnabled= getLeoInt(context,
                        getLeoNetworkTrafficIconALLColorEnabled(),0);
                setLeoUesrNetworkTrafficCustomColorEnabled= getLeoInt(context,
                        getLeoNetworkTrafficIconCustomColorEnabled(),0);

                setLeoUesrNetworkTrafficIconStyle= getLeoInt(context,
                        getLeoNetworkTrafficIconStyle(),0);

                setLeoUesrStatusBarPolicyAlarm = getLeoInt(context,
                        getLeoStatusBarPolicyAlarm(),0) == 1;
                setLeoUesrStatusBarPolicyBluetooth = getLeoInt(context,
                        getLeoStatusBarPolicyBluetooth(),0) == 1;
                setLeoUesrStatusBarPolicySound = getLeoInt(context,
                        getLeoStatusBarPolicySound(),0) == 1;

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
                        getLeoDeviceInfoColor(),mDefaultLightTextColor);
                setLeoUesrDeviceInfoColorTwo= getLeoInt(context,
                        getLeoDeviceInfoColorTwo(),mDefaultLightTextColor);
                setLeoUesrDeviceInfoColorThree= getLeoInt(context,
                        getLeoDeviceInfoColorThree(),mDefaultLightTextColor);
                setLeoUesrDeviceInfoColorFour= getLeoInt(context,
                        getLeoDeviceInfoColorFour(),mDefaultLightTextColor);
                setLeoUesrDeviceInfoColorFive= getLeoInt(context,
                        getLeoDeviceInfoColorFive(),mDefaultLightTextColor);
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
                        getLeoDeviceInfoALLColor(),DeepDarkColor);
                setLeoUesrDeviceInfoColorAll= getLeoInt(context,
                        getLeoDeviceInfoColorAll(),0);
                setLeoUesrDeviceInfoArray= getLeoInt(context,
                        getLeoDeviceInfoArray(),1);
                setLeoUesrDualAppEnabled= getLeoInt(context,
                        getLeoDualAppEnabled(),1);
                setLeoUesrDialingCityLocate = getLeoInt(context,
                        getLeoDialingCityLocate(),1) != 0;
                setLeoUesrDialingCitySize = getLeoInt(context,
                        getLeoDialingCitySize(),12);
                setLeoUesrDialingCityFont= getLeoInt(context,
                        getLeoDialingCityFont(),0);
                setLeoUesrDialingCityColor = getLeoInt(context,
                        getLeoDialingCityColor(),CallLogColor);
                setLeoUesrDialingCityData= getLeoInt(context,
                        getLeoDialingCityData(),0);
                setLeoUesrCityColorEnabled= getLeoInt(context,
                        getLeoCityColorEnabled(),0);


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


                setLeoUesrNavigationBarGradientColorFour = getLeoInt(context,
                        getLeoNavigationBarGradientColorFour()  , Transparency);
                setLeoUesrNavigationBarGradientColorFive = getLeoInt(context,
                        getLeoNavigationBarGradientColorFive()  , Transparency);
                setLeoUesrNavigationBarGradientColorSix = getLeoInt(context,
                        getLeoNavigationBarGradientColorSix()  , Transparency);
                setLeoUesrNavigationBarGradientColorEnabled = getLeoInt(context,
                        getLeoNavigationBarGradientColorEnabled()  , 0);

                setLeoUesrNavigationBarBgWallpaperBlurEnabled = getLeoInt(context,
                        getLeoNavigationBarBgWallpaperBlurEnabled()  , 0);




                setLeoUesrQSPanelGradientColorFour = getLeoInt(context,
                        getLeoQSPanelGradientColorFour()  , DefaultQSBackground);
                setLeoUesrQSPanelGradientColorFive = getLeoInt(context,
                        getLeoQSPanelGradientColorFive()  , DefaultQSBackground);
                setLeoUesrQSPanelGradientColorSix = getLeoInt(context,
                        getLeoQSPanelGradientColorSix()  , DefaultQSBackground);
                setLeoUesrQSPanelGradientColorEnabled = getLeoInt(context,
                        getLeoQSPanelGradientColorEnabled()  , 0);
                setLeoUesrQSPanelBgWallpaperBlurEnabled = getLeoInt(context,
                        getLeoQSPanelBgWallpaperBlurEnabled()  , 0);


                setLeoUesrRecentsVibratorEnable = getLeoInt(context,
                        getLeoRecentsVibratorEnable()  , 0);
                setLeoUesrRecentsVibrationLevel = getLeoInt(context,
                        getLeoRecentsVibrationLevel()  , 20);
                setLeoUesrRecentsGradientColorFour = getLeoInt(context,
                        getLeoRecentsGradientColorFour()  , Transparency);
                setLeoUesrRecentsGradientColorFive = getLeoInt(context,
                        getLeoRecentsGradientColorFive()  , Transparency);
                setLeoUesrRecentsGradientColorSix = getLeoInt(context,
                        getLeoRecentsGradientColorSix()  , Transparency);
                setLeoUesrRecentsGradientColorEnabled = getLeoInt(context,
                        getLeoRecentsGradientColorEnabled()  , 0);
                setLeoUesrRecentsBgWallpaperBlurEnabled = getLeoInt(context,
                        getLeoRecentsBgWallpaperBlurEnabled()  , 0);

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




                setLeoUesrQSbuttonColor=getLeoInt(context,getLeoQSbuttonColorEnabled(),0) ;
                setLeoUesrNavBarThoroughDisabled =getLeoInt(context,
                        getLeoNavBarThoroughDisabled(), 0);
                setLeoUesrHeaderTextDateColorCustom=getLeoInt(context,getLeoHeaderTextDateColorCustom(),0) ;
                setLeoUesrHeaderTextLunarColor=getLeoInt(context,getLeoHeaderTextLunarColor(),DeepDarkColor) ;

                setLeoUesrHeaderTextLunarFont=getLeoInt(context,getLeoHeaderTextLunarFont(),0) ;
                setLeoUesrHeaderTextDateAllColor=getLeoInt(context,getLeoHeaderTextDateAllColor(),DeepDarkColor) ;
                setLeoUesrHeaderTextDateColorALL=getLeoInt(context,getLeoHeaderTextDateColorALL(),0) ;
                setLeoUesrHeaderTextClockColorAll=getLeoInt(context,getLeoHeaderTextClockColorAll(),0) ;
                setLeoUesrHeaderTextClockAllColor=getLeoInt(context,getLeoHeaderTextClockAllColor(),DeepDarkColor);
                setLeoUesrHeaderTextClockSecondSize=getLeoInt(context,getLeoHeaderTextClockSecondSize(),13);
                setLeoUesrHeaderTextClockSecondColor=getLeoInt(context,getLeoHeaderTextClockSecondColor(),DeepDarkColor);
                setLeoUesrHeaderTextClockDetailSize=getLeoInt(context,getLeoHeaderTextClockDetailSize(),13);
                setLeoUesrHeaderTextClockDetailFont=getLeoInt(context,getLeoHeaderTextClockDetailFont(),0);
                setLeoUesrHeaderTextClockDetailColor=getLeoInt(context, getLeoHeaderTextClockDetailColor(),DeepDarkColor);
                setLeoUesrHeaderTextClockDetailStyle=getLeoInt(context,getLeoHeaderTextClockDetailStyle(),0);
                setLeoUesrHeaderTextClockCustomColor=getLeoInt(context,getLeoHeaderTextClockCustomColor(),0);
                setLeoUesrHeaderTextClockDetail=getLeoInt(context,getLeoHeaderTextClockDetail(),0) == 1;
                setLeoUesrHeaderTextClockSecond=getLeoInt(context,getLeoHeaderTextClockSecond(),0) == 1;
                setLeoUesrPowerMenuClickState=getLeoInt(context,getLeoPowerMenuClickState(),0) ;
                setLeoUesrGoogleSmartQuickUnlock=getLeoInt(context,getLeoGoogleSmartQuickUnlock(),1) == 0 ;
                setLeoUesrPowerMenuConfirmDialog=getLeoInt(context,getLeoPowerMenuConfirmDialog(),1) == 0 ;

                setLeoUesrClockOnClickEnabled= getLeoInt(context, getLeoClockOnClickEnabled(),0) == 1;
                setLeoUesrNavIconAllColor=getLeoInt(context,getLeoNavIconAllColor(),mStockNavbarIconColor);
                setLeoUesrNavHomeColor=getLeoInt(context, getLeoNavHomeColor(),mStockNavbarIconColor);
                setLeoUesrNavBackColor=getLeoInt(context, getLeoNavBackColor(),mStockNavbarIconColor);
                setLeoUesrNavTaskColor=getLeoInt(context, getLeoNavTaskColor(),mStockNavbarIconColor);
                setLeoUesrNavImeColor=getLeoInt(context, getLeoNavImeColor(),mStockNavbarIconColor);
                setLeoUesrNavPinColor=getLeoInt(context, getLeoNavPinColor(),mStockNavbarIconColor);
                setLeoUesrNavColorEnabled= getLeoInt(context, getLeoNavColorEnabled(),0) == 1;
                setLeoUesrNavAllColorEnabled = getLeoInt(context, getLeoNavAllColorEnabled(),0) == 1;
                setLeoUesrFlashlightIconEnable= getLeoInt(context, getLeoFlashlightIconEnable(),0) == 1;
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
                setLeoUesrMipVibrateLevel=getLeoInt(context, getLeoMipActionVibrateLevel(),20);


                setLeoUesrPullDownCarrierString =getLeoString(context,
                        getLeoPullDownCarrierString());
                setLeoUesrPullDownCarrierStringA =getLeoString(context,
                        getLeoPullDownCarrierStringA());




                setLeoUesrPullDownBlurEffect=getLeoInt(context,getLeoPullDownBlurEffect(), 0);
                setLeoUesrPullDownBlurEffectStyle=((float)getLeoInt(context, getLeoPullDownBlurEffectStyle(), 10)) / ((float) 100);
                setLeoUesrFlashlightLowBattery=getLeoInt(context,getLeoFlashlightLowBattery(), 0)==1;
                setLeoUesrBiometricUnlock=getLeoInt(context,getLeoBiometricUnlock(), 0)==1;
                setLeoUesrHideIrisView=getLeoInt(context, getLeoHideIrisView(), 0)==1;
                setLeoUesrScrambleKeyPad=getLeoInt(context, getLeoPinCode(), 0)==1;
                setLeoUesrPowerImageView=getLeoInt(context,
                        getLeoPowerImageView(), 0);
                setLeoUesrPowerImageViewSize=getLeoInt(context,
                        getLeoPowerImageViewSize(), 8)/ 8.0F;
                setLeoUesrPowerImageViewColor=getLeoInt(context,
                        getLeoPowerImageViewColor(), -1);
                setLeoUesrPowerTextHint=getLeoInt(context,
                        getLeoPowerTextHint(), 0);
                setLeoUesrPowerTextHintColor=getLeoInt(context,
                        getLeoPowerTextHintColor(), -1);
                setLeoUesrPowerTextHintFont=getLeoInt(context,
                        getLeoPowerTextHintFont(), 0);
                setLeoUesrPowerTextHintSize=getLeoInt(context,
                        getLeoPowerTextHintSize(), 13);
                setLeoUesrPowerTextHintLinkWhiteTheme=getLeoInt(context,
                        getLeoPowerTextHintLinkWhiteTheme(), 0);
                setLeoUesrPowerTextLinkWhiteTheme=getLeoInt(context,
                        getLeoPowerTextLinkWhiteTheme(), 0);
                setLeoUesrPowerTextStatus=getLeoInt(context,
                        getLeoPowerTextStatus(), 0);
                setLeoUesrPowerTextColor=getLeoInt(context,
                        getLeoPowerTextColor(), Color.parseColor("#ff888888"));
                setLeoUesrPowerTextSize=getLeoInt(context,
                        getLeoPowerTextSize(), 13);
                setLeoUesrPowerTextFont=getLeoInt(context,
                        getLeoPowerTextFont(), 0);
                setLeoUesrKeyguardStatusBar=getLeoInt(context,
                        getLeoKeyguardStatusBar(), 0);

                setLeoUesrPulldownCarrierColor=getLeoInt(context,
                        getLeoPulldownCarrierColor(), -1);
                setLeoUesrPulldownCarrierSize=getLeoInt(context,
                        getLeoPulldownCarrierSize(), 13);
                setLeoUesrPulldownCarrierFont=getLeoInt(context,
                        getLeoPulldownCarrierFont(), 0);
                setLeoUesrPulldownOutdoorVibrator=getLeoInt(context,
                        getLeoPulldownOutdoorVibrator(), 0);
                setLeoUesrPulldownOutdoorVibratorLevel=getLeoInt(context,
                        getLeoPulldownOutdoorVibratorLevel(), 0);
                setLeoUesrPulldownOutdoorActionApp =  getLeoString(context,
                        getLeoPulldownOutdoorActionApp() );
                setLeoUesrPulldownOutdoorEnabled=getLeoInt(context,
                        getLeoPulldownOutdoorEnabled() ,0);
                setLeoUesrPulldownOutdoorAction=getLeoInt(context,
                        getLeoPulldownOutdoorAction(), 0);
                setLeoUesrPulldownOutdoorIconStyle=getLeoInt(context,
                        getLeoPulldownOutdoorIconStyle(), 0);
                setLeoUesrPulldownOutdoorIconColor=getLeoInt(context,
                        getLeoPulldownOutdoorIconColor(), DeepDarkColor);
                ////////////////////////////////////////
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


                setLeoUesrThreeGestureVibration=getLeoInt(context, getLeoThreeGestureVibration(), 0);
                setLeoUesrThreeGestureVibrationLevel= getLeoInt(context, getLeoThreeGestureVibrationLevel(), 20);
                setLeoUesrNavigationBarGestureVibration=getLeoInt(context, getLeoNavigationBarGestureVibration(), 0);
                setLeoUesrNavigationBarGestureVibrationLevel= getLeoInt(context, getLeoNavigationBarGestureVibrationLevel(), 20);
                setLeoUesrStatusBarGestureVibrationLevel= getLeoInt(context, getLeoStatusBarGestureVibrationLevel(), 20);
                setLeoUesrLauncherGesturalVibrationLevel = getLeoInt(context, getLeoLauncherGesturalVibrationLevel(), 20);
                setLeoUesrLauncherBlurView = getLeoInt(context, getLeoLauncherBlurView(), 0);
                setLeoUesrLauncherBlurViewString = getLeoString(context,
                        getLeoLauncherBlurViewString() );
                setLeoUesrLauncherBlurDegree=getLeoInt(context,
                        getLeoLauncherBlurDegree(),12);
                setLeoUesrLauncherBlurColorEnabled=getLeoInt(context, getLeoLauncherBlurColorEnabled(),0);
                setLeoUesrLauncherBlurAlphaEnabled=getLeoInt(context,getLeoLauncherBlurAlphaEnabled(),0) == 1;
                setLeoUesrLauncherBlurColor= getLeoInt(context,getLeoLauncherBlurColor(), mBackgroundWallpaperColor);
                setLeoUesrLauncherBlurColorAlpha =getLeoInt(context,
                        getLeoLauncherBlurColorAlpha(), 255);

                setLeoUesrLauncherDownEnabled=getLeoInt(context, getLeoLauncherDownEnabled(), 0) == 1;
                setLeoUesrLauncherDownAction = getLeoInt(context,
                        getLeoLauncherDownAction(), 0);
                setLeoUesrLauncherDownApp =getLeoString(context,
                        getLeoLauncherDownApp());
                setLeoUesrLauncherUPEnabled=getLeoInt(context, getLeoLauncherUPEnabled(), 0) == 1;
                setLeoUesrLauncherUPAction = getLeoInt(context,
                        getLeoLauncherUPAction(), 0);
                setLeoUesrLauncherUPApp =getLeoString(context,
                        getLeoLauncherUPApp());
                setLeoUesrLauncherDoubleTapVibrator=getLeoInt(context, getLeoLauncherDoubleTapVibrator(), 0);
                setLeoUesrLauncherDoubleTapEnabled=getLeoInt(context, getLeoLauncherDoubleTapEnabled(), 0) == 1;
                setLeoUesrLauncherDoubleTapAction = getLeoInt(context,
                        getLeoLauncherDoubleTapAction(), 0);
                setLeoUesrLauncherDoubleTapApp =getLeoString(context,
                        getLeoLauncherDoubleTapApp());
                setLeoUesrLauncherDoubleTapVibrator=getLeoInt(context, getLeoLauncherDoubleTapVibrator(), 0);
                /////////////////////////////////

                setLeoUesrLockScreenRotation=getLeoInt(context,
                        getLeoLockScreenRotation(),0 )== 1;;
                setLeoUesrSoundMakeUP=getLeoInt(context,
                        getLeoSoundMakeUP(),0) != 0;
                setLeoUesrBixbyLongPressLS=getLeoInt(context,
                        getLeoBixbyLongPressLS(),88);
                getSetLeoUesrLeoBixbyActionLS=getLeoInt(context,
                        getLeoBixbyActionLS(),88);
                getSetLeoUesrPowerLongPressActionLS=getLeoInt(context,
                        getLeoPowerLongPressActionLS(),88);
                setLeoUesrPowerDoubleAction=getLeoInt(context,
                        getLeoPowerDoubleAction(),0);
                setLeoUesrPowerDoubleActionAPP=getLeoString(context,
                        getLeoPowerDoubleActionAPP());
                setLeoUesrPowerDoubleActionLS=getLeoInt(context,
                        getLeoPowerDoubleActionLS(),88);
                setLeoUesrThreeGestureAction=getLeoInt(context,
                        getLeoThreeGestureAction(),0);
                setLeoUesrThreeGestureActionAPP=getLeoString(context,
                        getLeoThreeGestureActionAPP());
                setLeoUesrThreeGesture=getLeoInt(context,
                        getLeoThreeGesture(),
                        0 )== 1;
                setLeoUesrNavbarHeightSwitch=getLeoInt(context,
                        getLeoNavbarHeightSwitch(),
                        0) != 0 ;
                setLeoUesrFpUPAction=getLeoInt(context,
                        getLeoFpUPAction(),0);
                setLeoUesrFpUPActionAPP=getLeoString(context,
                        getLeoFpUPActionAPP());
                setLeoUesrFpDownAction=getLeoInt(context,
                        getLeoFpDownAction(),0);
                setLeoUesrFpDownActionAPP=getLeoString(context,
                        getLeoFpDownActionAPP());
                setLeoUesrPowerLongPress=getLeoInt(context,
                        getLeoPowerLongPress(),0);
                setLeoUesrPowerLongPressAPP=getLeoString(context,
                        getLeoPowerLongPressAPP());
                setLeoUesrBixbyClickAPP=getLeoString(context,
                        getLeoBixbyClickAPP());
                setLeoUesrBixbyLongPressAPP=getLeoString(context,
                        getLeoBixbyLongPressAPP());
                setLeoUesrBixbyAction=getLeoInt(context,
                        getLeoBixbyAction(),0);
                setLeoUesrBixbyClick=getLeoInt(context,
                        getLeoBixbyClick(),0);
                setLeoUesrBixbyLongPress=getLeoInt(context,
                        getLeoBixbyLongPress(),0);
                setLeoUesrClickRecent=getLeoInt(context,
                        getLeoClickRecent(),0);
                setLeoUesrClickRecentAPP=getLeoString(context,
                        getLeoClickRecentApp());
                setLeoUesrLongPressRecent=getLeoInt(context,
                        getLeoLongPressRecent()  ,0);
                setLeoUesrLongPressRecentAPP =getLeoString(context,
                        getLeoLongPressRecentApp());
                setLeoUesrLongPressHome=getLeoInt(context,
                        getLeoLongPressHome()  ,0);
                setLeoUesrLongPressHomeAPP =getLeoString(context,
                        getLeoLongPressHomeApp());
                setLeoUesrLongPressBack=getLeoInt(context,
                        getLeoLongPressBack()  ,0);
                setLeoUesrLongPressBackAPP =getLeoString(context,
                        getLeoLongPressBackApp());
                //////////////////////////

                ///////////////////////
                setLeoUesrTaskRAMInfoClick =getLeoInt(context, getLeoRecentTaskRAMClick(), 0)==1;
                setLeoUesrTaskRAMInfo=getLeoInt(context, getLeoRecentTaskRAMInfo(),1);
                setLeoUesrTaskRAMInfoRefresh=getLeoInt(context, getLeoRecentTaskRAMInfoRefresh(),2500);
                setLeoUesrTaskRAMInfoBGColor=getLeoInt(context, getLeoRecentTaskRAMInfoBGColor(),Color.parseColor("#6033b5e5"));
                setLeoUesrTaskRAMInfoTextColor=getLeoInt(context, getLeoRecentTaskRAMTextColor(), mDefaultLightTextColor);
                setLeoUesrTaskRAMInfoTextUsedColor= getLeoInt(context, getLeoRecentTaskRAMUsedColor(), mDefaultLightTextColor);
                setLeoUesrTaskRAMInfoTextFreeColor= getLeoInt(context, getLeoRecentTaskRAMFreeColor(), mDefaultLightTextColor);
                setLeoUesrTaskRAMInfoTextSize= getLeoInt(context, getLeoRecentTaskRAMTextSize(),14);
                setLeoUesrTaskRAMInfoLanguage= getLeoInt(context, getLeoRecentTaskRAMLanguage(),0);
                setLeoUesrTaskRAMInfoFont= getLeoInt(context, getLeoRecentTaskRAMFont(),0);
                setLeoUesrTaskRAMInfoStrokeEnabled =getLeoInt(context, getLeoRecentTaskRAMStrokeEnabled(), 0)==1;
                setLeoUesrTaskRAMInfoStrokeDashGap= getLeoInt(context, getLeoRecentTaskRAMStrokeDashGap(),6);
                setLeoUesrTaskRAMInfoStrokeDashWidth=getLeoInt(context, getLeoRecentTaskRAMStrokeDashWidth(),3);
                setLeoUesrTaskRAMInfoStrokeThickness=getLeoInt(context, getLeoRecentTaskRAMStrokeThickness(),6);
                setLeoUesrTaskRAMInfoStrokeDashColor=getLeoInt(context, getLeoRecentTaskRAMStrokeDashColor(), mDefaultStrokeColor);
                setLeoUesrTaskRAMInfoStrokeDashCornerRadius=getLeoInt(context,
                        getLeoRecentTaskRAMStrokeDashCornerRadius() ,0);
                /////////////
                setLeoUesrNavigationBarBlurWallpaperColorEnabled=getLeoInt(context, getLeoNavigationBarBlurWallpaperColor(),0);
                setLeoUesrNavigationBarBlurWallpaperAlphaEnabled= getLeoInt(context, getLeoNavigationBarBlurWallpaperAlpha(),0) == 1;
                setLeoUesrNavigationBarStrokeEnabled =getLeoInt(context, getLeoNavigationBarStrokeEnabled(), 0)==1;
                setLeoUesrNavigationBarStrokeDashGap=getLeoInt(context, getLeoNavigationBarStrokeDashGap(),6);
                setLeoUesrNavigationBarStrokeDashWidth= getLeoInt(context, getLeoNavigationBarStrokeDashWidth(),3);
                setLeoUesrNavigationBarStrokeThickness=getLeoInt(context, getLeoNavigationBarStrokeThickness(),6);
                setLeoUesrNavigationBarStrokeDashColor= getLeoInt(context, getLeoNavigationBarStrokeDashColor(), mDefaultStrokeColor);
                setLeoUesrNavigationBarBlurBgDegree=getLeoInt(context,
                        getLeoNavigationBarBlurBgDegree() ,12);
                setLeoUesrNavigationBarBgWallpaperAlphaEnable =getLeoInt(context,
                        getLeoNavigationBarBgWallpaperAlphaEnable (), 0) == 1;
                setLeoUesrNavigationBarBgWallpaperAlpha =getLeoInt(context,
                        getLeoNavigationBarBgWallpaperAlpha () , 255);
                setLeoUesrNavigationBarBGStyle = getLeoInt(context,
                        getLeoNavigationBarBGStyle () , 0);
                setLeoUesrNavigationBarBgBasicColor = getLeoInt(context,
                        getLeoNavigationBarBgBasicColor (), Transparency);
                setLeoUesrNavigationBarGradientBgStartColor =getLeoInt(context,
                        getLeoNavigationBarGradientBgStartColor() , Transparency);
                setLeoUesrNavigationBarGradientBgCenterColor =getLeoInt(context,getLeoNavigationBarGradientBgCenterColor()
                        , Transparency);
                setLeoUesrNavigationBarGradientBgEndColor =getLeoInt(context,
                        getLeoNavigationBarGradientBgEndColor() , Transparency);
                setLeoUesrNavigationBarGradientEnableCenterColor =getLeoInt(context,
                        getLeoNavigationBarGradientEnableCenterColor() , 0);
                setLeoUesrNavigationBarShowBG=getLeoInt(context,
                        getLeoNavigationBarShowBG() ,0) == 1;
                setLeoUesrNavigationBarBgGradientBgStyle=getLeoInt(context,
                        getLeoNavigationBarBgGradientBgStyle() ,0);
                setLeoUesrNavigationBarGradientBgType=getLeoInt(context,
                        getLeoNavigationBarGradientBgType() ,0);
                setLeoUesrNavigationBarGradientBackGroundCornerRadius=getLeoInt(context,
                        getLeoNavigationBarGradientBackGroundCornerRadius() ,0);
                setLeoUesrNavigationBarGradientBackGroundColorRadius=getLeoInt(context,
                        getLeoNavigationBarGradientBackGroundColorRadius (),360);
                setLeoUesrNavigationBarBgWallpaper =getLeoString(context,
                        getLeoNavigationBarBgWallpaper ());
                setLeoUesrNavigationBarWallpaperColorEnable=getLeoInt(context,
                        getLeoNavigationBarWallpaperColorEnable() ,0);
                setLeoUesrNavigationBarWallpaperColor=getLeoInt(context,
                        getLeoNavigationBarWallpaperColor (), mBackgroundWallpaperColor);
                //////////////////////////////////////////////////////
                setLeoUesrStatusBarCustomWifiIcon= getLeoInt(context,
                        getLeoStatusBarCustomWifiIcon(), 0) != 0;
                setLeoUesrStatusBarCustomSignalIcon= getLeoInt(context,
                        getLeoStatusBarCustomSignalIcon(), 0) != 0;
                setLeoUesrStatusBarCustomWifiIconStyle =getLeoInt(context,
                        getLeoStatusBarCustomWifiIconStyle(), 0);
                setLeoUesrStatusBarCustomSignalIconStyle =getLeoInt(context,
                        getLeoStatusBarCustomSignalIconStyle(), 0);
                /////////////////
                setLeoUesrNavigationBarAllIcon= getLeoInt(context,
                        getLeoNavigationBarAllIcon(), 0) != 0;
                setLeoUesrNavigationBarAllIconStyle =getLeoInt(context,
                        getLeoNavigationBarAllIconStyle(), 0);
                setLeoUesrNavigationBarHomeIconStyle =getLeoInt(context,
                        getLeoNavigationBarHomeIconStyle(), 0);
                setLeoUesrNavigationBarBackIconStyle=getLeoInt(context,
                        getLeoNavigationBarBackIconStyle(), 0);
                setLeoUesrNavigationBarRecentIconStyle=getLeoInt(context,
                        getLeoNavigationBarRecentIconStyle(), 0);
                ///////////////////////////////////////////////////////////
                setLeoUesrStatusBarGestureColor= getLeoInt(context,
                        getLeoStatusBarGestureRightSlide(), QSonColor);
                setLeoUesrStatusBarGestureRightSlide =getLeoInt(context,
                        getLeoStatusBarRightSlideAction(), 104);
                setLeoUesrStatusBarGestureRightSlideApp = getLeoString(context,
                        getLeoStatusBarGestureRightSlideApp());
                setLeoUesrStatusBarGestureTouchRegionColor= getLeoInt(context,
                        getLeoStatusBarGestureLeftSlide(), 0) != 0;
                setLeoUesrStatusBarGestureLeftSlide =getLeoInt(context,
                        getLeoStatusBarLeftSlideAction(), 103);
                setLeoUesrStatusBarGestureLeftSlideApp = getLeoString(context,
                        getLeoStatusBarGestureLeftSlideApp());
                setLeoUesrStatusBarDoubleAction = getLeoInt(context,
                        getLeoStatusBarGestureDouble(), 0) != 0;
                setLeoUesrStatusBarGestureDouble =getLeoInt(context,
                        getLeoStatusBarDoubleAction(), 100);
                setLeoUesrStatusBarGestureDoubleApp = getLeoString(context,
                        getLeoStatusBarGestureDoubleApp());
                /////////////////////////////////////
                setLeoUesrStatusBarRightClickAction =getLeoInt(context,
                        getLeoStatusBarRightClickAction () , 101);
                setLeoUesrStatusBarRightClickApp = getLeoString(context,
                        getLeoStatusBarRightClickApp()  );
                setLeoUesrStatusBarRightLongClickAction =getLeoInt(context,
                        getLeoStatusBarRightLongClickAction() , 109);
                setLeoUesrStatusBarRightAction = getLeoInt(context,
                        getLeoStatusBarRightAction() , 0) != 0;
                setLeoUesrStatusBarRightLongClickApp =  getLeoString(context,
                        getLeoStatusBarRightLongClickApp() );
                ///////////////
                setLeoUesrStatusBarGesturesVibratorEnable =getLeoInt(context,
                        getLeoStatusBarGesturesVibratorEnable(), 0) ;
                setLeoUesrStatusBarLeftClickAction =getLeoInt(context,
                        getLeoStatusBarLeftClickAction () , 100);
                setLeoUesrStatusBarLeftClickApp = getLeoString(context,
                        getLeoStatusBarLeftClickApp()  );
                setLeoUesrStatusBarLeftLongClickAction =getLeoInt(context,
                        getLeoStatusBarLeftLongClickAction() , 102);
                setLeoUesrStatusBarLeftAction = getLeoInt(context,
                        getLeoStatusBarLeftAction() , 0) != 0;
                setLeoUesrStatusBarLeftLongClickApp =  getLeoString(context,
                        getLeoStatusBarLeftLongClickApp() );
                ////////////////////////////
                setLeoUesrStatsusBarIconPaddingEnable=getLeoInt(context,
                        getLeoStatsusBarIconPaddingEnable(),0) == 1;
                setLeoUesrStatsusBarIconPadding=getLeoInt(context,
                        getLeoStatsusBarIconPadding() ,10);
                //////////////////////////////////////////////////////////////////////////////

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

                //////////////////////////////////////////////////////

                setLeoUesrNotificationItemShowBG=getLeoInt(context,
                        getLeoNotificationItemShowBG (),0) == 1;

                setLeoUesrNotificationItemBgBasicColor =getLeoInt(context,
                        getLeoNotificationItemBgBasicColor (), DefaultQSBackground);


                setLeoUesrQSPanelBlurWallpaperColorEnabled=getLeoInt(context, getLeoQSPanelBlurWallpaperColor(),0);
                setLeoUesrQSPanelBlurWallpaperAlphaEnabled= getLeoInt(context, getLeoQSPanelBlurWallpaperAlpha(),0) == 1;
                setLeoUesrQSPanelStrokeEnabled =getLeoInt(context, getLeoQSPanelStrokeEnabled(), 0)==1;
                setLeoUesrQSPanelStrokeDashGap=getLeoInt(context, getLeoQSPanelStrokeDashGap(),6);
                setLeoUesrQSPanelStrokeDashWidth= getLeoInt(context, getLeoQSPanelStrokeDashWidth(),3);
                setLeoUesrQSPanelStrokeThickness=getLeoInt(context, getLeoQSPanelStrokeThickness(),6);
                setLeoUesrQSPanelStrokeDashColor= getLeoInt(context, getLeoQSPanelStrokeDashColor(), mDefaultStrokeColor);
                setLeoUesrQSPanelBlurBgDegree=getLeoInt(context,
                        getLeoQSPanelBlurBgDegree() ,12);
                setLeoUesrQSPanelBgWallpaperAlphaEnable =getLeoInt(context,
                        getLeoQSPanelBgWallpaperAlphaEnable (), 0) == 1;
                setLeoUesrQSPanelBgWallpaperAlpha =getLeoInt(context,
                        getLeoQSPanelBgWallpaperAlpha () , 255);
                setLeoUesrQSPanelBGStyle = getLeoInt(context,
                        getLeoQSPanelBGStyle () , 0);
                setLeoUesrQSPanelBgBasicColor = getLeoInt(context,
                        getLeoQSPanelBgBasicColor (), DefaultQSBackground);
                setLeoUesrQSPanelGradientBgStartColor =getLeoInt(context,
                        getLeoQSPanelGradientBgStartColor() , DefaultQSBackground);
                setLeoUesrQSPanelGradientBgCenterColor =getLeoInt(context,getLeoQSPanelGradientBgCenterColor()
                        , DefaultQSBackground);
                setLeoUesrQSPanelGradientBgEndColor =getLeoInt(context,
                        getLeoQSPanelGradientBgEndColor() , DefaultQSBackground);
                setLeoUesrQSPanelGradientEnableCenterColor =getLeoInt(context,
                        getLeoQSPanelGradientEnableCenterColor() , 0);
                setLeoUesrQSPanelShowBG=getLeoInt(context,
                        getLeoQSPanelShowBG() ,0) == 1;
                setLeoUesrQSPanelBgGradientBgStyle=getLeoInt(context,
                        getLeoQSPanelBgGradientBgStyle() ,0);
                setLeoUesrQSPanelGradientBgType=getLeoInt(context,
                        getLeoQSPanelGradientBgType() ,0);
                setLeoUesrQSPanelGradientBackGroundCornerRadius=getLeoInt(context,
                        getLeoQSPanelGradientBackGroundCornerRadius() ,0);
                setLeoUesrQSPanelGradientBackGroundColorRadius=getLeoInt(context,
                        getLeoQSPanelGradientBackGroundColorRadius (),360);
                setLeoUesrQSPanelBgWallpaper =getLeoString(context,
                        getLeoQSPanelBgWallpaper ());
                setLeoUesrQSPanelWallpaperColorEnable=getLeoInt(context,
                        getLeoQSPanelWallpaperColorEnable() ,0);
                setLeoUesrQSPanelWallpaperColor=getLeoInt(context,
                        getLeoQSPanelWallpaperColor (), mBackgroundWallpaperColor);


                /////////////////////////////////////////////
                setLeoUesrKeyguardCarrier=getLeoInt(context,
                        getLeoCarrierKeyguard(),1) != 0;
                setLeoUesrKeyguardCarrierStyle=getLeoInt(context,
                        getLeoCarrierKeyguardStyle() ,0) == 1;
                setLeoUesrKeyguardCarrierSingle=getLeoInt(context,
                        getLeoCarrierKeyguardSingle() ,0) == 1;
                setLeoUesrKeyguardCarrierSingleSize=getLeoInt(context,
                        getLeoCarrierKeyguardSingleSize() ,14);
                setLeoUesrKeyguardCarrierMultiSize=getLeoInt(context,
                        getLeoCarrierKeyguardMultiSize() ,9);
                setLeoUesrKeyguardCarrierStringSingle =getLeoString(context,
                        getLeoCarrierKeyguardStringSingle());
                getSetLeoUesrKeyguardCarrierStringMulti=getLeoString(context,
                        getLeoCarrierKeyguardStringMulti());
                setLeoUesrKeyguardCarrierFont=getLeoInt(context,
                        getLeoCarrierKeyguardFont() ,0);
                setLeoUesrKeyguardCarrierColor=getLeoInt(context,
                        getLeoCarrierKeyguardColor() ,mLightModeColor);
////////////////////////////////////////////////////////////////////////
                setLeoUesrQSMaxToggles=getLeoInt(context,
                        getLeoQSMax(),6);
                setLeoUesrNavigationBarHideMS=getLeoInt(context,
                        getLeoNavigationBarHideMS(),3000);
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
                //////////////////////////////////////////////////////
                setLeoUesrStatusBarWeather=getLeoInt(context,
                        getLeoWeatherStatusBar(),0) == 1;
                setLeoUesrStatusBarWeatherOrientation =getLeoInt(context,
                        getLeoWeatherOrientationStatusBar(),1);
                setLeoUesrStatusBarWeatherSingle=getLeoInt(context,
                        getLeoWeatherSingleStatusBar(),0);
                setLeoUesrStatusBarWeatherSingleTextSize=getLeoInt(context,
                        getLeoWeatherSingleTextSizeStatusBar() ,14);
                setLeoUesrStatusBarWeatherMultiTextSize=getLeoInt(context,
                        getLeoWeatherMultiTextSizeStatusBar() ,9);
                setLeoUesrStatusBarWeatherFont=getLeoInt(context,
                        getLeoWeatherFontStatusBar() ,0);
                setLeoUesrStatusBarWeatherColor=getLeoInt(context,
                        getLeoWeatherColorStatusBar() ,mLightModeColor);
                ////////////////////////////////////////////////////
                getSetLeoUesrStatusBarCarrier=getLeoInt(context,
                        getLeoCarrierStatusBar(),0) == 1;
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
                        getLeoCarrierStatusBarColor() ,mLightModeColor);
                getSetLeoUesrStatusBarCarrierOrientation =getLeoInt(context,
                        getLeoCarrierStatusBarOrientation(),1);
////////////////////////////////////////////////////////////////////////
                setLeoUesrRoamingIconColor= getLeoInt(context, getLeoRoamingIconColor(), mLightModeColor);
                setLeoUesrMobileArrowsIconColor= getLeoInt(context, getLeoMobileArrowsIconColor(), mLightModeColor);
                setLeoUesrMobileTypeIconColor= getLeoInt(context, getLeoMbileTypeIconColor(), mLightModeColor);
                setLeoUesrSignalIconColor = getLeoInt(context, getLeoSignalIconColor(), mLightModeColor);
                setLeoUesrAirplaneIconColor = getLeoInt(context, getLeoAirplaneIconColor(), mLightModeColor);
                setLeoUesrWifiArrowsIconColor = getLeoInt(context, getLeoWifiArrowsIconColor(), mLightModeColor);
                setLeoUesrWifiIconColor = getLeoInt(context, getLeoWifiIconColor(), mLightModeColor);
                setLeoUesrAllSignalIconColor =getLeoInt(context, getLeoAllSignalIconColor(), mLightModeColor);
                setLeoUesrCustomAllSignalIconColor = getLeoInt(context,getLeoCustomAllSignalIconColor(), 0);
                setLeoUesrCustomSignalIconColor =getLeoInt(context, getLeoCustomSignalIconColor(), 0);
                ////////////////////////////////////////////////////////////////////////////////////
                setLeoUesrRecentsBGStyle =getLeoInt(context, getLeoRecentsBGStyle(), 0);

                setLeoUesrRecentsBgBasicColor =getLeoInt(context,
                        getLeoRecentsBgBasicColor() , DefaultRecentsBGColor);
                setLeoUesrRecentsGradientBgStartColor =getLeoInt(context,
                        getLeoRecentsGradientBgStartColor() , DefaultRecentsBGColor);
                setLeoUesrRecentsGradientBgCenterColor =getLeoInt(context,
                        getLeoRecentsGradientBgCenterColor(), DefaultRecentsBGColor);
                setLeoUesrRecentsGradientBgEndColor =getLeoInt(context,
                        getLeoRecentsGradientBgEndColor() , DefaultRecentsBGColor);
                setLeoUesrRecentsGradientEnableCenterColor =getLeoInt(context,
                        getLeoRecentsGradientEnableCenterColor (), 0);
                setLeoUesrRecentsShowBG=getLeoInt(context,
                        getLeoRecentsShowBG() ,0) == 1;
                setLeoUesrRecentsBgGradientBgStyle=getLeoInt(context,
                        getLeoRecentsBgGradientBgStyle (),0);
                setLeoUesrRecentsGradientBgType=getLeoInt(context,
                        getLeoRecentsGradientBgType() ,0);
                setLeoUesrRecentsGradientBackGroundCornerRadius=getLeoInt(context,
                        getLeoRecentsGradientBackGroundCornerRadius() ,0);
                setLeoUesrRecentsGradientBackGroundColorRadius=getLeoInt(context,
                        getLeoRecentsGradientBackGroundColorRadius (),360);
                setLeoUesrRecentsBgWallpaper =getLeoString(context,
                        getLeoRecentsBgWallpaper ());
                setLeoUesrRecentsWallpaperColorEnable=getLeoInt(context,
                        getLeoRecentsWallpaperColorEnable (),0);
                setLeoUesrRecentsWallpaperColor=getLeoInt(context,
                        getLeoRecentsWallpaperColor() , mBackgroundWallpaperColor);
                setLeoUesrRecentsBlurBgDegree=getLeoInt(context,
                        getLeoRecentsBlurBgDegree() ,12);
                setLeoUesrRecentsBgWallpaperAlphaEnable =getLeoInt(context,
                        getLeoRecentsBgWallpaperAlphaEnable() , 0) == 1;
                setLeoUesrRecentsBgWallpaperAlpha =getLeoInt(context,
                        getLeoRecentsBgWallpaperAlpha() , 255);
                setLeoUesrRecentsStrokeEnabled =getLeoInt(context, getLeoRecentsStrokeEnabled(), 0)==1;
                setLeoUesrRecentsStrokeDashGap=getLeoInt(context,getLeoRecentsStrokeDashGap(),6);
                setLeoUesrRecentsStrokeDashWidth=getLeoInt(context,getLeoRecentsStrokeDashWidth(),3);
                setLeoUesrRecentsStrokeThickness=getLeoInt(context, getLeoRecentsStrokeThickness(),6);
                setLeoUesrRecentsStrokeDashColor=getLeoInt(context, getLeoRecentsStrokeDashColor(), mDefaultStrokeColor);

                setLeoUesrRecentsBlurWallpaperColorEnabled= getLeoInt(context, getLeoRecentsBlurWallpaperColor(),0);
                setLeoUesrRecentsBlurWallpaperAlphaEnabled= getLeoInt(context, getLeoRecentsBlurWallpaperAlpha(),0) == 1;

                ///////////////////////////////////////////////////////////////////
                setLeoUesrBottomBarViewNotiSettingClearAllSize =getLeoInt(context,
                        getLeoBottomBarViewNotiSettingClearAllSize()  , 13);

                setLeoUesrBottomBarViewNotiSettingColor =getLeoInt(context,
                        getLeoBottomBarViewNotiSettingColor() , DeepDarkColor);
                setLeoUesrBottomBarViewClearAllColor =getLeoInt(context,
                        getLeoBottomBarViewClearAllColor (), DeepDarkColor);

                setLeoUesrBottomBarViewClearAllFont =getLeoInt(context,
                        getLeoBottomBarViewClearAllFont (), 0);
                setLeoUesrBottomBarViewNotiSettingFont =getLeoInt(context,
                        getLeoBottomBarViewNotiSettingFont()  , 0);
                setLeoUesrQSDivider=getLeoInt(context,
                        getLeoQSDivider() , 1) != 0;
                setLeoUesrDataUsageViewVisible =getLeoInt(context, getLeoDataUsageViewVisible(), 1) != 0;
                setLeoUesrDataUsageColor =getLeoInt(context, getLeoDataUsageColor(), DeepDarkColor);
                setLeoUesrDataUsageSize = getLeoInt(context, getLeoDataUsageSize(),13);
                setLeoUesrDataUsageFont = getLeoInt(context, getLeoDataUsageFont(),0);
                setLeoUesrDataUsageGravity =getLeoInt(context, getLeoDataUsageGravity(),0);
                setLeoUesrQSLabelTextFont=getLeoInt(context,
                        getLeoQSLabelTextFont (),0);
                setLeoUesrQSLabelTextColor=getLeoInt(context,
                        getLeoQSLabelTextColor() ,DeepDarkColor);
                setLeoUesrQSDividerColor=getLeoInt(context,
                        getLeoQSDividerColor() , DividerColor);
                ////////////////////////////////////////////////////////////////////////////////////
                setLeoUesrHeaderMultiuserButton= getLeoInt(context,
                        getLeoHeadMultiuserButton(), 0);
                setLeoUesrHeaderSettingButton= getLeoInt(context,
                        getLeoHeadSettingButton(), 0) ;
                setLeoUesrHeaderSettingButtonColor = getLeoInt(context,
                        getLeoHeadSettingButtonColor(), mHeaderDateColor);

                ////////////////////////////////////////////////////////////////////////////////////
                setLeoUesrHeaderTextClockDisplay= getLeoInt(context,
                        getLeoHeadClockDisable(), 1) != 0;
                setLeoUesrHeaderTextClockFont = getLeoInt(context,
                        getLeoHeadClockFont(), 0);
                setLeoUesrHeaderTextClockSize= getLeoInt(context,
                        getLeoHeadClockSize() , 14);
                setLeoUesrHeaderTextClockColor =getLeoInt(context,
                        getLeoHeadClockColor(), mHeaderDateColor);
                ////////////////////////////////////////////////////////////////////////////////////
                setLeoUesrHeaderLunarDisplay = getLeoInt(context,
                        getLeoPulldownLunarVisible(), 1) != 0;
                setLeoUesrHeaderLunarSymbol =getLeoInt(context,
                        getLeoPulldownLunarSymbol() , 1);
                setLeoUesrHeaderLunarOrientation =getLeoInt(context,
                        getLeoPulldownLunarOrientation() , 0);
                setLeoUesrHeaderLunarStyle =getLeoInt(context,
                        getLeoPulldownLunarStyle() , 0);
                setLeoUesrHeaderLunarSize = getLeoInt(context,
                        getLeoPulldownLunarSize() , 14);
                setLeoUesrHeaderLunarColor = getLeoInt(context,
                        getLeoPulldownLunarColor() , mHeaderDateColor);
                setLeoUesrHeaderLunarConstellation = getLeoInt(context,
                        getLeoPulldownLunarConstellation(),0) == 1;
                setLeoUesrHeaderLunarFont =getLeoInt(context,
                        getLeoPulldownLunarFont() , 0);
                ////////////////////////////////////////////////////////////////////////////////////
                setLeoUesrStatusBarOrientation =getLeoInt(context,
                        getLeoStatusbarTemperatureOrientation() , 0);
                setLeoUesrStatusBarTemperatureColor =getLeoInt(context,
                        getLeoStatusbarTemperatureColor(), mDefaultLightTextColor);
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
                ////////////////////////////////////////////////////////////////////////////////////

                setLeoUesrMMSCityEnabled =getLeoInt(context, getLeoMmsCityPositionEnabled(), 1) != 0;
                setLeoUesrMMSCityColor= getLeoInt(context,getLeoMmsCityPositionColor(), CallColor);
                setLeoUesrMMSCitySize= getLeoInt(context,getLeoMmsCityPositionSize(), 13);
                setLeoUesrMMSCityFont =getLeoInt(context,getLeoMmsCityPositionFont(), 0);
                setLeoUesrMMSDateColor=getLeoInt(context,getLeoMmsDateColor(), CallColor);
                setLeoUesrMMSDateSize= getLeoInt(context,getLeoMmsDateSize(), 13);
                setLeoUesrMMSDateFont = getLeoInt(context,getLeoMmsDateFont(), 0);
                setLeoUesrMMSContentColor= getLeoInt(context,getLeoMmsContentColor(), CallColor);
                setLeoUesrMMSContentSize= getLeoInt(context,getLeoMmsContentSize(), 13);
                setLeoUesrMMSContentFont= getLeoInt(context,getLeoMmsContentFont(), 0);
                setLeoUesrMMSNameColor= getLeoInt(context,getLeoMmsAvatarColor(), DeepCallColor);
                setLeoUesrMMSNameSize= getLeoInt(context,getLeoMmsAvatarSize(), 17);
                setLeoUesrMMSNameFont= getLeoInt(context,getLeoMmsAvatarFont(), 0);
                setLeoUesrCallCityEnabled = getLeoInt(context,
                        getLeoCallLogCityPositionEnabled(), 1) != 0;
                setLeoUesrCallCityColor= getLeoInt(context,getLeoCallLogCityPositionColor(), CallLogColor);
                setLeoUesrCallCitySize= getLeoInt(context,getLeoCallLogCityPositionSize(), 13);
                setLeoUesrCallCityFont =getLeoInt(context,getLeoCallLogCityPositionFont(),0);
                setLeoUesrCallCityData = getLeoInt(context,getLeoCallLogCityPositionDataStyle(),0);
                setLeoUesrLauncherIcon =  getLeoInt(context,
                        getLeoLauncherIconView(), 0) == 0;
                setLeoUesrLauncherEffect = getLeoInt(context,getLeoLauncherEffect(),0);
                setLeoUesrToastAnimation =getLeoString(context,getLeoToastAnimation());
                setLeoUesrPortraitNavBarHeight = getLeoInt(context,getLeoPortraitNavBarHeight(),45);
                setLeoUesrLandscapeNavBarHeight = getLeoInt(context,getLeoLandscapeNavBarHeight(),45);
                setLeoUesrNetworkTrafficMultiFontSize = getLeoInt(context, getLeoNetworkTrafficSize() , 10)/ 10.0F;
                setLeoUesrNetworkTrafficSingle =getLeoInt(context, getLeoNetworkTrafficSingle()   ,0) == 1;
                setLeoUesrNetworkTrafficFontStyle = getLeoInt(context, getLeoNetworkTrafficfont () , 0);
                setLeoUesrNetworkTrafficTextColor = getLeoInt(context, getLeoNetworkTrafficColor() , mDefaultLightTextColor);
                setLeoUesrNetworkTrafficIconLocation = getLeoInt(context, getLeoNetworkTrafficArrowLocation ()  ,0);
                setLeoUesrNetworkTrafficActivity = getLeoInt(context, getLeoNetworkTrafficAuto() , 0) != 0;
                setLeoUesrNetworkTrafficIcon = getLeoInt(context, getLeoNetworkTrafficArrow() , 1) != 0;
                setLeoUesrNetworkTrafficText = getLeoInt(context, getLeoNetworkTrafficText() , 0) != 0;
                setLeoUesrNetworkTrafficUnit = getLeoInt(context, getLeoNetworkTrafficUnit(), 1);
                setLeoUesrNetworkTrafficInterval = getLeoInt(context, getLeoNetworkTrafficInterval (), 1000);
                setLeoUesrNetworkTrafficState = getLeoInt(context, getLeoNetworkTrafficState() , 0);
                setLeoUesrNetworkTrafficLocation = getLeoInt(context, getLeoNetworkTrafficPosition() , 0);
                setLeoUesrHeaderCustomDateFormat=getLeoString(context,getLeoHeaderDateFormat());
                setLeoUesrHeaderDateWeekOrientation= getLeoInt(context, getLeoHeaderDateWeekOrientation() , 0);
                setLeoUesrHeaderDateWeekStyle= getLeoInt(context, getLeoHeaderDateWeek() , 0);
                setLeoUesrHeaderDateColor= getLeoInt(context, getLeoHeaderDateClor() ,mHeaderDateColor);
                setLeoUesrHeaderDateSize= getLeoInt(context, getLeoHeaderDateSize() , 13 );
                setLeoUesrHeaderDateFont= getLeoInt(context, getLeoHeaderDateFontStyle(), 0 );
                setLeoUesrHeaderDateSymbol= getLeoInt(context, getLeoHeaderDateSymbol() , 1 );
                setLeoUesrHeaderDateWeekDisplay = getLeoInt(context, getLeoHeaderDateWeekDisplay() , 1) != 0;
                setLeoUesrHeaderDateDisplay =getLeoInt(context,  getLeoHeaderDateVisible(), 1) != 0;

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
                        getLeoStatusBarClockColor(), mDefaultLightTextColor);
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
                setLeoUesrStatusBarLogoVisible = getLeoInt(context, getLeoStatusbarLogo() , 0
                ) == 1;
                setLeoUesrStatusBarLogoColor = getLeoInt(context,getLeoStatusbarLogoColor (), mDefaultLightTextColor);
                setLeoUesrStatusBarLogoStyle = getLeoInt(context, getLeoStatusbarLogoStyle () , 0);
                setLeoUesrStatusBarLogoSize = getLeoInt(context,getLeoStatusbarLogoSize () ,8)/ 8.0F;
                setLeoUesrStatusBarLogoLocation = getLeoInt(context,getLeoStatusbarLogoPosition()  ,1);
                setLeoUesrMinBatteryStyle = getLeoInt(context,getLeoStatusbarMainBatteryStyle()  ,0);

                setLeoUesrMainBatteryPackage=getLeoString(context,getLeoStatusbarMainBatteryPackage());
                setLeoUesrMainBatteryIconStandbyColor = getLeoInt(context,getLeoStatusbarMainBatteryIconStandbyColor()  ,Transparency);
                setLeoUesrMainBatteryTextStandbyColor = getLeoInt(context,getLeoStatusbarMainBatteryTextStandbyColor()  ,mDefaultLightTextColor);
                setLeoUesrMainBatteryColorTransform = getLeoInt(context,getLeoStatusbarMainBatteryAllowTransform()  ,0);
                setLeoUesrMainBatteryIconSize = getLeoInt(context,getLeoStatusbarMainBatteryIconSize()  ,60);
                setLeoUesrMainBatteryTextSize = getLeoInt(context,getLeoStatusbarMainBatteryTextSize()  ,13);
                setLeoUesrMainBatteryTextFont = getLeoInt(context,getLeoStatusbarMainBatteryTextFont()  ,0);
                setLeoUesrMainBatteryDefault = getLeoInt(context,getLeoStatusbarMainBatteryCustom()  ,0);
                setLeoUesrStatusBarSignalOrientation= getLeoInt(context,getLeoStatusbarSignalPosition()  ,0);
                setLeoUesrDisplayWeatherLunar=getLeoInt(context,
                        getLeoLunarWeatherDisplay() , 1) == 1;
                setLeoUesrDisplayWeatherLunarConstellation=getLeoInt(context,
                        getLeoLunarWeatherConstellationDisplay() , 1) == 1;
                setLeoUesrDisplayWeatherLunarStyle= getLeoInt(context,getLeoLunarWeatherStyle()  ,0);
                setLeoUesrDisplayWeatherLunarConstellationOrientation= getLeoInt(context,getLeoLunarWeatherConstellationOrientation()  ,0);
                setLeoUesrDisplayWeatherLunarSymbol= getLeoInt(context,getLeoLunarWeatherSymbol() ,1);
                setLeoUesrDisplayWeatherDateBR= getLeoInt(context, getLeoWeatherDateBRDisplay() , 1) != 0;
                setLeoUesrDisplayWeatherDateWeek= getLeoInt(context, getLeoWeatherDateWeekDisplay() , 1) != 0;
                setLeoUesrDisplayWeatherCustomDateFormat=getLeoString(context,getLeoLunarWeatherDateFormatString());
                setLeoUesrDisplayWeatherDateWeekOrientation= getLeoInt(context, getLeoWeatherDateWeekOrientation() , 0);
                setLeoUesrDisplayWeatherDateWeekStyle= getLeoInt(context, getLeoWeatherDateWeekStyle() , 0);
                Log.v("LeoRom Settings" , "结束 LeoROM 设置" );
                return;
            }
            return;
        }

            return;
        }



       // String  mSettings="You want to be my grandchild";
        Log.v(mSettings , "you can modify the information" );
    }
    public static int setLeoUesrMainBatteryTextStandbyColor;
    public static int  setLeoUesrDisplayWeatherDateWeekStyle;
    public static int  setLeoUesrDisplayWeatherDateWeekOrientation;
    public static boolean  setLeoUesrDisplayWeatherDateBR;
    public static boolean  setLeoUesrDisplayWeatherDateWeek;
    public static int  setLeoUesrDisplayWeatherLunarSymbol;
    public static int  setLeoUesrDisplayWeatherLunarConstellationOrientation;
    public static String   setLeoUesrDisplayWeatherCustomDateFormat;
    public  static  String  mSettings="You want to be my grandchild";
    public static int  setLeoUesrDisplayWeatherLunarStyle;
    public static int  setLeoUesrMainBatteryColorTransform;
    public static int setLeoUesrMinBatteryStyle;
    public static String setLeoUesrMainBatteryPackage;

    public static int setLeoUesrMainBatteryIconStandbyColor;
    public static int setLeoUesrMainBatteryIconSize;
    public static int setLeoUesrMainBatteryTextSize;
    public static int setLeoUesrMainBatteryTextFont;
    public static int setLeoUesrMainBatteryDefault;
    public static int setLeoUesrStatusBarSignalOrientation ;
    public static native String  getLeoWeatherDateWeekStyle();
    public static native String  getLeoWeatherDateWeekOrientation();
    public static native String  getLeoWeatherDateWeekDisplay();
    public static native String  getLeoWeatherDateBRDisplay();
    public static native String  getLeoLunarWeatherConstellationOrientation();
    public static native String  getLeoLunarWeatherSymbol();
    public static native String  getLeoLunarWeatherDateFormatString();
    public static native String  getLeoLunarWeatherStyle();
    public static native String  getLeoLunarWeatherConstellationDisplay();
    public static native String  getLeoLunarWeatherDisplay();
    public static native String  getLeoStatusbarSignalPosition();
    public static native String  getLeoStatusbarMainBatteryCustom();
    public static native String  getLeoStatusbarMainBatteryTextFont();
    public static native String  getLeoStatusbarMainBatteryTextSize();
    public static native String  getLeoStatusbarMainBatteryIconSize();
    public static native String  getLeoStatusbarMainBatteryAllowTransform();
    public static native String  getLeoStatusbarMainBatteryIconStandbyColor();
    public static native String  getLeoStatusbarMainBatteryTextStandbyColor();
    public static native String  getLeoStatusbarMainBatteryPackage();
    public static native String  getLeoStatusbarMainBatteryStyle();
    public static native String  getLeoStatusbarLogoColor();
    public static native String  getLeoStatusbarLogoStyle();
    public static native String  getLeoStatusbarLogoSize();
    public static native String  getLeoStatusbarLogoPosition();
    public static native String  getLeoStatusbarLogo();

    public static native String getLeoStatusBarClockIs12();
    public static native String getLeoStatusBarClockColor();
    public static native String getLeoStatusBarClockAMPM();
    public static native String getLeoStatusBarClockDateDisplay();
    public static native String getLeoStatusBarClockSeconds();
    public static native String getLeoStatusBarClockSingle();
    public static native String getLeoStatusBarClockDateWeekDisplay();
    public static native String getLeoStatusBarClockDetailsDisplay();
    public static native String getLeoStatusBarClockDateFormat();
    public static native String getLeoStatusBarClockDetailsStyle();
    public static native String getLeoStatusBarClockDateWeekStyle();
    public static native String getLeoStatusBarClockFontStyle();
    public static native String getLeoStatusBarClockMultiFontSize();
    public static native String getLeoStatusBarClockSingleFontSize();
    public static native String getLeoStatusBarClockDateENStyle();
    public static native String getLeoStatusBarClockDatePosition();
    public static native String getLeoStatusBarClockPosition();
    public static native String getLeoStatusBarClockDisable();
    public static native String getLeoStatusBarClockDateSymbol();
    public static native String getLeoStatusBarClockWeekPosition();
    public static native String getLeoStatusBarClockDetailsPosition();


    public static native String  getLeoLandscapeNavBarHeight();
    public static native String  getLeoPortraitNavBarHeight();
    public static native String  getLeoNetworkTrafficState();
    public static native String  getLeoNetworkTrafficAuto();
    public static native String  getLeoNetworkTrafficArrow();
    public static native String  getLeoNetworkTrafficInterval();
    public static native String  getLeoNetworkTrafficText();
    public static native String  getLeoNetworkTrafficUnit();
    public static native String  getLeoNetworkTrafficColor();
    public static native String  getLeoNetworkTrafficfont();
    public static native String  getLeoNetworkTrafficSingle();
    public static native String  getLeoNetworkTrafficArrowLocation();
    public static native String  getLeoNetworkTrafficSize();
    public static native String  getLeoNetworkTrafficPosition();
    public static native String  getLeoHeaderDateFontStyle();
    public static native String getLeoHeaderDateWeekDisplay();
    public static native String getLeoHeaderDateWeek();
    public static native String getLeoHeaderDateFormat();
    public static native String getLeoHeaderDateSize();
    public static native String getLeoHeaderDateClor();
    public static native String getLeoHeaderDateVisible();
    public static native String getLeoHeaderDateWeekOrientation();
    public static native String getLeoHeaderDateSymbol();
    public static native String getD();

}