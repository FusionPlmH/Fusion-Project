package com.fusionleo.LeoProvider;



import android.content.Context;
import android.graphics.Color;
import android.util.Base64;
import static com.fusionleo.LeoX.launcher.LeoConfig.getLeoInt;
import static com.fusionleo.LeoX.launcher.LeoConfig.getLeoString;


public class LeoLauncherManages{
    public static  String Config = new String(Base64.decode("QW1iZXI5LjQuNTIw".getBytes(), Base64.DEFAULT));
    static {
        System.loadLibrary(Config);
    }
    public static String TAG = LeoLauncherManages.class.getSimpleName();
    static native String getLeoPreList();
    public static final String LEOPREFE=getLeoPreList();
    public static  String mLeoGlobalService=getLeoService();
    public  static  String ConfigManager=getLeoframe();
    static native String getLeoService();
    static native String getLeoframe();

    public static int setLeoLauncherGestureDoubleEnabled;
    public static int setLeoLauncherGestureDoubleAction;
    public static int setLeoLauncherGestureDoubleVibratorEnable;
    public static int setLeoLauncherGestureDoubleVibratorLevel=15;
    static native String getLeoEnabled();
    static native String getLeoDisable();
    static native String getLeoStyle();
    public  static native String getLeoGlobalVibratorEnable();
    public  static native String getLeoGlobalVibratorLevel();
    static native String getLeoLauncherGestureDouble();

    public static boolean setLeoLauncherSlideGestureEnabled;
    public static int setLeoLauncherSlideGestureTopAction;

    public static int setLeoLauncherSlideGestureBottomAction;

    static native String getLeoLauncherGestureSliding();


