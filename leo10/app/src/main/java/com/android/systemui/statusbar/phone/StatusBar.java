

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
import com.android.systemui.bar.BarController;
import com.android.systemui.fragments.FragmentHostManager;
import com.android.systemui.qs.QSFragment;
import com.android.systemui.qs.QSServiceBox;
import com.android.systemui.qs.SecQuickStatusBarHeader;
import com.android.systemui.statusbar.policy.DateView;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.QSClock;
import com.android.systemui.statusbar.salt.SaltMainBattery;

import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.SaltIcon.getLeoStatusBarIcons;

import static com.android.settingslib.salt.SaltValues.Values4;
import static com.android.settingslib.salt.SaltValues.Values5;
import static com.android.settingslib.salt.SaltValues.Values6;
import static com.android.settingslib.salt.SaltValues.Values7;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;

import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarSignalOrientation;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusbarMainBatterySize;
import static com.android.systemui.statusbar.salt.SaltMainBattery.BATTERY_TAG;


public class StatusBar extends SystemUI implements DemoMode {

     Context mContext;
     protected StatusBarWindowView mStatusBarWindow;
     protected PhoneStatusBarView mStatusBarView;
     public KeyguardStatusBarView mKeyguardStatusBar;

    public StatusBar() {
        getLeoStatusBarIcons();
        changeSaltSignalLocation();
        SaltSystemUI saltSystemUI=new SaltSystemUI();
        saltSystemUI.refreshSaltSystemUI();
     }

    public void SaltStaertusBar() {


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

        private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() {


        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action)) {

            } else if ("android.intent.action.SCREEN_OFF".equals(action)) {

                return;
            } else if ("android.app.action.SHOW_DEVICE_MONITORING_DIALOG".equals(action)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("onReceive: ");
                stringBuilder.append(intent);
                Log.v("StatusBar", stringBuilder.toString());
               //tatusBar.this.mQSPanel.showDeviceMonitoringDialog();
                return;
            } else if ("com.sec.aecmonitor.ONE_CYCLE_FINISH".equals(action)) {
               // if (!StatusBar.this.mStatusBarKeyguardViewManager.isShowing()) {
                   // StatusBar.this.animateExpandNotificationsPanel();
               // }
               // StatusBar.this.mHandler.postDelayed(new $$Lambda$StatusBar$21$nxi3EZA6VNWbOl7IACgJlnCuA3c(this), 300);
                return;
            } else if ("com.samsung.applock.intent.action.APPLOCKED_STATUS_CHANGED".equals(action)) {
                if (!intent.getBooleanExtra("com.samsung.applock.status.APPLOCK_CHECKED_STATUS", false)) {
                   // StatusBar.this.animateCollapsePanels();
                    return;
                }
                return;
            } else if ("android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY".equals(action)) {
                Log.i("StatusBar", "ACTION_SCREEN_OFF_BY_PROXIMITY");
               // StatusBar.this.mHandler.postDelayed(new $$Lambda$StatusBar$21$jWCZMY4IE0e9fusbucLU__6tgc(this), 500);
            }

