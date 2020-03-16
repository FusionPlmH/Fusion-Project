

package com.android.systemui.statusbar.phone;


import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;


import com.android.fusionleo.global.LeoGlobalUtils;
import com.android.fusionleo.salt.Amber.LeoStatusBarGesture;
import com.android.fusionleo.salt.Amber.LeoStatusBarLeftAction;
import com.android.fusionleo.salt.Amber.LeoStatusBarRightAction;
import com.android.fusionleo.salt.animation.AnimationParking;
import com.android.fusionleo.salt.floating.FloatWindowManager;
import com.android.fusionleo.salt.widget.MeterBack;
import com.android.fusionleo.salt.widget.MeterBase;
import com.android.fusionleo.salt.widget.MeterFlashlight;
import com.android.fusionleo.salt.widget.MeterHome;
import com.android.fusionleo.salt.widget.MeterRecent;
import com.android.fusionleo.statusbar.LeoStatusBarCarrier;
import com.android.fusionleo.statusbar.LeoStatusBarLogoView;
import com.android.fusionleo.statusbar.LeoStatusbarBattery;
import com.android.systemui.BatteryMeterView;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;
import com.android.systemui.SystemUI;
import com.android.systemui.statusbar.policy.Clock;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.samsung.android.feature.SemCscFeature;


import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.android.fusionleo.global.LeoGlobalUtils.HITOMILEO_ACTION_SYSTEMUI;
import static com.android.fusionleo.global.LeoGlobalUtils.HITOMILEO_ACTION_TORCH;
import static com.android.fusionleo.global.LeoGlobalUtils.LEO_ACTION_GLOBAL;
import static com.android.fusionleo.global.LeoGlobalUtils.LEO_ACTION_SERVICE;
import static com.android.fusionleo.global.LeoGlobalUtils.LeoGradientDrawable;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoBasicColor;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoBlurWallpaper;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;


import static com.android.fusionleo.global.LeoGlobalValues.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.*;
import static com.android.fusionleo.global.LeoGlobalBlur.*;
import static com.android.systemui.Rune.*;


