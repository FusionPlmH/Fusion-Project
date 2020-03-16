

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
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;


import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.server.LocalServices;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;
import com.android.systemui.qs.QSContainerImpl;
import com.android.systemui.servicebox.KeyguardServiceBoxContainer;
import com.android.systemui.statusbar.policy.Clock;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.leo.floating.FloatWindowManager;
import com.leo.systemui.*;
import com.leo.utils.Weather;
import com.os.leo.utils.LeoContentObserver;
import com.os.leo.utils.LeoUserSettings;
import com.os.leo.utils.LeoUtils;
import com.android.systemui.BatteryMeterView;
import com.android.systemui.DemoMode;
import com.android.systemui.SystemUI;
import com.android.systemui.statusbar.SignalClusterView;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.android.server.policy.LeoWindowAction.switchScreenOff;
import static com.android.systemui.SystemUIApplication.getContext;

import static com.android.systemui.statusbar.phone.NotificationPanelView.setLeoNorma;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserSettings.mContext;
import static com.os.leo.utils.LeoUserString.LEO_ACTION_GLOBAL;
import static com.os.leo.utils.LeoUserString.LEO_ACTION_SCREENOFF;
import static com.os.leo.utils.LeoUserString.LEO_ACTION_SERVICE;
import static com.os.leo.utils.LeoUserString.LEO_ACTION_TORCH;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUtils.LeoGradientDrawable;
import static com.os.leo.utils.LeoUtils.getLeoBasicColor;
import static com.os.leo.utils.LeoUtils.getLeoBlurWallpaper;
import static com.os.leo.utils.LeoUtils.getLeoSecureInt;
import static com.os.leo.utils.LeoUtils.getLeoUri;
import static com.android.systemui.UId.*;
import static com.os.leo.utils.LeoUtils.getLeoWallpaper;


