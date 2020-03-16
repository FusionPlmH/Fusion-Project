/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.systemui;


import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.view.View;

import com.android.systemui.statusbar.NavigationBarSettingsHelper;
import com.android.systemui.statusbar.policy.KeyButtonDrawable;


import com.leo.pop.animation.AnimationParking;
import com.leo.pop.widget.MeterBack;
import com.leo.pop.widget.MeterBase;
import com.leo.pop.widget.MeterFlashlight;
import com.leo.pop.widget.MeterHome;
import com.leo.pop.widget.MeterRecent;
import com.leo.utils.Constants;

import java.util.Random;

import static com.android.systemui.Rune.NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR;
import static com.leo.utils.Constants.getLeoAndroidResource;
import static com.leo.utils.Constants.getLeoResource;
import static com.leo.utils.Constants.mLeoRom;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoQSbuttonOFFColor;
import static com.os.leo.utils.LeoUserSettings.getLeoQSbuttonONColor;

import static com.os.leo.utils.LeoUserSettings.getLeoQSbuttonRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFlashlightIconEnable;

import static com.os.leo.utils.LeoUserSettings.setLeoUesrHideSlotFocusIcon;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSbuttonColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatsusBarIconPadding;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatsusBarIconPaddingEnable;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarCustomSignalIcon;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarCustomSignalIconStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarCustomSignalSlotFocusIconStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarCustomWifiIcon;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarCustomWifiIconStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarSignalRandomColor;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.mS;
import static com.os.leo.utils.LeoUserValues.ryid;
import static com.os.leo.utils.LeoUtils.getLeoInt;
import static com.android.systemui.SystemUIApplication.getContext;

public class UId{

    public static int UId=getLeoResource("id/signal_left");
    public static int UId1=getLeoResource("id/system_icons");
    public static int UId2=getLeoResource("id/signal_cluster");
    public static int UId3=getLeoResource("id/main_battery_container");
    public static int UId4=getLeoResource("id/battery");
    public static int UId5=getLeoResource("id/left_layout");
    public static int UId6=getLeoResource("id/statusbar_clock_center_layout");
    public static int UId7=getLeoResource("id/visibility_layout");
    public static int UId8=getLeoResource("id/network_traffic_container_left");
    public static int UId9=getLeoResource("id/network_traffic_container_right");
    public static int UId10=getLeoResource("id/left_clock");
    public static int UId11=getLeoResource("id/center_clock");
    public static int UId12=getLeoResource("id/clock");
    public static int UId13=getLeoResource("id/statusbar_logo_right");
    public static int UId14=getLeoResource("id/statusbar_logo_left");
    public static int UId15=getLeoResource("id/statsusbar_temperature_right");
    public static int UId16=getLeoResource("id/statsusbar_temperature_left");
    public static int UId17=getLeoResource("id/statsusbar_carrier_right");
    public static int UId18=getLeoResource("id/statsusbar_carrier_left");
    public static int UId19=getLeoResource("id/date_time_divider");
    public static int UId20=getLeoResource("id/date_time_divider_image");
    public static int UId21=getLeoResource("id/settings_button_container");
    public static int UId22=getLeoResource("id/statsusbar_weather_left");
    public static int UId23=getLeoResource("id/statsusbar_weather_right");
    public static int UId24=getLeoResource("drawable/tw_ic_lock_airplane");
    public static int UId25=getLeoResource("drawable/tw_ic_lock_flashlight");
    public static int UId26=getLeoResource("drawable/tw_ic_lock_record");
    public static int UId27=getLeoResource("drawable/tw_ic_lock_recovery");
    public static int UId28=getLeoResource("drawable/tw_ic_lock_download");
    public static int UId29=getLeoResource("drawable/tw_ic_lock_screenshot");
    public static int UId30=getLeoResource("drawable/tw_ic_lock_quickreboot");
    public static int UId31=getLeoResource("drawable/tw_ic_lock_personalize");
    public static int UId32=getLeoResource("string/quick_settings_flashlight_label");
    public static int UId33=getLeoResource("string/quick_settings_screen_recorder_label");
    public static int UId34=getLeoResource("string/tw_ic_lock_recovery");
    public static int UId35=getLeoResource("string/tw_ic_lock_download");
    public static int UId36=getLeoResource("string/quick_settings_screen_capture_label");
    public static int UId37=getLeoResource("string/tw_ic_lock_quickreboot");
    public static int UId38=getLeoResource("string/tw_ic_lock_personalize");
    public static int UId39=getLeoResource("drawable/tw_ic_lock_sound");
    public static int UId40=getLeoResource("string/tw_ic_lock_sound");
    public static int UId41=getLeoResource("drawable/tw_ic_lock_wifi");
    public static int UId42=getLeoResource("string/tw_ic_lock_wifi");
    public static int UId43=getLeoResource("id/lid_statusbarbg");
    public static int UId44=getLeoResource("id/lid_recentsbg");
    public static int UId45=getLeoResource("id/lid_recents_memory");
    public static int UId46=getLeoResource("id/notification_panel_carrier_label");
    public static int UId47=getLeoResource("id/lid_pulldown_carrier_label");
    public static int UId48=getLeoResource("id/lid_pulldown_handle");
    public static int UId49=getLeoResource("id/lid_panel_carrier_layout");
    public static int UId50=getLeoResource("id/lid_multi_user");
    public static int UId52=getLeoResource("string/tw_ic_lock_mipop");
    public static int UId51=getLeoResource("drawable/tw_ic_lock_mipop");
    public static int UId53=getLeoResource("drawable/tw_ic_lock_settings");
    public static int UId54=getLeoResource("drawable/tw_ic_lock_assist");
    public static int UId55=getLeoResource("drawable/tw_ic_lock_multiuser");

