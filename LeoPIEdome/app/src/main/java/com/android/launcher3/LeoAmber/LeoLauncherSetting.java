package com.android.launcher3.LeoAmber;


import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.provider.Settings;
import android.util.Log;


import static com.android.launcher3.LeoAmber.LeoGlobalValues.getKernel;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.*;

import static com.android.launcher3.LeoAmber.LeoGlobalValues.*;


public class LeoLauncherSetting{
    static {
        System.loadLibrary("Amber520");
    }
    public static  boolean setGlobalHitomiLeoLauncherSlideGestureEnabled =false;
    public static  int setGlobalHitomiLeoLauncherSlideGestureUP=0;
    public static  String setGlobalHitomiLeoLauncherSlideGestureUPString;
    public static  int setGlobalHitomiLeoLauncherSlideGestureDown=0;
    public static  String setGlobalHitomiLeoLauncherSlideGestureDownString;
    public static  int setGlobalHitomiLeoLauncherSlideGestureVibration=0;
    public static  int setGlobalHitomiLeoLauncherSlideGestureVibrationLevel=10;

    public static boolean setLeoUesrRecentsBlurWallpaperAlphaEnabled;
    public static int setLeoUesrRecentsBlurWallpaperColorEnabled;
    public static int    setLeoUesrRecentsStrokeDashColor;
    public static int    setLeoUesrRecentsStrokeThickness;
    public static int    setLeoUesrRecentsStrokeDashWidth;
    public static int    setLeoUesrRecentsStrokeDashGap;
    public static boolean  setLeoUesrRecentsStrokeEnabled;
    public  static int setLeoUesrRecentsBgWallpaperAlpha;
    public  static int  setLeoUesrRecentsGradientColorFour;
    public  static int  setLeoUesrRecentsGradientColorFive;
    public  static int  setLeoUesrRecentsGradientColorSix;
    public  static int  setLeoUesrRecentsGradientColorEnabled;
    public  static int  setLeoUesrRecentsBgWallpaperBlurEnabled;

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

