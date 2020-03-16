package com.android.launcher3.salt;


import android.content.Context;
import android.graphics.Color;
import android.util.Base64;

import static com.android.launcher3.salt.SaltServerFrame.Provider.getLeoInt;
import static com.android.launcher3.salt.SaltServerFrame.Provider.getLeoString;

public class SaltLauncher {
    public static  String Config ="salt-home";
    static {
        System.loadLibrary(Config);
    }
    private static String setLeoColor=new String(Base64.decode("X2NvbG9y".getBytes(), Base64.DEFAULT));
    private  static String setLeofont=new String(Base64.decode("X2ZvbnQ=".getBytes(), Base64.DEFAULT));
    private static String setLeodashed=new String(Base64.decode("X2Rhc2hlZA==".getBytes(), Base64.DEFAULT));
    static native String getLeoService();
    public static native String getLeoframe();
    public static boolean setLeoStorageInfoEnabled=true;
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
    public static int defaultLeoStorageInfoBgColor= Color.parseColor("#ff0074d4");
    public static int setLeoStorageInfoBgColor;
    public static int setLeoStorageInfoBGDashed=0;
    public static int setLeoStorageInfoBgDashedThickness=5;
    public static int setLeoStorageInfoBgDashedWidth=5;
    public static int setLeoStorageInfoBgDashedGop=5;
    public static int setLeoStorageInfoBgDashedColor;
    public static int setLeoStorageInfoBgDashedRadius=20;
    public static boolean setLeoStorageInfoBgEnabled=false;
    public static long setLeoStorageInfoRefresh;
    public static String setLeoStorageInfoSymbolString;
    public static int setLeoStorageInfoSize;
    public static final String LEOPREFE=getLeoPreList();
    public static boolean setLeoLauncherSlideGestureEnabled;
    public static int setLeoLauncherSlideGestureTopAction;

    public static int setLeoLauncherSlideGestureBottomAction;
    public static int setLeoLauncherGestureDoubleEnabled;
    public static int setLeoLauncherGestureDoubleAction;
    public static int setLeoLauncherGestureDoubleVibratorEnable;
    public static int setLeoLauncherGestureDoubleVibratorLevel=15;
    public static void setSaltWorkspace(Context context){
        setLeoLauncherGestureDoubleEnabled=getLeoInt(context,LauncherGesture[0],0);
        setLeoLauncherGestureDoubleAction=getLeoInt(context,LauncherGesture[1],0);
        setLeoLauncherGestureDoubleVibratorEnable=getLeoInt(context,LauncherGesture[2],0);
        setLeoLauncherGestureDoubleVibratorLevel=getLeoInt(context,LauncherGesture[3],15);
        setLeoLauncherSlideGestureEnabled=getLeoInt(context,LauncherGesture[4],0)==1;
        setLeoLauncherSlideGestureTopAction=getLeoInt(context,LauncherGesture[5],0);
        setLeoLauncherSlideGestureBottomAction=getLeoInt(context,LauncherGesture[6],0);
    }
    public static void setSaltMemoryView(Context context){
        setLeoStorageInfoEnabled=
                getLeoInt(context, CustomStorageInfo[0], 1)==1;
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
    }
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
    private static native String getLeoStorageInfoEnabled();
    private static native String getLeoStorageInfoTitleEnabled();
    private static native String getLeoStorageInfoClickEnabled();
    static native String getLeoStorageInfoTotal();
    static native String getLeoStorageInfoAvailable();
    static native String getLeoStorageInfoUsed();
    static native String getLeoStorageInfoSymbol();
    static native String getLeoStorageInfoBG();
    static native String getLeoStorageInfoRefresh();
    static native String getLeoStorageInfoSize();
    static native String getLeoPreList();
    static native String getLeoEnabled();
    static native String getLeoStyle();
    static native String getLeoGlobalVibratorEnable();
    static native String getLeoGlobalVibratorLevel();
    static native String getLeoLauncherGestureDouble();
    static native String getLeoLauncherGestureSliding();
    public static final String[] LauncherGesture ={
            LEOPREFE+getLeoLauncherGestureDouble()+getLeoEnabled(),
            LEOPREFE+getLeoLauncherGestureDouble()+getLeoStyle(),
            LEOPREFE+getLeoLauncherGestureDouble()+getLeoGlobalVibratorEnable()+getLeoEnabled(),
            LEOPREFE+getLeoLauncherGestureDouble()+getLeoGlobalVibratorLevel(),
            LEOPREFE+getLeoLauncherGestureSliding()+getLeoEnabled(),
            LEOPREFE+getLeoLauncherGestureSliding()+"_top",
            LEOPREFE+getLeoLauncherGestureSliding()+"_bottom"
    };
}