public class StatusBar extends SystemUI implements DemoMode
 {


    protected StatusBarWindowView mStatusBarWindow;
    protected PhoneStatusBarView mStatusBarView;
     protected NotificationPanelView mNotificationPanel;



     public StatusBar() {

         this.mAutohide = mAutohide;
     }
     private final BroadcastReceiver mLeoServiceReceiver = new BroadcastReceiver() {
         public void onReceive(Context context, Intent intent) {
             if (LEO_ACTION_SERVICE.equals(intent.getAction())) {
                 mLeoObserver.getLeoActionReceived(intent.getStringExtra(LEO_ACTION_GLOBAL));
                 return;
             }
         }

     };


     @Override
    public void start() {
        // setLeoQSThemeMode();
         LeoServiceReceiver();
         setLeoNorma(mContext);
     }
     public void LeoServiceReceiver() {
         IntentFilter intentFilter = new IntentFilter();
         intentFilter.addAction("com.os.leo.action.Service");
         mContext.registerReceiver(this.mLeoServiceReceiver, intentFilter);

     }

   public LeoObserver mLeoObserver ;

     protected void makeStatusBarView() {
        final Context context = mContext;
        setStatusBar();



    }

     public void setStatusBar() {


     }

     @Override
     public void disable(int state1, int state2, boolean animate) {

     }

     @Override
     public void dispatchDemoCommand(String command, Bundle args) {

     }
     protected KeyguardStatusBarView mKeyguardStatusBar;






     class LeoObserver extends ContentObserver {
         LeoObserver (Handler handler) {
             super(handler);
         }
         void observe() {
             ContentResolver resolver = mContext.getContentResolver();
             resolver.registerContentObserver(getLeoUri(getLeoStatusbarSignalPosition()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusbarMainBatteryCustom()), false,
                     this);
             resolver.registerContentObserver(getLeoUri(getLeoQSMax()), false,
                     this);
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
             resolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficPosition()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDisable()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockPosition ()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusbarLogo()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusbarLogoPosition()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusbarTemperatureOrientation()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBar()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarOrientation()), false, this);
             resolver.registerContentObserver(getLeoUri( getLeoWeatherStatusBar()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoWeatherOrientationStatusBar()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoMipEnable()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarStyle()), false,this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarSingle()), false,this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarMultiSize()), false,this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarSingleSize()), false,this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarStringSingle()), false,this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarStringMulti()), false,this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarFont()), false,this);
             resolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarColor()), false,this);
             resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatsusBarGradientColorFour()), false, this);
             resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatsusBarGradientColorFive()), false, this);
             resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatsusBarGradientColorSix()), false, this);
             resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings. getLeoStatsusBarGradientColorEnabled()), false, this);
             resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatsusBarBgWallpaperBlurEnabled()), false, this);
             resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoKeyguardAodClockWidget()), false, this);
             resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatusBarMainBatteryRandomColor()), false, this);
             resolver.registerContentObserver(LeoUtils.getLeoUri(getLeoFloatingDisplay()), false, this);
             resolver.registerContentObserver(LeoUtils.getLeoUri(getLeoDisableStockBatteryIcon()), false, this);
         }

         @Override
         public void onChange(boolean selfChange) {

             uploadLeoStatusBar();
          setLeoUpdateKeyguardClock();
         }



         LinearLayout mNetworkLeft;
         LinearLayout mNetwork ;
         BatteryMeterView BatteryView ;
         LinearLayout Mainbattery ;
         BatteryMeterView BatteryView2;
         LinearLayout Mainbattery2 ;
         Clock leoStatusBarClock ;
         Clock leoStatusBarClockCentered;
         Clock leoStatusBarClockLeft ;
         LeoStatusBarLogoView leoStatusBarLogoView;
         LeoStatusBarLogoView leoStatusBarLogoView2;
         LinearLayout Temperature;
         LinearLayout Temperature2;
         LeoStatusBarCarrier leoStatusBarCarrier;
         LeoStatusBarCarrier leoStatusBarCarrier2;
         LinearLayout leoStatusBarWeather;
         LinearLayout leoStatusBarWeather2;
         FrameLayout BackgroundLayout;


         public void uploadLeoStatusBarBG(Context C,boolean IsEnabled) {
             BackgroundLayout = (FrameLayout)mStatusBarView.findViewById(UId43);
             if (IsEnabled) {
                 boolean z = LeoUserSettings.setLeoUesrStatsusBarStrokeEnabled;
                 int i = LeoUserSettings.setLeoUesrStatsusBarStrokeThickness;
                 int i2 = LeoUserSettings.setLeoUesrStatsusBarStrokeDashWidth;
                 int i3 = LeoUserSettings.setLeoUesrStatsusBarStrokeDashGap;
                 int i4 = LeoUserSettings.setLeoUesrStatsusBarStrokeDashColor;
                 int i5 = LeoUserSettings.setLeoUesrStatsusBarGradientBackGroundCornerRadius;
                 int i6 = LeoUserSettings.setLeoUesrStatsusBarWallpaperColor;
                 int i7 = LeoUserSettings.setLeoUesrStatsusBarWallpaperAlpha;
                 String str = LeoUserSettings.setLeoUesrStatsusBarBgWallpaper;
                 if (LeoUserSettings.setLeoUesrStatsusBarBGStyle == 0) {
                     if(setLeoUesrStatsusBarGradientColorEnabled==0){
                         Log.v(AUTHOR, CORYRIGHT+ China );
                         BackgroundLayout.setBackground(getLeoBasicColor(z, i, i2, i3, i4, i5,setLeoUesrStatsusBarBgBasicColor));
                     } else if (setLeoUesrStatsusBarGradientColorEnabled== 1) {
                         Log.v(AUTHOR, CORYRIGHT+ China );
                         BackgroundLayout.setBackground(
                                 LeoUtils.LeoGradientDrawable(
                                         setLeoUesrStatsusBarGradientBgStartColor,
                                         LeoUserSettings.setLeoUesrStatsusBarGradientBgCenterColor,
                                         LeoUserSettings.setLeoUesrStatsusBarGradientBgEndColor,
                                         setLeoUesrStatsusBarGradientColorFour,
                                         setLeoUesrStatsusBarGradientColorFive,
                                         setLeoUesrStatsusBarGradientColorSix,
                                         LeoUserSettings.setLeoUesrStatsusBarGradientEnableCenterColor,
                                         LeoUserSettings.setLeoUesrStatsusBarBgGradientBgStyle, z, i, i2, i3, i4, i5, LeoUserSettings.setLeoUesrStatsusBarGradientBgType, LeoUserSettings.setLeoUesrStatsusBarGradientBackGroundColorRadius));
                     }
                 } else if (LeoUserSettings.setLeoUesrStatsusBarBGStyle == 999 && str != null) {
                     Log.v(AUTHOR, CORYRIGHT+ China );
                     int blur=setLeoUesrStatsusBarBgWallpaperBlurEnabled;
                     if(blur==0){
                         Log.v(AUTHOR, CORYRIGHT+ China );
                         BackgroundLayout.setBackground(LeoUtils.getLeoWallpaper(C, str, LeoUserSettings.setLeoUesrStatsusBarWallpaperColorEnable, i6, LeoUserSettings.setLeoUesrStatsusBarBgWallpaperAlphaEnable, i7));
                     }else if (blur==1) {
                         BackgroundLayout.setBackground(getLeoBlurWallpaper(C,str,setLeoUesrStatsusBarBlurBgDegree,setLeoUesrStatsusBarBlurWallpaperColorEnabled,i6,LeoUserSettings.setLeoUesrStatsusBarBlurWallpaperAlphaEnabled,i7));
                     }
                 }
                 BackgroundLayout.setVisibility(VISIBLE);
             }else{
                 BackgroundLayout.setVisibility(GONE);
             }

         }

         public void uploadLeoStatusBarBattery(){
             BatteryView = (BatteryMeterView) mStatusBarWindow.findViewById(UId4);
             Mainbattery = (LinearLayout)mStatusBarWindow.findViewById(UId3);
             BatteryView2 = (BatteryMeterView) mKeyguardStatusBar.findViewById(UId4);
             Mainbattery2 = (LinearLayout) mKeyguardStatusBar.findViewById(UId3);
             if (LeoUserSettings.setLeoUesrMainBatteryDefault == 0) {
                 BatteryView.setVisibility(0);
                 BatteryView2.setVisibility(0);
                 Mainbattery2.setVisibility(8);
                 Mainbattery.setVisibility(8);
             } else if (LeoUserSettings.setLeoUesrMainBatteryDefault == 1) {
                 BatteryView.setVisibility(8);
                 BatteryView2.setVisibility(8);
                 Mainbattery2.setVisibility(0);
                 Mainbattery.setVisibility(0);
             }
             BatteryView2.setBatteryIcon();
             BatteryView.setBatteryIcon();
         }
         public void uploadLeoStatusBarNetwork(){
             mNetworkLeft = (LinearLayout) mStatusBarView.findViewById(UId8);
             mNetwork = (LinearLayout) mStatusBarView.findViewById(UId9);
             int i14 = LeoUserSettings.setLeoUesrNetworkTrafficLocation;
             if (i14 == 0) {
                 mNetwork.setVisibility(0);
                 mNetworkLeft.setVisibility(8);
             } else if (i14 == 1) {
                 mNetwork.setVisibility(8);
                 mNetworkLeft.setVisibility(0);
             }
         }
          public  int Disabled=GONE;
         public  int Enabled=VISIBLE;
         public void uploadLeoStatusBarClock(){
             leoStatusBarClockLeft = (Clock) mStatusBarView.findViewById(UId10);
             leoStatusBarClockCentered= (Clock)mStatusBarView.findViewById(UId11);
             leoStatusBarClock = (Clock) mStatusBarView.findViewById(UId12);
             int i17 = LeoUserSettings.setLeoUesrStatusBarClockPosition;

             if (!LeoUserSettings.setLeoUesrStatusBarClockDisable) {
                 leoStatusBarClock.setClockVisibleByUser(false);
                 leoStatusBarClockCentered.setClockVisibleByUser(false);
                 leoStatusBarClockLeft.setClockVisibleByUser(false);
             } else if (i17 == 0) {
                 leoStatusBarClock.setClockVisibleByUser(true);
                 leoStatusBarClockCentered.setClockVisibleByUser(false);
                 leoStatusBarClockLeft.setClockVisibleByUser(false);
             } else if (i17 == 1) {
                 leoStatusBarClock.setClockVisibleByUser(false);
                 leoStatusBarClockCentered.setClockVisibleByUser(true);
                 leoStatusBarClockLeft.setClockVisibleByUser(false);
             } else if (i17 == 2) {
                 leoStatusBarClock.setClockVisibleByUser(false);
                 leoStatusBarClockCentered.setClockVisibleByUser(false);
                 leoStatusBarClockLeft.setClockVisibleByUser(true);
             }
         }

         public void uploadLeoStatusBarLogo(){
             leoStatusBarLogoView = (LeoStatusBarLogoView) mStatusBarView.findViewById(UId13);
             leoStatusBarLogoView2 = (LeoStatusBarLogoView)mStatusBarView.findViewById(UId14);
             int i16 = setLeoUesrStatusBarLogoLocation;
             if (setLeoUesrStatusBarLogoVisible){
                 if (i16 == 0) {
                     leoStatusBarLogoView.setVisibility(0);
                     leoStatusBarLogoView2.setVisibility(8);
                 } else if (i16 == 1) {
                     leoStatusBarLogoView.setVisibility(8);
                     leoStatusBarLogoView2.setVisibility(0);
                 }
             }  else {
                 leoStatusBarLogoView2.setVisibility(8);
                 leoStatusBarLogoView.setVisibility(8);
             }

         }
         public void uploadLeoStatusBarTemperature(int Tem){
             Temperature= (LinearLayout) mStatusBarView.findViewById(UId15);
             Temperature2= (LinearLayout)mStatusBarView.findViewById(UId16);

             if (Tem == 0) {
                 Temperature.setVisibility(0);
                 Temperature2.setVisibility(8);
             } else if (Tem == 1) {
                 Temperature.setVisibility(8);
                 Temperature2.setVisibility(0);
             }
         }
         public void uploadLeoStatusBar(){
             LeoSettings(mContext);


                 Log.v(AUTHOR, "状态栏设置 "+ China );
             uploadLeoStatusBarBG(mContext, setLeoUesrStatsusBarShowBG);
             LinearLayout linearLayout;
             View findViewById;
             View view;

             setSignalIcons();
             Temperature= (LinearLayout) mStatusBarView.findViewById(UId15);
             Temperature2= (LinearLayout)mStatusBarView.findViewById(UId16);
             leoStatusBarCarrier = (LeoStatusBarCarrier) mStatusBarView.findViewById(UId17);
             leoStatusBarCarrier2 = (LeoStatusBarCarrier) mStatusBarView.findViewById(UId18);
             leoStatusBarWeather = (LinearLayout)mStatusBarView.findViewById(UId23);
             leoStatusBarWeather2 = (LinearLayout) mStatusBarView.findViewById(UId22);
             uploadLeoStatusBarClock();
             LeoUtils.getLeoSecureInt(mContext, "sysui_qqs_count", LeoUserSettings.setLeoUesrQSMaxToggles);
             int i8 = LeoUserSettings.setLeoUesrStatusBarSignalOrientation;
             int i9 = UId;
             int i10 = UId1;
             int i11 = UId2;
             LinearLayout linearLayout8 = (LinearLayout) mStatusBarView.findViewById(i9);
             View findViewById2 =mStatusBarView.findViewById(i10);
             if (findViewById2 != null) {
                 linearLayout = (LinearLayout) findViewById2;
                 findViewById = mStatusBarView.findViewById(i11);
             } else {
                 linearLayout = (LinearLayout) findViewById2;
                 findViewById = mStatusBarView.findViewById(i11);
             }
             if (findViewById != null) {
                 view = (SignalClusterView) findViewById;
                 ((LinearLayout) view.getParent()).removeView(view);
             } else {
                 view = (SignalClusterView) findViewById;
                 ((LinearLayout) view.getParent()).removeView(view);
             }
             if (i8 == 0) {
                 linearLayout.addView(view, 2);
             } else {
                 linearLayout8.addView(view, 0);
             }
             uploadLeoStatusBarBattery();
             uploadLeoStatusBarTemperature(setLeoUesrStatusBarOrientation);
             uploadLeoStatusBarLogo();
             uploadLeoStatusBarNetwork();

             int i12 = LeoUserSettings.getSetLeoUesrStatusBarCarrierOrientation;
             if (!LeoUserSettings.getSetLeoUesrStatusBarCarrier) {
                 leoStatusBarCarrier.setVisibility(GONE);
                 leoStatusBarCarrier2.setVisibility(8);
             } else if (i12 == 0) {
                 leoStatusBarCarrier.setVisibility(VISIBLE);
                 leoStatusBarCarrier2.setVisibility(8);
             } else if (i12 == 1) {
                 leoStatusBarCarrier.setVisibility(8);
                 leoStatusBarCarrier2.setVisibility(0);
             }
             int i13 = LeoUserSettings.setLeoUesrStatusBarWeatherOrientation;
             if (!LeoUserSettings.setLeoUesrStatusBarWeather) {
                 leoStatusBarWeather.setVisibility(8);
                 leoStatusBarWeather2.setVisibility(8);
             } else if (i13 == 0) {
                 leoStatusBarWeather.setVisibility(0);
                 leoStatusBarWeather2.setVisibility(8);
             } else if (i13 == 1) {
                 leoStatusBarWeather.setVisibility(8);
                 leoStatusBarWeather2.setVisibility(0);
             }
             if (LeoUserSettings.setLeoUesrMipEnable) {
                 showMipop();
             } else {
                 hideMipop();
             }
             if (setLeoUesrFloatingDisplay) {
                 FloatWindowManager.addBallView(mContext);
             } else {
                 FloatWindowManager.removeBallView(mContext);
             }
         }

         public void getLeoUpdateBoxPages() {
             KeyguardServiceBoxContainer keyguardServiceBoxContainer = (KeyguardServiceBoxContainer) mNotificationPanel.findViewWithTag("KeyguardServiceBoxContainer");
             if (keyguardServiceBoxContainer != null) {
                 keyguardServiceBoxContainer.setLeoKeyguardClockRefresh();
             }
         }



         public void getLeoActionReceived(String str) {
             if (str == null) {
                 return;
             }
             if (str.equals(LEO_ACTION_TORCH)) {
                 FlashlightController flashlightController = (FlashlightController) Dependency.get(FlashlightController.class);
                 if (flashlightController != null) {
                     flashlightController.ToggleFlashLight();
                 }
             }
         }
     }
     private void cancelAutohide() {

     }
     protected class H extends Handler {
         @Override
         public void handleMessage(Message m) {
             switch (m.what) {

             }
         }
     }
     private Runnable mAutohide = null;

    boolean mIsDeskModeInSystemUI;
     protected H mHandler ;
     private void scheduleAutohide() {
         LeoSettings(mContext);
         cancelAutohide();
         if (mIsDeskModeInSystemUI) {
             this.mHandler.postDelayed(this.mAutohide, 1000);
         } else {
             long ms=setLeoUesrNavigationBarHideMS;
             this.mHandler.postDelayed(this.mAutohide, ms);

         }
     }

     public void setLeoUpdateKeyguardClock() {
         Rune.KEYWI_USE_EXTERNAL_CLOCK_PACKAGE = setLeoUesrKeyguardAodClockWidget;
         mLeoObserver.getLeoUpdateBoxPages();
     }


     public void setLeoRomObserver() {
      mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();

     }

     public void LeoStatusBar() {
         mLeoObserver.uploadLeoStatusBar();

     }


     public boolean isCoverViewShowing() {
         return false;
     }

     class ManLeoObserver extends ContentObserver {
         ManLeoObserver (Handler handler) {
             super(handler);
         }
         void observe() {
             ContentResolver resolver = mContext.getContentResolver();
             resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDisable()), false, this);
             resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockPosition ()), false, this);
         }

         @Override
         public void onChange(boolean selfChange) {
             uploadLeoStatusBar();
         }

         Clock leoStatusBarClock ;
         Clock leoStatusBarClockCentered;
         Clock leoStatusBarClockLeft ;

         public void uploadLeoStatusBarClock(){
             leoStatusBarClockLeft = (Clock) mStatusBarView.findViewById(getLeoResource("id/left_clock"));
             leoStatusBarClockCentered= (Clock)mStatusBarView.findViewById(getLeoResource("id/center_clock"));
             leoStatusBarClock = (Clock) mStatusBarView.findViewById(getLeoResource("id/clock"));
             int i17 = LeoUserSettings.setLeoUesrStatusBarClockPosition;

             if (!LeoUserSettings.setLeoUesrStatusBarClockDisable) {
                 leoStatusBarClock.setClockVisibleByUser(false);
                 leoStatusBarClockCentered.setClockVisibleByUser(false);
                 leoStatusBarClockLeft.setClockVisibleByUser(false);
             } else if (i17 == 0) {
                 leoStatusBarClock.setClockVisibleByUser(true);
                 leoStatusBarClockCentered.setClockVisibleByUser(false);
                 leoStatusBarClockLeft.setClockVisibleByUser(false);
             } else if (i17 == 1) {
                 leoStatusBarClock.setClockVisibleByUser(false);
                 leoStatusBarClockCentered.setClockVisibleByUser(true);
                 leoStatusBarClockLeft.setClockVisibleByUser(false);
             } else if (i17 == 2) {
                 leoStatusBarClock.setClockVisibleByUser(false);
                 leoStatusBarClockCentered.setClockVisibleByUser(false);
                 leoStatusBarClockLeft.setClockVisibleByUser(true);
             }
         }

         public void uploadLeoStatusBar(){
             LeoSettings(mContext);
             uploadLeoStatusBarClock();

         }


     }

 }