    public static int UID56=getLeoResource("id/lid_keyguard_single_vertical_china_view");
   public static int UID57=getLeoResource("id/lid_keyguard_single_vertical_lunar_view");
    public static int UID58=getLeoResource("id/lid_keyguard_single_vertical_weather_style");

    public static int UID68=getLeoResource("layout/leo_floating");

    public static int UID69=getLeoResource("id/floating_press_img");
    public static int UID70=getLeoResource("id/floating_bg");
    public static int UID71=getLeoResource("id/floating_img");
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

    public static String NaviIconStyle(int  style) {
        switch ( style) {
            case 1:
                return "navibar_style1";
            case 2:
                return "navibar_style2";
            case 3:
                return "navibar_style3";
            case 4:
                return "navibar_style4";
            case 5:
                return "navibar_style5";
            case 6:
                return "navibar_style6";
            case 7:
                return "navibar_style7";
            case 8:
                return "navibar_style8";
            case 9:
                return "navibar_style9";
            case 10:
                return "navibar_stylea";
            case 11:
                return "navibar_styleb";
            case 12:
                return "navibar_stylec";
            case 13:
                return "navibar_style13";
            case 14:
                return "navibar_style14";
            case 15:
                return "navibar_style15";
            case 16:
                return "navibar_style16";
            case 17:
                return "navbar_zenyth";
            case 18:
                return "navbar_condensed";
            case 19:
                return "navbar_carbon";
            case 20:
                return "navbar_p_ic_sysbar";
            case 21:
                return "navbar_pixel2_sysbar";
            case 22:
                return "navbar_o_sysbar";
            default:
                return "ic_sysbar";
        }
    }

    public static String WifiIconStyle(int style) {
        switch ( style) {
            case 1:
                return "stat_sys_wifi_signal_a";
            case 2:
                return "stat_sys_wifi_signal_b";
            case 3:
                return "stat_sys_wifi_signal_c";
            case 4:
                return "stat_sys_wifi_signal_d";
            case 5:
                return "stat_sys_wifi_signal_e";
            case 6:
                return "stat_sys_wifi_signal_f";
            case 7:
                return "stat_sys_wifi_signal_g";
            case 8:
                return "stat_sys_wifi_signal_h";
            case 9:
                return "stat_sys_wifi_signal_i";
            case 10:
                return "stat_sys_wifi_signal_j";
            case 11:
                return "stat_sys_wifi_signal_k";
            case 12:
                return "stat_sys_wifi_signal_l";
            case 13:
                return "stat_sys_wifi_signal_m";
            case 14:
                return "stat_sys_wifi_signal_n";
            case 15:
                return "stat_sys_wifi_signal_o";
            default:
                return "stat_sys_wifi_signal";
        }
    }

    public static int mWifi;
    public static int mWifi1;
    public static int mWifi2;
    public static int mWifi3;
    public static int mWifi4;
    public static int mWifiArrows;
    public static int mWifiArrows1;
    public static int mWifiArrows2;
    public static int mWifiArrows3;
    public static int mSignalA;
    public static int mSignalA1;
    public static int mSignalA2;
    public static int mSignalA3;
    public static int mSignalA4;
    public static int mSignalA5;
    public static int mSignalB;
    public static int mSignalB1;
    public static int mSignalB2;
    public static int mSignalB3;
    public static int mSignalB4;
    public static int mSignalB5;


