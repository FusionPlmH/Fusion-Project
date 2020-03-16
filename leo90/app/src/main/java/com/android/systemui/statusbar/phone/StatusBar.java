

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
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.keyguard.CarrierText;
import com.android.server.policy.PhoneWindowManager;
import com.android.systemui.BatteryMeterView;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;
import com.android.systemui.SystemUI;

import com.android.systemui.fusionleo.LeoKeyguardWeather;
import com.android.systemui.fusionleo.LeoLogoView;
import com.android.systemui.fusionleo.LeoMainBattery;

import com.fusionleo.LeoX.systemui.FloatWindowManager;
import com.fusionleo.LeoX.systemui.LeoConfig;
import com.fusionleo.LeoProvider.LeoObserver;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.NetspeedView;
import com.android.systemui.util.LeoDrawable;


import static android.view.View.GONE;
import static android.view.View.VISIBLE;

import static com.android.systemui.SystemUIApplication.getContext;
import static com.fusionleo.LeoX.systemui.LeoConfig.BATTERY_TAG;
import static com.fusionleo.LeoX.systemui.LeoConfig.LeoGradientDrawable;
import static com.fusionleo.LeoX.systemui.LeoConfig.LeoSysUiShortcut;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoBasicColor;

import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoSymbolStyle;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoWallpaper;
import static com.fusionleo.LeoX.systemui.LeoConfig.mLeoTag;
;
import static com.fusionleo.LeoX.systemui.LeoConfig.rt100foleo;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoAction;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoFonts;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoHaptics;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.getLeoIdentifier;

import static com.fusionleo.LeoProvider.LeoManages.mLeoStatusBarMainBattery;
import static com.fusionleo.LeoProvider.LeoManages.mLeoStatusBarNetworkTraffic;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarSignalOrientation;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusbarMainBatteryEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusbarMainBatterySize;
import static com.fusionleo.LeoProvider.LeoManages.*;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBGStyle;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgBasicColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgGradientBgStyle;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgWallpaper;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgWallpaperAlpha;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgWallpaperAlphaEnable;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBgWallpaperBlurEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarBlurBgDegree;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBackGroundColorRadius;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBackGroundCornerRadius;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBgCenterColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBgEndColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBgStartColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientBgType;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientColorFive;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientColorFour;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientColorSix;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarGradientEnableCenterColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarShowBG;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarStrokeDashColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarStrokeDashGap;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarStrokeDashWidth;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarStrokeEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarStrokeThickness;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarWallpaperColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarWallpaperColorEnable;
import static com.android.systemui.statusbar.phone.SaltStatusBarIconOpensource.getSaltStatusBarIconOpensourceDrawable;
import static com.android.systemui.util.LeoDrawable.getLeoDrawable;
import static com.android.systemui.util.LeoDrawable.setMinipopVisibility;



