package com.android.settingslib.salt.utils;

import android.content.Context;

import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoBoolean;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoInt;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoString;
import static com.android.settingslib.salt.SaltConfigFrame.mSaltContext;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.SaltValues.Values20;
import static com.android.settingslib.salt.SaltValues.mDarkModeFillColor;
import static com.android.settingslib.salt.SaltValues.mLightModeFillColor;

public class LeoManages{

    public static  String Config = "salt-config";
    static {
        System.loadLibrary(Config);
    }
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
    public static final String mLeoChineseClock=rt100foleo("X2NoaW5hZGV0YWls");
    public  static native String getLeoFramework();
    static native String getLeoStatusbarBattery();
    static native String getLeoKeyguardLunar();
    static native String getLeoStatusbarBatteryBar();
    static native String getLeoStatusbarTemp();
    static native String getLeoSize();
    static native String getLeoFont();
    static native String getLeoStr();
    public static native String getLeoService();
    static native String getLeoStyle();
    static native String getLeoSymbol();
    static native String getLeoSymbolString();
    static native String getLeoColor();
    static native String getLeoGlobalVibratorLevel();
    static native String getLeoGlobalVibratorEnable();
    static native String getLeoEnabled();
    static native String getLeoStatusbarClock();
    static native String getLeoStrokeThickness();
    static native String getLeoStatusbarSignal();
    static native String getLeoStatusbarLogo();
    static native String getLeoStatusbarNetworkTraffic();
    static native String getLeoStatusbarCarrier();
    static native String getLeoKeyguardCarrier();
    static native String getLeoAction();
    static native String getLeoStatusbarGesture();
    static native String getLeoNotificationPanelCarrier();
    static native String getLeoNotificationPanelAnalogClock();
    static native String getLeoKeyguardAction();
    static native String getLeoDeviceInfo();
    static native String getLeoLunar();
    static native String getLeoQSDate();
    static native String getLeoQSClock();
    static native String getLeoMiniPOP();
    static native String getLeoFloatBall();
    static native String getLeoQSBar();
    static native String getLeoAlpha();
    static native String getLeoQSButton();
    static native String getLeoPulldownBlur();
    static native String getLeoKeyguardAlarm();
    static native String getLeoKeyguardWeather();
    static native String getLeoQsSaltBar();
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
    public static int   setLeoStatusBarClockCustomColorEnabled;
    public static int  setLeoStatusBarClockCustomDarkColorEnabled;
    public static int setLeoStatusBarClockVibratorEnable;
    public static int setLeoStatusBarClockVibratorLevel;
    public static int setLeoStatusBarClockLunarMonthStyle;
    public static int setLeoStatusBarClockOrientation;
    //////////////////////////////////////////////////////////
    public static float setLeoStatusBarMainBatteryStartPadding;
    public static float setLeoStatusBarMainBatteryEndPadding;
    public  static int  setLeoStatusbarMainBatterySize=60;
    public  static int  setLeoStatusbarMainBatteryEnabled=0;
    public  static String  setLeoStatusbarMainBatteryPackage;
    public static int   setLeoStatusBarMainBatteryLowStyle;
    public static int   setLeoStatusBarMainBatteryCustomColorEnabled;
    public static int  setLeoStatusBarBatteryBarColorEnabled;
    public static int setLeoStatusBarMainBatteryColor;
    public static int setLeoStatusBarMainBatteryChargeColor;
    public static int setLeoStatusBarBatteryPercentSize;
    public static int setLeoStatusBarBatteryPercentFont;
    public static int   setLeoStatusBarSignalOrientation;
    ////////////////////////////////////////////////////////

    public  static boolean  setLeoUesrStatusbarNetworkEnabled=false;
    public  static boolean  setLeoUesrStatusbarNetworkArrowEnabled=true;
    public  static int setLeoUesrStatusbarNetworkArrowStyle;
    public  static boolean  setLeoUesrStatusbarNetworkArrowPosition=false;
    public  static int setLeoUesrStatusbarNetworkTextSize=9;
    public  static int setLeoUesrStatusbarNetworkAutoHideThreshold;
    public  static float setLeoStatusBarNetworkStartPadding;
    public  static float setLeoStatusBarNetworkEndPadding;
    public static float setLeoStatusBarNetworkArrowsPadding;
    public  static int setLeoUesrStatusbarNetworkPosition;
    public static int   setLeoStatusBarNetworkCustomColorEnabled;
    public static int  setLeoStatusBarNetworkTrafficType;
    public static int setLeoStatusBarNetworkColor;
    public static int setLeoStatusBarNetworkIconColor;
    public static int setLeoStatusBarNetworkRefreshInterval;
    public  static boolean  setLeoUesrStatusbarNetworkExtendsColor=false;
    public static int setLeoStatusBarNetworkFont=0;
    ///////////////////
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
    ////
    public static int  setLeoKeyguardCarrierFont=0;

    public static int  setLeoKeyguardCustomCarrier=0;
    public static int  setLeoKeyguardCarrierSymbol=0;
    public static String  setLeoKeyguardCustomCarrierSymbol;
    public static String  setLeoKeyguardCustomCarrierStringA;
    public static String  setLeoKeyguardCustomCarrierStringB;
    public static int  setLeoKeyguardCarrierColor;
    public static int  setLeoKeyguardCarrierCustomColorEnabled;