    public static String signalAIconStyle(int style) {
        switch ( style) {
            case 1:
                return "stat_sys_signal_a";
            case 2:
                return "stat_sys_signal_b";
            case 3:
                return "stat_sys_signal_c";
            case 4:
                return "stat_sys_signal_d";
            case 5:
                return "stat_sys_signal_e";
            case 6:
                return "stat_sys_signal_f";
            case 7:
                return "stat_sys_signal_g";
            case 8:
                return "stat_sys_signal_h";
            case 9:
                return "stat_sys_signal_i";
            case 10:
                return "stat_sys_signal_j";
            case 11:
                return "stat_sys_signal_k";
            case 12:
                return "stat_sys_signal_l";
            case 13:
                return "stat_sys_signal_m";
            case 14:
                return "stat_sys_signal_n";
            case 15:
                return "stat_sys_signal_o";
            case 16:
                return "stat_sys_signal_p";
            case 17:
                return "stat_sys_signal_q";
            case 18:
                return "stat_sys_signal_r";
            default:
                return "stat_sys_signal_5_level";
        }
    }
    public static String signalDoubleIconStyle(int style) {
        switch ( style) {
            case 1:
                return "stat_sys_signal_a";
            case 2:
                return "stat_sys_signal_b";
            case 3:
                return "stat_sys_signal_c";
            case 4:
                return "stat_sys_signal_d";
            case 5:
                return "stat_sys_signal_e";
            case 6:
                return "stat_sys_signal_f";
            case 7:
                return "stat_sys_signal_g";
            case 8:
                return "stat_sys_signal_h";
            case 9:
                return "stat_sys_signal_i";
            case 10:
                return "stat_sys_signal_j";
            case 11:
                return "stat_sys_signal_k";
            case 12:
                return "stat_sys_signal_l";
            case 13:
                return "stat_sys_signal_m";
            case 14:
                return "stat_sys_signal_n";
            case 15:
                return "stat_sys_signal_o";
            case 16:
                return "stat_sys_signal_p";
            case 17:
                return "stat_sys_signal_q";
            case 18:
                return "stat_sys_signal_r";
            default:
                return "stat_sys_signal_focus_5_level";
        }
    }
    public static String SignalOFF() {
        LeoSettings(mLeoRom);
        ContentResolver c = mLeoRom.getContentResolver();
        boolean off=setLeoUesrStatusBarCustomSignalIcon;
        String iconss;
        if(off){
            iconss= "CscFeature_LEO_ConfigOpBrandingForIndicatorIcon";
        }else {
            iconss= "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon";
        }
        return iconss;
    }

    public static float updateLeoSidePadding() {
        float style;
        if(setLeoUesrStatsusBarIconPaddingEnable){
            style=setLeoUesrStatsusBarIconPadding;
        }
        else{
            style=10.0f;
        }
        return style;
    }
    public static int FlashlightIcon;
    public static void FlashlightNotificationicon() {
        String draw="drawable/";
        String empty=draw+"leo_empty";
        if(setLeoUesrFlashlightIconEnable){
            FlashlightIcon=getLeoResource(empty);
        }else {
            FlashlightIcon=getLeoResource(draw+"stat_notify_assistivelight");
        }

    }
    public static void hideMipop() {
        MeterBase.MeterMap.get(MeterBack.NAME).setVisibility(View.GONE);
        MeterBase.MeterMap.get(MeterRecent.NAME).setVisibility(View.GONE);
        MeterBase.MeterMap.get(MeterFlashlight.NAME).setVisibility(View.GONE);
        MeterBase.MeterMap.get(MeterHome.NAME).setVisibility(View.GONE);
    }

    public static void showMipop() {
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
    }

