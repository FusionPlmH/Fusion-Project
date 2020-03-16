package com.fusionleo.LeoProvider;


import android.content.Context;
import android.os.SystemProperties;

import static com.fusionleo.LeoX.server.LeoConfig.getLeoInt;
import static com.fusionleo.LeoX.server.LeoConfig.getLeoString;
import static com.fusionleo.LeoX.server.LeoConfig.rt1001foleo;


public class LeoGlobalSetting{
    public static  String Config ="salt6.6";
    static {
        System.loadLibrary(Config);
    }
    public static native String getLeoKillWhiteList();

    static native String getLeoService();
    static native String getLeoframe();
    public  static native String getLeoGlobalBixbyLongPressAction();
    public  static native String getLeoGlobalBixbyClickAction();
    public  static native String getLeoGlobalBixbyEnableAction();
    public  static native String getLeoGlobalVibratorEnable();
    public  static native String getLeoGlobalVibratorLevel();

    public  static native String getLeoGlobalPowerDoubleAction();
    public  static native String getLeoGlobalPowerLongPressAction();

    public  static native String getLeoGlobalPowerEnableAction();

    public  static native String getLeoGlobalFingerprintUPAction();
    public  static native String getLeoGlobalFingerprintDownAction();

    public  static native String getLeoGlobalHwKeysEnableAction();
    public  static native String getLeoGlobalLongPressOnRecentAction();
    public  static native String getLeoGlobalLongPressOnHomeAction();
    public  static native String getLeoGlobalLongPressOnBackAction();
    public static  String mLeoGlobalService=getLeoService();
    public  static  String ConfigManager=getLeoframe();
    public  static  int setLeoGlobalBixbyLongPressAction=0;
    public  static  int setLeoGlobalBixbyLongPressKeyguardAction=0;
    public  static  int setLeowGlobalHwKyesVibratorEnable=0;
    public  static  int setLeoGlobalHwKyesVibratorLevel=15;
    public  static  int setLeoGlobalBixbyClickAction=0;
    public  static  int setLeoGlobalBixbyClickKeyguardAction=0;
    public  static  int setLeoGlobalBixbyEnableAction=0;
    public  static  int setLeoGlobalPowerDoubleAction=0;
    public  static  int setLeoGlobalPowerLongPressAction=0;
    public  static  int setLeoGlobalPowerDoubleKeyguardAction=0;
    public  static  int setLeoGlobalPowerLongPressKeyguardAction=0;
    public  static  boolean setLeoGlobalPowerEnableAction=false;

    public  static  int setLeoGlobalFingerprintUPAction=0;
    public  static  int setLeoGlobalFingerprintDownAction=0;
    public static  String mKillWhite;
     static native String getLeoPreList();
    public static final String LEOPREFE=getLeoPreList();
    public static final String LockScreenAction="keyguard_";
    public static final String setBixbyClickAction=LEOPREFE+getLeoGlobalBixbyClickAction();
    public static final String setBixbyLongAction=LEOPREFE+ getLeoGlobalBixbyLongPressAction();
    public static final String setBixbyClickKeyguardAction=LEOPREFE+LockScreenAction+getLeoGlobalBixbyClickAction();
    public static final String setBixbyLongKeyguardAction=LEOPREFE+LockScreenAction+getLeoGlobalBixbyLongPressAction();

    public static final String setPowerDoubleAction= LEOPREFE+getLeoGlobalPowerDoubleAction();
    public static final String setPowerDoubleKeyguardAction=LEOPREFE+LockScreenAction+getLeoGlobalPowerDoubleAction();
    public static final String setPowerLongPressAction=LEOPREFE+getLeoGlobalPowerLongPressAction();
    public static final String setPowerLongPressKeyguardAction=LEOPREFE+LockScreenAction+getLeoGlobalPowerLongPressAction();

    public static final String setFingerprintUPAction= LEOPREFE+getLeoGlobalFingerprintUPAction();
    public static final String setFingerprintDownAction= LEOPREFE+getLeoGlobalFingerprintDownAction();