    public static boolean setLeoKeyguardCarrier=true;
    public static int  setLeoKeyguardCarrierSize=14;
    public static int  setLeoKeyguardCarrierMulti;
    ///
    public  static int setLeoUesrStatusbarWIFIIcon;
    public  static int setLeoUesrStatusbarSignalIcon;
    public  static boolean setLeoUesrStatusbarSignalIconEnabled;
    public  static boolean setLeoUesrStatusbarWifiIconEnabled;
    public static boolean setLeoStatusBar5Gicon;
    public static boolean setLeoStatusBar5GStyle;
    ////////
    public static int setLeoStatusBarSlideGestureEnabled;
    public static int  setLeoStatusBarLongPressGestureEnabled;
    public static int  setLeoStatusBarGestureVibratorEnable=0;
    public static int  setLeoStatusBarGestureLongPress=0;
    public static int  setLeoStatusBarGestureLeftSlide=0;
    public static int  setLeoStatusBarGestureRightSlide=0;
    public static int  setLeoStatusBarGestureVibratorLevel=15;
    public static boolean setLeoStatusBarLeftAction;
    public static int setLeoStatusBarLeftActionStyle;
    public static int setLeoStatusBarLeftActionColor;
    public static boolean setLeoStatusBarRightAction;
    public static int setLeoStatusBarRightActionStyle;
    public static int setLeoStatusBarRightActionColor;
    //
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
    ///
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
    public static boolean setLeoKeyguardDoubleTapToSleepEnabled=false;
    public static int setLeoKeyguardDoubleTap;
    public static boolean setLeoKeyguardDoubleTapToSleepAnywhere=false;
    /////////////////////
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
    public static int setLeoDeviceInfoStatusbarFont;
    public static int setLeoDeviceInfoStatusbarSize;
    public static int setLeoDeviceInfoStatusbarStyle;
    public static boolean setLeoDeviceInfoStatusbar;

    public static int  setLeoQSheaderClockFont=0;
    public static boolean setLeoQSheaderClockEnabled=true;
    public static int setLeoQSheaderClockChinaTimeDetailSymbolStyle=0;
    public static int setLeoQSheaderClockChinaTimeDetailScaling=0;
    public static int setLeoQSheaderClockChinaTimeDetailStyle=0;
    public static int setLeoQSheaderClockChinaTimeDetailZoomEnabled=1;
    public static boolean setLeoQSheaderClockChinaTimeDetailsEnabled=false;

