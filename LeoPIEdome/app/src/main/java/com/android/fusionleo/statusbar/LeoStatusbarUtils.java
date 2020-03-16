
package com.android.fusionleo.statusbar;



import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.os.Build;
import android.provider.Settings;
import android.support.graphics.drawable.ArgbEvaluator;
import android.support.v7.app.AlertDialog;
import android.view.View;
import android.widget.Toast;

import com.android.fusionleo.salt.animation.AnimationParking;
import com.android.fusionleo.salt.widget.MeterBack;
import com.android.fusionleo.salt.widget.MeterBase;
import com.android.fusionleo.salt.widget.MeterFlashlight;
import com.android.fusionleo.salt.widget.MeterHome;
import com.android.fusionleo.salt.widget.MeterRecent;
import com.android.systemui.statusbar.policy.KeyButtonDrawable;

import java.util.Random;


import static android.content.Intent.FLAG_ACTIVITY_CLEAR_TOP;
import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.android.fusionleo.global.LeoGlobalUtils.LeoHitomiActiong;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoAPPnameUIR;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoInt;
import static com.android.fusionleo.global.LeoGlobalUtils.isLunarSetting;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrLeoStatsusBarFlashlightIcon;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatsusBarSignalIconStyle;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatsusBarStatsusBarWifiIconCustom;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatsusBarWifiIconStyle;
import static com.android.systemui.SystemUIApplication.getContext;


public class LeoStatusbarUtils{
   public static int mDarkModeColor=getContext().getColor(getLeoResource("color/dark_mode_icon_color_single_tone"));
    public static final ArgbEvaluator mArgb = ArgbEvaluator.getInstance();
   public static final int mDarkColor =mDarkModeColor;
   public static int mStatusBarClockColor=Color.parseColor("#E3FFFFFF");
  public static int mNotificationPanelCarrierLabelColor=getContext().getColor(getLeoResource("color/notification_panel_carrier_label_text_color"));
    public static int mNotificationPanelDataUsageColor=getContext().getColor(getLeoResource("color/data_usage_text_color"));

    public static String RamEN = "RAM  ";

    public static int getLeoResource(String resource) {
        return getContext().getResources().getIdentifier(resource, null,"com.android.systemui");
    }

    public  static int Transparency= Color.TRANSPARENT;
    public  static int mWhiteColor = Color.parseColor("#FFFFFFFF");
    public  static int mYellowColor = Color.parseColor("#FFFFFF00");
    public  static int mRedColor = Color.parseColor("#FFFF0000");
    public static int getLeoAndroidResource(String resource ) {
        return getContext().getResources().getIdentifier(resource, null, "android");

    }
    public  static int getLeoRandomColor(Context c) {
        int[] customizedColors = c.getResources().getIntArray(getLeoResource("array/leo_colors"));
        int customizedColor = customizedColors[new Random().nextInt(customizedColors.length)];
        return customizedColor;
    }
   public static int getLeoGradient(float DarkAmount, int Color) {

      return ((Integer) mArgb.evaluate(DarkAmount, Integer.valueOf(Color), Integer.valueOf(mDarkColor))).intValue();
    }

    public static String NetworkIconStyle(int  style) {
        switch ( style) {
            case 1:
                return "stat_sys_network_traffic_b";
            case 2:
                return "stat_sys_network_traffic_c";
            case 3:
                return "stat_sys_network_traffic_d";
            case 4:
                return "stat_sys_network_traffic_e";
            case 5:
                return "stat_sys_network_traffic_f";
            case 6:
                return "stat_sys_network_traffic_g";
            case 7:
                return "stat_sys_network_traffic_h";
            default:
                return "stat_sys_network_traffic_a";
        }
    }
    public static  int UpDownIcom;
    public static  int UpIcom;
    public static  int DownIcom;
    public static void getLeoNetworkIconStyle(int style) {
        String draw = "drawable/";
        UpDownIcom = getLeoResource(draw + NetworkIconStyle(style) + "_updown");
        UpIcom = getLeoResource(draw + NetworkIconStyle(style) + "_up");
        DownIcom=getLeoResource(draw + NetworkIconStyle(style) + "_down");
    }