    public static boolean setLeoStorageInfoEnabled;
    public static boolean setLeoStorageInfoTitleEnabled=true;
    public static boolean setLeoStorageInfoOnClickEnabled=false;
    public static int setLeoStorageInfoVibratorEnabled=0;
    public static int setLeoStorageInfoVibratorLevel=15;
    public static int setLeoStorageInfoTitleColor;
    public static int setLeoStorageInfoTitleFont=0;
    public static int setLeoStorageInfoTotalColor;
    public static int setLeoStorageInfoTotalFont=0;
    public static int setLeoStorageInfoAvailableColor;
    public static int setLeoStorageInfoAvailableFont=0;
    public static int setLeoStorageInfoUsedColor;
    public static int setLeoStorageInfoUsedFont=0;
    public static int setLeoStorageInfoSymbolColor;
    public static int setLeoStorageInfoSymbolStyle=0;
    public static int setLeoStorageInfoType=0;
    public static int defaultLeoStorageInfoBgColor=Color.parseColor("#ff0074d4");
    public static int setLeoStorageInfoBgColor;
    public static int setLeoStorageInfoBGDashed=0;
    public static int setLeoStorageInfoBgDashedThickness=5;
    public static int setLeoStorageInfoBgDashedWidth=5;
    public static int setLeoStorageInfoBgDashedGop=5;
    public static int setLeoStorageInfoBgDashedColor;
    public static int setLeoStorageInfoBgDashedRadius=20;
    public static boolean setLeoStorageInfoBgEnabled=false;
    private static String setLeoColor=new String(Base64.decode("X2NvbG9y".getBytes(), Base64.DEFAULT));
    private  static String setLeofont=new String(Base64.decode("X2ZvbnQ=".getBytes(), Base64.DEFAULT));
    private static String setLeodashed=new String(Base64.decode("X2Rhc2hlZA==".getBytes(), Base64.DEFAULT));
    private static native String getLeoStorageInfoEnabled();
    private static native String getLeoStorageInfoTitleEnabled();
    private static native String getLeoStorageInfoClickEnabled();
    public static String setLeoStorageInfoSymbolString;
    public static long setLeoStorageInfoRefresh;
    public static int setLeoStorageInfoSize;
    static native String getLeoStorageInfoTotal();
    static native String getLeoStorageInfoAvailable();
    static native String getLeoStorageInfoUsed();
    static native String getLeoStorageInfoSymbol();
    static native String getLeoStorageInfoBG();
    static native String getLeoStorageInfoRefresh();
    static native String getLeoStorageInfoSize();
    static native String getLeoLauncherEffect();
    static native String getLeoLauncherIconText();
    public static int setLeoLauncherEffect;
    public static final String[] LauncherGesture ={
            LEOPREFE+getLeoLauncherGestureDouble()+getLeoEnabled(),
            LEOPREFE+getLeoLauncherGestureDouble()+getLeoStyle(),
            LEOPREFE+getLeoLauncherGestureDouble()+getLeoGlobalVibratorEnable()+getLeoEnabled(),
            LEOPREFE+getLeoLauncherGestureDouble()+getLeoGlobalVibratorLevel(),
            LEOPREFE+getLeoLauncherGestureSliding()+getLeoEnabled(),
            LEOPREFE+getLeoLauncherGestureSliding()+"_top",
            LEOPREFE+getLeoLauncherGestureSliding()+"_bottom"
    };
    public static void LeoLauncherManages(Context context){

            setLeoLauncherGestureDoubleEnabled=getLeoInt(context,LauncherGesture[0],0);
            setLeoLauncherGestureDoubleAction=getLeoInt(context,LauncherGesture[1],0);
            setLeoLauncherGestureDoubleVibratorEnable=getLeoInt(context,LauncherGesture[2],0);
            setLeoLauncherGestureDoubleVibratorLevel=getLeoInt(context,LauncherGesture[3],15);
            setLeoLauncherSlideGestureEnabled=getLeoInt(context,LauncherGesture[4],0)==1;
            setLeoLauncherSlideGestureTopAction=getLeoInt(context,LauncherGesture[5],0);
            setLeoLauncherSlideGestureBottomAction=getLeoInt(context,LauncherGesture[6],0);

            setLeoStorageInfoEnabled=
                    getLeoInt(context, CustomStorageInfo[0], 0)!=1;
            setLeoStorageInfoType=
                    getLeoInt(context,CustomStorageInfo[1],0);
            setLeoStorageInfoTitleEnabled=
                    getLeoInt(context,CustomStorageInfo[2],0)==1;
            setLeoStorageInfoOnClickEnabled=
                    getLeoInt(context,CustomStorageInfo[3],0)==1;
            setLeoStorageInfoVibratorEnabled=
                    getLeoInt(context,CustomStorageInfo[4],0);
            setLeoStorageInfoVibratorLevel=
                    getLeoInt(context,CustomStorageInfo[5],0);
            setLeoStorageInfoTitleColor=
                    getLeoInt(context,CustomStorageInfo[6],Color.WHITE);
            setLeoStorageInfoTitleFont=
                    getLeoInt(context,CustomStorageInfo[7],0);
            setLeoStorageInfoTotalColor=
                    getLeoInt(context,CustomStorageInfo[8],Color.WHITE);
            setLeoStorageInfoTotalFont=
                    getLeoInt(context,CustomStorageInfo[9],0);
            setLeoStorageInfoAvailableColor=
                    getLeoInt(context,CustomStorageInfo[10],Color.WHITE);
            setLeoStorageInfoAvailableFont=
                    getLeoInt(context,CustomStorageInfo[11],0);
            setLeoStorageInfoUsedColor=
                    getLeoInt(context,CustomStorageInfo[12],Color.WHITE);
            setLeoStorageInfoUsedFont=
                    getLeoInt(context,CustomStorageInfo[13],0);
            setLeoStorageInfoSymbolColor=
                    getLeoInt(context,CustomStorageInfo[14],Color.WHITE);
            setLeoStorageInfoSymbolStyle=
                    getLeoInt(context,CustomStorageInfo[15],0);
            setLeoStorageInfoBgColor=
                    getLeoInt(context,CustomStorageInfo[16],defaultLeoStorageInfoBgColor);
            setLeoStorageInfoBgDashedThickness=
                    getLeoInt(context,CustomStorageInfo[17],5);
            setLeoStorageInfoBgDashedWidth=
                    getLeoInt(context,CustomStorageInfo[18],5);
            setLeoStorageInfoBgDashedGop=
                    getLeoInt(context,CustomStorageInfo[19],5);
            setLeoStorageInfoBgDashedRadius=
                    getLeoInt(context,CustomStorageInfo[20],20);
            setLeoStorageInfoBgEnabled=
                    getLeoInt(context,CustomStorageInfo[21],0)==1;
            setLeoStorageInfoBGDashed=
                    getLeoInt(context,CustomStorageInfo[22],0);
            setLeoStorageInfoSymbolString=
                    getLeoString(context,CustomStorageInfo[23]);
            setLeoStorageInfoBgDashedColor=
                    getLeoInt(context,CustomStorageInfo[24],Color.parseColor("#6033b5e5"));
            setLeoStorageInfoRefresh=
                    getLeoInt(context,CustomStorageInfo[25],1500);
            setLeoStorageInfoSize=
                    getLeoInt(context,CustomStorageInfo[26],15);


            setLeoUesrRecentsShowBG=getLeoInt(context,
                    CustomRecentsBg[0] ,0) == 1;
            setLeoUesrRecentsBGStyle =
                   getLeoInt(context,CustomRecentsBg[1], 0);
            setLeoUesrRecentsBgBasicColor =getLeoInt(context,
                    CustomRecentsBg[2], Color.TRANSPARENT);
            setLeoUesrRecentsGradientBgStartColor =getLeoInt(context,
                    CustomRecentsBg[3], Color.TRANSPARENT);
            setLeoUesrRecentsGradientBgCenterColor =getLeoInt(context,
                    CustomRecentsBg[4], Color.TRANSPARENT);
            setLeoUesrRecentsGradientBgEndColor =getLeoInt(context,
                    CustomRecentsBg[5],Color.TRANSPARENT);
            setLeoUesrRecentsGradientColorFour = getLeoInt(context,
                    CustomRecentsBg[6], Color.TRANSPARENT);
            setLeoUesrRecentsGradientColorFive = getLeoInt(context,
                    CustomRecentsBg[7],Color.TRANSPARENT);
            setLeoUesrRecentsGradientColorSix = getLeoInt(context,
                    CustomRecentsBg[8], Color.TRANSPARENT);
            setLeoUesrRecentsGradientEnableCenterColor =getLeoInt(context,
                    CustomRecentsBg[9], 0);
            setLeoUesrRecentsBgGradientBgStyle=getLeoInt(context,
                    CustomRecentsBg[10],0);
            setLeoUesrRecentsGradientBgType=getLeoInt(context,
                    CustomRecentsBg[11] ,0);
            setLeoUesrRecentsGradientBackGroundColorRadius=getLeoInt(context,
                    CustomRecentsBg[12] ,0);
            setLeoUesrRecentsGradientBackGroundCornerRadius=getLeoInt(context,
                    CustomRecentsBg[25], 0);
            setLeoUesrRecentsStrokeEnabled =getLeoInt(context,
                    CustomRecentsBg[13], 0)==1;
            setLeoUesrRecentsStrokeDashGap=getLeoInt(context,
                    CustomRecentsBg[14],15);
            setLeoUesrRecentsStrokeDashWidth=getLeoInt(context,
                    CustomRecentsBg[15],15);
            setLeoUesrRecentsStrokeThickness=getLeoInt(context,
                    CustomRecentsBg[16],15);
            setLeoUesrRecentsStrokeDashColor=getLeoInt(context,
                    CustomRecentsBg[17], Color.parseColor("#ff00aeff"));

            setLeoUesrRecentsBgWallpaper =getLeoString(context,
                    CustomRecentsBg[18]);
            setLeoUesrRecentsWallpaperColorEnable=getLeoInt(context,
                    CustomRecentsBg[19],0);
            setLeoUesrRecentsWallpaperColor=getLeoInt(context,
                    CustomRecentsBg[20],  Color.parseColor("#FFFFFFFF"));
            setLeoUesrRecentsBgWallpaperAlphaEnable =getLeoInt(context,
                    CustomRecentsBg[21], 0) == 1;
            setLeoUesrRecentsBgWallpaperAlpha =getLeoInt(context,
                    CustomRecentsBg[22], 255);
            setLeoUesrRecentsBgWallpaperBlurEnabled = getLeoInt(context,
                    CustomRecentsBg[23], 0)==1;
            setLeoUesrRecentsBlurBgDegree=getLeoInt(context,
                    CustomRecentsBg[24],15);

            setLeoUesrLeoLauncherIconTextEnabled=getLeoInt(context,
                    CustomLauncher[0],0) == 0;
            setLeoUesrLauncherEffect=getLeoInt(context,
                    CustomLauncher[1],0);
            setLeoUesrHomeBlurViewEnabled=getLeoInt(context,
                    CustomLauncher[2],0)==1;
            setLeoUesrHomeBlurViewColorEnabled=getLeoInt(context,
                    CustomLauncher[3],0);
            setLeoUesrHomeBlurViewAlphaEnabled=getLeoInt(context,
                    CustomLauncher[4],0)==1;
            setLeoUesrHomeBlurViewAlpha=getLeoInt(context,
                    CustomLauncher[6],255);
            setLeoUesrHomeBlurViewColor=getLeoInt(context,
                    CustomLauncher[5],Color.parseColor("#FFFFFFFF"));
            setLeoUesrHomeBlurViewStyle=getLeoInt(context,
                    CustomLauncher[7],15);
            setLeoUesrHomeBlurViewWallpaper= getLeoString(context,CustomLauncher[8]);


    }
    public static boolean  setLeoUesrLeoLauncherIconTextEnabled;
    public static int  setLeoUesrLauncherEffect;
    public static final String[] CustomLauncher ={
            LEOPREFE+getLeoLauncherIconText()+getLeoEnabled(),
            LEOPREFE+getLeoLauncherEffect()+getLeoStyle(),
            LEOPREFE+getLeoLauncherBlurView()+getLeoEnabled(),
            LEOPREFE+"launcher_blurview_color_enabled",
            LEOPREFE+getLeoLauncherBlurView()+getLeoAlpha()+getLeoEnabled(),
            LEOPREFE+getLeoLauncherBlurView()+setLeoColor,
            LEOPREFE+getLeoLauncherBlurView()+getLeoAlpha(),
            LEOPREFE+getLeoLauncherBlurView()+getLeoStyle(),
            LEOPREFE+getLeoLauncherBlurView()+getLeoEnabled()+"_wallpaper_url"
    };
    public static final String[] CustomRecentsBg ={
            LEOPREFE+getLeoTaskBG()+getLeoEnabled(),
            LEOPREFE+getLeoTaskBG()+getLeoStyle(),
            LEOPREFE+getLeoTaskBG()+setLeoColor,
            LEOPREFE+getLeoTaskBG()+getLeoGradientColorOne()+setLeoColor,
            LEOPREFE+getLeoTaskBG()+getLeoGradientColorTwo()+setLeoColor,
            LEOPREFE+getLeoTaskBG()+getLeoGradientColorthee()+setLeoColor,
            LEOPREFE+getLeoTaskBG()+getLeoGradientColorFour()+setLeoColor,
            LEOPREFE+getLeoTaskBG()+getLeoGradientColorFive()+setLeoColor,
            LEOPREFE+getLeoTaskBG()+getLeoGradientColorSix()+setLeoColor,
            LEOPREFE+getLeoTaskBG()+getLeoGradientColorSix()+getLeoEnabled(),
            LEOPREFE+getLeoTaskBG()+getLeoGradientStyle()+getLeoStyle(),
            LEOPREFE+getLeoTaskBG()+getLeoGradientStyle()+"_type",
            LEOPREFE+getLeoTaskBG()+getLeoGradientStyle()+"_radius",
            LEOPREFE+getLeoTaskBG()+getLeoStrokeDashed()+getLeoEnabled(),
            LEOPREFE+getLeoTaskBG()+getLeoStrokeDashed()+getLeoStrokeDashGap(),
            LEOPREFE+getLeoTaskBG()+getLeoStrokeDashed()+getLeoStrokeDashWidth(),
            LEOPREFE+getLeoTaskBG()+getLeoStrokeDashed()+getLeoStrokeThickness(),
            LEOPREFE+getLeoTaskBG()+getLeoStrokeDashed()+setLeoColor,
            LEOPREFE+getLeoTaskBG()+getLeoStyle()+getLeoWallpaper()+"_url",
            LEOPREFE+getLeoTaskBG()+getLeoWallpaper()+setLeoColor+getLeoEnabled(),
            LEOPREFE+getLeoTaskBG()+getLeoWallpaper()+setLeoColor,
            LEOPREFE+getLeoTaskBG()+getLeoWallpaper()+getLeoAlpha()+getLeoEnabled(),
            LEOPREFE+getLeoTaskBG()+getLeoWallpaper()+getLeoAlpha(),
            LEOPREFE+getLeoTaskBG()+getLeoWallpaperBlur()+getLeoEnabled(),
            LEOPREFE+getLeoTaskBG()+getLeoWallpaperBlur()+getLeoStyle(),
            LEOPREFE+getLeoTaskBG()+"_radius",
    };
    public static final String[] CustomStorageInfo ={
            LEOPREFE+getLeoStorageInfoEnabled()+getLeoEnabled(),//
            LEOPREFE+getLeoStorageInfoEnabled()+getLeoStyle(),//
            LEOPREFE+getLeoStorageInfoTitleEnabled()+getLeoEnabled(),
            LEOPREFE+getLeoStorageInfoClickEnabled()+getLeoEnabled(),
            LEOPREFE+getLeoStorageInfoEnabled()+getLeoGlobalVibratorEnable()+getLeoEnabled(),
            LEOPREFE+getLeoStorageInfoEnabled()+getLeoGlobalVibratorLevel(),
            LEOPREFE+getLeoStorageInfoTitleEnabled()+setLeoColor,
            LEOPREFE+getLeoStorageInfoTitleEnabled()+setLeofont,
            LEOPREFE+getLeoStorageInfoTotal()+setLeoColor,
            LEOPREFE+getLeoStorageInfoTotal()+setLeofont,
            LEOPREFE+getLeoStorageInfoAvailable()+setLeoColor,
            LEOPREFE+getLeoStorageInfoAvailable()+setLeofont,
            LEOPREFE+getLeoStorageInfoUsed()+setLeoColor,
            LEOPREFE+getLeoStorageInfoUsed()+setLeofont,
            LEOPREFE+ getLeoStorageInfoSymbol()+setLeoColor,
            LEOPREFE+ getLeoStorageInfoSymbol()+getLeoStyle(),
            LEOPREFE+ getLeoStorageInfoBG()+setLeoColor,
            LEOPREFE+ getLeoStorageInfoBG()+setLeodashed+"_thickness",
            LEOPREFE+ getLeoStorageInfoBG()+setLeodashed+"_width",
            LEOPREFE+ getLeoStorageInfoBG()+setLeodashed+"_gop",
            LEOPREFE+ getLeoStorageInfoBG()+setLeodashed+"_radius",
            LEOPREFE+ getLeoStorageInfoBG()+getLeoEnabled(),
            LEOPREFE+ getLeoStorageInfoBG()+setLeodashed+getLeoEnabled(),
            LEOPREFE+ getLeoStorageInfoSymbol()+"_str",
            LEOPREFE+ getLeoStorageInfoBG()+setLeodashed+setLeoColor,
            LEOPREFE+ getLeoStorageInfoRefresh(),
            LEOPREFE+ getLeoStorageInfoSize()
    };
    static native String getLeoA();
    static native String getLeoB();
    static native String getLeoC();
    public static final  String getLeoA=getLeoA();
    public static final  String getLeoB=getLeoB();
    public static final  String getLeoC=getLeoC();
    static native String getLeoLauncherBlurView();

    public  static String setLeoUesrHomeBlurViewWallpaper;
    public static int  setLeoUesrHomeBlurViewStyle;
    public static int  setLeoUesrHomeBlurViewColor;
    public static int  setLeoUesrHomeBlurViewAlpha=255;
    public static boolean  setLeoUesrHomeBlurViewAlphaEnabled=false;
    public static int  setLeoUesrHomeBlurViewColorEnabled=0;
    public static boolean  setLeoUesrHomeBlurViewEnabled=false;

    public static int    setLeoUesrRecentsStrokeDashColor;
    public static int    setLeoUesrRecentsStrokeThickness;
    public static int    setLeoUesrRecentsStrokeDashWidth;
    public static int    setLeoUesrRecentsStrokeDashGap;
    public static boolean  setLeoUesrRecentsStrokeEnabled;
    public  static int setLeoUesrRecentsBgWallpaperAlpha;
    public  static int  setLeoUesrRecentsGradientColorFour;
    public  static int  setLeoUesrRecentsGradientColorFive;
    public  static int  setLeoUesrRecentsGradientColorSix;

    public  static boolean  setLeoUesrRecentsBgWallpaperBlurEnabled;

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
    static native String getLeoTaskBG();

}