package com.android.fusionleo.global;


import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;



public class LeoGlobalValues{

    public static  String SSSSOSSSS = "Hitomi1.1";
    static {
        System.loadLibrary(SSSSOSSSS);
    }

    public static native String  getLeoStatusbarTemperatureFont();
    public static native String  getLeoStatusbarTemperatureColor();
    public static native String  getLeoStatusbarTemperature();
    public static native String  getLeoStatusbarTemperatureMultiSize();
    public static native String  getLeoStatusbarTemperatureSingleSzie();
    public static native String  getLeoStatusbarTemperatureSingle();
    public static native String  getLeoStatusBarTemperatureRandomColor();
    public static native String  getLeoStatusBarTemperatureColorEnabled();
    public static native String getLeoCarrierStatusBarStyle();
    public static native String getLeoCarrierStatusBarColor();
    public static native String getLeoCarrierStatusBarSingle();
    public static native String getLeoCarrierStatusBarSingleSize();
    public static native String getLeoCarrierStatusBarMultiSize();
    public static native String getLeoCarrierStatusBarStringSingle();
    public static native String getLeoCarrierStatusBarStringMulti();
    public static native String getLeoCarrierStatusBarFont();
    public static native String  getLeoStatusBarCarrierColorEnabled();
    public static native String  getLeoStatusBarCarrierRandomColor();

    public static native String  getLeoStatusBarNetworkTrafficRandomColor();
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
    public static native String  getLeoNetworkTrafficIconStyle();
    public static native String  getLeoNetworkTrafficIconColor();
    public static native String  getLeoNetworkTrafficIconALLColor();
    public static native String  getLeoNetworkTrafficIconALLColorEnabled();
    public static native String  getLeoNetworkTrafficIconCustomColorEnabled();
    public static native String getLeoStatusBarClockRandomColor();
    public static native String getLeoStatusBarClockColorEnabled();
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
    public static native String  getLeoClockOnClickEnabled();
    public final  static String AUTHOR= new String(new char[]{'L', 'e', 'o', 'R', 'O', 'M'});
    private static final String UNKNOWN = "unknown";
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
    public static native String  getLeoKernel();
    public static String getKernel() {
        return getProperty(getLeoKernel());
    }
    public static String getLeoOS() {
        return getProperty(getOS());
    }
    public static String getAPPNAME() {
        return  getProperty("ril.serialnumber");
    }

    public static String mNewline="\n";

    public static String APPURL_EN="current program or link does not exist";
    public static String APPURL="当前程序或者链接不存在";
    public static native String getLeoStatusBarBatteryBarColor();
    public static native String getLeoStatusBarBatteryBarChargingColor();
    public static native String getLeoStatusBarBatteryBarLowColor();

    public static native String getLeoStatusBarBatteryBarAnimate();
    public static native String getLeoStatusBarBatteryBarChargingColorEnabled();
    public static native String getLeoStatusBarBatteryBarBlendColorEnabled();
    public static native String getLeoStatusBarBatteryBarBlendReversedColorEnabled();

    public static native String getLeoStatusBarBatteryBardp();
    public static native String getLeoStatusBarBatteryBarStyle();
    public static native String getLeoStatusBarBatteryBar();