public class StatusBar extends SystemUI implements DemoMode
 {


    protected StatusBarWindowView mStatusBarWindow;
    protected PhoneStatusBarView mStatusBarView;
    // protected NotificationPanelView mNotificationPanel;
     private KeyguardStatusBarView mKeyguardStatusBar;


     public StatusBar() {

       //  this.mAutohide = mAutohide;
     }





     public static class SaltStatusBarOpensource{
         public PhoneStatusBarView mLeoStatusBarView;
         public Context mContext;
         private SaltStatusBarOpensourceObserver mLeoSettingsObserver;
         private class SaltStatusBarOpensourceObserver extends ContentObserver {


             SaltStatusBarOpensourceObserver(Handler handler) {
                 super(handler);
             }
             void observe() {
                 ContentResolver resolver = mContext.getContentResolver();
                 resolver.registerContentObserver(Settings.System
                                 .getUriFor("leo_salt_statusbar_signal_orientation"), false,
                         this);
             }


             @Override
             public void onChange(boolean selfChange) {
                 SignalLocation();
             }
         }
        public void  SaltStatusBar(Context context,PhoneStatusBarView StatusBarView){
            mContext=context;
            mLeoStatusBarView=StatusBarView;
            if (mLeoSettingsObserver == null) {
                mLeoSettingsObserver = new SaltStatusBarOpensourceObserver(new Handler());
            }
            mLeoSettingsObserver.observe();
            SignalLocation();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("I'm from China");
            stringBuilder.append("developer");
            stringBuilder.append(new String(new char[]{'s', 'a', 'l', 't'}));

         }

         public void SignalLocation(){
           int  sityle=SaltStatusBarIconOpensource.LeoSettings.getInt(mContext.getContentResolver(),"leo_salt_statusbar_signal_orientation", 0);
             LinearLayout linearLayout = (LinearLayout)mLeoStatusBarView.findViewById(getUIdentifier("status_bar_left_side"));
             LinearLayout linearLayout2 = (LinearLayout)mLeoStatusBarView.findViewById(getUIdentifier("system_icons"));
             View findViewById2 =mLeoStatusBarView.findViewById(getUIdentifier("statusIcons"));
             ViewParent parent = findViewById2.getParent();
             if (parent != null) {
             }
             ((LinearLayout) parent).removeView(findViewById2);
             if (sityle== 0) {
                 linearLayout2.addView(findViewById2,1);
             } else {
                 linearLayout.addView(findViewById2,0);
             }
         }
         public int getUIdentifier(String resource) {
             return getLeoIdentifier(mContext,"id/"+resource);
         }
         public  int getLeoIdentifier(Context context,String resource) {

             return context.getResources().getIdentifier(resource, null,context.getPackageName());
         }
     }


     @Override
    public void start() {
         getSaltStatusBarIconOpensourceDrawable();
         SaltStatusBarOpensource mSaltStatusBarOpensource= new SaltStatusBarOpensource();
         mSaltStatusBarOpensource.SaltStatusBar(mContext,mStatusBarView);

         LeoStatusBar mLeoStatusBar= new LeoStatusBar();
         mLeoStatusBar.LeoStatusBar(mContext,mKeyguardStatusBar,mStatusBarView);
     }

     public class LeoStatusBar implements com.fusionleo.LeoProvider.LeoObserver.ObListener{
         public PhoneStatusBarView mLeoStatusBarView;
         public LeoMainBattery mLeoBattery,mKeyguardLeoBattery;
         public BatteryMeterView mBatteryMeterView,mKeyguardBatteryMeterView;
         public KeyguardStatusBarView mKeyguardStatus;
         public Context mContext;

         @Override
         public void onLeoChange(String str) {
             for (String equals :mLeoStatusBarMainBattery) {
                 if (equals.equals(str)) {
                     uploadLeoStatusBar( );
                     return;
                 }
             } for (String equals :mLeoStatusBarGesture) {
                 if (equals.equals(str)) {
                     uploadLeoStatusBar( );
                     return;
                 }
             } for (String equals :CustomStatusbarBg) {
                 if (equals.equals(str)) {
                     uploadLeoStatusBar( );
                     return;
                 }
             } for (String equals :mLeoKeyguardCarrier) {
                 if (equals.equals(str)) {
                     uploadLeoStatusBar( );
                     return;
                 }
             }for (String equals :mLeoStatusBarClock) {
                 if (equals.equals(str)) {
                     uploadLeoStatusBar( );
                     return;
                 }
             }
             for (String equals :mLeoFloatBall) {
                 if (equals.equals(str)) {
                     uploadLeoStatusBar( );
                     return;
                 }
             }for (String equals :StatusbarIcon) {
                 if (equals.equals(str)) {
                     uploadLeoStatusBar( );
                     return;
                 }
             }
         }
         private  FrameLayout mLeoStatusBarbgView;

         public void LeoStatusBar(Context context,KeyguardStatusBarView KeyguardStatusBar ,PhoneStatusBarView StatusBarView){
             mContext=context;
             mKeyguardStatus=KeyguardStatusBar;
             mLeoStatusBarView=StatusBarView;
             uploadLeoStatusBar( );

             LeoObserver mLeoObserver=   new LeoObserver(new Handler(),this);
             ContentResolver contentResolver =mContext.getContentResolver();
             for (String uriFor :mLeoStatusBarMainBattery) {
                 contentResolver.registerContentObserver(getLeoUri(uriFor), false, mLeoObserver);
             }for (String uriFor :mLeoStatusBarClock) {
                 contentResolver.registerContentObserver(getLeoUri(uriFor), false, mLeoObserver);
             }for (String uriFor :CustomStatusbarBg) {
                 contentResolver.registerContentObserver(getLeoUri(uriFor), false, mLeoObserver);
             }for (String uriFor :mLeoKeyguardCarrier) {
                 contentResolver.registerContentObserver(getLeoUri(uriFor), false, mLeoObserver);
             }for (String uriFor :mLeoFloatBall) {
                 contentResolver.registerContentObserver(getLeoUri(uriFor), false, mLeoObserver);
             }for (String uriFor :StatusbarIcon) {
                 contentResolver.registerContentObserver(getLeoUri(uriFor), false, mLeoObserver);
             }
         }

         public void uploadLeoStatusBar( ){
             LeoSysUiManages(mContext);
             mLeoStatusBarbgView=mLeoStatusBarView.findViewWithTag(mLeoTag[12]);
             mCarrierText=mKeyguardStatus.findViewWithTag(mLeoTag[13]);
             updateCarrierLabel(mCarrierText);
             String strr=mLeoTag[7];
             String Batteryleo=BATTERY_TAG;
             mBatteryMeterView= mLeoStatusBarView.findViewById(getUIdentifier(strr));
             mKeyguardBatteryMeterView=mKeyguardStatus.findViewById(getUIdentifier(strr));
             mLeoBattery= mLeoStatusBarView.findViewWithTag(Batteryleo);
             mKeyguardLeoBattery= mKeyguardStatus.findViewWithTag(Batteryleo);
             int sityle= setLeoStatusBarSignalOrientation;
             setLeBackground();
             int size=setLeoStatusbarMainBatterySize;
             setViewSize(mLeoBattery,size,size);
             setViewSize(mKeyguardLeoBattery,size,size);
             mLeoBattery.updateSettings();
             mKeyguardLeoBattery.updateSettings();
             mKeyguardBatteryMeterView.updateSettings();
             mBatteryMeterView.updateSettings();
             LinearLayout linearLayout = (LinearLayout)mLeoStatusBarView.findViewById(getUIdentifier(mLeoTag[3]));
             LinearLayout linearLayout2 = (LinearLayout)mLeoStatusBarView.findViewById(getUIdentifier(mLeoTag[4]));
             View findViewById2 =mLeoStatusBarView.findViewById(getUIdentifier(mLeoTag[5]));
             ViewParent parent = findViewById2.getParent();
             if (parent != null) {
             }
             ((LinearLayout) parent).removeView(findViewById2);
             if (sityle== 0) {
                 linearLayout2.addView(findViewById2,1);
             } else {
                 linearLayout.addView(findViewById2,0);
             }
             setMinipopVisibility(setLeoMiniPopEnabled);

             if (setLeoFloatBallEnabled) {
                 FloatWindowManager.addBallView(mContext);
             } else {
                 FloatWindowManager.removeBallView(mContext);
             }
         }
         public int getUIdentifier(String resource) {
             return getLeoIdentifier(mContext,"id/"+resource);
         }
         public void setViewSize(ImageView icon, int width, int height) {
             LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) icon.getLayoutParams();
             params.width = width;
             params.height = height;
             icon.setLayoutParams(params);
         }



         private CarrierText mCarrierText;

         public void updateCarrierLabel(CarrierText Carrier) {

             Carrier.updateLeoCarrierText();
             Carrier.setLeoTogeCarrierColor(setLeoKeyguardCarrierColor, setLeoKeyguardCarrierCustomColorEnabled,setLeoKeyguardDarkCarrierColor,setLeoKeyguardCustomDarkColorEnabled );
             Carrier.setLeoTogeCarrier(setLeoKeyguardCustomCarrier,
                     setLeoKeyguardCarrierMulti,
                     setLeoKeyguardCustomCarrierStringA,
                     setLeoKeyguardCustomCarrierStringB,
                     getLeoSymbolStyle(mContext,
                             setLeoKeyguardCarrierSymbol,
                             setLeoKeyguardCustomCarrierSymbol,
                             ",")
             );
             Carrier.setVisibility(setLeoKeyguardCarrier? VISIBLE : GONE);
             Carrier.setTextSize( setLeoKeyguardCarrierSize);
             Carrier.setLeoTogeCarrier5G(setLeoStatusBar5Gicon);
             Carrier.setTypeface(setLeoFonts(mContext,setLeoKeyguardCarrierFont,"sec-roboto-condensed",Typeface.NORMAL));
         }

         private  void  setLeBackground() {
             FrameLayout view= mLeoStatusBarbgView;
             boolean off=setLeoUesrStatusbarShowBG;
             view.setVisibility(off? VISIBLE : GONE);
             if (setLeoUesrStatusbarShowBG) {
                 boolean StrokeEnabled=setLeoUesrStatusbarStrokeEnabled;
                 int StrokeThickness=setLeoUesrStatusbarStrokeThickness;
                 int DashWidth= setLeoUesrStatusbarStrokeDashWidth;
                 int DashGap= setLeoUesrStatusbarStrokeDashGap;
                 int DashColor= setLeoUesrStatusbarStrokeDashColor;
                 int CornerRadius=setLeoUesrStatusbarGradientBackGroundCornerRadius;
                 int WallpaperColor=setLeoUesrStatusbarWallpaperColor;
                 int Alpha=setLeoUesrStatusbarBgWallpaperAlpha;
                 String str=setLeoUesrStatusbarBgWallpaper;
                 int SPanelBGStyle=setLeoUesrStatusbarBGStyle;
                 if (SPanelBGStyle == 0) {
                     view.setBackground(getLeoBasicColor(
                             StrokeEnabled,
                             StrokeThickness,
                             DashWidth,
                             DashGap,
                             DashColor,
                             CornerRadius,
                             setLeoUesrStatusbarBgBasicColor
                     ));

                 } else if(SPanelBGStyle==1){
                     view.setBackground(LeoGradientDrawable(
                             setLeoUesrStatusbarGradientBgStartColor,
                             setLeoUesrStatusbarGradientBgCenterColor,
                             setLeoUesrStatusbarGradientBgEndColor,
                             setLeoUesrStatusbarGradientColorFour,
                             setLeoUesrStatusbarGradientColorFive,
                             setLeoUesrStatusbarGradientColorSix,
                             setLeoUesrStatusbarGradientEnableCenterColor ,
                             setLeoUesrStatusbarBgGradientBgStyle,StrokeEnabled,StrokeThickness, DashWidth,DashGap, DashColor,CornerRadius
                             ,setLeoUesrStatusbarGradientBgType,setLeoUesrStatusbarGradientBackGroundColorRadius));
                 }if (SPanelBGStyle == 999 &&  str != null) {
                     view.setBackground(getLeoWallpaper(getContext(),str,setLeoUesrStatusbarBlurBgDegree,setLeoUesrStatusbarWallpaperColorEnable,WallpaperColor,setLeoUesrStatusbarBgWallpaperAlphaEnable,Alpha,setLeoUesrStatusbarBgWallpaperBlurEnabled));
                 }
             } else {
                 view.setBackgroundColor(Color.TRANSPARENT);
             }
         }

     }

     @Override
     public void disable(int state1, int state2, boolean animate) {

     }

     @Override
     public void dispatchDemoCommand(String command, Bundle args) {

     }


     public void LeoServiceReceiver() {
         BroadcastReceiver actionBroadcastReceiver = new FlashLightReceiver(this);
         IntentFilter intentFilter = new IntentFilter();
         intentFilter.addAction(rt100foleo("bGVvX2ZsYXNobGlnaHRfYWN0aW9u"));
         mContext.registerReceiver(actionBroadcastReceiver, intentFilter);

     }

     private class FlashLightReceiver extends BroadcastReceiver {
         private FlashLightReceiver() {
         }
         FlashLightReceiver(StatusBar phoneWindowManager) {
             this();
         }

         @Override
         public void onReceive(Context context, Intent intent) {
             if (intent.getAction().equals(rt100foleo("bGVvX2ZsYXNobGlnaHRfYWN0aW9u"))) {
                 FlashlightController flashlightController = (FlashlightController) Dependency.get(FlashlightController.class);
                 if (flashlightController != null) {
                     flashlightController.ToggleFlashLight();
                 }


             }
         }

     }
     public void getNavigationBarView() {
         getLeoDrawable();
     }

 }