            updateLeoSaltService(action);

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

     }
    public void intentFilter(IntentFilter intentFilter){
        intentFilter.addAction(rt100foleo(SALT_UPDATE_LOCKCARRIER_SETTINGS));//leo_flashlight_action
        intentFilter.addAction(rt100foleo(SALT_UPDATE_BATTERY_SETTINGS));//SALT_UPDATE_LOCKCARRIER_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_STATUSBARICON_SETTINGS));//SALT_UPDATE_BATTERY_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_MINIPOP_GESTURE_SETTINGS));//SALT_UPDATE_STATUSBARICON_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_FLOAT_GESTURE_SETTINGS));//SALT_UPDATE_PANEL_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_STATUSBAR_GESTURE_SETTINGS));//SALT_UPDATE_QSDATECLOCK_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_NAV_GESTURE_SETTINGS));//SALT_UPDATE_STATUSBAR_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_LOCK_GESTURE_SETTINGS));//SALT_UPDATE_MINIPOP_GESTURE_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_QSDATECLOCK_SETTINGS));//SALT_UPDATE_FLOAT_GESTURE_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_STATUSBAR_SETTINGS));//SALT_UPDATE_STATUSBAR_GESTURE_SETTINGS
        intentFilter.addAction(rt100foleo(leo_flashlight_action));//SALT_UPDATE_LOCK_GESTURE_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_QSBAR_SALT_SETTINGS));//SALT_UPDATE_QSBAR_SALT_SETTINGS
        intentFilter.addAction(rt100foleo(SALT_UPDATE_PANEL_SETTINGS));//SALT_UPDATE_PANEL_SETTINGS
    }
    private static final String   SALT_UPDATE_LOCKCARRIER_SETTINGS = "U0FMVF9VUERBVEVfTE9DS0NBUlJJRVJfU0VUVElOR1M=";
    private static final String   SALT_UPDATE_BATTERY_SETTINGS = "U0FMVF9VUERBVEVfQkFUVEVSWV9TRVRUSU5HUw==";
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
        PhoneStatusBarView phoneStatusBarView=mStatusBarView;
        if (str.equals(rt100foleo(SALT_UPDATE_LOCKCARRIER_SETTINGS))) {//SALT_UPDATE_LOCKCARRIER_SETTINGS
            LeoSysUiManages(mContext);
            mKeyguardStatusBar.refreshKeyguardStatusBarView();
            return;
        } else if (str.equals(rt100foleo(SALT_UPDATE_BATTERY_SETTINGS))) {//SALT_UPDATE_BATTERY_SETTINGS
            LeoSysUiManages(mContext);
            SaltMainBattery mLeoBattery,mKeyguardLeoBattery;
            BatteryMeterView mBatteryMeterView,mKeyguardBatteryMeterView;
            String Batteryleo=BATTERY_TAG;
            mBatteryMeterView= phoneStatusBarView.findViewById(getLeoUIResource(Values7));
            mKeyguardBatteryMeterView=mKeyguardStatusBar.findViewById(getLeoUIResource(Values7));
            mLeoBattery=phoneStatusBarView.findViewWithTag(Batteryleo);
            mKeyguardLeoBattery=mKeyguardStatusBar.findViewWithTag(Batteryleo);
            mLeoBattery.updateSettings();
            mKeyguardLeoBattery.updateSettings();
            mKeyguardBatteryMeterView.updateSettings();
            mBatteryMeterView.updateSettings();
            getSecHeader().updateSecQuickStatusBar();
            setLeoSaltBattery();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_STATUSBARICON_SETTINGS))) {//SALT_UPDATE_STATUSBARICON_SETTINGS
            LeoSysUiManages(mContext);
            changeSaltSignalLocation();
            getLeoStatusBarIcons();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_MINIPOP_GESTURE_SETTINGS))) {//SALT_UPDATE_MINIPOP_GESTURE_SETTINGS
            LeoSysUiManages(mContext);
            SaltSystemUI saltSystemUI=new SaltSystemUI();
            saltSystemUI.refreshSaltMinipop();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_FLOAT_GESTURE_SETTINGS))) {//SALT_UPDATE_FLOAT_GESTURE_SETTINGS
            LeoSysUiManages(mContext);
            SaltSystemUI saltSystemUI=new SaltSystemUI();
            saltSystemUI.refreshSaltFloat();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_STATUSBAR_GESTURE_SETTINGS))) {//SALT_UPDATE_STATUSBAR_GESTURE_SETTINGS
            LeoSysUiManages(mContext);
            phoneStatusBarView.getLeoStatusBarManager().settingSaltStatusBarAction();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_NAV_GESTURE_SETTINGS))) {//SALT_UPDATE_NAV_GESTURE_SETTINGS
            LeoSysUiManages(mContext);
            NavigationBarView navigationBarView = getNavigationBarView();
            navigationBarView.setDoubleTapToSleep();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_LOCK_GESTURE_SETTINGS))) {//SALT_UPDATE_LOCK_GESTURE_SETTINGS
            LeoSysUiManages(mContext);
            NotificationPanelView panelView=mNotificationPanel;
            panelView.refreshetSaltNotificationPanel().updateLeoDetector();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_PANEL_SETTINGS))) {//SALT_UPDATE_PANEL_SETTINGS
            LeoSysUiManages(mContext);
            NotificationPanelView panelView=mNotificationPanel;
            panelView.refreshetSaltNotificationPanel().updatePanel();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_QSDATECLOCK_SETTINGS))) {//SALT_UPDATE_QSDATECLOCK_SETTINGS
            LeoSysUiManages(mContext);
            QSClock qsClock,bqsClock;
            DateView dateView,bdateView;
            QSServiceBox qsServiceBox = ((QSFragment) FragmentHostManager.get(this.mStatusBarWindow).getFragmentManager().findFragmentByTag("QS")).getServiceBox();
            SecQuickStatusBarHeader secHeader = getSecHeader();
            bqsClock= (QSClock) secHeader.findViewWithTag("header_service_container_clock");
            bdateView= (DateView) secHeader.findViewWithTag("header_service_container_date");
            bqsClock.updateClock();
            bdateView.updateDate();
            qsClock= (QSClock) qsServiceBox.findViewWithTag("qs_service_box_clock");
            dateView= (DateView)qsServiceBox.findViewWithTag("qs_service_box_date");
            qsClock.updateClock();
            dateView.updateDate();
            return;
        }else if (str.equals(rt100foleo(SALT_UPDATE_STATUSBAR_SETTINGS))) {//SALT_UPDATE_STATUSBAR_SETTINGS
                LeoSysUiManages(mContext);
                mStatusBarView.getLeoStatusBarManager().refreshSaltStatusBar();
            return;
        }else  if (rt100foleo(leo_flashlight_action).equals(str)) {//leo_flashlight_action
            FlashlightController flashlightController = (FlashlightController) Dependency.get(FlashlightController.class);
            if (flashlightController != null) {
                flashlightController.ToggleFlashLight();
            }
            return;
        }else  if (rt100foleo(SALT_UPDATE_QSBAR_SALT_SETTINGS).equals(str)) {//SALT_UPDATE_QSBAR_SALT_SETTINGS
            LeoSysUiManages(mContext);
            BarController barController=   mBarController;
            barController.saltQsBarRefresh();
            return;
        }
    }




    private SecQuickStatusBarHeader getSecHeader() {
        return ((QSFragment) FragmentHostManager.get(this.mStatusBarWindow).getFragmentManager().findFragmentByTag("QS")).getContainer().getSecHeader();
    }

    private void setLeoSaltBattery() {
        SaltMainBattery mLeoBattery,mKeyguardLeoBattery;
        String Batteryleo=BATTERY_TAG;
        mLeoBattery= mStatusBarView.findViewWithTag(Batteryleo);
        mKeyguardLeoBattery=mKeyguardStatusBar.findViewWithTag(Batteryleo);
        int size=setLeoStatusbarMainBatterySize;
        LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) mLeoBattery.getLayoutParams();
        params.width =size;
        params.height =size;
        LinearLayout.LayoutParams params2 = (LinearLayout.LayoutParams)mKeyguardLeoBattery.getLayoutParams();
        params2.width =size;
        params2.height =size;
    }
    private void changeSaltSignalLocation(){
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