    static  int  NavIconcolor;
    public static void setKeyButtonDrawableIconColor(KeyButtonDrawable key,int color ,int allColor,boolean Z,boolean ZZ,int colorstyle,Context c) {
        int colorrandom=getLeoRandomColor(c);

        PorterDuff.Mode mode = PorterDuff.Mode.SRC_ATOP;
            if (ZZ) {
                if (key != null) {

                    if(Z){
                        NavIconcolor=allColor;
                    }else {
                        if(colorstyle==0){
                            NavIconcolor=color;
                        }else if(colorstyle==1){
                            NavIconcolor=colorrandom;
                        }

                    }
                    key.setColorFilter(NavIconcolor, mode);
                    return;
                }
                return;
            }
        key.clearColorFilter();
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
    public static int mStockQSiconONColor=mLeoRom.getColor(getLeoResource("color/qs_tile_icon_on_tint_color"));
    public static int mStockQSiconOFFColor=mLeoRom.getColor(getLeoResource("color/qs_tile_icon_off_tint_color"));
    public  static int  setLeoUesrQSbuttonOnColor;
    public  static int  setLeoUesrQSbuttonOffColor;
    public static int setLeoUesrQSbuttonRandomColor;

    public static void setLeoQSThemeMode(Context context) {
        int color=mStockQSiconONColor;
        int color2=mStockQSiconOFFColor;
        int colorstyle=setLeoUesrQSbuttonRandomColor;
        int colorrandom=getLeoRandomColor(context);
        if (mS .equals(ryid())) {//判断ROM NAME
            if (setLeoUesrQSbuttonColor==0) {//判断ID
                color=mStockQSiconONColor;
                color2=mStockQSiconOFFColor;
            } else if (setLeoUesrQSbuttonColor== 1) {
                if(colorstyle==0){
                    color=getLeoInt(context,getLeoQSbuttonONColor(),mStockQSiconONColor);
                    color2 = getLeoInt(context, getLeoQSbuttonOFFColor(), mStockQSiconOFFColor);
                }else if(colorstyle==1){
                    color=colorrandom;
                    color2 =colorrandom;
                }

            }
            setLeoUesrQSbuttonOnColor=color;
            setLeoUesrQSbuttonOffColor=color2;
            setLeoUesrQSbuttonRandomColor= getLeoInt(context,
                    getLeoQSbuttonRandomColor(),0);
            return;
        }
    }

    public  static int getLeoRandomColor(Context c) {
        int[] customizedColors = c.getResources().getIntArray(getLeoAndroidResource("array/leo_colors"));
        int customizedColor = customizedColors[new Random().nextInt(customizedColors.length)];
        return customizedColor;
    }

     public static void setSignalIcons() {
        LeoSettings(getContext());
        int signal= setLeoUesrStatusBarCustomWifiIconStyle;
       int sing= setLeoUesrStatusBarCustomSignalIconStyle;
        int sing2= setLeoUesrStatusBarCustomSignalSlotFocusIconStyle;
        boolean Arrows=setLeoUesrStatusBarCustomWifiIcon;
        String draw="drawable/";
        String empty=draw+"leo_empty";
        if(Arrows){
            mWifiArrows=getLeoResource(empty);
            mWifiArrows1=getLeoResource(empty);
            mWifiArrows2=getLeoResource(empty);
            mWifiArrows3=getLeoResource(empty);
            mWifi=getLeoResource(draw+WifiIconStyle(signal)+"_0");
            mWifi1=getLeoResource(draw+WifiIconStyle(signal)+"_1");
            mWifi2=getLeoResource(draw+WifiIconStyle(signal)+"_2");
            mWifi3=getLeoResource(draw+WifiIconStyle(signal)+"_3");
            mWifi4=getLeoResource(draw+WifiIconStyle(signal)+"_4");
        }else {
            mWifiArrows=getLeoResource(draw+"stat_sys_wifi_signal_no_inout");
            mWifiArrows1=getLeoResource(draw+"stat_sys_wifi_signal_in");
            mWifiArrows2=getLeoResource(draw+"stat_sys_wifi_signal_out");
            mWifiArrows3=getLeoResource(draw+"stat_sys_wifi_signal_inout");
            mWifi=getLeoResource("drawable/stat_sys_wifi_signal_0");
            mWifi1=getLeoResource("drawable/stat_sys_wifi_signal_1");
            mWifi2=getLeoResource("drawable/stat_sys_wifi_signal_2");
            mWifi3=getLeoResource("drawable/stat_sys_wifi_signal_3");
            mWifi4=getLeoResource("drawable/stat_sys_wifi_signal_4");
        }
        mSignalA=getLeoResource(draw+signalAIconStyle(sing)+"_0_auto_rotate");
        mSignalA1=getLeoResource(draw+signalAIconStyle(sing)+"_1_auto_rotate");
        mSignalA2=getLeoResource(draw+signalAIconStyle(sing)+"_2_auto_rotate");
        mSignalA3=getLeoResource(draw+signalAIconStyle(sing)+"_3_auto_rotate");
        mSignalA4=getLeoResource(draw+signalAIconStyle(sing)+"_4_auto_rotate");
        mSignalA5= getLeoResource(draw+signalAIconStyle(sing)+"_5_auto_rotate");
        FlashlightNotificationicon();
        setLeoQSThemeMode(getContext());
        mSignalB=getLeoResource(draw+signalDoubleIconStyle(sing2)+"_0_auto_rotate");
        mSignalB1=getLeoResource(draw+signalDoubleIconStyle(sing2)+"_1_auto_rotate");
        mSignalB2=getLeoResource(draw+signalDoubleIconStyle(sing2)+"_2_auto_rotate");
        mSignalB3=getLeoResource(draw+signalDoubleIconStyle(sing2)+"_3_auto_rotate");
        mSignalB4=getLeoResource(draw+signalDoubleIconStyle(sing2)+"_4_auto_rotate");
        mSignalB5= getLeoResource(draw+signalDoubleIconStyle(sing2)+"_5_auto_rotate");
    }

}