    public static boolean setLeoQSheaderDateDisplayEnabled=true;
    public static boolean setLeoQSheaderDateWeekDisplayEnabled=true;
    public static boolean setLeoQSheaderDateLunarDisplayEnabled=true;
    public static boolean setLeoQSheaderDateLunarFestivalSymbolEnabled=false;
    public static boolean setLeoQSheaderDateLunarZodiacSymbolEnabled=false;
    public static int setLeoQSheaderDateLunarMonthStyle=0;
    public static int setLeoQSheaderDateLunarStyle=1;
    public static int setLeoQSheaderDateWeekStyle=0;
    public static int setLeoQSheaderDateDateFont=0;
    //////////////////////////
    public static int  setLeoQSDataUsageOrientation=0;
    public static int  setLeoQSDataUsageSize=13;
    public static int  setLeoQSDataUsageFont=0;
    public static int  setLeoQSDataUsageColor;
    public static boolean setLeoQsDataUsageBarEnabled=true;
    public static boolean setLeoQsMultiSIMBarEnabled=true;
    public static boolean  setLeoQsDataUsageBarExpandedEnabled=false;
    public static boolean  setLeoQSDataUsageColorEnabled=false;
///////////
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
    ////
    public static boolean setLeoPulldownBlur=false;
    public static int setLeoPulldownBlurStyle;
    ////////////
    public static boolean setLeoKeyguardLunar=true;
    public static int setLeoKeyguardLunarStyle=5;
    public static int setLeoKeyguardLunarMonthStyle=0;
    public static boolean setLeoKeyguardLunarFestivalSymbolEnabled=false;
    public static boolean setLeoKeyguardLunarZodiacSymbolEnabled=false;
    public static boolean setLeoKeyguardLunarColorEnabled=false;
    public static int setLeoKeyguardLunarColor;
    public static int setLeoKeyguardLunarSize=15;
    public static int setLeoKeyguardLunarFont=0;
    ///
    public static boolean setLeoKeyguardAlarm=false;
    public static boolean  setLeoKeyguardAlarmIcon=true;
    public static int setLeoKeyguardAlarmColorEnr;
    public static int setLeoKeyguardAlarmColorFont;
    public static int setLeoKeyguardAlarmcapEnr;
    public static int setLeoKeyguardAlarmColor;
    public static int setLeoKeyguardAlarmSize;
    public static int setLeoKeyguardAlarmIconColor;
    //
    static native String getLeoNavGesture();
    public static boolean  setLeoKeyguardStatusBarViewVisibilities;
    public static boolean setLeoNavGestureEnabled=false;
    public static int setLeoNavGesture;
    public static int  setLeoNavGestureVibratorEnable=0;
    public static int  setLeoNavGestureVibratorLevel=15;
    /////
    public static int  setLeoQsSaltBarEndActionStyle=0;
    public static int  setLeoQsSaltBarEndActionCollapsePanels=1;
    public static boolean  setLeoQsSaltBarEndActionEnabled=true;
    public static int  setLeoQsSaltBarStartActionStyle=1;
    public static int  setLeoQsSaltBarStartActionCollapsePanels=1;
    public static boolean  setLeoQsSaltBarStartActionEnabled=true;
    public static boolean  setLeoQsSaltBarEnabled=true;
    public static boolean  setLeoQsSaltBarColorEnabled=false;
    public static int  setLeoQsSaltBarStartActionColor;
    public static int  setLeoQsSaltBarEndActionColor;
    public static int  setLeoQsSaltBarDeviceInfoColor;
    public static void LeoSysUiManages(Context context){
        setLeoStatusBarClockShow=getLeoInt(context,mLeoStatusBarClock[0],1)==1;
        setLeoStatusBarClockShowSeconds=getLeoInt(context,mLeoStatusBarClock[1],0)==1;
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
        setLeoStatusBarClockCustomColorEnabled=getLeoInt(context,mLeoStatusBarClock[29],0);
        setLeoStatusBarClockColor=getLeoInt(context,mLeoStatusBarClock[30],mLightModeFillColor);
        setLeoStatusBarClockVibratorLevel=getLeoInt(context,mLeoStatusBarClock[31],15);
        setLeoStatusBarClockVibratorEnable=getLeoInt(context,mLeoStatusBarClock[32],0);
        setLeoStatusBarClockCustomDarkColorEnabled=getLeoInt(context,mLeoStatusBarClock[33],0);
        setLeoStatusBarDarkClockColor=getLeoInt(context,mLeoStatusBarClock[34],mDarkModeFillColor);
        setLeoStatusBarClockLunarMonthStyle=getLeoInt(context, mLeoStatusBarClock[2], 0);
        setLeoStatusBarClockOrientation=getLeoInt(context, mLeoStatusBarClock[35], 0);
        //////////////////////////////////////////////////////////
        setLeoStatusbarMainBatteryPackage=getLeoString(context,mLeoStatusBarMainBattery[0]);
        setLeoStatusbarMainBatteryEnabled=getLeoInt(context,mLeoStatusBarMainBattery[1],0);
        setLeoStatusbarMainBatterySize= getLeoInt(context,mLeoStatusBarMainBattery[2] ,60);
        setLeoStatusBarMainBatteryStartPadding=getLeoInt(context,mLeoStatusBarMainBattery[3],1)/ 0.2F;
        setLeoStatusBarMainBatteryEndPadding=getLeoInt(context ,mLeoStatusBarMainBattery[4],1)/ 0.2F;
        setLeoStatusBarMainBatteryCustomColorEnabled=getLeoInt(context,mLeoStatusBarMainBattery[5],0);
        setLeoStatusBarMainBatteryColor=getLeoInt(context,mLeoStatusBarMainBattery[7],mLightModeFillColor);
        setLeoStatusBarBatteryPercentSize=getLeoInt(context,mLeoStatusBarMainBattery[8],15);
        setLeoStatusBarBatteryPercentFont=getLeoInt(context,mLeoStatusBarMainBattery[9],0);
        setLeoStatusBarMainBatteryLowStyle=getLeoInt(context,mLeoStatusBarMainBattery[10],15);
        setLeoStatusBarSignalOrientation=getLeoInt(context,mLeoStatusBarMainBattery[11],0);
        setLeoStatusBarMainBatteryChargeColor=getLeoInt(context,mLeoStatusBarMainBattery[22], 0xFF00FF00);
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

        setLeoUesrStatusbarNetworkEnabled=getLeoInt(context,mLeoStatusBarNetworkTraffic[0],0) == 1;
        setLeoUesrStatusbarNetworkArrowEnabled=getLeoInt(context,mLeoStatusBarNetworkTraffic[1],1) == 1;
        setLeoUesrStatusbarNetworkArrowStyle=getLeoInt(context,mLeoStatusBarNetworkTraffic[2],0) ;
        setLeoUesrStatusbarNetworkArrowPosition=getLeoInt(context,mLeoStatusBarNetworkTraffic[3],0) == 1;
        setLeoUesrStatusbarNetworkTextSize=getLeoInt(context,mLeoStatusBarNetworkTraffic[4],9) ;
        setLeoUesrStatusbarNetworkAutoHideThreshold=getLeoInt(context,mLeoStatusBarNetworkTraffic[5],0);
        setLeoStatusBarNetworkStartPadding=getLeoInt(context,mLeoStatusBarNetworkTraffic[6],1)/ 0.2F;
        setLeoStatusBarNetworkEndPadding=getLeoInt(context ,mLeoStatusBarNetworkTraffic[7],1)/ 0.2F;
        setLeoStatusBarNetworkArrowsPadding=getLeoInt(context ,mLeoStatusBarNetworkTraffic[8],1)/ 0.2F;
        setLeoUesrStatusbarNetworkPosition=getLeoInt(context,mLeoStatusBarNetworkTraffic[9],0) ;
        setLeoStatusBarNetworkCustomColorEnabled=getLeoInt(context,mLeoStatusBarNetworkTraffic[10],0);
        setLeoStatusBarNetworkTrafficType=getLeoInt(context,mLeoStatusBarNetworkTraffic[11],0);
        setLeoStatusBarNetworkColor=getLeoInt(context,mLeoStatusBarNetworkTraffic[12],mLightModeFillColor);
        setLeoStatusBarNetworkRefreshInterval=getLeoInt(context,mLeoStatusBarNetworkTraffic[14],2);
        setLeoStatusBarNetworkIconColor=getLeoInt(context,mLeoStatusBarNetworkTraffic[13],mDarkModeFillColor);
        setLeoUesrStatusbarNetworkExtendsColor=getLeoInt(context,mLeoStatusBarNetworkTraffic[15],0)==1;
        setLeoStatusBarNetworkFont=getLeoInt(context,mLeoStatusBarNetworkTraffic[16],0);
        //////////////
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
        //////
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

        setLeoKeyguardCarrierSymbol=getLeoInt(context,
                mLeoKeyguardCarrier[7], 0);
        setLeoKeyguardCustomCarrierSymbol=getLeoString(context,
                mLeoKeyguardCarrier[8]);
        setLeoKeyguardCarrierCustomColorEnabled=getLeoInt(context,mLeoKeyguardCarrier[9],0);

        setLeoKeyguardCarrierColor=getLeoInt(context,mLeoKeyguardCarrier[10],mLightModeFillColor);
       setLeoKeyguardStatusBarViewVisibilities=getLeoInt(context,
              mLeoKeyguardCarrier[11], 0)==1;
        ///////////////////////////////
        setLeoUesrStatusbarWifiIconEnabled=getLeoInt(context,
                StatusbarIcon[0], 0)==1;
        setLeoUesrStatusbarWIFIIcon=getLeoInt(context,
                StatusbarIcon[1], 1);
        setLeoUesrStatusbarSignalIconEnabled=getLeoInt(context,
                StatusbarIcon[2], 0)==1;
        setLeoUesrStatusbarSignalIcon=getLeoInt(context,
                StatusbarIcon[3], 15);
        setLeoStatusBar5Gicon=getLeoInt(context,
                StatusbarIcon[4], 0)!= 0;
        setLeoStatusBar5GStyle=getLeoInt(context,
               "leo_g5_icon_style", 0)==1;
        ///////////////////////
        setLeoStatusBarGestureLongPress=getLeoInt(context,mLeoStatusBarGesture[0],0);
        setLeoStatusBarGestureLeftSlide=getLeoInt(context,mLeoStatusBarGesture[1],0);
        setLeoStatusBarGestureRightSlide=getLeoInt(context,mLeoStatusBarGesture[2],0);
        setLeoStatusBarLongPressGestureEnabled=getLeoInt(context,mLeoStatusBarGesture[3],0);
        setLeoStatusBarSlideGestureEnabled=getLeoInt(context,mLeoStatusBarGesture[4],0);
        setLeoStatusBarGestureVibratorEnable=getLeoInt(context,mLeoStatusBarGesture[5],0);
        setLeoStatusBarGestureVibratorLevel=getLeoInt(context,mLeoStatusBarGesture[6],16);
        setLeoStatusBarLeftAction=getLeoInt(context,mLeoStatusBarGesture[7],0)==1;
        setLeoStatusBarLeftActionStyle=getLeoInt(context,mLeoStatusBarGesture[8],0);
        setLeoStatusBarLeftActionColor=getLeoInt(context,mLeoStatusBarGesture[11],-2138869761);
        setLeoStatusBarRightAction=getLeoInt(context,mLeoStatusBarGesture[9],0)==1;
        setLeoStatusBarRightActionStyle=getLeoInt(context,mLeoStatusBarGesture[10],0);
        setLeoStatusBarRightActionColor=getLeoInt(context,mLeoStatusBarGesture[12],-2138869761);
        //
        setLeoStatusBarBatteryBarThickness=getLeoInt(context,mLeoStatusBarMainBattery[12],1);
        setLeoStatusBarBatteryBarStyle=getLeoInt(context,mLeoStatusBarMainBattery[13],0);
        setLeoStatusBarBatteryBarLocation=getLeoInt(context,mLeoStatusBarMainBattery[14],0);
        setLeoStatusBarBatteryBarColor=getLeoInt(context,mLeoStatusBarMainBattery[15],0xFFFFFFFF);
        setLeoStatusBarBatteryBarChargingColor=getLeoInt(context,mLeoStatusBarMainBattery[16],0xFF00FF00);
        setLeoStatusBarBatteryBarLowColorWarning=getLeoInt(context,mLeoStatusBarMainBattery[17],0xFFFF6600);

        setLeoStatusBarBatteryBarAnimateCharging=getLeoInt(context,mLeoStatusBarMainBattery[18],0)==1;
        setLeoStatusBarBatteryBarLowColor=getLeoInt(context,mLeoStatusBarMainBattery[19], 0xFFFF4444);
        setLeoStatusBarBatteryBarHighColor=getLeoInt(context,mLeoStatusBarMainBattery[20],0xFF99CC00);
        setLeoStatusBarBatteryBarGradientColorEnabled=getLeoInt(context,mLeoStatusBarMainBattery[21],0)==1;
        setLeoStatusBarBatteryBarColorEnabled=getLeoInt(context,mLeoStatusBarMainBattery[6],0);

        //
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
        /////////////
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
                mLeoDeviceInfo[19],1)==1;
        setLeoDeviceInfoStatusbarFont=getLeoInt(context,
                mLeoDeviceInfo[20],0);
        setLeoDeviceInfoStatusbarSize=getLeoInt(context,
                mLeoDeviceInfo[21],13);
        setLeoDeviceInfoStatusbarStyle=getLeoInt(context,
                mLeoDeviceInfo[22],4);
        //////////////////////////////
        ////////////////////////////////////////////
        setLeoQSheaderDateDisplayEnabled=getLeoInt(context,
                mLeoQSHeadsDate[0],1)==1;
        setLeoQSheaderDateWeekDisplayEnabled=getLeoInt(context,
                mLeoQSHeadsDate[1],1)==1;
        setLeoQSheaderDateLunarDisplayEnabled=getLeoInt(context,
                mLeoQSHeadsDate[2],1)==1;
        setLeoQSheaderDateLunarFestivalSymbolEnabled=getLeoInt(context,
                mLeoQSHeadsDate[3],0)==1;
        setLeoQSheaderDateLunarZodiacSymbolEnabled=getLeoInt(context,
                mLeoQSHeadsDate[4],0)==1;
        setLeoQSheaderDateLunarMonthStyle=getLeoInt(context,
                mLeoQSHeadsDate[5],0);
        setLeoQSheaderDateLunarStyle=getLeoInt(context,
                mLeoQSHeadsDate[6],1);
        setLeoQSheaderDateWeekStyle=getLeoInt(context,
                mLeoQSHeadsDate[7],0);
        setLeoQSheaderDateDateFont=getLeoInt(context,
                mLeoQSHeadsDate[8],0);


//////////////////////////////
        setLeoQSheaderClockEnabled=getLeoBoolean(context,
                mLeoQSHeadsClock[0],1);
        setLeoQSheaderClockChinaTimeDetailsEnabled=getLeoBoolean(context,
                mLeoQSHeadsClock[1],0);
        setLeoQSheaderClockFont=getLeoInt(context,
                mLeoQSHeadsClock[2],0);
        setLeoQSheaderClockChinaTimeDetailStyle=getLeoInt(context,
                mLeoQSHeadsClock[3],0);
        setLeoQSheaderClockChinaTimeDetailZoomEnabled=getLeoInt(context,
                mLeoQSHeadsClock[4],1);
        setLeoQSheaderClockChinaTimeDetailScaling=getLeoInt(context,
                mLeoQSHeadsClock[5],0);
        setLeoQSheaderClockChinaTimeDetailSymbolStyle=getLeoInt(context,
                mLeoQSHeadsClock[6],0);


