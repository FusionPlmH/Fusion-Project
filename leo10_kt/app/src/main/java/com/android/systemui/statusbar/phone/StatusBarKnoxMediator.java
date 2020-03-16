package com.android.systemui.statusbar.phone;

import android.os.Debug;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import com.android.systemui.Dependency;
import com.android.systemui.KnoxStateMonitor;

import com.android.systemui.qs.SecQuickStatusBarHeader;
import java.io.PrintWriter;

public class StatusBarKnoxMediator  {

    private int mDoubleTapCount = 0;


    private void animateHide(View view) {
        if (view != null) {

        }
    }

    private void animateShow(View view) {
        if (view != null) {

        }
    }

    private void executeKnoxCustomDoubleTapScreenOff(boolean z) {


    }

    private boolean isFirstTimeDoubleTapCount() {
        return this.mDoubleTapCount == 0;
    }

    private void updateNotifications() {
    }

    public void dump(PrintWriter printWriter) {
    }


    public void onBarInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
        r4 = this;
        r0 = com.android.systemui.KnoxStateMonitor.class;
        r0 = com.android.systemui.Dependency.get(r0);
        r0 = (com.android.systemui.KnoxStateMonitor) r0;
        r0 = r0.isStatusBarDoubleTapEnabled();
        if (r0 != 0) goto L_0x000f;
    L_0x000e:
        return;
    L_0x000f:
        r0 = DEBUG;
        r1 = "StatusBarKnoxMediator";
        if (r0 == 0) goto L_0x001a;
    L_0x0015:
        r0 = "onBarInterceptTouchEvent()";
        android.util.Log.d(r1, r0);
    L_0x001a:
        r0 = 0;
        r2 = r4.isFirstTimeDoubleTapCount();
        r3 = 1;
        if (r2 == 0) goto L_0x003b;
    L_0x0022:
        r1 = r4.mStatusBar;
        if (r1 == 0) goto L_0x0049;
    L_0x0026:
        r1 = r1.isExpandedVisible();
        if (r1 != 0) goto L_0x0049;
    L_0x002c:
        r5 = r5.getAction();
        if (r5 != 0) goto L_0x0049;
    L_0x0032:
        r5 = com.android.systemui.KnoxStateMonitor.class;
        r5 = com.android.systemui.Dependency.get(r5);
        if (r5 == 0) goto L_0x0049;
    L_0x003a:
        goto L_0x0050;
    L_0x003b:
        r2 = r5.getAction();
        if (r2 == r3) goto L_0x004b;
    L_0x0041:
        r5 = r5.getAction();
        r2 = 3;
        if (r5 != r2) goto L_0x0049;
    L_0x0048:
        goto L_0x004b;
    L_0x0049:
        r3 = r0;
        goto L_0x0050;
    L_0x004b:
        r5 = "setKnoxCustomDoubleTapScreenOff: ACTION_UP";
        android.util.Log.d(r1, r5);
    L_0x0050:
        r4.executeKnoxCustomDoubleTapScreenOff(r3);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.StatusBarKnoxMediator.onBarInterceptTouchEvent(android.view.MotionEvent):void");
    }

    public void onNPVInterceptTouchEvent(MotionEvent motionEvent) {

    }

    public void onPersonaLaunch(int i) {

    }

    public void onPersonaStateChange() {

    }

    public void onRCPPolicyChange() {

    }

    public void onUpdateNavigationBarHidden() {

    }

    public void onUpdateQuickPanelButtonUsers() {

    }

    public void onUpdateQuickPanelButtons() {

    }

    public void onUpdateStatusBarHidden() {

    }

    public void onUpdateStatusBarIcons() {

    }


}
