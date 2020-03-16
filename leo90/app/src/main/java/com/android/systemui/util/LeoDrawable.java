package  com.android.systemui.util;

import android.content.Context;
import android.view.View;

import com.android.systemui.Rune;
import com.android.systemui.fusionleo.LeoFloatBall;
import com.fusionleo.LeoX.systemui.LeoConfig;
import com.fusionleo.LeoX.systemui.animation.AnimationParking;
import com.fusionleo.LeoX.systemui.widget.MeterBack;
import com.fusionleo.LeoX.systemui.widget.MeterBase;
import com.fusionleo.LeoX.systemui.widget.MeterFlashlight;
import com.fusionleo.LeoX.systemui.widget.MeterHome;
import com.fusionleo.LeoX.systemui.widget.MeterRecent;
import com.fusionleo.LeoX.systemui.widget.Until;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.feature.SemFloatingFeature;

import static com.android.systemui.SystemUIApplication.getContext;
import static com.fusionleo.LeoProvider.LeoManages.*;


public class LeoDrawable extends LeoConfig {

    public static  void   getLeoDrawable(){
        LeoSysUiManages(getContext());
        updateLeoWifiIcons(setLeoUesrStatusbarWifiIconEnabled,setLeoUesrStatusbarWIFIIcon);
        Signal5IconStyle(setLeoUesrStatusbarSignalIconEnabled,setLeoUesrStatusbarSignalIcon);

    }

    public  static  int  mLeoStatusBarMaxRssiLevel;
    public  static  int[][] mLeoStatusBarWifiIconStyle;
    public  static  String  mLeoStatusBarSignal;
    public static String LeoWifiStyle(int  style) {

        switch ( style) {
            case 1:
                return "wifi_signal_a";
            case 2:
                return "wifi_signal_b";
            case 3:
                return "wifi_signal_c";
            case 4:
                return "wifi_signal_d";
            case 5:
                return "wifi_signal_e";
            case 6:
                return "wifi_signal_f";
            case 7:
                return "wifi_signal_g";
            case 8:
                return "wifi_signal_h";
            case 9:
                return "wifi_signal_i";
            case 10:
                return "wifi_signal_j";
            case 11:
                return "wifi_signal_k";
            case 12:
                return "wifi_signal_l";
            case 13:
                return "wifi_signal_m";
            case 14:
                return "wifi_signal_n";
            case 15:
                return "wifi_signal_o";
            default:
                return "wifi_signal";
        }
    }