   public static int LOGO(int style){
       return getLeoResource("drawable/ic_"+LeoLogoStyle(style));
   }
    public static String LeoLogoStyle(int  style) {
        switch ( style) {
            case 1:
                return "alibaba";
            case 2:
                return "apple_logo";
            case 3:
                return "baidu";
            case 4:
                return "cmcc";
            case 5:
                return "google";
            case 6:
                return "ios";
            case 7:
                return "linux";
            case 8:
                return "qq";
            case 9:
                return "telecom";
            case 10:
                return "unicom";
            case 11:
                return "windows";
            case 12:
                return "ubuntu";
            case 13:
                return "ctc_go";
            default:
                return "leo";
        }
    }
    public  static int QSonColor= Color.parseColor("#ff00aeff");

  //  public    static final int[][] LEOROM_WIFI_SIGNAL_STRENGTH = new int[][]{new int[]{mWIFIA, mWIFIB,  mWIFIC, mWIFID, mWIFIE}, new int[]{mWIFIA, mWIFIB,  mWIFIC, mWIFID, mWIFIE}};
    public static int mWIFIA;
    public static int mWIFIB;
    public static int  mWIFIC;
    public static int  mWIFID;
    public static int  mWIFIE;
    public static int mWifiArrows;
    public static int mWifiArrows1;
    public static int  mWifiArrows2;
    public static int   mWifiArrows3;
    public static int mSIGNALA=getLeoResource("drawable/stat_sys_wifi_signal_a_0");
    public static int mSIGNALB=getLeoResource("drawable/stat_sys_wifi_signal_a_1");
    public static int mSIGNALC=getLeoResource("drawable/stat_sys_wifi_signal_a_2");
    public static int mSIGNALD=getLeoResource("drawable/stat_sys_wifi_signal_a_3");
    public static int mSIGNALE=getLeoResource("drawable/stat_sys_wifi_signal_a_4");
    public static int mSIGNALF=getLeoResource("drawable/stat_sys_wifi_signal_a_4");
    static String empty="drawable/leo_empty";
    public static void setSignalIcons() {
        LeoStatusSettings(getContext());
        int  sing=setLeoUesrStatsusBarSignalIconStyle;
        boolean Arrows=setLeoUesrStatsusBarStatsusBarWifiIconCustom;
        int sss = setLeoUesrStatsusBarWifiIconStyle;
        if(Arrows){

            mWifiArrows=getLeoResource(empty);
            mWifiArrows1=getLeoResource(empty);
            mWifiArrows2=getLeoResource(empty);
            mWifiArrows3=getLeoResource(empty);
            mWIFIA=getLeoResource(LeoWifiStyle(sss)+"_0");
            mWIFIB=getLeoResource(LeoWifiStyle(sss)+"_1");
            mWIFIC=getLeoResource(LeoWifiStyle(sss)+"_2");
            mWIFID=getLeoResource(LeoWifiStyle(sss)+"_3");
            mWIFIE=getLeoResource(LeoWifiStyle(sss)+"_4");
        }else {
            mWifiArrows=getLeoResource("drawable/stat_sys_wifi_signal_no_inout");
            mWifiArrows1=getLeoResource("drawable/stat_sys_wifi_signal_in");
            mWifiArrows2=getLeoResource("drawable/stat_sys_wifi_signal_out");
            mWifiArrows3=getLeoResource("drawable/stat_sys_wifi_signal_inout");
            mWIFIA=getLeoResource("drawable/stat_sys_wifi_signal_0");
            mWIFIB=getLeoResource("drawable/stat_sys_wifi_signal_1");
            mWIFIC=getLeoResource("drawable/stat_sys_wifi_signal_2");
            mWIFID=getLeoResource("drawable/stat_sys_wifi_signal_3");
            mWIFIE=getLeoResource("drawable/stat_sys_wifi_signal_4");
        }
        FlashlightNotificationicon(setLeoUesrLeoStatsusBarFlashlightIcon);
        getLeoSignalIconStyle(sing);
    }

    public static void getLeoSignalIconStyle(int  sing ) {
            ///CHC
            mSIGNALA=getLeoResource(ChinaIconSignalStyle(sing)+"_0_auto_rotate");
            mSIGNALB=getLeoResource(ChinaIconSignalStyle(sing)+"_1_auto_rotate");
            mSIGNALC=getLeoResource(ChinaIconSignalStyle(sing)+"_2_auto_rotate");
            mSIGNALD=getLeoResource(ChinaIconSignalStyle(sing)+"_3_auto_rotate");
            mSIGNALE=getLeoResource(ChinaIconSignalStyle(sing)+"_4_auto_rotate");
            mSIGNALF= getLeoResource(ChinaIconSignalStyle(sing)+"_5_auto_rotate");

    }