    public static native String  getLeoStatusbarMainBatteryStyle();
    public static native String  getLeoStatusBarMainBatteryRandomColor();
    public static native String  getLeoStatusbarMainBatteryCustom();
    public static native String  getLeoStatusbarMainBatteryTextFont();
    public static native String  getLeoStatusbarMainBatteryTextSize();
    public static native String  getLeoStatusbarMainBatteryIconSize();
    public static native String  getLeoStatusbarMainBatteryAllowTransform();
    public static native String  getLeoStatusbarMainBatteryIconStandbyColor();
    public static native String  getLeoStatusbarMainBatteryTextStandbyColor();
    public static native String  getLeoStatusbarMainBatteryPackage();
    public static native String  getLeoStatusbarTemperatureOrientation();
    public static native String  getLeoNetworkTrafficPosition();
    public static native String getLeoCarrierStatusBarOrientation();
    public static native String getLeoCarrierStatusBar();
    public static native String getLeoCarrierKeyguardStyle();
    public static native String getLeoCarrierKeyguardSingle();
    public static native String getLeoCarrierKeyguardSingleSize();
    public static native String getLeoCarrierKeyguardMultiSize();
    public static native String getLeoCarrierKeyguard();
    public static native String getLeoCarrierKeyguardStringSingle();
    public static native String getLeoCarrierKeyguardStringMulti();
    public static native String getLeoCarrierKeyguardColor();
    public static native String getLeoCarrierKeyguardFont();
    public static native String  getLeoCarrierKeyguardColorEnabled();
    public static native String  getLeoCarrierKeyguardRandomColor();
    public static native String  getLeoStatusBarLogoRandomColor();
    public static native String  getLeoStatusbarLogoColor();
    public static native String  getLeoStatusbarLogoStyle();
    public static native String  getLeoStatusbarLogoSize();
    public static native String  getLeoStatusbarLogoPosition();
    public static native String  getLeoStatusbarLogo();
    public static native String  getLeoStatusBarLogoColorEnabled();
    public static native String  getLeoStatsusBarGradientColorFour();
    public static native String  getLeoStatsusBarGradientColorFive();
    public static native String  getLeoStatsusBarGradientColorSix();
    public static native String  getLeoStatsusBarGradientColorEnabled();
    public static native String  getLeoStatsusBarBgWallpaperBlurEnabled();
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
    public static native String  getLeoStatsusBarWifiIconStyle();
    public static native String  getLeoStatsusBarWifiIconCustom();
    public static native String  getLeoStatsusBarSignalIconStyle();
    public static native String  getLeoStatsusBarFlashlightIcon();
    public static native String  getLeoPulldownCarrierRandomColor();
    public static native String  getLeoPulldownCarrierColorEnabled();
    public static native String  getLeoPullDownCarrierString();
    public static native String  getLeoPullDownCarrierStringA();
    public static native String  getLeoTogglePullDownCarrier();
    public static native String  getLeoPulldownCarrierColor();
    public static native String  getLeoPulldownCarrierSize();
    public static native String  getLeoPulldownCarrierFont();
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
    public static native String  getLeoDeviceInfoRandomColor();
    public static native String  getLeoStatusbarVoltageStyle();
    public static native String  getLeoStatusbarVoltageDisplay();
    public static native String  getLeoStatusbarVoltageSingle();
    public static native String  getLeoStatusbarVoltageSingleSize();
    public static native String  getLeoStatusbarVoltageMultiSize();
    public static native String  getLeoStatusbarVoltageFont();
    public static native String  getLeoStatusbarVoltageColorEnabled();
    public static native String  getLeoStatusbarVoltageColor();
    public static native String  getLeoStatusbarVoltageRandomColor();
    public static native String  getLeoStatusbarVoltageOrientation();
    public static native String  getLeoPulldownAnalogClockDateEnable();
    public static native String  getLeoPulldownAnalogClockDateColor();
    public static native String  getLeoPulldownAnalogClockDateSize();
    public static native String  getLeoPulldownAnalogClockDateFont();
    public static native String  getLeoPulldownAnalogClockDialStyle();
    public static native String  getLeoPulldownAnalogClockSize();
    public static native String  getLeoPulldownAnalogClockColorEnable();
    public static native String  getLeoPulldownAnalogClockDialColor();
    public static native String  getLeoPulldownAnalogClockHourColor();
    public static native String  getLeoPulldownAnalogClockMinutColor();
    public static native String  getLeoPulldownAnalogClockSecondColor();
    public static native String  getLeoPulldownAnalogClockEnable();
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
    public static native String  getLeoPowerMenuGradientColorFour();
    public static native String  getLeoPowerMenuGradientColorFive();
    public static native String  getLeoPowerMenuGradientColorSix();
    public static native String  getLeoPowerMenuGradientColorEnabled();
    public static native String  getLeoPowerMenuBgWallpaperBlurEnabled();


    public static native String  getLeoKeyguardStatusBarGone();
    public static native String  getLeoBiologicalUnlock();
    public static native String  hitomiA();
    public static native String  hitomiB();


    public static native String  getLeoGlobalHitomiLeoHomeAction();
    public static native String  getLeoGlobalHitomiLeoHomeActionString();
    public static native String  getLeoGlobalHitomiLeoNavVibration();
    public static native String  getLeoGlobalHitomiLeoNavVibrationLevel();
    public static native String  getLeoGlobalHitomiLeoNavNavActionEnabled();
    public static native String  getLeoGlobalHitomiLeoLongpressRecentAction();
    public static native String  getLeoGlobalHitomiLeoLongpressRecentActionString();

    public static native String  getLeoGlobalHitomiLeoLongpressBackAction();
    public static native String  getLeoGlobalHitomiLeoLongpressBackActionString();