    static String mDrawabe="drawable/stat_sys_";
   static void  updateLeoWifiIcons(boolean of,int sss) {

        int mWIFIA;
      int mWIFIB;
      int  mWIFIC;
       int   mWIFID;
      int  mWIFIE;
       int mActivityA;
       int mActivityB;
       int  mActivityC;
       int   mActivityD;
        String Drawabe=mDrawabe;
       int  mWIFIA1=getLeoResource(Drawabe+LeoWifiStyle(0)+"_0");
       int  mWIFIB1=getLeoResource(Drawabe+LeoWifiStyle(0)+"_1");
       int  mWIFIC1=getLeoResource(Drawabe+LeoWifiStyle(0)+"_2");
       int  mWIFID1=getLeoResource(Drawabe+LeoWifiStyle(0)+"_3");
       int  mWIFIE1=getLeoResource(Drawabe+LeoWifiStyle(0)+"_4");
       int  mActivityA1=getLeoResource(Drawabe+"wifi_signal_no_inout");
       int mActivityB1=getLeoResource(Drawabe+"wifi_signal_in");
       int  mActivityC1=getLeoResource(Drawabe+"wifi_signal_out");
       int mActivityD1=getLeoResource(Drawabe+"wifi_signal_inout");
       if (VersionNumber()) {
           if(of){
               mWIFIA=getLeoResource(Drawabe+LeoWifiStyle(sss)+"_0");
               mWIFIB=getLeoResource(Drawabe+LeoWifiStyle(sss)+"_1");
               mWIFIC=getLeoResource(Drawabe+LeoWifiStyle(sss)+"_2");
               mWIFID=getLeoResource(Drawabe+LeoWifiStyle(sss)+"_3");
               mWIFIE=getLeoResource(Drawabe+LeoWifiStyle(sss)+"_4");
              int f=getLeoAndroidResource("drawable/default_lock_wallpaper");
               mActivityA=f;
               mActivityB=f;
               mActivityC=f;
               mActivityD=f;
           }else{
               mWIFIA=mWIFIA1;
               mWIFIB=mWIFIB1;
               mWIFIC=mWIFIC1;
               mWIFID=mWIFID1;
               mWIFIE=mWIFIE1;
               mActivityA= mActivityA1;
               mActivityB=mActivityB1;
               mActivityC=mActivityC1;
               mActivityD=mActivityD1;
           }
       }else{
           mWIFIA=mWIFIA1;
           mWIFIB=mWIFIB1;
           mWIFIC=mWIFIC1;
           mWIFID=mWIFID1;
           mWIFIE=mWIFIE1;
           mActivityA= mActivityA1;
           mActivityB=mActivityB1;
           mActivityC=mActivityC1;
           mActivityD=mActivityD1;
       }

       mLeoStatusBarWIFIActivity= new int[]{mActivityA,mActivityB,mActivityC, mActivityD};
       mLeoStatusBarWifiIconStyle =  new int[][]{new int[]{mWIFIA, mWIFIB, mWIFIC, mWIFID, mWIFIE}, new int[]{mWIFIA, mWIFIB, mWIFIC, mWIFID, mWIFIE}};

    }
    public  static  int[] mLeoStatusBarWIFIActivity;
    static void Signal5IconStyle(boolean of,int sing){

        String Drawabe=mDrawabe;

       int mSIGNALA;
        int mSIGNALB;
        int mSIGNALC;
       int mSIGNALD;
       int mSIGNALE;
      int mSIGNALF;
        String dsd=Drawabe+ChinaIconSignalStyle(0);
        int amSIGNALA=getLeoResource(dsd+"_0_simplified_auto_rotate");
        int amSIGNALB=getLeoResource(dsd+"_1_simplified_auto_rotate");
        int amSIGNALC=getLeoResource(dsd+"_2_simplified_auto_rotate");
        int amSIGNALD=getLeoResource(dsd+"_3_simplified_auto_rotate");
        int amSIGNALE=getLeoResource(dsd+"_4_simplified_auto_rotate");
        int amSIGNALF= getLeoResource(dsd+"_5_simplified_auto_rotate");
        if (VersionNumber()) {
            if(of){
                mSIGNALA=getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_0_auto_rotate");
                mSIGNALB=getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_1_auto_rotate");
                mSIGNALC=getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_2_auto_rotate");
                mSIGNALD=getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_3_auto_rotate");
                mSIGNALE=getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_4_auto_rotate");
                mSIGNALF= getLeoResource(Drawabe+ChinaIconSignalStyle(sing)+"_5_auto_rotate");
            }else{

                mSIGNALA=amSIGNALA;
                mSIGNALB=amSIGNALB;
                mSIGNALC=amSIGNALC;
                mSIGNALD=amSIGNALD;
                mSIGNALE=amSIGNALE;
                mSIGNALF=amSIGNALF;
            }
        }else{

            mSIGNALA=amSIGNALA;
            mSIGNALB=amSIGNALB;
            mSIGNALC=amSIGNALC;
            mSIGNALD=amSIGNALD;
            mSIGNALE=amSIGNALE;
            mSIGNALF=amSIGNALF;

        }



        mLeoStatusBarSignal5IconStyle=  new int[][]{new int[]{mSIGNALA, mSIGNALB, mSIGNALC,mSIGNALD, mSIGNALE,mSIGNALF}, new int[]{mSIGNALA, mSIGNALB, mSIGNALC,mSIGNALD, mSIGNALE,mSIGNALF}};
    }
    public  static  int[][] mLeoStatusBarSignal5IconStyle;
    public static int getLeoResource(String resource) {
        return getContext().getResources().getIdentifier(resource, null,"com.android.systemui");
    }