    public static int setFlashlightIcon;
    public static void FlashlightNotificationicon(boolean off) {
        if(off){
            setFlashlightIcon=getLeoResource(empty);
        }else {
            setFlashlightIcon=getLeoResource("drawable/stat_notify_assistivelight");
        }
    }
    public static String LeoWifiStyle(int  style) {
        switch ( style) {
            case 1:
                return "drawable/stat_sys_wifi_signal_a";
            case 2:
                return "drawable/stat_sys_wifi_signal_b";
            case 3:
                return "drawable/stat_sys_wifi_signal_c";
            case 4:
                return "drawable/stat_sys_wifi_signal_d";
            case 5:
                return "drawable/stat_sys_wifi_signal_e";
            case 6:
                return "drawable/stat_sys_wifi_signal_f";
            case 7:
                return "drawable/stat_sys_wifi_signal_g";
            case 8:
                return "drawable/stat_sys_wifi_signal_h";
            case 9:
                return "drawable/stat_sys_wifi_signal_i";
            case 10:
                return "drawable/stat_sys_wifi_signal_j";
            case 11:
                return "drawable/stat_sys_wifi_signal_k";
            case 12:
                return "drawable/stat_sys_wifi_signal_l";
            case 13:
                return "drawable/stat_sys_wifi_signal_m";
            case 14:
                return "drawable/stat_sys_wifi_signal_n";
            case 15:
                return "drawable/stat_sys_wifi_signal_o";
            default:
                return "drawable/stat_sys_wifi_signal";
        }
    }

    public static String ChinaIconSignalStyle(int style) {
        switch ( style) {
            case 1:
                return "drawable/stat_sys_signal_a";
            case 2:
                return "drawable/stat_sys_signal_b";
            case 3:
                return "drawable/stat_sys_signal_c";
            case 4:
                return "drawable/stat_sys_signal_d";
            case 5:
                return "drawable/stat_sys_signal_e";
            case 6:
                return "drawable/stat_sys_signal_f";
            case 7:
                return "drawable/stat_sys_signal_g";
            case 8:
                return "drawable/stat_sys_signal_h";
            case 9:
                return "drawable/stat_sys_signal_i";
            case 10:
                return "drawable/stat_sys_signal_j";
            case 11:
                return "drawable/stat_sys_signal_k";
            case 12:
                return "drawable/stat_sys_signal_l";
            case 13:
                return "drawable/stat_sys_signal_m";
            case 14:
                return "drawable/stat_sys_signal_n";
            case 15:
                return "drawable/stat_sys_signal_o";
            case 16:
                return "drawable/stat_sys_signal_p";
            case 17:
                return "drawable/stat_sys_signal_q";
            case 18:
                return "drawable/stat_sys_signal_r";
            default:
                return "drawable/stat_sys_signal_5_level";
        }
    }



    public static void StartAppLication(Context context,String appkey) {
        String string = appkey;
        if (string != null) {
            String[] split = string.split("##");
            ComponentName componentName = new ComponentName(split[0], split[1]);
            Intent intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK | FLAG_ACTIVITY_CLEAR_TOP);
            intent.setComponent(componentName);
            context.startActivity(intent);
        }
    }
    public static void collapsePanel(Context context) {
        try {
            Object service =context.getSystemService("statusbar");
            Class<?> statusbarManager = Class.forName("android.app.StatusBarManager");
            if (Build.VERSION.SDK_INT <= 16) {
                statusbarManager.getMethod("collapse", new Class[0]).invoke(service, new Object[0]);
            } else {
                statusbarManager.getMethod("collapsePanels", new Class[0]).invoke(service, new Object[0]);
            }
        } catch (Exception e) {
        }
    }
    public static void LeoComponetURL(Context context,String str) {


        String[] split = str.split("/");
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(split[0], split[1]));
        intent.setFlags(268435456);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            Toast.makeText(context, getLeoAPPnameUIR(), Toast.LENGTH_LONG).show();
        }
    }

    public static void LeoToast(Context context) {
        Toast.makeText(context,context.getResources().getString(getLeoResource("string/no_donation_alert")),
                Toast.LENGTH_SHORT).show();
    }
    public static void LeoCopyrightToast(Context context) {
        Toast toast = Toast.makeText(context,"代码不属于你请勿盗窃",Toast.LENGTH_SHORT);
        toast.show();
    }


    public static int mLeoLockColor=getContext().getColor(getLeoResource("color/theme_clock_date_color"));
}

