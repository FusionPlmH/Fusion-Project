package com.android.fusionleo.global;


import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import static com.android.fusionleo.global.LeoGlobalUtils.*;
import static com.android.fusionleo.global.LeoGlobalValues.*;


public class LeoGlobalSetting{
    static {
        System.loadLibrary(SSSSOSSSS);
    }
    public static  int setGlobalAmberLeoHomeLongpressAction=0;
    public static  String setGlobalAmberLeoHomeLongpressActionSting;
    public static  int setGlobalAmberLeoNavVibration=0;
    public static  int setGlobalAmberLeoNavVibrationLevel=10;
    public static  int setGlobalAmberLeoNavNavActionEnabled=0;

    public static  int setGlobalAmberLeoRecentLongpressAction=0;
    public static  String setGlobalAmberLeoRecentLongpressActionSting;

    public static  int setGlobalAmberLeoBackLongpressAction=0;
    public static  String setGlobalAmberLeoBackLongpressActionSting;

    public static  int setGlobalAmberLeoTogglePowerKeysSAction=0;

    public static  int setGlobalAmberLeoPowerDoubleActionLS=0;
    public static  int setGlobalAmberPowerDoubleAction=0;
    public static  String setGlobalAmberLeoPowerDoubleActionAPP;
    public static  int setGlobalAmberLeoPowerLongpressActionLS=0;
    public static  int setGlobalAmberPowerLongpressAction=0;
    public static  String setGlobalAmberLeoPowerLongpressActionAPP;