    public static int mG5LeoIConnected=getLeoResource(mDrawabe+Connected5G());
    static String Connected5G(){

        String GG5;
        if(setLeoIntKey("leo_g5_icon_style",0)==1){
            GG5="data_connected_leo_5g_n10";
        } else {
            GG5="data_connected_leo_5g";
        }
        return GG5;
    }
    static String Connectedstyle5G(){
        String GG5;
        if(setLeoIntKey("leo_g5_icon_style",0)==1){
            GG5="data_type_signal_leo_5g_n10";
        } else {
            GG5="data_type_signal_leo_5g";
        }
        return GG5;
    }
    public static int mG5LeoICON=getLeoResource(mDrawabe+Connectedstyle5G());
    public static String ChinaIconSignalStyle(int style) {
        switch ( style) {
            case 1:
                return "signal_a";
            case 2:
                return "signal_b";
            case 3:
                return "signal_c";
            case 4:
                return "signal_d";
            case 5:
                return "signal_e";
            case 6:
                return "signal_f";
            case 7:
                return "signal_g";
            case 8:
                return "signal_h";
            case 9:
                return "signal_i";
            case 10:
                return "signal_j";
            case 11:
                return "signal_k";
            case 12:
                return "signal_l";
            case 13:
                return "signal_m";
            case 14:
                return "signal_n";
            case 15:
                return "signal_o";
            case 16:
                return "signal_p";
            case 17:
                return "signal_q";
            case 18:
                return "signal_r";
            default:
                return "signal_5_level";
        }
    }
    public static void updateStatusBarIcons(Context context) {
        LeoSysUiManages(context);
        Until.initialPop(context);
        new MeterFlashlight(context);
        new MeterRecent(context);
        new MeterBack(context);
        new MeterHome(context);
        new LeoFloatBall(context);
        setLeoStatusBarPadding(setLeoUesrStatusbarIconPaddingEnabled,setLeoUesrStatusbarIconPadding);
        boolean pof=setLeoUesrStatusbarSignalIconEnabled;
        if(ioChinese()){
            if (pof) {
                Rune.STATBAR_ICON_BRANDING = SemCscFeature.getInstance().getString("CscFeature_Leo_ConfigOpBrandingForIndicatorIcon", "");
            } else {
                Rune.STATBAR_ICON_BRANDING = SemCscFeature.getInstance().getString("CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon", "");
            }
        }
      boolean Signalmax;
       if(ioChinese()){
           Signalmax=true;
       }else {
           Signalmax=pof;
       }
        int i = Signalmax ? 5 : 4;
        Rune.STATBAR_MAX_SIGNAL_LEVEL = i;
    }
    public static int getLeoAndroidResource(String resource ) {
        return getContext().getResources().getIdentifier(resource, null, "android");

    }

    public static void setLeoStatusBarPadding(boolean of,int style) {
        float Padding;
        if(of){
            Padding  =style;
        }else {
            Padding=10.0F;
        }

        Rune.STATBAR_CONFIG_DEVICE_CORNER_ROUND= Float.parseFloat(SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND", "0.0"));
        Rune.STATBAR_CONFIG_STATUSBAR_SIDE_PADDING = (int) ((Rune.STATBAR_CONFIG_DEVICE_CORNER_ROUND * (Padding - Rune.STATBAR_CONFIG_DEVICE_CORNER_ROUND)) - 1.0f);
    }
    public static void setMinipopVisibility(boolean Enabled) {
        if (Enabled) {
            AnimationParking.stop();
            AnimationParking.mOriginSide = AnimationParking.LEFT;
            AnimationParking.baseX = -1;
            AnimationParking.updateAll(-1, MeterHome.baseY);
            MeterBase.MeterMap.get(MeterHome.NAME).setVisibility(View.VISIBLE);
            MeterBase.MeterMap.get(MeterBack.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterRecent.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterFlashlight.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterHome.NAME).setAlpha(0.4f);
            AnimationParking.shrinkStart();
        } else {
            MeterBase.MeterMap.get(MeterBack.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterRecent.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterFlashlight.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterHome.NAME).setVisibility(View.GONE);
        }
    }

}