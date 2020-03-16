

package com.android.systemui.statusbar.phone;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;


import com.android.settingslib.salt.SaltSystemUI;
import com.android.systemui.BatteryMeterView;
import com.android.systemui.DemoMode;

import com.android.systemui.Dependency;
import com.android.systemui.Rune;
import com.android.systemui.SystemUI;

import com.android.systemui.fragments.FragmentHostManager;

import com.android.systemui.plugins.qs.QS;
import com.android.systemui.qs.QSFragment;
import com.android.systemui.qs.QSPanel;

import com.android.systemui.qs.SecQuickStatusBarHeader;
import com.android.systemui.qs.bar.BarController;

import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.QSClock;
import com.android.systemui.statusbar.policy.QSDate;
import com.android.systemui.statusbar.policy.QSShortenDate;
import com.android.systemui.statusbar.salt.SaltMainBattery;

import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.SaltIcon.getLeoStatusBarIcons;

import static com.android.settingslib.salt.SaltValues.Values4;
import static com.android.settingslib.salt.SaltValues.Values5;
import static com.android.settingslib.salt.SaltValues.Values6;
import static com.android.settingslib.salt.SaltValues.Values7;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;

import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardDoubleTapToSleepAnywhere;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardDoubleTapToSleepEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarSignalOrientation;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusbarMainBatterySize;
import static com.android.systemui.statusbar.salt.SaltMainBattery.BATTERY_TAG;


public class StatusBar extends SystemUI implements DemoMode {

     Context mContext;
     protected StatusBarWindowView mStatusBarWindow;
     protected PhoneStatusBarView mStatusBarView;
     public KeyguardStatusBarView mKeyguardStatusBar;
    public SaltSystemUI mSaltSystemUI;
    public StatusBar() {
        getLeoStatusBarIcons();

     }

    public void SaltStaertusBar() {

        makeSaltSignalLocation();
    }
    public void makeStatusBarView() {
        Context context = this.mContext;

        IntentFilter intentFilter = new IntentFilter();
        intentFilter(intentFilter);
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.app.action.SHOW_DEVICE_MONITORING_DIALOG");
        intentFilter.addAction("com.sec.aecmonitor.ONE_CYCLE_FINISH");
        if (Rune.SYSUI_SUPPORT_APPLOCK) {
            intentFilter.addAction("com.samsung.applock.intent.action.APPLOCKED_STATUS_CHANGED");
        }
        intentFilter.addAction("android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY");
        context.registerReceiver(this.mBroadcastReceiver,intentFilter, null, null);

    }

