package com.android.systemui.statusbar.phone;

import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewStub;
import android.widget.TextView;
import com.android.systemui.Dependency;


public class StatusBarKnoxMediator  implements StatusBarSetupModule {
    private static final boolean DEBUG = "eng".equals(Build.TYPE);
    private static StatusBarKnoxMediator sInstance;
    private int mDoubleTapCount = 0;

    private StatusBarObjectProvider mStatusBar;

    private void animateHide(View view) {
        if (view != null) {
            view.animate().cancel();
            view.setAlpha(0.0f);
            view.setVisibility(4);
        }
    }

    private void animateShow(View view) {
        if (view != null) {
            view.animate().cancel();
            view.setVisibility(0);
            view.setAlpha(1.0f);
        }
    }

    private void executeKnoxCustomDoubleTapScreenOff(boolean z) {

    }

    public static StatusBarKnoxMediator getInstance() {
        if (sInstance == null) {
            sInstance = new StatusBarKnoxMediator();
        }
        return sInstance;
    }

    private boolean isFirstTimeDoubleTapCount() {
        return this.mDoubleTapCount == 0;
    }

    private void updateNotifications() {
        StatusBarObjectProvider statusBarObjectProvider = this.mStatusBar;
    }

    public void init(StatusBarObjectProvider statusBarObjectProvider) {

    }

    public void onBarInterceptTouchEvent(MotionEvent motionEvent) {

    }

    public void onNPVInterceptTouchEvent(MotionEvent motionEvent) {

    }

    public void onPersonaLaunch(int i) {
        if (DEBUG) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("onPersonaLaunch(userId:");
            stringBuilder.append(i);
            stringBuilder.append(")");
            Log.d("StatusBarKnoxMediator", stringBuilder.toString());
        }
        updateNotifications();
    }

    public void onPersonaStateChange() {
        if (DEBUG) {
            Log.d("StatusBarKnoxMediator", "onPersonaStateChange()");
        }
        updateNotifications();
    }

    public void onRCPPolicyChange() {
        if (DEBUG) {
            Log.d("StatusBarKnoxMediator", "onRCPPolicyChange()");
        }
        updateNotifications();
    }

    public void onUpdateNavigationBarHidden() {
        if (DEBUG) {
            Log.d("StatusBarKnoxMediator", "onUpdateNavigationBarHidden()");
        }
    }

    public void onUpdateQuickPanelButtonUsers() {
        if (DEBUG) {
            Log.d("StatusBarKnoxMediator", "onUpdateQuickPanelButtonUsers()");
        }
        if (this.mStatusBar != null && this.mStatusBar.getNotificationPanelView() != null) {
            ViewGroup viewGroup = (ViewGroup) this.mStatusBar.getNotificationPanelView().findViewById(2131362843);
            if (viewGroup != null) {


            }
        }
    }

    public void onUpdateQuickPanelButtons() {

    }

    public void onUpdateStatusBarHidden() {

    }

    public void onUpdateStatusBarIcons() {

    }

    /* renamed from: onUpdateStatusBarText */
    public void lambda$init$0() {
        if (DEBUG) {
            Log.d("StatusBarKnoxMediator", "onUpdateStatusBarText()");
        }

    }
}