        /////////////////////
        setLeoQsDataUsageBarEnabled=getLeoBoolean(context,
                mLeoQsBar[0],1);
        setLeoQsMultiSIMBarEnabled=getLeoInt(context,
                mLeoQsBar[1],1) != 0;
        setLeoQSDataUsageOrientation=getLeoInt(context,
                mLeoQsBar[2],0) ;
        setLeoQSDataUsageSize=getLeoInt(context,
                mLeoQsBar[3],13) ;
        setLeoQSDataUsageFont=getLeoInt(context,
                mLeoQsBar[4],0) ;
        setLeoQsDataUsageBarExpandedEnabled=getLeoBoolean(context,
                mLeoQsBar[5],0);
        setLeoQSDataUsageColorEnabled=getLeoInt(context,
                mLeoQsBar[6],0) ==1;
        setLeoQSDataUsageColor=getLeoInt(context,
                mLeoQsBar[7],Values20) ;
        /////////////////////
        setLeoFloatBallEnabled=getLeoBoolean(context,
                mLeoFloatBall[0 ],0);
        setLeoFloatBallDownSlideDelete=getLeoInt(context,
                mLeoFloatBall[1],0) ;
        setLeoFloatBallIconStyle=getLeoInt(context,
                mLeoFloatBall[2],9) ;
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
        /////
        setLeoPulldownBlur=getLeoInt(context,
                mLeoPulldownBlur[0],0) != 0;
        setLeoPulldownBlurStyle=getLeoInt(context,
                mLeoPulldownBlur[1],15);
        //////////
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
        /////////////
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
        ///
        setLeoNavGestureEnabled=getLeoInt(context,
                mLeoNavGesture[0],0)==1;
        setLeoNavGesture=getLeoInt(context,
                mLeoNavGesture[1],0);
        setLeoNavGestureVibratorEnable=getLeoInt(context,
                mLeoNavGesture[2],0);
        setLeoNavGestureVibratorLevel=getLeoInt(context,
                mLeoNavGesture[3],15);