    protected final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() {
        public /* synthetic */ void lambda$onReceive$0$StatusBar$14() {

        }

        public /* synthetic */ void lambda$onReceive$1$StatusBar$14() {
            Log.d("StatusBar", "Clear all notifications and count major view number from aecmonitor");

        }

        public /* synthetic */ void lambda$onReceive$2$StatusBar$14() {

        }

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            updateLeoSaltService(action);
            int i = 0;
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action)) {
                int ss=i;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onReceive: ");
                stringBuilder.append(action);
                Log.v("StatusBar", stringBuilder.toString());
            } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onReceive: ");
                stringBuilder.append(action);
                int ss=i;
                Log.v("StatusBar", stringBuilder.toString());
            } else if ("android.app.action.SHOW_DEVICE_MONITORING_DIALOG".equals(action)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onReceive: ");
                stringBuilder.append(intent);
                Log.v("StatusBar", stringBuilder.toString());
            } else if ("com.sec.aecmonitor.ONE_CYCLE_FINISH".equals(action)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onReceive: ");
                stringBuilder.append(intent);
                Log.v("StatusBar", stringBuilder.toString());
            } else if ("com.samsung.applock.intent.action.APPLOCKED_STATUS_CHANGED".equals(action)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onReceive: ");
                stringBuilder.append(action);
                Log.v("StatusBar", stringBuilder.toString());
            } else if ("android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY".equals(action)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onReceive: ");
                stringBuilder.append(action);
                Log.v("StatusBar", stringBuilder.toString());
            }

        }
    };


    protected NotificationPanelView mNotificationPanel;

    private BarController mBarController;

    public int getBarState() {
        return 0;
    }


     @Override
     public void disable(int state1, int state2, boolean animate) {

     }

     @Override
     public void dispatchDemoCommand(String command, Bundle args) {

     }
    public NavigationBarView getNavigationBarView() {
        return null;
    }


     @Override
     public void start() {
         saltNotificationPanelTap();
     }

    public void saltNotificationPanelTap() {
        if(mNotificationPanel!=null){
            mNotificationPanel.refreshSaltNotificationPanelTapToSleep();
        }
        mSaltSystemUI=new SaltSystemUI(mContext);
        mSaltSystemUI.refreshSaltSystemUI();

        if(mSaltSystemUI!=null){
            mSaltSystemUI.refreshSaltFloat();
            mSaltSystemUI.refreshSaltMinipop();
        }
    }
    public void intentFilter(IntentFilter intentFilter){
        intentFilter.addAction(rt100foleo(SALT_UPDATE_MINIPOP_GESTURE_SETTINGS));
        intentFilter.addAction(rt100foleo(SALT_UPDATE_QSBAR_SALT_SETTINGS));//SALT_UPDATE_QSBAR_SALT_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_QSDATECLOCK_SETTINGS));
        intentFilter.addAction(rt100foleo(SALT_UPDATE_STATUSBAR_SETTINGS));
        intentFilter.addAction(rt100foleo(SALT_UPDATE_BATTERY_SETTINGS));
        intentFilter.addAction(rt100foleo(SALT_UPDATE_STATUSBARICON_SETTINGS));
        intentFilter.addAction(rt100foleo(SALT_UPDATE_LOCKCARRIER_SETTINGS));
        intentFilter.addAction(rt100foleo(SALT_UPDATE_PANEL_SETTINGS));
        intentFilter.addAction(rt100foleo(SALT_UPDATE_LOCK_GESTURE_SETTINGS));
        intentFilter.addAction(rt100foleo(SALT_UPDATE_NAV_GESTURE_SETTINGS));
        intentFilter.addAction(rt100foleo(leo_flashlight_action));
        intentFilter.addAction(rt100foleo(SALT_UPDATE_FLOAT_GESTURE_SETTINGS));
    }
    private static final String   SALT_UPDATE_LOCKCARRIER_SETTINGS = "U0FMVF9VUERBVEVfTE9DS0NBUlJJRVJfU0VUVElOR1M=";
    public static final String   SALT_UPDATE_BATTERY_SETTINGS = "U0FMVF9VUERBVEVfQkFUVEVSWV9TRVRUSU5HUw==";
    private static final String   SALT_UPDATE_STATUSBARICON_SETTINGS= "U0FMVF9VUERBVEVfU1RBVFVTQkFSSUNPTl9TRVRUSU5HUw==";
    private static final String   SALT_UPDATE_MINIPOP_GESTURE_SETTINGS= "U0FMVF9VUERBVEVfTUlOSVBPUF9HRVNUVVJFX1NFVFRJTkdT";
    private static final String   SALT_UPDATE_FLOAT_GESTURE_SETTINGS="U0FMVF9VUERBVEVfRkxPQVRfR0VTVFVSRV9TRVRUSU5HUw==";
    private static final String   SALT_UPDATE_STATUSBAR_GESTURE_SETTINGS="U0FMVF9VUERBVEVfU1RBVFVTQkFSX0dFU1RVUkVfU0VUVElOR1M=";
    private static final String   SALT_UPDATE_NAV_GESTURE_SETTINGS="U0FMVF9VUERBVEVfTkFWX0dFU1RVUkVfU0VUVElOR1M=";
    private static final String   SALT_UPDATE_LOCK_GESTURE_SETTINGS="U0FMVF9VUERBVEVfTE9DS19HRVNUVVJFX1NFVFRJTkdT";
    private static final String   SALT_UPDATE_QSDATECLOCK_SETTINGS="U0FMVF9VUERBVEVfUVNEQVRFQ0xPQ0tfU0VUVElOR1M=";
    private static final String   SALT_UPDATE_STATUSBAR_SETTINGS="U0FMVF9VUERBVEVfU1RBVFVTQkFSX1NFVFRJTkdT";
    private static final String   leo_flashlight_action="bGVvX2ZsYXNobGlnaHRfYWN0aW9u";
    private static final String   SALT_UPDATE_QSBAR_SALT_SETTINGS="U0FMVF9VUERBVEVfUVNCQVJfU0FMVF9TRVRUSU5HUw==";
    private static final String   SALT_UPDATE_PANEL_SETTINGS="U0FMVF9VUERBVEVfUEFORUxfU0VUVElOR1M=";
    public void updateLeoSaltService(String str) {
        if (str == null) {
            return;
        }
        Context context=mContext;
        PhoneStatusBarView phoneStatusBarView=mStatusBarView;
        KeyguardStatusBarView keyguardStatusBarView=mKeyguardStatusBar;
        NotificationPanelView panelView=mNotificationPanel;
        SaltSystemUI saltSystemUI=mSaltSystemUI;
        if (rt100foleo(SALT_UPDATE_QSBAR_SALT_SETTINGS).equals(str)) {//SALT_UPDATE_QSBAR_SALT_SETTINGS
            LeoSysUiManages(context);
            BarController barController=   mBarController;
            barController.saltQsBarRefresh();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_QSDATECLOCK_SETTINGS))) {//SALT_UPDATE_QSDATECLOCK_SETTINGS
            LeoSysUiManages(context);
            QSClock bqsClock;
            SecQuickStatusBarHeader secHeader = getSaltHeader();
            bqsClock= (QSClock) secHeader.findViewWithTag("qs_header_clock");
            QSShortenDate qsShortenDate= (QSShortenDate) secHeader.findViewWithTag("qs_header_date");
            bqsClock.updateClock();
            qsShortenDate.updateDate();
            QSPanel qsPanel = getSaltQsPanel();
            qsPanel.refreshQSPanelClock();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_BATTERY_SETTINGS))) {//SALT_UPDATE_BATTERY_SETTINGS
            LeoSysUiManages(context);
            keyguardStatusBarView.setLeoSaltBattery();
            phoneStatusBarView.getLeoStatusBarManager().setLeoSaltBattery();
            getSaltHeader().updateSecQuickStatusBar();
            BatteryMeterView mBatteryMeterView,mKeyguardBatteryMeterView;
            mBatteryMeterView=phoneStatusBarView.findViewById(getLeoUIResource(Values7));
            mKeyguardBatteryMeterView=keyguardStatusBarView.findViewById(getLeoUIResource(Values7));
            mBatteryMeterView.updateSettings();
            mKeyguardBatteryMeterView.updateSettings();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_STATUSBAR_SETTINGS))) {//SALT_UPDATE_STATUSBAR_SETTINGS
            LeoSysUiManages(context);
            phoneStatusBarView.getLeoStatusBarManager().refreshSaltStatusBar();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_STATUSBARICON_SETTINGS))) {//SALT_UPDATE_STATUSBARICON_SETTINGS
            LeoSysUiManages(context);
            makeSaltSignalLocation();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_LOCKCARRIER_SETTINGS))) {//SALT_UPDATE_LOCKCARRIER_SETTINGS
            LeoSysUiManages(context);
            mKeyguardStatusBar.refreshKeyguardStatusBarView();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_PANEL_SETTINGS))) {//SALT_UPDATE_PANEL_SETTINGS
            LeoSysUiManages(context);

            panelView.getPanelManager().refreshSaltNotificationPanelCarrier().setSaltPanelCarrier();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_LOCK_GESTURE_SETTINGS))) {//SALT_UPDATE_LOCK_GESTURE_SETTINGS
            LeoSysUiManages(context);
            panelView.refreshSaltNotificationPanelTapToSleep();
            saltNotificationPanelTap();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_NAV_GESTURE_SETTINGS))) {//SALT_UPDATE_NAV_GESTURE_SETTINGS
            LeoSysUiManages(context);
            NavigationBarView navigationBarView = getNavigationBarView();
            navigationBarView.updateSaltBackArrowForGesture();
            navigationBarView.setDoubleTapToSleep();
            return;
        }else  if (rt100foleo(leo_flashlight_action).equals(str)) {//leo_flashlight_action
            FlashlightController flashlightController = (FlashlightController) Dependency.get(FlashlightController.class);
            if (flashlightController != null) {
                flashlightController.ToggleFlashLight();
            }
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_STATUSBAR_GESTURE_SETTINGS))) {//SALT_UPDATE_STATUSBAR_GESTURE_SETTINGS
            LeoSysUiManages(context);
            phoneStatusBarView.getLeoStatusBarManager().settingSaltStatusBarAction();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_MINIPOP_GESTURE_SETTINGS))) {//SALT_UPDATE_MINIPOP_GESTURE_SETTINGS
            LeoSysUiManages(mContext);
            saltSystemUI.refreshSaltMinipop();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_FLOAT_GESTURE_SETTINGS))) {//SALT_UPDATE_FLOAT_GESTURE_SETTINGS
            LeoSysUiManages(mContext);
            saltSystemUI.refreshSaltFloat();
            return;
        }
    }

    private SecQuickStatusBarHeader getSaltHeader() {
        return ((QSFragment) FragmentHostManager.get(this.mStatusBarWindow).getFragmentManager().findFragmentByTag("QS")).getContainer();
    }
    private QSPanel getSaltQsPanel() {
        return ((QSFragment) FragmentHostManager.get(this.mStatusBarWindow).getFragmentManager().findFragmentByTag("QS")).getQsPanel();
    }

    public boolean interceptTouchEvent(MotionEvent motionEvent) {

        return false;
    }

    public void makeSaltSignalLocation(){
        LeoSysUiManages(mContext);
        LinearLayout linearLayout = (LinearLayout)mStatusBarView.findViewById(getLeoUIResource(Values4));
        LinearLayout linearLayout2 = (LinearLayout)mStatusBarView.findViewById(getLeoUIResource(Values5));
        View findViewById2 =mStatusBarView.findViewById(getLeoUIResource(Values6));
        ViewParent parent = findViewById2.getParent();
        if (parent != null) {
        }
        ((LinearLayout) parent).removeView(findViewById2);
        if (setLeoStatusBarSignalOrientation== 0) {
            linearLayout2.addView(findViewById2,1);
        } else {
            linearLayout.addView(findViewById2,0);
        }
    }

 }