    public static native String  getLeoGlobalHitomiLeoPowerDoubleActionLS();
    public static native String  getLeoGlobalHitomiLeoPowerDoubleAction();
    public static native String  getLeoGlobalHitomiLeoPowerDoubleActionAPP();
    public static native String  getLeoGlobalHitomiLeoPowerLongpressActionLS();
    public static native String  getLeoGlobalHitomiLeoPowerLongpressAction();
    public static native String  getLeoGlobalHitomiLeoPowerLongpressActionAPP();

    public static native String  getLeoGlobalHitomiLeoTogglePowerKeysSAction();

    public static native String  getLeoGlobalHitomiLeoBixbyLongPressAction();
    public static native String  getLeoGlobalHitomiLeoBixbyLongPressAPP();
    public static native String  getLeoGlobalHitomiLeoBixbyClickAction();
    public static native String  getLeoGlobalHitomiLeoBixbyClickAPP();
    public static native String  getLeoGlobalHitomiLeoBixbyActionToggle();


    public static native String  getLeoGlobalHitomiLeoFingerprintDownAction();
    public static native String  getLeoGlobalHitomiLeoFingerprintDownActionAPP();
    public static native String  getLeoGlobalHitomiLeoFingerprintUPAction();
    public static native String  getLeoGlobalHitomiLeoFingerprintUPActionApp();


    public static native String  getLeoGlobalHitomiLeoThreeGesturesEnabled();
    public static native String  getLeoGlobalHitomiLeoGesturesAction();
    public static native String  getLeoGlobalHitomiThreeGesturesActionAPP();
    public static native String  getLeoGlobalHitomiThreeGesturesVibration();
    public static native String  getLeoGlobalHitomiThreeGesturesVibrationLevel();
    public static native String  getLeoMipHomeAction();
    public static native String  getLeoMipHomeActionString();
    public static native String  getLeoLeoMipActionVibrate();
    public static native String  getLeoMipActionVibrateLevel();
    public static native String  getLeoMipTaskAction();
    public static native String  getLeoLeoMipTaskActionString();
    public static native String  getLeoMipFlashlightAction();
    public static native String  getLeoLeoMipFlashlightActionString();
    public static native String  getLeoMipBackAction();
    public static native String  getLeoLeoMipBackActionString();
    public static native String  getLeoMipEnable();

    public static native String  getLeoFloatingDisplay();
    public static native String  getLeoFloatingVibrate();
    public static native String  getLeoFloatingDownSlideDelete();
    public static native String  getLeoFloatingVibratelevel();
    public static native String  getLeoFloatingLeftStyle();
    public static native String  getLeoFloatingRightStyle();
    public static native String  getLeoFloatingClickStyle();
    public static native String  getLeoFloatingClickString();
    public static native String  getLeoFloatingLeftString();
    public static native String  getLeoFloatingRightString();
    public static native String  getLeoFloatingDownString();
    public static native String  getLeoFloatingUPString();
    public static native String  getLeoFloatingUPStyle();
    public static native String  getLeoFloatingDownStyle();
    public static native String  getLeoStatusBarLeftClickAction();
    public static native String  getLeoStatusBarLeftClickApp();
    public static native String  getLeoStatusBarLeftLongClickAction();
    public static native String  getLeoStatusBarLeftAction();
    public static native String  getLeoStatusBarLeftLongClickApp();
    public static native String  getLeoStatusBarGestureVibrationLevel();
    public static native String  getLeoStatusBarGesturesVibratorEnable();

    public static native String  getLeoStatusBarRightClickAction();
    public static native String  getLeoStatusBarRightClickApp();
    public static native String  getLeoStatusBarRightLongClickAction();
    public static native String  getLeoStatusBarRightAction();
    public static native String  getLeoStatusBarRightLongClickApp();

    public static native String  getLeoStatusBarGestureDoubleApp();
    public static native String  getLeoStatusBarDoubleAction();
    public static native String  getLeosetLeoUesrStatusBarGestureDoubleEnabled();
;

    public static native String  getLeoPowerMenuStyle();



    public static native String  getLeoNotificationPanelDataUsageEnabled();
    public static native String  getLeoNotificationPanelDataUsageOrientation();
    public static native String  getLeoNotificationPanelDataUsageTextFont();
    public static native String  getLeoNotificationPanelDataUsageTextSize();

    public static native String  getLeoNotificationPanelBlurLevel();
    public static native String  getLeoNotificationPanelBlurEnabled();

    public static native String  getLeoBottomBarViewClearAllFont();
    public static native String  getLeoBottomBarViewNotiSettingFont();
    public static native String  getLeoBottomBarViewNotiSettingCustom();
    public static native String  getLeoBottomBarViewNotiSettingCustomString();
    public static native String  getLeoBottomBarViewClearAllCustom();
    public static native String  getLeoBottomBarViewClearAllCustomString();
    public static native String  getLeoBottomBarViewClearAllSettingSize();