public class StatusBar extends SystemUI implements DemoMode
 {


    protected StatusBarWindowView mStatusBarWindow;
    protected PhoneStatusBarView mStatusBarView;
     protected NotificationPanelView mNotificationPanel;
     private KeyguardStatusBarView mKeyguardStatusBar;



     public StatusBar() {

       //  this.mAutohide = mAutohide;
     }

     @Override
    public void start() {
        // setLeoQSThemeMode();

       //  setLeoNorma(mContext);
     }


     protected void makeStatusBarView() {
        final Context context = mContext;
        setStatusBar();
         setSignalIcons();


    }

     public void setStatusBar() {
         setObserve();

     }

     @Override
     public void disable(int state1, int state2, boolean animate) {

     }

     @Override
     public void dispatchDemoCommand(String command, Bundle args) {

     }

    public LeoObserver mLeoObserver;
public  void setObserve(){
    mLeoObserver=new LeoObserver(new Handler());
    mLeoObserver.observe();
    mLeoObserver. uploadLeoStatusBar();
}
     class LeoObserver extends ContentObserver {
         LeoObserver (Handler handler) {
             super(handler);
         }
         void observe() {
             ContentResolver resolver = mContext.getContentResolver();
             resolver.registerContentObserver(getLeoUri(getLeoStatusbarMainBatteryCustom()), false,  this);
             resolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficPosition()), false,  this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDisable()), false,  this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockPosition()), false,  this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusbarTemperatureOrientation()), false,  this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarOrientation()), false,  this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBar()), false,  this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusbarLogo()), false,  this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusbarLogoPosition()), false,  this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarShowBG()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarBgGradientBgStyle()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientBgType()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientBackGroundCornerRadius()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientBackGroundColorRadius()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarBgWallpaper()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarWallpaperColorEnable()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarWallpaperColor()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarBGStyle()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarBgBasicColor()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientBgStartColor()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientBgCenterColor()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientBgEndColor()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientEnableCenterColor()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarBlurBgDegree()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarBgWallpaperAlphaEnable()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarBgWallpaperAlpha()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarBlurWallpaperColor()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientBgType()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarStrokeDashColor()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarStrokeThickness()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarStrokeDashWidth()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarStrokeDashGap()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarStrokeEnabled()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientColorFour()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientColorFive()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientColorSix()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarGradientColorEnabled()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatsusBarBgWallpaperBlurEnabled()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusbarVoltageOrientation()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoMipEnable()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoFloatingDisplay()), false, this);
             resolver.registerContentObserver(getLeoUri( getLeoStatusBarRightAction()), false,
                     this);
             resolver.registerContentObserver(getLeoUri( getLeoStatusBarLeftAction()), false,
                     this);
         }


         public void getLeoActionReceived(String str) {
             if (str != null && str.equals(HITOMILEO_ACTION_TORCH)) {
                 FlashlightController flashlightController = (FlashlightController) Dependency.get(FlashlightController.class);
                 if (flashlightController != null) {
                     flashlightController.ToggleFlashLight();
                 }
             } else if (str.equals(HITOMILEO_ACTION_SYSTEMUI)) {
                 android.os.Process.killProcess(android.os.Process.myPid());
             }


         }
         @Override
         public void onChange(boolean selfChange) {
             uploadLeoStatusBar();
         }

         public void uploadLeoStatusBar(){
             LeoStatusSettings(mContext);
             if (getLeoOS().equals(getOnema())) {
                 if (getCode() .equals(getOCodeN())) {
                     mSamsungBatteryView= (LinearLayout) mStatusBarWindow.findViewWithTag("leo_samsung_battery_container");
                     mKeyguardSamsungBatteryView = (LinearLayout) mKeyguardStatusBar.findViewWithTag("leo_samsung_battery_container");
                     mLeoMainbattery= (LinearLayout) mStatusBarWindow.findViewWithTag("leo_main_battery_container");
                     mLeoKeyguardMainbattery= (LinearLayout) mKeyguardStatusBar.findViewWithTag("leo_main_battery_container");
                     mStatusBarLeftActionView=(LeoStatusBarLeftAction)mStatusBarWindow.findViewWithTag("leo_statusbar_left_action");
                     mStatusBarRightActionView=(LeoStatusBarRightAction)mStatusBarWindow.findViewWithTag("leo_statusbar_right_action");
                     BackgroundLayout = (FrameLayout)mStatusBarView.findViewWithTag("leo_statusbar_bg");
                     NetworkViewLeft = (LinearLayout) mStatusBarWindow.findViewWithTag("leo_network_traffic_container_left");
                     NetworkViewRight = (LinearLayout)mStatusBarWindow.findViewWithTag("leo_network_traffic_container_right");
                     LogoViewRight = (LeoStatusBarLogoView) mStatusBarWindow.findViewWithTag("leo_statusbar_logo_right");
                     LogoViewLeft = (LeoStatusBarLogoView)mStatusBarWindow.findViewWithTag("leo_statusbar_logo_left");
                     CarrierViewRight = (LinearLayout) mStatusBarWindow.findViewWithTag("leo_statsusbar_carrier_right");
                     CarrierViewLeft = (LinearLayout)mStatusBarWindow.findViewWithTag("leo_statsusbar_carrier_left");
                     TempViewRight = (LinearLayout) mStatusBarWindow.findViewWithTag("leo_statusbar_temp_right");
                     TempViewLeft = (LinearLayout)mStatusBarWindow.findViewWithTag("leo_statusbar_temp_left");
                     VoltageViewRight = (LinearLayout) mStatusBarWindow.findViewWithTag("leo_statsusbar_voltage_right");
                     VoltageViewLeft = (LinearLayout)mStatusBarWindow.findViewWithTag("leo_statsusbar_voltage_left");
                     uploadLeoStatusBarBattery(setLeoUesrMainBatteryDefault);
                     uploadLeoStatusBarNetwork(setLeoUesrNetworkTrafficLocation);
                     uploadLeoStatusBarClock(setLeoUesrStatusBarClockDisable,setLeoUesrStatusBarClockPosition);
                     uploadLeoStatusBarTemp(setLeoUesrStatusBarOrientation);
                     uploadLeoStatusBarCarrier(setLeoUesrStatusBarCarrierOrientation,setLeoUesrStatusBarCarrier);
                     uploadLeoStatusBarLogo( setLeoUesrStatusBarLogoLocation ,setLeoUesrStatusBarLogoVisible);
                     uploadLeoStatusBarBG(mContext,setLeoUesrStatsusBarShowBG);
                     setSignalIcons();

                     uploadLeoStatusBarVoltage( setLeoUesrStatusbarVoltageOrientation);
                     LeoMiPoP(setLeoUesrMipEnable,setLeoUesrFloatingDisplay);
                     uploadLeoStatusBarGesture(setLeoUesrStatusBarLeftAction,setLeoUesrStatusBarRightAction);

                     return;
                 }
                 return;
             }
         }
         public   LinearLayout mSamsungBatteryView ;
         public LinearLayout mLeoMainbattery ;
         public  LinearLayout mKeyguardSamsungBatteryView;
         public LinearLayout mLeoKeyguardMainbattery ;
         public LinearLayout NetworkViewRight ;
         public LinearLayout NetworkViewLeft ;
         public LeoStatusBarLeftAction mStatusBarLeftActionView ;
         public LeoStatusBarRightAction mStatusBarRightActionView ;
         public void LeoMiPoP(boolean off,boolean o){
             if (off) {
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

           if (o) {
               FloatWindowManager.addBallView(mContext);
           } else {
               FloatWindowManager.removeBallView(mContext);
           }
         }



         public void uploadLeoStatusBarGesture(boolean LeftAction,boolean RightAction){

             if(LeftAction){
                 mStatusBarLeftActionView.setVisibility(VISIBLE);
             }else{
                 mStatusBarLeftActionView.setVisibility(GONE);
             }
             mStatusBarRightActionView.setVisibility(RightAction ? VISIBLE : GONE);
           //  mStatusBarGestureView.setVisibility(Gesture ? VISIBLE : GONE);
            // mStatusBarGestureView.updateLeoGestures();
         }

         public void uploadLeoStatusBarBattery(int style ){
             if (style == 0) {
                 mSamsungBatteryView.setVisibility(VISIBLE);
                 mKeyguardSamsungBatteryView.setVisibility(VISIBLE);
                 mLeoMainbattery.setVisibility(GONE);
                 mLeoKeyguardMainbattery.setVisibility(GONE);
             } else if (style == 1) {
                 mSamsungBatteryView.setVisibility(GONE);
                 mKeyguardSamsungBatteryView.setVisibility(GONE);
                 mLeoMainbattery.setVisibility(VISIBLE);
                 mLeoKeyguardMainbattery.setVisibility(VISIBLE);
             }
         }

         public void uploadLeoStatusBarNetwork( int style){

             if (style== 0) {
                 NetworkViewRight.setVisibility(VISIBLE);
                 NetworkViewLeft.setVisibility(GONE);
             } else if (style == 1) {
                 NetworkViewRight.setVisibility(GONE);
                 NetworkViewLeft.setVisibility(VISIBLE);
             }
         }
         public  Clock ClockViewRight ;
         public Clock ClockViewLeft ;
         public Clock ClockViewCenter ;
         public void uploadLeoStatusBarClock(boolean on ,int style ){
             ClockViewRight = (Clock) mStatusBarView.findViewById(getLeoResource("id/leo_statusbar_clock_right"));
             ClockViewLeft= (Clock)mStatusBarView.findViewById(getLeoResource("id/leo_statusbar_clock_left"));
             ClockViewCenter = (Clock) mStatusBarView.findViewById(getLeoResource("id/leo_statusbar_clock_center"));
             if (!on) {
                 ClockViewRight.setClockVisibleByUser(false);
                 ClockViewLeft.setClockVisibleByUser(false);
                 ClockViewCenter.setClockVisibleByUser(false);
             } else if (style == 0) {
                 ClockViewLeft.setClockVisibleByUser(true);
                 ClockViewCenter.setClockVisibleByUser(false);
                 ClockViewRight.setClockVisibleByUser(false);
             } else if (style== 1) {
                 ClockViewRight.setClockVisibleByUser(false);
                 ClockViewCenter.setClockVisibleByUser(true);
                 ClockViewLeft.setClockVisibleByUser(false);
             } else if (style== 2) {
                 ClockViewLeft.setClockVisibleByUser(false);
                 ClockViewCenter.setClockVisibleByUser(false);
                 ClockViewRight.setClockVisibleByUser(true);
             }
         }
         public   LinearLayout TempViewRight ;
         public  LinearLayout TempViewLeft ;
         public void uploadLeoStatusBarTemp(int style){
             if (style== 0) {
                 TempViewRight.setVisibility(GONE);
                 TempViewLeft.setVisibility(VISIBLE);
             } else if (style == 1) {
                 TempViewRight.setVisibility(VISIBLE);
                 TempViewLeft.setVisibility(GONE);
             }
         }
         public  LeoStatusBarLogoView LogoViewRight;
         public LeoStatusBarLogoView LogoViewLeft;
         public void uploadLeoStatusBarLogo(int style,boolean on){

             int i12 =style;
             if (!on) {
                 LogoViewRight.setVisibility(GONE);
                 LogoViewLeft.setVisibility(GONE);
             } else if (i12 == 0) {
                 LogoViewLeft.setVisibility(VISIBLE);
                 LogoViewRight.setVisibility(GONE);
             } else if (i12 == 1) {
                 LogoViewRight.setVisibility(VISIBLE);
                 LogoViewLeft.setVisibility(GONE);
             }
         }
         public   LinearLayout CarrierViewRight;
         public   LinearLayout CarrierViewLeft;
         public void uploadLeoStatusBarCarrier (int style,boolean on){

             int i12 =style;
             if (!on) {
                 CarrierViewRight.setVisibility(GONE);
                 CarrierViewLeft.setVisibility(GONE);
             } else if (i12 == 0) {
                 CarrierViewLeft.setVisibility(GONE);
                 CarrierViewRight.setVisibility(VISIBLE);
             } else if (i12 == 1) {
                 CarrierViewRight.setVisibility(GONE);
                 CarrierViewLeft.setVisibility(VISIBLE);
             }
         }
         public   FrameLayout BackgroundLayout;
         public void uploadLeoStatusBarBG(Context C,boolean IsEnabled) {
             if (IsEnabled) {
                 boolean z = setLeoUesrStatsusBarStrokeEnabled;
                 int i = setLeoUesrStatsusBarStrokeThickness;
                 int i2 = setLeoUesrStatsusBarStrokeDashWidth;
                 int i3 = setLeoUesrStatsusBarStrokeDashGap;
                 int i4 = setLeoUesrStatsusBarStrokeDashColor;
                 int i5 =setLeoUesrStatsusBarGradientBackGroundCornerRadius;
                 int i6 = setLeoUesrStatsusBarWallpaperColor;
                 int i7 =setLeoUesrStatsusBarWallpaperAlpha;
                 String str =setLeoUesrStatsusBarBgWallpaper;
                 if (setLeoUesrStatsusBarBGStyle == 0) {
                     if(setLeoUesrStatsusBarGradientColorEnabled==0){
                         Log.v(AUTHOR, "" );
                         BackgroundLayout.setBackground(getLeoBasicColor(z, i, i2, i3, i4, i5,setLeoUesrStatsusBarBgBasicColor));
                     } else if (setLeoUesrStatsusBarGradientColorEnabled== 1) {
                         Log.v(AUTHOR, "" );
                         BackgroundLayout.setBackground(
                               LeoGradientDrawable(
                                         setLeoUesrStatsusBarGradientBgStartColor,
                                         setLeoUesrStatsusBarGradientBgCenterColor,
                                         setLeoUesrStatsusBarGradientBgEndColor,
                                         setLeoUesrStatsusBarGradientColorFour,
                                         setLeoUesrStatsusBarGradientColorFive,
                                         setLeoUesrStatsusBarGradientColorSix,
                                         setLeoUesrStatsusBarGradientEnableCenterColor,
                                         setLeoUesrStatsusBarBgGradientBgStyle, z, i, i2, i3, i4, i5, setLeoUesrStatsusBarGradientBgType,setLeoUesrStatsusBarGradientBackGroundColorRadius));
                     }
                 } else if (setLeoUesrStatsusBarBGStyle == 999 && str != null) {
                     int blur=setLeoUesrStatsusBarBgWallpaperBlurEnabled;
                     if(blur==0){
                         BackgroundLayout.setBackground(LeoGlobalUtils.getLeoWallpaper(C, str, setLeoUesrStatsusBarWallpaperColorEnable, i6,setLeoUesrStatsusBarBgWallpaperAlphaEnable, i7));
                     }else if (blur==1) {
                         BackgroundLayout.setBackground(getLeoBlurWallpaper(C,str,setLeoUesrStatsusBarBlurBgDegree,setLeoUesrStatsusBarBlurWallpaperColorEnabled,i6,setLeoUesrStatsusBarBlurWallpaperAlphaEnabled,i7));
                     }
                 }
                 BackgroundLayout.setVisibility(VISIBLE);
             }else{
                 BackgroundLayout.setVisibility(GONE);
             }

         }
         public  LinearLayout VoltageViewRight;
         public LinearLayout VoltageViewLeft;
         public void uploadLeoStatusBarVoltage (int style){

             int i12 =style;
            if (i12 == 1) {
                 VoltageViewLeft.setVisibility(VISIBLE);
                 VoltageViewRight.setVisibility(GONE);
             } else if (i12 == 0) {
                 VoltageViewRight.setVisibility(VISIBLE);
                 VoltageViewLeft.setVisibility(GONE);
             }
         }
     }
     private final BroadcastReceiver mLeoServiceReceiver = new BroadcastReceiver() {
         public void onReceive(Context context, Intent intent) {
             if (LEO_ACTION_SERVICE.equals(intent.getAction())) {
                 mLeoObserver.getLeoActionReceived(intent.getStringExtra(LEO_ACTION_GLOBAL));
                 return;
             }
         }

     };
     public void LeoServiceReceiver() {
         IntentFilter intentFilter = new IntentFilter();
         intentFilter.addAction(LEO_ACTION_SERVICE);
         mContext.registerReceiver(mLeoServiceReceiver, intentFilter);

     }

 }