    public static int  setLeoUesrLauncherBlurColor;
    public static int  setLeoUesrLauncherBlurColorAlpha;
    public static boolean  setLeoUesrLauncherBlurAlphaEnabled;
    public static int  setLeoUesrLauncherBlurColorEnabled;
    public static int    setLeoUesrLauncherBlurView;
    public static String    setLeoUesrLauncherBlurViewString;
    public static int   setLeoUesrLauncherBlurDegree;
    public static void LeoGlobalSetting(Context context){
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                Log.v("Launcher Gesture", AUTHOR);
                int Transparency= Color.TRANSPARENT;



                setLeoUesrRecentsBGStyle =getLeoInt(context, getLeoRecentsBGStyle(), 0);
                getLeoDonate(context);
                setLeoUesrRecentsBgBasicColor =getLeoInt(context,
                        getLeoRecentsBgBasicColor() , Transparency);
                setLeoUesrRecentsGradientBgStartColor =getLeoInt(context,
                        getLeoRecentsGradientBgStartColor() , Transparency);
                setLeoUesrRecentsGradientBgCenterColor =getLeoInt(context,
                        getLeoRecentsGradientBgCenterColor(), Transparency);
                setLeoUesrRecentsGradientBgEndColor =getLeoInt(context,
                        getLeoRecentsGradientBgEndColor() , Transparency);
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
                        getLeoRecentsWallpaperColor() ,  Color.parseColor("#FFFFFFFF"));
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
                setLeoUesrRecentsStrokeDashColor=getLeoInt(context, getLeoRecentsStrokeDashColor(), Color.parseColor("#ff00aeff"));
                setLeoUesrRecentsBlurWallpaperColorEnabled= getLeoInt(context, getLeoRecentsBlurWallpaperColor(),0);
                setLeoUesrRecentsBlurWallpaperAlphaEnabled= getLeoInt(context, getLeoRecentsBlurWallpaperAlpha(),0) == 1;
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
                setLeoUesrTaskRAMInfo=getLeoInt(context, getLeoRecentTaskRAMInfo(),1)==1;
                return;
            }
            return;
        }
    }

    public static void getLeoDonate(Context context) {
        if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {


                setLeoUesrLauncherBlurView = getLeoInt(context, getLeoLauncherBlurView(), 0);
                setLeoUesrLauncherBlurViewString = getLeoString(context,
                        getLeoLauncherBlurViewString() );
                setLeoUesrLauncherBlurDegree=getLeoInt(context,
                        getLeoLauncherBlurDegree(),12);
                setLeoUesrLauncherBlurColorEnabled=getLeoInt(context, getLeoLauncherBlurColorEnabled(),0);
                setLeoUesrLauncherBlurAlphaEnabled=getLeoInt(context,getLeoLauncherBlurAlphaEnabled(),0) == 1;
                setLeoUesrLauncherBlurColor= getLeoInt(context,getLeoLauncherBlurColor(), Color.parseColor("#FFFFFFFF"));
                setLeoUesrLauncherBlurColorAlpha =getLeoInt(context,
                        getLeoLauncherBlurColorAlpha(), 255);
                setGlobalHitomiLeoLauncherSlideGestureEnabled= getLeoInt(context,
                        setGlobalHitomiLeoLauncherSlideGestureEnabled()  , 0)==1;
                setGlobalHitomiLeoLauncherSlideGestureUP= getLeoInt(context,
                        setGlobalHitomiLeoLauncherSlideGestureUP()  , 0);
                setGlobalHitomiLeoLauncherSlideGestureUPString=getLeoString(context,
                        setGlobalHitomiLeoLauncherSlideGestureUPString() );
                setGlobalHitomiLeoLauncherSlideGestureDown= getLeoInt(context,
                        setGlobalHitomiLeoLauncherSlideGestureDown()  , 0);
                setGlobalHitomiLeoLauncherSlideGestureDownString=getLeoString(context,
                        setGlobalHitomiLeoLauncherSlideGestureDownString() );
                setGlobalHitomiLeoLauncherSlideGestureVibration =getLeoInt(context,
                        setGlobalHitomiLeoLauncherSlideGestureVibration()  , 0);
                setGlobalHitomiLeoLauncherSlideGestureVibrationLevel= getLeoInt(context,
                        setGlobalHitomiLeoLauncherSlideGestureVibrationLevel()  , 10);
                setLeoUesrTaskRAMInfoClick =getLeoInt(context, getLeoRecentTaskRAMClick(), 0)==1;
                setLeoUesrRecentsVibratorEnable = getLeoInt(context,
                        getLeoRecentsVibratorEnable()  , 0);
                setLeoUesrRecentsVibrationLevel = getLeoInt(context,
                        getLeoRecentsVibrationLevel()  , 10);
                setLeoUesrTaskRAMInfoRefresh=getLeoInt(context, getLeoRecentTaskRAMInfoRefresh(),2500);

                setLeoUesrTaskRAMInfoBGColor=getLeoInt(context, getLeoRecentTaskRAMInfoBGColor(),backgroundcolor);
                setLeoUesrTaskRAMInfoTextColor=getLeoInt(context, getLeoRecentTaskRAMTextColor(), whitecolor);
                setLeoUesrTaskRAMInfoTextUsedColor= getLeoInt(context, getLeoRecentTaskRAMUsedColor(), whitecolor);
                setLeoUesrTaskRAMInfoTextFreeColor= getLeoInt(context, getLeoRecentTaskRAMFreeColor(), whitecolor);
                setLeoUesrTaskRAMInfoTextSize= getLeoInt(context, getLeoRecentTaskRAMTextSize(),14);

                setLeoUesrTaskRAMInfoFont= getLeoInt(context, getLeoRecentTaskRAMFont(),0);
                setLeoUesrTaskRAMInfoStrokeEnabled =getLeoInt(context, getLeoRecentTaskRAMStrokeEnabled(), 0)==1;
                setLeoUesrTaskRAMInfoStrokeDashGap= getLeoInt(context, getLeoRecentTaskRAMStrokeDashGap(),6);
                setLeoUesrTaskRAMInfoStrokeDashWidth=getLeoInt(context, getLeoRecentTaskRAMStrokeDashWidth(),3);
                setLeoUesrTaskRAMInfoStrokeThickness=getLeoInt(context, getLeoRecentTaskRAMStrokeThickness(),6);
                setLeoUesrTaskRAMInfoStrokeDashColor=getLeoInt(context, getLeoRecentTaskRAMStrokeDashColor(), Color.parseColor("#ff00aeff"));
                setLeoUesrTaskRAMInfoStrokeDashCornerRadius=getLeoInt(context,
                        getLeoRecentTaskRAMStrokeDashCornerRadius() ,30);
                setLeoUesrWorkspaceGestureDoubleEnabled=getLeoInt(context,getLeoWorkspaceGestureDoubleEnabled(),0);
                setLeoUesrWorkspaceGestureDouble=getLeoInt(context, getLeoWorkspaceGestureDouble(),0);
                setLeoUesrWorkspaceGestureDoubleString=getLeoString(context, getLeoWorkspaceGestureDoubleEnabled());

            return;
        }
    }

    public static int getLeoResource(Context context,String resource ) {
        return context.getResources().getIdentifier(resource, null, context.getPackageName());
    }
    public static int    setLeoUesrWorkspaceGestureDoubleEnabled;
    public static int    setLeoUesrWorkspaceGestureDouble;
    public static String    setLeoUesrWorkspaceGestureDoubleString;
    public static int  backgroundcolor=Color.parseColor("#6033b5e5");
    public static int  whitecolor=Color.parseColor("#ffffffff");
    public static int    setLeoUesrTaskRAMInfoStrokeDashCornerRadius=10;
    public static int    setLeoUesrTaskRAMInfoFont;
    public static int    setLeoUesrTaskRAMInfoStrokeDashColor;
    public static int    setLeoUesrTaskRAMInfoStrokeThickness;
    public static int    setLeoUesrTaskRAMInfoStrokeDashWidth;
    public static int    setLeoUesrTaskRAMInfoStrokeDashGap;
    public static boolean  setLeoUesrTaskRAMInfoStrokeEnabled;
    public static int setLeoUesrTaskRAMInfoTextSize;
    public  static int  setLeoUesrRecentsVibratorEnable;
    public  static int  setLeoUesrRecentsVibrationLevel;
    public static int setLeoUesrTaskRAMInfoTextFreeColor;
    public static int setLeoUesrTaskRAMInfoTextUsedColor;
    public static int setLeoUesrTaskRAMInfoTextColor;
    public static int setLeoUesrTaskRAMInfoBGColor;
    public static int setLeoUesrTaskRAMInfoRefresh;
    public static boolean  setLeoUesrTaskRAMInfoClick;
    public static boolean setLeoUesrTaskRAMInfo=true;
}