    public static final String setLongPressOnRecentAction= LEOPREFE+getLeoGlobalLongPressOnRecentAction();
    public static final String setLongPressOnHomeAction= LEOPREFE+getLeoGlobalLongPressOnHomeAction();
    public static final String setLongPressOnBackAction= LEOPREFE+getLeoGlobalLongPressOnBackAction();
    public  static  boolean setLeoGlobalHwKeysEnableAction=false;
    public  static  int setLeoGlobalLongPressOnRecentAction=0;
    public  static  int setLeoGlobalLongPressOnHomeAction=0;
    public  static  int setLeoGlobalLongPressOnBackAction=0;
    public  static  int setLeoGlobalTopActionGestures=0;
    public  static  int setLeoGlobalLeftActionGestures=0;
    public  static  int setLeoGlobalRightActionGestures=0;

    public  static  int setLeoGlobalFingerGesturesCount=3;
    public  static  boolean setLeoGlobalEnableFingerGestures=false;

    public static final String setGlobalTopActionGestures= LEOPREFE+getLeoGlobalFingerTopActionGestures();
    public static final String setGlobalLeftActionGestures= LEOPREFE+getLeoGlobalFingerLeftActionGestures();
    public static final String setGlobalRightActionGestures= LEOPREFE+getLeoGlobalFingerRightActionGestures();
    public static final String setGlobalBottomActionGestures= LEOPREFE+getLeoGlobalFingerBottomActionGestures();
    public  static  int setLeowGlobalFingerGesturesVibratorEnable=0;
    public  static  int setLeoGlobalFingerGesturesVibratorLevel=15;
    public  static native String getLeoGlobalEnableFingerGestures();
    public  static native String getLeoGlobalFingerTopActionGestures();
    public  static native String getLeoGlobalFingerLeftActionGestures();
    public  static native String getLeoGlobalFingerBottomActionGestures();
    public  static native String getLeoGlobalFingerRightActionGestures();
    public  static native String getLeoGlobalFingerGesturesCount();
    public  static  int setLeoGlobalBottomActionGestures=0;
    public  static  boolean setLeoGlobalEnablePowerGlobalActionsStyle=true;

    public static String getSafetyVersion() {
        return SystemProperties.get(getSafety());
    }
    public  static native String getSafety();

    public  static native String getSafetyCode();
    public  static native String getCodeNumber();
    public static final String SecurityCode=getSafetyCode();;
    public  static native String getLeoGlobalPowerGlobalActionsStyle();
    public  static  int setLeoGlobalPowerGlobalActionsStyle=0;

    public static  boolean setGlobalAmberLeoNavBarHeightLandscape;
    public static  boolean setGlobalAmberLeoNavBarHeightPortrait;
    public static  int setGlobalAmberLeoLandscapeNavBarHeight;
    public static  int setGlobalAmberLeoPortraitNavBarHeight;

    public static native String   getLeoGlobalAmberLeoNavBarHeightLandscape();
    public static native String   getLeoGlobalAmberLeoNavBarHeightPortrait();
    public static native String   getLeoGlobalStyle();

    public static final String setNavBarHeightLandscape= LEOPREFE+getLeoGlobalAmberLeoNavBarHeightLandscape();
    public static final String setNavBarHeightPortrait=LEOPREFE+getLeoGlobalAmberLeoNavBarHeightPortrait();
    public static final String setHeightLandscape= LEOPREFE+getLeoGlobalAmberLeoNavBarHeightLandscape()+ getLeoGlobalStyle();
    public static final String setHeightPortrait= LEOPREFE+getLeoGlobalAmberLeoNavBarHeightPortrait()+ getLeoGlobalStyle();