    public static  int setGlobalAmberFingerprintDownAction=0;
    public static  String setGlobalAmberFingerprintDownActionAPP;
    public static  int setGlobalAmberFingerprintUPAction=0;
    public static  String setGlobalAmberFingerprintUPActionApp;
    public static  boolean  setGlobalAmberThreeGesturesEnabled;
    public static  int  setGlobalAmberThreeGesturesAction;
    public static  String  setGlobalAmberThreeGesturesActionAPP;
    public static  int  setGlobalAmberThreeGesturesVibration;
    public static  int  setGlobalAmberThreeGesturesVibrationLevel;
    public static void LeoGlobalSetting(Context context){
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                setGlobalAmberThreeGesturesEnabled= getLeoInt(context,
                        getLeoGlobalHitomiLeoThreeGesturesEnabled()  , 0)==1;
                setGlobalAmberThreeGesturesAction= getLeoInt(context,
                        getLeoGlobalHitomiLeoGesturesAction()  , 0);
                setGlobalAmberThreeGesturesActionAPP=getLeoString(context,
                        getLeoGlobalHitomiThreeGesturesActionAPP() );
                setGlobalAmberThreeGesturesVibration= getLeoInt(context,
                        getLeoGlobalHitomiThreeGesturesVibration()  , 0);
                setGlobalAmberThreeGesturesVibrationLevel= getLeoInt(context,
                        getLeoGlobalHitomiThreeGesturesVibrationLevel()  , 10);
                ///////////
                setGlobalAmberFingerprintDownAction= getLeoInt(context,
                        getLeoGlobalHitomiLeoFingerprintDownAction()  , 0);
                setGlobalAmberFingerprintDownActionAPP=  getLeoString(context,
                        getLeoGlobalHitomiLeoFingerprintDownActionAPP() );
                setGlobalAmberFingerprintUPAction = getLeoInt(context,
                        getLeoGlobalHitomiLeoFingerprintUPAction()  , 0);
                setGlobalAmberFingerprintUPActionApp=  getLeoString(context,
                        getLeoGlobalHitomiLeoFingerprintUPActionApp() );
                setGlobalAmberLeoHomeLongpressAction = getLeoInt(context,
                        getLeoGlobalHitomiLeoHomeAction()  , 0);
                setGlobalAmberLeoHomeLongpressActionSting=  getLeoString(context,
                        getLeoGlobalHitomiLeoHomeActionString() );
                setGlobalAmberLeoNavVibration= getLeoInt(context,
                        getLeoGlobalHitomiLeoNavVibration()  , 0);
                setGlobalAmberLeoNavVibrationLevel= getLeoInt(context,
                        getLeoGlobalHitomiLeoNavVibrationLevel()  , 10);
                setGlobalAmberLeoNavNavActionEnabled= getLeoInt(context,
                        getLeoGlobalHitomiLeoNavNavActionEnabled()  , 0);
                setGlobalAmberLeoRecentLongpressAction = getLeoInt(context,
                        getLeoGlobalHitomiLeoLongpressRecentAction()  , 0);
                setGlobalAmberLeoRecentLongpressActionSting=  getLeoString(context,
                        getLeoGlobalHitomiLeoLongpressRecentActionString() );
                setGlobalAmberLeoBackLongpressAction= getLeoInt(context,
                        getLeoGlobalHitomiLeoLongpressBackAction()  , 0);
                setGlobalAmberLeoBackLongpressActionSting=  getLeoString(context,
                        getLeoGlobalHitomiLeoLongpressBackActionString() );
                setGlobalAmberLeoPowerDoubleActionLS= getLeoInt(context,
                        getLeoGlobalHitomiLeoPowerDoubleActionLS()  , 0);
                setGlobalAmberPowerDoubleAction= getLeoInt(context,
                        getLeoGlobalHitomiLeoPowerDoubleAction()  , 0);
                setGlobalAmberLeoPowerDoubleActionAPP=  getLeoString(context,
                        getLeoGlobalHitomiLeoPowerDoubleActionAPP() );
                setGlobalAmberLeoPowerLongpressActionLS= getLeoInt(context,
                        getLeoGlobalHitomiLeoPowerLongpressActionLS()  , 0);
                setGlobalAmberPowerLongpressAction= getLeoInt(context,
                        getLeoGlobalHitomiLeoPowerLongpressAction()  , 0);
                setGlobalAmberLeoPowerLongpressActionAPP=  getLeoString(context,
                        getLeoGlobalHitomiLeoPowerLongpressActionAPP() );
                setGlobalAmberLeoTogglePowerKeysSAction= getLeoInt(context,
                        getLeoGlobalHitomiLeoTogglePowerKeysSAction()  , 0);
                setGlobalAmberLeoBixbyLongPressAPP=  getLeoString(context,
                        getLeoGlobalHitomiLeoBixbyLongPressAPP() );
                setGlobalAmberLeoBixbyLongPressAction= getLeoInt(context,
                        getLeoGlobalHitomiLeoBixbyLongPressAction()  , 0);
                setGlobalAmberLeoBixbyClickAPP=  getLeoString(context,
                        getLeoGlobalHitomiLeoBixbyClickAPP() );
                setGlobalAmberLeoBixbyClickAction= getLeoInt(context,
                        getLeoGlobalHitomiLeoBixbyClickAction()  , 0);
                setGlobalAmberLeoBixbyActionToggle= getLeoInt(context,
                        getLeoGlobalHitomiLeoBixbyActionToggle()  , 0);
                setGlobalAmberLeoBixbyActionToggle= getLeoInt(context,
                        getLeoGlobalHitomiLeoBixbyActionToggle()  , 0);
                //////////////////////////////////////////////
                setGlobalAmberLeoNavBarHeightLandscape= getLeoInt(context,
                        getLeoGlobalAmberLeoNavBarHeightLandscape()  , 0) != 0;
                setGlobalAmberLeoNavBarHeightPortrait= getLeoInt(context,
                        getLeoGlobalAmberLeoNavBarHeightPortrait()  , 0) != 0;
                setGlobalAmberLeoLandscapeNavBarHeight= getLeoInt(context,
                        getLeoGlobalAmberLeoLandscapeNavBarHeight()  , 45);
                setGlobalAmberLeoPortraitNavBarHeight= getLeoInt(context,
                        getLeoGlobalAmberLeoPortraitNavBarHeight()  , 45);

                String str = "com.android.systemui##com.android.phone##com.leo.global.tweaks##com.sec.android.app.launcher";
                String str2 = "##";
                String systemString =getLeoString(context,
                        getLeoGlobalHitomiLeoBixbyClickAPP() );;
                String[] split = (systemString == null || systemString.isEmpty() || !systemString.contains(str2)) ? str.split(str2) : (systemString + str).split(str2);

                KillWhiteList= split;
                return;
            }
            return;
        }
    }
    public static boolean isWhitelisted(String str) {
       boolean Whitelisted="com.android.providers.applications".equals(str) || "com.sec.android.app.clockpackage".equals(str) || "com.amber.leoservice".equals(str) || "com.leo.salt".equals(str) || "com.android.server.telecom".equals(str) || "com.android.incallui".equals(str) || "com.android.systemui".equals(str) || "com.android.phone".equals(str);
        return Whitelisted;
    }
    public static boolean isHomeApplication(String str,Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        return (resolveActivity == null || resolveActivity.activityInfo == null || !str.equals(resolveActivity.activityInfo.packageName)) ? false : true;
    }
    public static  int setGlobalAmberLeoBixbyActionToggle=0;
    public static  int setGlobalAmberLeoBixbyLongPressAction=0;
    public static  String setGlobalAmberLeoBixbyLongPressAPP;
    public static  int setGlobalAmberLeoBixbyClickAction=0;
    public static  String setGlobalAmberLeoBixbyClickAPP;
    public static  boolean setGlobalAmberLeoNavBarHeightLandscape;
    public static  boolean setGlobalAmberLeoNavBarHeightPortrait;
    public static  int setGlobalAmberLeoLandscapeNavBarHeight;
    public static  int setGlobalAmberLeoPortraitNavBarHeight;

    public static String[] KillWhiteList;

}