        setLeoQsSaltBarEnabled=getLeoInt(context,
                SaltQsBar[0],1)==1;
        setLeoQsSaltBarEndActionEnabled=getLeoInt(context,
                SaltQsBar[1],1)==1;
        setLeoQsSaltBarEndActionStyle=getLeoInt(context,
                SaltQsBar[2],0);
        setLeoQsSaltBarEndActionCollapsePanels=getLeoInt(context,
                SaltQsBar[3],1);
        setLeoQsSaltBarStartActionEnabled=getLeoInt(context,
                SaltQsBar[4],1)==1;
        setLeoQsSaltBarStartActionStyle=getLeoInt(context,
                SaltQsBar[5],1);
        setLeoQsSaltBarStartActionCollapsePanels=getLeoInt(context,
                SaltQsBar[6],0);
        setLeoQsSaltBarColorEnabled=getLeoInt(context,
                SaltQsBar[7],0)==1;
        setLeoQsSaltBarEndActionColor=getLeoInt(context,
                SaltQsBar[8],Values20);
        setLeoQsSaltBarStartActionColor=getLeoInt(context,
                SaltQsBar[9],Values20);
        setLeoQsSaltBarDeviceInfoColor=getLeoInt(context,
                SaltQsBar[10],Values20);
    }
    public static final String[] SaltQsBar={
            getLeoQsSaltBar()+getLeoEnabled(),
            getLeoQsSaltBar()+"_end"+getLeoEnabled(),
            getLeoQsSaltBar()+"_end"+getLeoAction(),
            getLeoQsSaltBar()+"_end_collapsepanel",
            getLeoQsSaltBar()+"_start"+getLeoEnabled(),
            getLeoQsSaltBar()+"_start"+getLeoAction(),
            getLeoQsSaltBar()+"_start_collapsepanel",
            getLeoQsSaltBar()+getLeoColor()+getLeoEnabled(),
            getLeoQsSaltBar()+"_end"+getLeoColor(),
            getLeoQsSaltBar()+"_start"+getLeoColor(),
            getLeoDeviceInfo()+"_qsbar"+getLeoColor(),


    };
    public static final String[]  mLeoNavGesture={
            getLeoNavGesture()+getLeoEnabled(),
            getLeoNavGesture()+getLeoStyle(),
            getLeoNavGesture()+getLeoGlobalVibratorEnable(),
            getLeoNavGesture()+getLeoGlobalVibratorLevel(),
    };
    public static final String[] mLeoStatusBarGesture ={
            getLeoStatusbarGesture()+"_longPress"+getLeoAction()+getLeoStyle(),
            getLeoStatusbarGesture()+"_leftslide"+getLeoAction()+getLeoStyle(),
            getLeoStatusbarGesture()+"_rightslide"+getLeoAction()+getLeoStyle(),
            getLeoStatusbarGesture()+"_longPress"+getLeoEnabled(),
            getLeoStatusbarGesture()+"_slide"+getLeoEnabled(),
            getLeoStatusbarGesture()+getLeoGlobalVibratorEnable(),
            getLeoStatusbarGesture()+getLeoGlobalVibratorLevel(),
            getLeoStatusbarGesture()+"_left"+getLeoEnabled(),
            getLeoStatusbarGesture()+"_left"+getLeoAction(),
            getLeoStatusbarGesture()+"_right"+getLeoEnabled(),
            getLeoStatusbarGesture()+"_right"+getLeoAction(),
            getLeoStatusbarGesture()+"_left"+getLeoColor(),
            getLeoStatusbarGesture()+"_right"+getLeoColor(),
    };
    public static final String[] StatusbarIcon ={
            getLeoStatusbarSignal()+"_wifi"+getLeoEnabled(),
            getLeoStatusbarSignal()+"_wifi"+getLeoStyle(),
            getLeoStatusbarSignal()+getLeoEnabled(),
            getLeoStatusbarSignal()+getLeoStyle(),
            getLeoStatusbarSignal()+"_icon_5g"+getLeoEnabled()
    };
    public static int setLeoIntKey(String str, int i) {
        return getLeoInt(mSaltContext, str, i);
    }
    public static final String[] mLeoStatusBarMainBattery ={
            getLeoStatusbarBattery()+"_style_package",
            getLeoStatusbarBattery()+"_style",
            getLeoStatusbarBattery()+"_size",
            getLeoStatusbarBattery()+"_start_padding",
            getLeoStatusbarBattery() +"_end_padding",
            getLeoStatusbarBattery()+"_color"+getLeoEnabled(),
            getLeoStatusbarBatteryBar()+"_color"+getLeoEnabled(),
            getLeoStatusbarBattery()+getLeoColor(),
            getLeoStatusbarBattery()+"_text"+getLeoSize(),
            getLeoStatusbarBattery()+"_text"+getLeoFont(),
            getLeoStatusbarBattery()+"_low_style",
            getLeoStatusbarSignal()+"_orientation",
            getLeoStatusbarBatteryBar()+getLeoStrokeThickness(),
            getLeoStatusbarBatteryBar()+getLeoStyle(),
            getLeoStatusbarBatteryBar()+"_location",
            getLeoStatusbarBatteryBar()+getLeoColor(),
            getLeoStatusbarBatteryBar()+"_charging"+getLeoColor(),
            getLeoStatusbarBatteryBar()+"_lowwarning"+getLeoColor(),
            getLeoStatusbarBatteryBar()+"_animate",
            getLeoStatusbarBatteryBar()+"_low"+getLeoColor(),
            getLeoStatusbarBatteryBar()+"_high"+getLeoColor(),
            getLeoStatusbarBatteryBar()+"_gradient"+getLeoColor()+getLeoEnabled(),
            getLeoStatusbarBattery()+"_charging"+getLeoColor(),
    };

    public static final String[] mLeoStatusBarClock ={
            getLeoStatusbarClock()+getLeoEnabled(),
            getLeoStatusbarClock()+"_seconds"+getLeoEnabled(),
            getLeoStatusbarClock()+"_lunar_month",
            getLeoStatusbarClock()+"_ampm"+getLeoStyle(),
            getLeoStatusbarClock()+"_date"+getLeoEnabled(),
            getLeoStatusbarClock()+"_date"+getLeoStyle(),
            getLeoStatusbarClock()+"_date_format",
            getLeoStatusbarClock()+"_date_orientation",
            getLeoStatusbarClock()+"_autohide",
            getLeoStatusbarClock()+"_hideduration"+getLeoStyle(),
            getLeoStatusbarClock()+"_showduration"+getLeoStyle(),
            getLeoStatusbarClock()+"_single"+getLeoEnabled(),
            getLeoStatusbarClock()+"_single"+getLeoSize(),
            getLeoStatusbarClock()+"_multi"+getLeoSize(),
            getLeoStatusbarClock()+getLeoFont()+getLeoStyle(),
            getLeoStatusbarClock()+"_twelve_format",
            getLeoStatusbarClock()+mLeoChineseClock+getLeoEnabled(),
            getLeoStatusbarClock()+mLeoChineseClock+getLeoStyle(),
            getLeoStatusbarClock()+mLeoChineseClock+getLeoStr(),
            getLeoStatusbarClock()+mLeoChineseClock+"_orientation",
            getLeoStatusbarClock()+mLeoChineseClock+getLeoSymbol(),
            getLeoStatusbarClock()+mLeoChineseClock+getLeoSymbolString(),
            getLeoStatusbarClock()+"_week"+"_orientation",
            getLeoStatusbarClock()+"_week"+getLeoStyle(),
            getLeoStatusbarClock()+"_week"+getLeoSymbol(),
            getLeoStatusbarClock()+"_week"+getLeoSymbolString(),
            getLeoStatusbarClock()+"_week"+getLeoEnabled(),
            getLeoStatusbarClock()+"_start_padding",
            getLeoStatusbarClock()+"_end_padding",
            getLeoStatusbarClock()+"_color"+getLeoEnabled(),
            getLeoStatusbarClock()+getLeoColor(),
            getLeoStatusbarClock()+getLeoGlobalVibratorLevel(),
            getLeoStatusbarClock()+getLeoGlobalVibratorEnable(),
            getLeoStatusbarClock()+"_dark_color"+getLeoEnabled(),
            getLeoStatusbarClock()+"_dark_color",
            getLeoStatusbarClock()+"_orientation"
    };
    public static final String[] mLeoStatusBarNetworkTraffic ={
            getLeoStatusbarNetworkTraffic()+getLeoEnabled(),
            getLeoStatusbarNetworkTraffic()+"_arrow"+getLeoEnabled(),
            getLeoStatusbarNetworkTraffic()+"_arrow"+getLeoStyle(),
            getLeoStatusbarNetworkTraffic()+"_arrow_position",
            getLeoStatusbarNetworkTraffic()+getLeoSize(),
            getLeoStatusbarNetworkTraffic()+"_autohide_threshold",
            getLeoStatusbarNetworkTraffic()+"_start_padding",
            getLeoStatusbarNetworkTraffic() +"_end_padding",
            getLeoStatusbarNetworkTraffic()+"_icon_padding",
            getLeoStatusbarNetworkTraffic()+"_position",
            getLeoStatusbarNetworkTraffic()+"_color"+getLeoEnabled(),
            getLeoStatusbarNetworkTraffic()+"_mode",
            getLeoStatusbarNetworkTraffic()+getLeoColor(),
            getLeoStatusbarNetworkTraffic()+"_icon_color",
            getLeoStatusbarNetworkTraffic()+"_refreshinterval",
            getLeoStatusbarNetworkTraffic()+"_extends_color",
            getLeoStatusbarNetworkTraffic()+getLeoFont()+getLeoStyle(),
    };

    public static final String[] mLeoStatusBarLogo ={
            getLeoStatusbarLogo()+getLeoEnabled(),
            getLeoStatusbarLogo()+getLeoStyle(),
            getLeoStatusbarLogo()+getLeoSize(),
            getLeoStatusbarLogo()+"_start_padding",
            getLeoStatusbarLogo()+"_end_padding",
            getLeoStatusbarLogo()+"_color"+getLeoEnabled(),
            getLeoStatusbarLogo()+"_dark_color"+getLeoEnabled(),
            getLeoStatusbarLogo()+getLeoColor(),
            getLeoStatusbarLogo()+"_dark_color",
            getLeoStatusbarLogo()+"_orientation",
            getLeoStatusbarLogo()+"_auto"
    };
    public static final String[] mLeoStatusBarTemp ={
            getLeoStatusbarTemp()+getLeoEnabled(),
            getLeoStatusbarTemp()+getLeoStyle(),
            getLeoStatusbarTemp()+getLeoSize(),
            getLeoStatusbarTemp()+getLeoFont()+getLeoStyle(),
            getLeoStatusbarTemp()+"_start_padding",
            getLeoStatusbarTemp()+"_end_padding",
            getLeoStatusbarTemp()+getLeoColor()+getLeoEnabled(),
            getLeoStatusbarTemp()+"_dark_color"+getLeoEnabled(),
            getLeoStatusbarTemp()+getLeoColor(),
            getLeoStatusbarTemp()+"_dark_color",
            getLeoStatusbarTemp()+"_orientation"
    };
    public static final String[] mLeoStatusBarCarrier ={
            getLeoStatusbarCarrier()+getLeoEnabled(),
            getLeoStatusbarCarrier()+"_custom",
            getLeoStatusbarCarrier()+"_custom_single"+getLeoEnabled(),
            getLeoStatusbarCarrier()+"_single"+getLeoSize(),
            getLeoStatusbarCarrier()+"_multi"+getLeoSize(),
           getLeoStatusbarCarrier()+"_custom_single"+getLeoStr(),
           getLeoStatusbarCarrier()+"_custom_multi"+getLeoStr(),
          getLeoStatusbarCarrier() +getLeoFont()+getLeoStyle(),
         getLeoStatusbarCarrier()+"_start_padding",
          getLeoStatusbarCarrier()+"_end_padding",
            getLeoStatusbarCarrier()+"_color"+getLeoEnabled(),
            getLeoStatusbarCarrier()+"_dark_color"+getLeoEnabled(),
        getLeoStatusbarCarrier()+getLeoColor(),
          getLeoStatusbarCarrier()+"_dark_color",
            getLeoStatusbarCarrier()+"_orientation"
    };
    public static final String[] mLeoKeyguardCarrier ={
            getLeoKeyguardCarrier()+getLeoEnabled(),
            getLeoKeyguardCarrier() +"_custom",
            getLeoKeyguardCarrier()+"_custom_single"+getLeoEnabled(),
            getLeoKeyguardCarrier()+getLeoSize(),
            getLeoKeyguardCarrier()+"_custom_single"+getLeoStr(),
            getLeoKeyguardCarrier()+"_custom_multi"+getLeoStr(),
            getLeoKeyguardCarrier() +getLeoFont()+getLeoStyle(),
            getLeoKeyguardCarrier()+getLeoSymbol(),
            getLeoKeyguardCarrier()+getLeoSymbolString(),
            getLeoKeyguardCarrier()+"_color"+getLeoEnabled(),
            getLeoKeyguardCarrier()+getLeoColor(),
            getLeoKeyguardCarrier()+"keyguard_statusbar_view",
    };
    public static final String[] NotificationPanel={
            getLeoNotificationPanelCarrier()+"_custom",
            getLeoNotificationPanelCarrier()+"_custom_single"+getLeoStr(),
            getLeoNotificationPanelCarrier()+"_custom_multi"+getLeoStr(),
            getLeoNotificationPanelCarrier()+getLeoColor(),
            getLeoNotificationPanelCarrier()+getLeoFont()+getLeoStyle(),
            getLeoNotificationPanelCarrier()+getLeoSize(),
            getLeoNotificationPanelCarrier()+"_custom_single"+getLeoEnabled(),
            getLeoNotificationPanelCarrier()+getLeoSymbol(),
            getLeoNotificationPanelCarrier()+getLeoSymbolString(),
            getLeoNotificationPanelAnalogClock()+getLeoEnabled(),
            getLeoNotificationPanelAnalogClock()+"_dial"+getLeoStyle(),
            getLeoNotificationPanelAnalogClock()+"_dial"+getLeoColor(),
            getLeoNotificationPanelAnalogClock()+"_hour"+getLeoColor(),
            getLeoNotificationPanelAnalogClock()+"_minute"+getLeoColor(),
            getLeoKeyguardAction()+"_doubleTap"+getLeoEnabled(),
            getLeoKeyguardAction()+getLeoEnabled(),
            getLeoKeyguardAction()+getLeoStyle(),
    };
    public static final String[]  mLeoDeviceInfo={
            getLeoDeviceInfo()+getLeoEnabled(),
            getLeoDeviceInfo()+"_orientation",
            getLeoDeviceInfo()+getLeoSize(),
            getLeoDeviceInfo()+"_one"+getLeoStyle(),
            getLeoDeviceInfo()+"_one"+getLeoColor(),
            getLeoDeviceInfo()+"_one"+getLeoFont(),
            getLeoDeviceInfo()+"_two"+getLeoStyle(),
            getLeoDeviceInfo()+"_two"+getLeoColor(),
            getLeoDeviceInfo()+"_two"+getLeoFont(),
            getLeoDeviceInfo()+"_three"+getLeoStyle(),
            getLeoDeviceInfo()+"_three"+getLeoColor(),
            getLeoDeviceInfo()+"_three"+getLeoFont(),
            getLeoDeviceInfo()+"_four"+getLeoStyle(),
            getLeoDeviceInfo()+"_four"+getLeoColor(),
            getLeoDeviceInfo()+"_four"+getLeoFont(),
            getLeoDeviceInfo()+"_five"+getLeoStyle(),
            getLeoDeviceInfo()+"_five"+getLeoColor(),
            getLeoDeviceInfo()+"_five"+getLeoFont(),
            getLeoDeviceInfo()+"_list",
            getLeoDeviceInfo()+"_qsbar"+getLeoEnabled(),
            getLeoDeviceInfo()+"_qsbar"+getLeoFont(),
            getLeoDeviceInfo()+"_qsbar"+getLeoSize(),
            getLeoDeviceInfo()+"_qsbar"+getLeoStyle(),
    };
    public static final String[] mLeoQSHeadsDate ={
            getLeoQSDate()+getLeoEnabled(),
            getLeoQSDate()+"_week"+getLeoEnabled(),
            getLeoQSDate()+getLeoLunar()+getLeoEnabled(),
            getLeoQSDate()+getLeoLunar()+"_festival"+getLeoSymbol()+getLeoEnabled(),
            getLeoQSDate()+getLeoLunar()+"_sodiac"+getLeoSymbol()+getLeoEnabled(),
            getLeoQSDate()+getLeoLunar()+"_month"+getLeoStyle(),
            getLeoQSDate()+getLeoLunar()+getLeoStyle(),
            getLeoQSDate()+"_week"+getLeoStyle(),
            getLeoQSDate()+getLeoFont(),
    };
    public static final String[] mLeoQSHeadsClock={
            getLeoQSClock()+getLeoEnabled(),
            getLeoQSClock()+mLeoChineseClock+getLeoEnabled(),
            getLeoQSClock()+getLeoFont(),
            getLeoQSClock()+mLeoChineseClock+getLeoStyle(),
            getLeoQSClock()+mLeoChineseClock+"_zoom"+getLeoEnabled(),
            getLeoQSClock()+mLeoChineseClock+"_zoom"+getLeoStyle(),
            getLeoQSClock()+mLeoChineseClock+getLeoSymbol()+getLeoStyle(),

    };


    public static final String[]  mLeoQsBar={
            getLeoQSBar()+getLeoEnabled(),
            getLeoQSBar()+"_multisim"+getLeoEnabled(),
            getLeoQSBar()+"_orientation",
            getLeoQSBar()+getLeoSize(),
            getLeoQSBar()+getLeoFont(),
            getLeoQSBar()+"_expanded"+getLeoEnabled(),
            getLeoQSBar()+getLeoColor()+getLeoEnabled(),
            getLeoQSBar()+getLeoColor(),
    };
    public static final String[]  mLeoFloatBall={
            getLeoFloatBall()+getLeoEnabled(),
            getLeoFloatBall()+"_remove"+getLeoEnabled(),
            getLeoFloatBall()+getLeoStyle(),
            getLeoFloatBall()+getLeoSize(),
            getLeoFloatBall()+getLeoGlobalVibratorEnable(),
            getLeoFloatBall()+getLeoGlobalVibratorLevel(),
            getLeoFloatBall()+"_onclick"+getLeoAction(),
            getLeoFloatBall()+"_up"+getLeoAction(),
            getLeoFloatBall()+"_down"+getLeoAction(),
            getLeoFloatBall()+"_left"+getLeoAction(),
            getLeoFloatBall()+"_right"+getLeoAction(),
            getLeoFloatBall()+getLeoAlpha(),
            getLeoMiniPOP()+getLeoEnabled(),
            getLeoMiniPOP()+getLeoGlobalVibratorEnable(),
            getLeoMiniPOP()+getLeoGlobalVibratorLevel(),
            getLeoMiniPOP()+"_back"+getLeoAction(),
            getLeoMiniPOP()+"_home"+getLeoAction(),
            getLeoMiniPOP()+"_recent"+getLeoAction(),
            getLeoMiniPOP()+"_flashlight"+getLeoAction(),
    };
    public static final String[]  mLeoPulldownBlur={
           getLeoPulldownBlur()+getLeoEnabled(),
            getLeoPulldownBlur()+getLeoStyle(),
    };
    public static final String KEYGUARDLUNAR=getLeoKeyguardLunar();
    public static final String[]  mLeoKeyguardLunar={
            KEYGUARDLUNAR+getLeoEnabled(),
            KEYGUARDLUNAR+getLeoStyle(),
            KEYGUARDLUNAR+"_month"+getLeoStyle(),
            KEYGUARDLUNAR+"_festival_symbol"+getLeoEnabled(),
            KEYGUARDLUNAR+"_zodiac_symbol"+getLeoEnabled(),
            KEYGUARDLUNAR+"_color"+getLeoEnabled(),
            KEYGUARDLUNAR+"_color",
            KEYGUARDLUNAR+getLeoSize(),
            KEYGUARDLUNAR+getLeoFont(),
    };
    public static final String[] KeyguardAlarm={
            getLeoKeyguardAlarm()+getLeoEnabled(),
            getLeoKeyguardAlarm()+"_icon"+getLeoEnabled(),
            getLeoKeyguardAlarm()+getLeoColor()+getLeoEnabled(),
            getLeoKeyguardAlarm()+"_icon"+getLeoColor(),
            getLeoKeyguardAlarm()+"_text"+getLeoColor(),
            getLeoKeyguardAlarm()+"_text"+getLeoSize(),
            getLeoKeyguardAlarm()+"_text"+getLeoFont()+getLeoStyle(),
            getLeoKeyguardAlarm()+"_text"+getLeoEnabled(),
    };
    public static final String[] KeyguardWeather={
            getLeoKeyguardWeather()+getLeoEnabled(),
            getLeoKeyguardWeather()+getLeoStyle(),
            getLeoKeyguardWeather()+"_top",
            getLeoKeyguardWeather()+"_height",
    };


}