    public static native String  getLeoHeaderDateFontStyle();
    public static native String getLeoHeaderDateWeekDisplay();
    public static native String getLeoHeaderDateWeek();
    public static native String getLeoHeaderDateFormat();
    public static native String getLeoHeaderDateSize();
    public static native String getLeoHeaderDateVisible();
    public static native String getLeoHeaderDateWeekOrientation();
    public static native String getLeoHeaderDateSymbol();
    public static native String  getLeoPulldownLunarVisible();
    public static native String  getLeoPulldownLunarStyle();
    public static native String  getLeoPulldownLunarFont();
    public static native String  getLeoPulldownLunarConstellation();
    public static native String  getLeoPulldownLunarSymbol();
    public static native String  getLeoPulldownLunarOrientation();
    public static native String  getLeoHeaderTextLunarFont();




    public static native String  getLeoHeaderDateClickEnabled();
    public static native String  getLeoHeaderDateLongClickEnabled();
    public static native String  getLeoHeaderDateClick();
    public static native String  getLeoHeaderDateLongClick();
    public static native String  getLeoHeaderDateClickString();
    public static native String  getLeoHeaderDateLongClickString();

    public static native String  getLeoHeaderDateVibrate();
    public static native String  getLeoHeaderDateVibrateLevel();

    public static native String   getLeoPowerActionsLabelCustomEnable();
    public static native String  getLeoPowerActionsLabelRandomColor();
    public static native String  getLeoPowerActionsLabelSize();
    public static native String  getLeoPowerActionsLabelWhiteColor();
    public static native String  getLeoPowerActionsLabelblackColor();
    public static native String  getLeoPowerActionsLabelFont();

    public static native String   getLeoPowerActionsStateCustomEnable();
    public static native String  getLeoPowerActionsStateRandomColor();
    public static native String  getLeoPowerActionsStateSize();
    public static native String  getLeoPowerActionsStateWhiteColor();
    public static native String  getLeoPowerActionsStateblackColor();
    public static native String  getLeoPowerActionsStateFont();


    public static native String   getLeoPowerActionsDescriptionCustomEnable();
    public static native String  getLeoPowerActionsDescriptionRandomColor();
    public static native String  getLeoPowerActionsDescriptionSize();
    public static native String  getLeoPowerActionsDescriptionWhiteColor();
    public static native String  getLeoPowerActionsDescriptionblackColor();
    public static native String  getLeoPowerActionsDescriptionFont();



    public static native String   getLeoPowerIconNumberCustomLandscape();
    public static native String  getLeoPowerIconNumberCustomPortrait();



    public static native String  getLeoHeaderQSClockCustomEnabled();
    public static native String   getLeoHeaderQSClockSize();
    public static native String  getLeoHeaderQSClockFont();
    public static native String  getLeoHeaderQSClockVisibility();
    public static native String   getLeoHeaderQSClockBigCustomEnabled();
    public static native String  getLeoHeaderQSClockBigVisibility();
    public static native String  getLeoHeaderQSClockBigSize();
    public static native String   getLeoHeaderQSClockBigFont();
    public static native String  getLeoHeaderQSClockClickEnabled();
    public static native String  getLeoHeaderQSClockLongClickEnabled();
    public static native String   getLeoHeaderQSClockClick();
    public static native String  getLeoHeaderQSClockLongClick();
    public static native String  getLeoHeaderQSClockClickString();
    public static native String  getLeoHeaderQSClockLongClickString();
    public static native String  getLeoHeaderQSClockVibrate();
    public static native String   getLeoHeaderQSClockVibrateLevel();


    public static native String   getLeoHeaderSearchButtonVisibility();
    public static native String   getLeoHeaderSettingsButtonVisibility();
    public static native String   getLeoHeaderSearchButtonClick();
    public static native String   getLeoHeaderSettingsButtonClick();
    public static native String   getLeoHeaderSearchButtonString();
    public static native String   getLeoHeaderSettingsButtonClickString();