    public static void LeoSetting(Context context){
        mKillWhite=getLeoString(context,LEOPREFE+getLeoKillWhiteList());
        setLeoGlobalBixbyLongPressAction=getLeoInt(context,setBixbyLongAction,0);
        setLeoGlobalBixbyClickAction=getLeoInt(context,setBixbyClickAction,0);
        setLeoGlobalBixbyEnableAction=getLeoInt(context,LEOPREFE+getLeoGlobalBixbyEnableAction(),0);
        setLeowGlobalHwKyesVibratorEnable=getLeoInt(context,LEOPREFE+getLeoGlobalHwKeysEnableAction()+getLeoGlobalVibratorEnable(),0);
        setLeoGlobalHwKyesVibratorLevel=getLeoInt(context,LEOPREFE+getLeoGlobalHwKeysEnableAction()+getLeoGlobalVibratorLevel(),15);
        setLeoGlobalBixbyClickKeyguardAction=getLeoInt(context,setBixbyClickKeyguardAction,0);
        setLeoGlobalBixbyLongPressKeyguardAction=getLeoInt(context,setBixbyLongKeyguardAction,0);
        setLeoGlobalPowerEnableAction=getLeoInt(context,LEOPREFE+getLeoGlobalPowerEnableAction(),0)==1;
        setLeoGlobalPowerDoubleAction=getLeoInt(context,LEOPREFE+getLeoGlobalPowerDoubleAction(),0);
        setLeoGlobalPowerDoubleKeyguardAction=getLeoInt(context,setPowerDoubleKeyguardAction,0);
        setLeoGlobalPowerLongPressAction=getLeoInt(context,LEOPREFE+getLeoGlobalPowerLongPressAction(),0);
        setLeoGlobalPowerLongPressKeyguardAction=getLeoInt(context,setPowerLongPressKeyguardAction,0);
        setLeoGlobalFingerprintUPAction=getLeoInt(context,LEOPREFE+getLeoGlobalFingerprintUPAction(),0);
        setLeoGlobalFingerprintDownAction=getLeoInt(context,LEOPREFE+getLeoGlobalFingerprintDownAction(),0);
        setLeoGlobalHwKeysEnableAction=getLeoInt(context,LEOPREFE+getLeoGlobalHwKeysEnableAction(),0)==1;
        setLeoGlobalLongPressOnRecentAction=getLeoInt(context,LEOPREFE+getLeoGlobalLongPressOnRecentAction(),0);
        setLeoGlobalLongPressOnHomeAction=getLeoInt(context,LEOPREFE+getLeoGlobalLongPressOnHomeAction(),0);
        setLeoGlobalLongPressOnBackAction=getLeoInt(context,LEOPREFE+getLeoGlobalLongPressOnBackAction(),0);

        setLeoGlobalEnableFingerGestures=getLeoInt(context,LEOPREFE+getLeoGlobalEnableFingerGestures(),0)==1;
        setLeowGlobalFingerGesturesVibratorEnable=getLeoInt(context,LEOPREFE+getLeoGlobalEnableFingerGestures()+getLeoGlobalVibratorEnable(),0);
        setLeoGlobalFingerGesturesVibratorLevel=getLeoInt(context,LEOPREFE+getLeoGlobalEnableFingerGestures()+getLeoGlobalVibratorLevel(),15);
        setLeoGlobalTopActionGestures=getLeoInt(context,LEOPREFE+getLeoGlobalFingerTopActionGestures(),0);
        setLeoGlobalLeftActionGestures=getLeoInt(context,LEOPREFE+getLeoGlobalFingerLeftActionGestures(),0);
        setLeoGlobalRightActionGestures=getLeoInt(context,LEOPREFE+getLeoGlobalFingerRightActionGestures(),0);
        setLeoGlobalBottomActionGestures=getLeoInt(context,LEOPREFE+getLeoGlobalFingerBottomActionGestures(),0);
        setLeoGlobalFingerGesturesCount=getLeoInt(context,LEOPREFE+getLeoGlobalFingerGesturesCount(),3);
        setLeoGlobalFingerGesturesCount=getLeoInt(context,LEOPREFE+getLeoGlobalFingerGesturesCount(),3);
        setLeoGlobalEnablePowerGlobalActionsStyle=getLeoInt(context,LEOPREFE+getLeoGlobalPowerGlobalActionsStyle(),1) != 0;
        setLeoGlobalPowerGlobalActionsStyle=getLeoInt(context,LEOPREFE+getLeoGlobalPowerGlobalActionsStyle()+ getLeoGlobalStyle(),0);

        setGlobalAmberLeoNavBarHeightLandscape= getLeoInt(context,
                LEOPREFE+getLeoGlobalAmberLeoNavBarHeightLandscape()  , 0) != 0;
        setGlobalAmberLeoNavBarHeightPortrait= getLeoInt(context,
                LEOPREFE+getLeoGlobalAmberLeoNavBarHeightPortrait()  , 0) != 0;
        setGlobalAmberLeoLandscapeNavBarHeight= getLeoInt(context,
                LEOPREFE+getLeoGlobalAmberLeoNavBarHeightLandscape()+ getLeoGlobalStyle()  , 45);
        setGlobalAmberLeoPortraitNavBarHeight= getLeoInt(context,
                LEOPREFE+getLeoGlobalAmberLeoNavBarHeightPortrait()+ getLeoGlobalStyle()  , 45);

    }

}