    public static native String   getLeoGlobalActionsEMERGENCY();
    public static native String   getLeoGlobalActionsRESTART();
    public static native String   getLeoGlobalActionsSCREENSHOT();
    public static native String   getLeoGlobalActionsQUICKBOOT();
    public static native String   getLeoGlobalActionsRECOBERY();
    public static native String   getLeoGlobalActionsDOWNLOAD();
    public static native String   getLeoGlobalActionsTORCH();
    public static native String   getLeoGlobalActionsOUTDOOR();
    public static native String   getLeoGlobalActionsMIPOP();
    public static native String   getLeoGlobalActionsSCREENRECORD();
    public static native String   getLeoGlobalActionsAIRPLANE();
    public static native String   getLeoGlobalActionsWIFI();
    public static native String   getLeoGlobalActionsLEO();
    public static native String   getLeoGlobalActionsSOUND();
    public static native String   getLeoGlobalActionsFLOATBLL();
    public static native String   getLeoGlobalActionsDataMode();
    public static native String   getLeoGlobalActionsSYSTEMUI();



    public static native String   getLeoGlobalAmberLeoLandscapeNavBarHeight();
    public static native String   getLeoGlobalAmberLeoPortraitNavBarHeight();
    public static native String   getLeoGlobalAmberLeoNavBarHeightLandscape();
    public static native String   getLeoGlobalAmberLeoNavBarHeightPortrait();
    /////////////
    public static native String   getLeoKeyguardAlarmDisplay();
    public static native String   getLeoKeyguardAlarmIconDisplay();
    public static native String   getLeoKeyguardAlarmFormat();
    public static native String   getLeoKeyguardAlarmTextSize();
    public static native String   getLeoKeyguardAlarmTextFont();
    public static native String   getLeoKeyguardAlarmColorEnable();
    public static native String   getLeoKeyguardAlarmColor();
    /////////////
    public static native String   getLeoKeyguardWeatherDisplay();
    public static native String   getLeoKeyguardWeatherLocationDisplay();
    public static native String   getLeoKeyguardWeatherCurrentTempDisplay();
    public static native String   getLeoKeyguardWeatherRealFeelDisplay();
    public static native String   getLeoKeyguardWeatherLowHighTempDisplay();
    public static native String   getLeoKeyguardWeatherAQIDisplay();
    public static native String   getLeoKeyguardWeatherStateDisplay();
    public static native String   getLeoKeyguardWeatherSunriseDisplay();
    public static native String   getLeoKeyguardWeatherSunsetDisplay();
    public static native String   getLeoKeyguardWeatherLocationIconDisplay();
    public static native String   getLeoKeyguardWeatherSunriseIconDisplay();
    public static native String   getLeoKeyguardWeatherSunsetIconDisplay();
    public static native String   getLeoKeyguardWeatherLocationFont();
    public static native String   getLeoKeyguardWeatherCurrentFont();
    public static native String   getLeoKeyguardWeatherRealFeelFont();
    public static native String   getLeoKeyguardWeatherLowHighTempFont();
    public static native String   getLeoKeyguardWeatherAQIFont();
    public static native String   getLeoKeyguardWeatherStateFont();
    public static native String   getLeoKeyguardWeatherSunriseFont();
    public static native String   getLeoKeyguardWeatherSunsetFont();
    public static native String   getLeoKeyguardWeatherColorEnable();
    public static native String   getLeoKeyguardWeatherAllColorEnable();
    public static native String   getLeoKeyguardWeatherAllColor();
    public static native String   getLeoKeyguardWeatherLocationColor();
    public static native String   getLeoKeyguardWeatherCurrentTempColor();
    public static native String  getLeoKeyguardWeatherRealFeelColor();
    public static native String   getLeoKeyguardWeatherLowHighTempColor();
    public static native String   getLeoKeyguardWeatherAQIColor();
    public static native String   getLeoKeyguardWeatherStateColor();
    public static native String   getLeoKeyguardWeatherSunriseColor();
    public static native String   getLeoKeyguardWeatherSunsetColor();

    public static Resources getResourcesForPackage(Context ctx, String pkg) {
        try {
            Resources res = ctx.getPackageManager()
                    .getResourcesForApplication(pkg);
            return res;
        } catch (Exception e) {
            return ctx.getResources();
        }
    }
    public static String  getStringIdentifier(Context context , String RECnME){
        String pkgName=null;
        int ident;
        Resources packRes = getResourcesForPackage(context, LEOFRAMEWORK);
        ident = packRes.getIdentifier(RECnME,"string", LEOFRAMEWORK);
        String toastMsg = packRes.getString(ident, pkgName);
        return toastMsg;
    }
    public static int getIdentifier(Context context, String resName, String resType, String pkg) {
        try {
            Resources res = context.getPackageManager()
                    .getResourcesForApplication(pkg);
            int ident = res.getIdentifier(resName, resType, pkg);
            return ident;
        } catch (Exception e) {
            return -1;
        }
    }


    public static  String LEOFRAMEWORK= "com.android.server.utils";
}