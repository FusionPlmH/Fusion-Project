package com.android.systemui.statusbar;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;

import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManager.DisplayListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.service.notification.StatusBarNotification;
import android.util.Pair;
import android.util.SparseArray;
import android.view.KeyEvent;

import android.widget.RemoteViews;
import androidx.annotation.VisibleForTesting;
import com.android.internal.os.SomeArgs;
import com.android.internal.statusbar.IStatusBar.Stub;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.systemui.SystemUI;

import com.android.systemui.statusbar.phone.StatusBar;

import java.util.ArrayList;

public class CommandQueue  {
    /* access modifiers changed from: private */
    public ArrayList<Callbacks> mCallbacks = new ArrayList();
    private SparseArray<Pair<Integer, Integer>> mDisplayDisabled = new SparseArray();
    /* access modifiers changed from: private */
    public Handler mHandler = new H(Looper.getMainLooper());
    private int mLastUpdatedImeDisplayId = -1;
    private final Object mLock = new Object();

    public interface Callbacks {
        default   void addQsTile(ComponentName componentName) {
        }

        default  void animateCollapsePanels(int i, boolean z) {
        }

        default   void animateExpandLockedShadePanel(StatusBarNotification statusBarNotification) {
        }

        default  void animateExpandNotificationsPanel() {
        }

        default   void animateExpandSettingsPanel(String str) {
        }

        default   void appTransitionCancelled(int i) {
        }

        default    void appTransitionFinished(int i) {
        }

        default    void appTransitionPending(int i, boolean z) {
        }

        default  void appTransitionStarting(int i, long j, long j2, boolean z) {
        }

        default     void cancelPreloadRecentApps() {
        }

        default  void clickTile(ComponentName componentName) {
        }

        default  void disable(int i, int i2, int i3, boolean z) {
        }

        default    void dismissKeyboardShortcutsMenu() {
        }

        default   void handleShowGlobalActionsMenu(int i) {
        }

        default  void handleShowShutdownUi(boolean z, String str) {
        }

        default void handleSystemKey(int i) {
        }

        default void hideBiometricDialog() {
        }

        default  void hideRecentApps(boolean z, boolean z2) {
        }

        default   void notifyRequestedSystemKey(boolean z, boolean z2) {
        }

        default void onBiometricAuthenticated(boolean z, String str) {
        }

        default void onBiometricError(String str) {
        }

        default  void onBiometricHelp(String str) {
        }

        default   void onCameraLaunchGestureDetected(int i) {
        }

        default  void onDisplayReady(int i) {
        }

        default  void onDisplayRemoved(int i) {
        }

        default     void onRecentsAnimationStateChanged(boolean z) {
        }

        default   void onRotationProposal(int i, boolean z) {
        }

        default  void preloadRecentApps() {
        }

        default void remQsTile(ComponentName componentName) {
        }

        default  void removeIcon(String str) {
        }

        default void sendKeyEventToDesktopTaskbar(KeyEvent keyEvent) {
        }

        default  void setIcon(String str, StatusBarIcon statusBarIcon) {
        }

        default  void setImeWindowStatus(int i, IBinder iBinder, int i2, int i3, boolean z) {
        }

        default  void setIndicatorBgColor(int i) {
        }

        default  void setNavigationBarShortcut(String str, RemoteViews remoteViews, int i, int i2) {
        }

        default  void setSystemUiVisibility(int i, int i2, int i3, int i4, int i5, Rect rect, Rect rect2, boolean z) {
        }

        default  void setTopAppHidesStatusBar(boolean z) {
        }

        default  void setWindowState(int i, int i2, int i3) {
        }

        default    void showAssistDisclosure() {
        }



        default  void showPictureInPictureMenu() {
        }

        default  void showPinningEnterExitToast(boolean z) {
        }

        default  void showPinningEscapeToast() {
        }

        default  void showRecentApps(boolean z) {
        }

        default   void showScreenPinningRequest(int i) {
        }

        default   void showWirelessChargingAnimation(int i) {
        }

        default    void startAssist(Bundle bundle) {
        }

        default   void toggleKeyboardShortcutsMenu(int i) {
        }

        default  void togglePanel() {
        }

        default  void toggleRecentApps() {
        }

        default  void toggleSplitScreen() {
        }

        default void updateRestartButton(int i, boolean z, boolean z2) {
        }
    }

    public static class CommandQueueStart extends SystemUI {
        public void start() {
            putComponent(CommandQueue.class, new CommandQueue(this.mContext));
        }
    }

    private final class H extends Handler {
        private H(Looper looper) {
            super(looper);
        }

        /* JADX WARNING: Missing block: B:32:0x00c8, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:33:0x00ca, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).sendKeyEventToDesktopTaskbar((android.view.KeyEvent) r14.obj);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:35:0x00ea, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:36:0x00ec, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).setIndicatorBgColor(r14.arg1);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:46:0x0130, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:47:0x0132, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).showPinningEscapeToast();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:49:0x014e, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:50:0x0150, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).showPinningEnterExitToast(((java.lang.Boolean) r14.obj).booleanValue());
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:52:0x0174, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:53:0x0176, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).showWirelessChargingAnimation(r14.arg1);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:55:0x0194, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:56:0x0196, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).hideBiometricDialog();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:58:0x01b2, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:59:0x01b4, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).onBiometricError((java.lang.String) r14.obj);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:61:0x01d4, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:62:0x01d6, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).onBiometricHelp((java.lang.String) r14.obj);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:98:0x0300, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:99:0x0302, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).togglePanel();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:101:0x031e, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:102:0x0320, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).handleShowGlobalActionsMenu(r14.arg1);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:104:0x033e, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:105:0x0340, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).handleSystemKey(r14.arg1);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:107:0x035e, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:108:0x0360, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).dismissKeyboardShortcutsMenu();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:110:0x037c, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:111:0x037e, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).appTransitionFinished(r14.arg1);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:113:0x039c, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:114:0x039e, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).toggleSplitScreen();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:116:0x03ba, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:117:0x03bc, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).clickTile((android.content.ComponentName) r14.obj);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:119:0x03dc, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:120:0x03de, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).remQsTile((android.content.ComponentName) r14.obj);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:122:0x03fe, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:123:0x0400, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).addQsTile((android.content.ComponentName) r14.obj);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:125:0x0420, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:126:0x0422, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).showPictureInPictureMenu();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:128:0x043e, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:129:0x0440, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).toggleKeyboardShortcutsMenu(r14.arg1);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:131:0x045e, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:132:0x0460, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).onCameraLaunchGestureDetected(r14.arg1);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:134:0x047e, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:135:0x0480, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).startAssist((android.os.Bundle) r14.obj);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:137:0x04a0, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:138:0x04a2, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).showAssistDisclosure();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:148:0x04fb, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:149:0x04fd, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).appTransitionCancelled(r14.arg1);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:159:0x0543, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:160:0x0545, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).showScreenPinningRequest(r14.arg1);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:182:0x05b6, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:183:0x05b8, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).setWindowState(r14.arg1, r14.arg2, ((java.lang.Integer) r14.obj).intValue());
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:185:0x05e0, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:186:0x05e2, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).cancelPreloadRecentApps();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:188:0x05fe, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:189:0x0600, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).preloadRecentApps();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:191:0x061c, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:192:0x061e, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).toggleRecentApps();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:199:0x0657, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:200:0x0659, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).onDisplayReady(r14.arg1);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:211:0x06bb, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:212:0x06bd, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).animateExpandSettingsPanel((java.lang.String) r14.obj);
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:222:0x0705, code skipped:
            if (r1 >= com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).size()) goto L_0x079d;
     */
        /* JADX WARNING: Missing block: B:223:0x0707, code skipped:
            ((com.android.systemui.statusbar.CommandQueue.Callbacks) com.android.systemui.statusbar.CommandQueue.access$100(r13.this$0).get(r1)).animateExpandNotificationsPanel();
            r1 = r1 + 1;
     */
        /* JADX WARNING: Missing block: B:329:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:330:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:332:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:333:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:334:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:335:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:336:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:337:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:341:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:342:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:343:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:344:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:345:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:346:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:347:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:348:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:349:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:350:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:351:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:352:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:353:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:354:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:356:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:358:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:361:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:362:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:363:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:364:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:365:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:366:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:368:?, code skipped:
            return;
     */
        public void handleMessage(android.os.Message r14) {
            /*
            r13 = this;
            r0 = r14.what;
            r1 = -65536; // 0xffffffffffff0000 float:NaN double:NaN;
            r0 = r0 & r1;
            r1 = 0;
            r2 = 1;
            switch(r0) {
                case 65536: goto L_0x0749;
                case 131072: goto L_0x0719;
                case 196608: goto L_0x06fb;
                case 262144: goto L_0x06d3;
                case 327680: goto L_0x06b1;
                case 393216: goto L_0x066d;
                case 458752: goto L_0x064d;
                case 524288: goto L_0x0630;
                case 589824: goto L_0x0612;
                case 655360: goto L_0x05f4;
                case 720896: goto L_0x05d6;
                case 786432: goto L_0x05ac;
                case 851968: goto L_0x0586;
                case 917504: goto L_0x0559;
                case 1179648: goto L_0x0539;
                case 1245184: goto L_0x0511;
                case 1310720: goto L_0x04f1;
                case 1376256: goto L_0x04b4;
                case 1441792: goto L_0x0496;
                case 1507328: goto L_0x0474;
                case 1572864: goto L_0x0454;
                case 1638400: goto L_0x0434;
                case 1703936: goto L_0x0416;
                case 1769472: goto L_0x03f4;
                case 1835008: goto L_0x03d2;
                case 1900544: goto L_0x03b0;
                case 1966080: goto L_0x0392;
                case 2031616: goto L_0x0372;
                case 2097152: goto L_0x0354;
                case 2162688: goto L_0x0334;
                case 2228224: goto L_0x0314;
                case 2293760: goto L_0x02f6;
                case 2359296: goto L_0x02cc;
                case 2424832: goto L_0x02a6;
                case 2490368: goto L_0x027e;
                case 2555904: goto L_0x021f;
                case 2621440: goto L_0x01ec;
                case 2686976: goto L_0x01ca;
                case 2752512: goto L_0x01a8;
                case 2818048: goto L_0x018a;
                case 2883584: goto L_0x016a;
                case 2949120: goto L_0x0144;
                case 3014656: goto L_0x0126;
                case 3080192: goto L_0x0100;
                case 3276800: goto L_0x00e0;
                case 3801088: goto L_0x00be;
                case 3866624: goto L_0x009c;
                case 5046272: goto L_0x0069;
                case 5111808: goto L_0x0039;
                case 5177344: goto L_0x000c;
                default: goto L_0x000a;
            };
        L_0x000a:
            goto L_0x079d;
        L_0x000c:
            r0 = r1;
        L_0x000d:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x0019:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.arg1;
            if (r4 == 0) goto L_0x002b;
        L_0x0029:
            r4 = r2;
            goto L_0x002c;
        L_0x002b:
            r4 = r1;
        L_0x002c:
            r5 = r14.arg2;
            if (r5 == 0) goto L_0x0032;
        L_0x0030:
            r5 = r2;
            goto L_0x0033;
        L_0x0032:
            r5 = r1;
        L_0x0033:
            r3.notifyRequestedSystemKey(r4, r5);
            r0 = r0 + 1;
            goto L_0x000d;
        L_0x0039:
            r0 = r1;
        L_0x003a:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x0046:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.arg1;
            r5 = r14.arg2;
            if (r5 == 0) goto L_0x005a;
        L_0x0058:
            r5 = r2;
            goto L_0x005b;
        L_0x005a:
            r5 = r1;
        L_0x005b:
            r6 = r14.obj;
            r6 = (java.lang.Boolean) r6;
            r6 = r6.booleanValue();
            r3.updateRestartButton(r4, r5, r6);
            r0 = r0 + 1;
            goto L_0x003a;
        L_0x0069:
            r14 = r14.obj;
            r14 = (com.android.internal.os.SomeArgs) r14;
        L_0x006d:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x0097;
        L_0x0079:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r2 = (java.lang.String) r2;
            r3 = r14.arg2;
            r3 = (android.widget.RemoteViews) r3;
            r4 = r14.argi1;
            r5 = r14.argi2;
            r0.setNavigationBarShortcut(r2, r3, r4, r5);
            r1 = r1 + 1;
            goto L_0x006d;
        L_0x0097:
            r14.recycle();
            goto L_0x079d;
        L_0x009c:
            r14 = r14.obj;
            r14 = (android.service.notification.StatusBarNotification) r14;
        L_0x00a0:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x00ac:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r0.animateExpandLockedShadePanel(r14);
            r1 = r1 + 1;
            goto L_0x00a0;
        L_0x00be:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x00ca:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.obj;
            r2 = (android.view.KeyEvent) r2;
            r0.sendKeyEventToDesktopTaskbar(r2);
            r1 = r1 + 1;
            goto L_0x00be;
        L_0x00e0:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x00ec:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r0.setIndicatorBgColor(r2);
            r1 = r1 + 1;
            goto L_0x00e0;
        L_0x0100:
            r0 = r1;
        L_0x0101:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x010d:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.arg1;
            if (r4 <= 0) goto L_0x011f;
        L_0x011d:
            r4 = r2;
            goto L_0x0120;
        L_0x011f:
            r4 = r1;
        L_0x0120:
            r3.onRecentsAnimationStateChanged(r4);
            r0 = r0 + 1;
            goto L_0x0101;
        L_0x0126:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x0132:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.showPinningEscapeToast();
            r1 = r1 + 1;
            goto L_0x0126;
        L_0x0144:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0150:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.obj;
            r2 = (java.lang.Boolean) r2;
            r2 = r2.booleanValue();
            r0.showPinningEnterExitToast(r2);
            r1 = r1 + 1;
            goto L_0x0144;
        L_0x016a:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0176:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r0.showWirelessChargingAnimation(r2);
            r1 = r1 + 1;
            goto L_0x016a;
        L_0x018a:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x0196:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.hideBiometricDialog();
            r1 = r1 + 1;
            goto L_0x018a;
        L_0x01a8:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x01b4:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.obj;
            r2 = (java.lang.String) r2;
            r0.onBiometricError(r2);
            r1 = r1 + 1;
            goto L_0x01a8;
        L_0x01ca:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x01d6:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.obj;
            r2 = (java.lang.String) r2;
            r0.onBiometricHelp(r2);
            r1 = r1 + 1;
            goto L_0x01ca;
        L_0x01ec:
            r14 = r14.obj;
            r14 = (com.android.internal.os.SomeArgs) r14;
        L_0x01f0:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x021a;
        L_0x01fc:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r2 = (java.lang.Boolean) r2;
            r2 = r2.booleanValue();
            r3 = r14.arg2;
            r3 = (java.lang.String) r3;
            r0.onBiometricAuthenticated(r2, r3);
            r1 = r1 + 1;
            goto L_0x01f0;
        L_0x021a:
            r14.recycle();
            goto L_0x079d;
        L_0x021f:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mHandler;
            r2 = 2752512; // 0x2a0000 float:3.857091E-39 double:1.3599216E-317;
            r0.removeMessages(r2);
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mHandler;
            r2 = 2686976; // 0x290000 float:3.765255E-39 double:1.3275425E-317;
            r0.removeMessages(r2);
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mHandler;
            r2 = 2621440; // 0x280000 float:3.67342E-39 double:1.2951634E-317;
            r0.removeMessages(r2);
            r14 = r14.obj;
            r14 = (com.android.internal.os.SomeArgs) r14;
        L_0x0244:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x0279;
        L_0x0250:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r2 = r0;
            r2 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r2;
            r0 = r14.arg1;
            r3 = r0;
            r3 = (android.os.Bundle) r3;
            r0 = r14.arg2;
            r4 = r0;
            r4 = (android.hardware.biometrics.IBiometricServiceReceiverInternal) r4;
            r5 = r14.argi1;
            r0 = r14.arg3;
            r0 = (java.lang.Boolean) r0;
            r6 = r0.booleanValue();
            r7 = r14.argi2;
            r2.showBiometricDialog(r3, r4, r5, r6, r7);
            r1 = r1 + 1;
            goto L_0x0244;
        L_0x0279:
            r14.recycle();
            goto L_0x079d;
        L_0x027e:
            r0 = r1;
        L_0x027f:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x028b:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.arg1;
            r5 = r14.arg2;
            if (r5 == 0) goto L_0x029f;
        L_0x029d:
            r5 = r2;
            goto L_0x02a0;
        L_0x029f:
            r5 = r1;
        L_0x02a0:
            r3.onRotationProposal(r4, r5);
            r0 = r0 + 1;
            goto L_0x027f;
        L_0x02a6:
            r0 = r1;
        L_0x02a7:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x02b3:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.arg1;
            if (r4 == 0) goto L_0x02c5;
        L_0x02c3:
            r4 = r2;
            goto L_0x02c6;
        L_0x02c5:
            r4 = r1;
        L_0x02c6:
            r3.setTopAppHidesStatusBar(r4);
            r0 = r0 + 1;
            goto L_0x02a7;
        L_0x02cc:
            r0 = r1;
        L_0x02cd:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x02d9:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.arg1;
            if (r4 == 0) goto L_0x02eb;
        L_0x02e9:
            r4 = r2;
            goto L_0x02ec;
        L_0x02eb:
            r4 = r1;
        L_0x02ec:
            r5 = r14.obj;
            r5 = (java.lang.String) r5;
            r3.handleShowShutdownUi(r4, r5);
            r0 = r0 + 1;
            goto L_0x02cd;
        L_0x02f6:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x0302:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.togglePanel();
            r1 = r1 + 1;
            goto L_0x02f6;
        L_0x0314:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0320:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r0.handleShowGlobalActionsMenu(r2);
            r1 = r1 + 1;
            goto L_0x0314;
        L_0x0334:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0340:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r0.handleSystemKey(r2);
            r1 = r1 + 1;
            goto L_0x0334;
        L_0x0354:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x0360:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.dismissKeyboardShortcutsMenu();
            r1 = r1 + 1;
            goto L_0x0354;
        L_0x0372:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x037e:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r0.appTransitionFinished(r2);
            r1 = r1 + 1;
            goto L_0x0372;
        L_0x0392:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x039e:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.toggleSplitScreen();
            r1 = r1 + 1;
            goto L_0x0392;
        L_0x03b0:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x03bc:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.obj;
            r2 = (android.content.ComponentName) r2;
            r0.clickTile(r2);
            r1 = r1 + 1;
            goto L_0x03b0;
        L_0x03d2:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x03de:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.obj;
            r2 = (android.content.ComponentName) r2;
            r0.remQsTile(r2);
            r1 = r1 + 1;
            goto L_0x03d2;
        L_0x03f4:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0400:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.obj;
            r2 = (android.content.ComponentName) r2;
            r0.addQsTile(r2);
            r1 = r1 + 1;
            goto L_0x03f4;
        L_0x0416:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x0422:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.showPictureInPictureMenu();
            r1 = r1 + 1;
            goto L_0x0416;
        L_0x0434:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0440:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r0.toggleKeyboardShortcutsMenu(r2);
            r1 = r1 + 1;
            goto L_0x0434;
        L_0x0454:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0460:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r0.onCameraLaunchGestureDetected(r2);
            r1 = r1 + 1;
            goto L_0x0454;
        L_0x0474:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0480:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.obj;
            r2 = (android.os.Bundle) r2;
            r0.startAssist(r2);
            r1 = r1 + 1;
            goto L_0x0474;
        L_0x0496:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x04a2:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.showAssistDisclosure();
            r1 = r1 + 1;
            goto L_0x0496;
        L_0x04b4:
            r14 = r14.obj;
            r14 = (com.android.internal.os.SomeArgs) r14;
            r0 = r1;
        L_0x04b9:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x04c5:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r4 = r3;
            r4 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r4;
            r5 = r14.argi1;
            r3 = r14.arg1;
            r3 = (java.lang.Long) r3;
            r6 = r3.longValue();
            r3 = r14.arg2;
            r3 = (java.lang.Long) r3;
            r8 = r3.longValue();
            r3 = r14.argi2;
            if (r3 == 0) goto L_0x04ea;
        L_0x04e8:
            r10 = r2;
            goto L_0x04eb;
        L_0x04ea:
            r10 = r1;
        L_0x04eb:
            r4.appTransitionStarting(r5, r6, r8, r10);
            r0 = r0 + 1;
            goto L_0x04b9;
        L_0x04f1:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x04fd:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r0.appTransitionCancelled(r2);
            r1 = r1 + 1;
            goto L_0x04f1;
        L_0x0511:
            r0 = r1;
        L_0x0512:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x051e:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.arg1;
            r5 = r14.arg2;
            if (r5 == 0) goto L_0x0532;
        L_0x0530:
            r5 = r2;
            goto L_0x0533;
        L_0x0532:
            r5 = r1;
        L_0x0533:
            r3.appTransitionPending(r4, r5);
            r0 = r0 + 1;
            goto L_0x0512;
        L_0x0539:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0545:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r0.showScreenPinningRequest(r2);
            r1 = r1 + 1;
            goto L_0x0539;
        L_0x0559:
            r0 = r1;
        L_0x055a:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x0566:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.arg1;
            if (r4 == 0) goto L_0x0578;
        L_0x0576:
            r4 = r2;
            goto L_0x0579;
        L_0x0578:
            r4 = r1;
        L_0x0579:
            r5 = r14.arg2;
            if (r5 == 0) goto L_0x057f;
        L_0x057d:
            r5 = r2;
            goto L_0x0580;
        L_0x057f:
            r5 = r1;
        L_0x0580:
            r3.hideRecentApps(r4, r5);
            r0 = r0 + 1;
            goto L_0x055a;
        L_0x0586:
            r0 = r1;
        L_0x0587:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x0593:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.arg1;
            if (r4 == 0) goto L_0x05a5;
        L_0x05a3:
            r4 = r2;
            goto L_0x05a6;
        L_0x05a5:
            r4 = r1;
        L_0x05a6:
            r3.showRecentApps(r4);
            r0 = r0 + 1;
            goto L_0x0587;
        L_0x05ac:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x05b8:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r3 = r14.arg2;
            r4 = r14.obj;
            r4 = (java.lang.Integer) r4;
            r4 = r4.intValue();
            r0.setWindowState(r2, r3, r4);
            r1 = r1 + 1;
            goto L_0x05ac;
        L_0x05d6:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x05e2:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.cancelPreloadRecentApps();
            r1 = r1 + 1;
            goto L_0x05d6;
        L_0x05f4:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x0600:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.preloadRecentApps();
            r1 = r1 + 1;
            goto L_0x05f4;
        L_0x0612:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x061e:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.toggleRecentApps();
            r1 = r1 + 1;
            goto L_0x0612;
        L_0x0630:
            r14 = r14.obj;
            r14 = (com.android.internal.os.SomeArgs) r14;
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r4 = r14.argi1;
            r13 = r14.arg1;
            r5 = r13;
            r5 = (android.os.IBinder) r5;
            r6 = r14.argi2;
            r7 = r14.argi3;
            r13 = r14.argi4;
            if (r13 == 0) goto L_0x0647;
        L_0x0645:
            r8 = r2;
            goto L_0x0648;
        L_0x0647:
            r8 = r1;
        L_0x0648:
            r3.handleShowImeButton(r4, r5, r6, r7, r8);
            goto L_0x079d;
        L_0x064d:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0659:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.arg1;
            r0.onDisplayReady(r2);
            r1 = r1 + 1;
            goto L_0x064d;
        L_0x066d:
            r14 = r14.obj;
            r14 = (com.android.internal.os.SomeArgs) r14;
            r0 = r1;
        L_0x0672:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x06ac;
        L_0x067e:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r4 = r3;
            r4 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r4;
            r5 = r14.argi1;
            r6 = r14.argi2;
            r7 = r14.argi3;
            r8 = r14.argi4;
            r9 = r14.argi5;
            r3 = r14.arg1;
            r10 = r3;
            r10 = (android.graphics.Rect) r10;
            r3 = r14.arg2;
            r11 = r3;
            r11 = (android.graphics.Rect) r11;
            r3 = r14.argi6;
            if (r3 != r2) goto L_0x06a5;
        L_0x06a3:
            r12 = r2;
            goto L_0x06a6;
        L_0x06a5:
            r12 = r1;
        L_0x06a6:
            r4.setSystemUiVisibility(r5, r6, r7, r8, r9, r10, r11, r12);
            r0 = r0 + 1;
            goto L_0x0672;
        L_0x06ac:
            r14.recycle();
            goto L_0x079d;
        L_0x06b1:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x06bd:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.obj;
            r2 = (java.lang.String) r2;
            r0.animateExpandSettingsPanel(r2);
            r1 = r1 + 1;
            goto L_0x06b1;
        L_0x06d3:
            r0 = r1;
        L_0x06d4:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x06e0:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.arg1;
            r5 = r14.arg2;
            if (r5 == 0) goto L_0x06f4;
        L_0x06f2:
            r5 = r2;
            goto L_0x06f5;
        L_0x06f4:
            r5 = r1;
        L_0x06f5:
            r3.animateCollapsePanels(r4, r5);
            r0 = r0 + 1;
            goto L_0x06d4;
        L_0x06fb:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.size();
            if (r1 >= r14) goto L_0x079d;
        L_0x0707:
            r14 = com.android.systemui.statusbar.CommandQueue.this;
            r14 = r14.mCallbacks;
            r14 = r14.get(r1);
            r14 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r14;
            r14.animateExpandNotificationsPanel();
            r1 = r1 + 1;
            goto L_0x06fb;
        L_0x0719:
            r14 = r14.obj;
            r14 = (com.android.internal.os.SomeArgs) r14;
            r0 = r1;
        L_0x071e:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.size();
            if (r0 >= r3) goto L_0x079d;
        L_0x072a:
            r3 = com.android.systemui.statusbar.CommandQueue.this;
            r3 = r3.mCallbacks;
            r3 = r3.get(r0);
            r3 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r3;
            r4 = r14.argi1;
            r5 = r14.argi2;
            r6 = r14.argi3;
            r7 = r14.argi4;
            if (r7 == 0) goto L_0x0742;
        L_0x0740:
            r7 = r2;
            goto L_0x0743;
        L_0x0742:
            r7 = r1;
        L_0x0743:
            r3.disable(r4, r5, r6, r7);
            r0 = r0 + 1;
            goto L_0x071e;
        L_0x0749:
            r0 = r14.arg1;
            if (r0 == r2) goto L_0x0773;
        L_0x074d:
            r2 = 2;
            if (r0 == r2) goto L_0x0751;
        L_0x0750:
            goto L_0x079d;
        L_0x0751:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x075d:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.obj;
            r2 = (java.lang.String) r2;
            r0.removeIcon(r2);
            r1 = r1 + 1;
            goto L_0x0751;
        L_0x0773:
            r14 = r14.obj;
            r14 = (android.util.Pair) r14;
        L_0x0777:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.size();
            if (r1 >= r0) goto L_0x079d;
        L_0x0783:
            r0 = com.android.systemui.statusbar.CommandQueue.this;
            r0 = r0.mCallbacks;
            r0 = r0.get(r1);
            r0 = (com.android.systemui.statusbar.CommandQueue.Callbacks) r0;
            r2 = r14.first;
            r2 = (java.lang.String) r2;
            r3 = r14.second;
            r3 = (com.android.internal.statusbar.StatusBarIcon) r3;
            r0.setIcon(r2, r3);
            r1 = r1 + 1;
            goto L_0x0777;
        L_0x079d:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.CommandQueue$H.handleMessage(android.os.Message):void");
        }
    }

    @VisibleForTesting
    public CommandQueue(Context context) {

        setDisabled(0, 0, 0);
    }

    private Pair<Integer, Integer> getDisabled(int i) {
        Pair pair = (Pair) this.mDisplayDisabled.get(i);
        if (pair != null) {
            return pair;
        }
        pair = new Pair(Integer.valueOf(0), Integer.valueOf(0));
        this.mDisplayDisabled.put(i, pair);
        return pair;
    }

    private int getDisabled1(int i) {
        return ((Integer) getDisabled(i).first).intValue();
    }

    private int getDisabled2(int i) {
        return ((Integer) getDisabled(i).second).intValue();
    }

    /* access modifiers changed from: private */
    public void handleShowImeButton(int i, IBinder iBinder, int i2, int i3, boolean z) {

    }

    private void sendImeInvisibleStatusForPrevNavBar() {
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            ((Callbacks) this.mCallbacks.get(i)).setImeWindowStatus(this.mLastUpdatedImeDisplayId, null, 4, 0, false);
        }
    }

    private void setDisabled(int i, int i2, int i3) {
        this.mDisplayDisabled.put(i, new Pair(Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public void addCallback(Callbacks callbacks) {
        this.mCallbacks.add(callbacks);
        for (int i = 0; i < this.mDisplayDisabled.size(); i++) {
            int keyAt = this.mDisplayDisabled.keyAt(i);
            callbacks.disable(keyAt, getDisabled1(keyAt), getDisabled2(keyAt), false);
        }
    }

    public void addQsTile(ComponentName componentName) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1769472, componentName).sendToTarget();
        }
    }

    public void animateCollapsePanels() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(262144);
            this.mHandler.obtainMessage(262144, 0, 0).sendToTarget();
        }
    }

    public void animateCollapsePanels(int i, boolean z) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(262144);
            this.mHandler.obtainMessage(262144, i, z ? 1 : 0).sendToTarget();
        }
    }

    public void animateExpandLockedShadePanel(StatusBarNotification statusBarNotification) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(3866624);
            this.mHandler.obtainMessage(3866624, 0, 0, statusBarNotification).sendToTarget();
        }
    }

    public void animateExpandNotificationsPanel() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(196608);
            this.mHandler.sendEmptyMessage(196608);
        }
    }

    public void animateExpandSettingsPanel(String str) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(327680);
            this.mHandler.obtainMessage(327680, str).sendToTarget();
        }
    }

    public void appTransitionCancelled(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1310720, i, 0).sendToTarget();
        }
    }

    public void appTransitionFinished(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(2031616, i, 0).sendToTarget();
        }
    }

    public void appTransitionPending(int i) {
        appTransitionPending(i, false);
    }

    public void appTransitionPending(int i, boolean z) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1245184, i, z ? 1 : 0).sendToTarget();
        }
    }

    public void appTransitionStarting(int i, long j, long j2) {
        appTransitionStarting(i, j, j2, false);
    }

    public void appTransitionStarting(int i, long j, long j2, boolean z) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = z ? 1 : 0;
            obtain.arg1 = Long.valueOf(j);
            obtain.arg2 = Long.valueOf(j2);
            this.mHandler.obtainMessage(1376256, obtain).sendToTarget();
        }
    }

    public void cancelPreloadRecentApps() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(720896);
            this.mHandler.obtainMessage(720896, 0, 0, null).sendToTarget();
        }
    }

    public void clickQsTile(ComponentName componentName) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1900544, componentName).sendToTarget();
        }
    }

    public void disable(int i, int i2, int i3) {

    }

    public void disable(int i, int i2, int i3, boolean z) {
        synchronized (this.mLock) {
            setDisabled(i, i2, i3);
            this.mHandler.removeMessages(131072);
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            obtain.argi3 = i3;
            obtain.argi4 = z ? 1 : 0;
            Message obtainMessage = this.mHandler.obtainMessage(131072, obtain);
            if (Looper.myLooper() == this.mHandler.getLooper()) {
                this.mHandler.handleMessage(obtainMessage);
                obtainMessage.recycle();
            } else {
                obtainMessage.sendToTarget();
            }
        }
    }

    public void dismissKeyboardShortcutsMenu() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(2097152);
            this.mHandler.obtainMessage(2097152).sendToTarget();
        }
    }

    public void handleSystemKey(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(2162688, i, 0).sendToTarget();
        }
    }

    public void hideBiometricDialog() {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(2818048).sendToTarget();
        }
    }

    public void hideRecentApps(boolean z, boolean z2) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(917504);
            this.mHandler.obtainMessage(917504, 1, z2 ? 1 : 0, null).sendToTarget();
        }
    }

    public void notifyRequestedSystemKey(boolean z, boolean z2) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(5177344, 1, z2 ? 1 : 0).sendToTarget();
        }
    }

    public void onBiometricAuthenticated(boolean z, String str) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.arg1 = Boolean.valueOf(z);
            obtain.arg2 = str;
            this.mHandler.obtainMessage(2621440, obtain).sendToTarget();
        }
    }

    public void onBiometricError(String str) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(2752512, str).sendToTarget();
        }
    }

    public void onBiometricHelp(String str) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(2686976, str).sendToTarget();
        }
    }

    public void onCameraLaunchGestureDetected(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1572864);
            this.mHandler.obtainMessage(1572864, i, 0).sendToTarget();
        }
    }

    public void onDisplayAdded(int i) {
    }

    public void onDisplayChanged(int i) {
    }

    public void onDisplayReady(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(458752, i, 0).sendToTarget();
        }
    }

    public void onDisplayRemoved(int i) {
        synchronized (this.mLock) {
            this.mDisplayDisabled.remove(i);
        }
        for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
            ((Callbacks) this.mCallbacks.get(size)).onDisplayRemoved(i);
        }
    }

    public void onProposedRotationChanged(int i, boolean z) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(2490368);
            this.mHandler.obtainMessage(2490368, i, z ? 1 : 0, null).sendToTarget();
        }
    }

    public void onRecentsAnimationStateChanged(boolean z) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(3080192, z ? 1 : 0, 0).sendToTarget();
        }
    }

    public boolean panelsEnabled() {
        return false;
    }

    public void preloadRecentApps() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(655360);
            this.mHandler.obtainMessage(655360, 0, 0, null).sendToTarget();
        }
    }

    public void recomputeDisableFlags(int i, boolean z) {
        disable(i, getDisabled1(i), getDisabled2(i), z);
    }

    public void remQsTile(ComponentName componentName) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1835008, componentName).sendToTarget();
        }
    }

    public void removeCallback(Callbacks callbacks) {
        this.mCallbacks.remove(callbacks);
    }

    public void removeIcon(String str) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(65536, 2, 0, str).sendToTarget();
        }
    }

    public void sendKeyEventToDesktopTaskbar(KeyEvent keyEvent) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(3801088, 0, 0, keyEvent).sendToTarget();
        }
    }

    public void setIcon(String str, StatusBarIcon statusBarIcon) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(65536, 1, 0, new Pair(str, statusBarIcon)).sendToTarget();
        }
    }

    public void setImeWindowStatus(int i, IBinder iBinder, int i2, int i3, boolean z) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(524288);
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            obtain.argi3 = i3;
            obtain.argi4 = z ? 1 : 0;
            obtain.arg1 = iBinder;
            this.mHandler.obtainMessage(524288, obtain).sendToTarget();
        }
    }

    public void setIndicatorBgColor(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(3276800);
            this.mHandler.obtainMessage(3276800, i, 0, null).sendToTarget();
        }
    }

    public void setNavigationBarShortcut(String str, RemoteViews remoteViews, int i, int i2) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.arg1 = str;
            obtain.arg2 = remoteViews;
            obtain.argi1 = i;
            obtain.argi2 = i2;
            this.mHandler.obtainMessage(5046272, obtain).sendToTarget();
        }
    }

    public void setSystemUiVisibility(int i, int i2, int i3, int i4, int i5, Rect rect, Rect rect2, boolean z) {
        synchronized (this.mLock) {
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            obtain.argi2 = i2;
            obtain.argi3 = i3;
            obtain.argi4 = i4;
            obtain.argi5 = i5;
            obtain.argi6 = z ? 1 : 0;
            obtain.arg1 = rect;
            obtain.arg2 = rect2;
            this.mHandler.obtainMessage(393216, obtain).sendToTarget();
        }
    }

    public void setTopAppHidesStatusBar(boolean z) {
        this.mHandler.removeMessages(2424832);
        this.mHandler.obtainMessage(2424832,1, 0).sendToTarget();
    }

    public void setWindowState(int i, int i2, int i3) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(786432, i, i2, Integer.valueOf(i3)).sendToTarget();
        }
    }

    public void showAssistDisclosure() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1441792);
            this.mHandler.obtainMessage(1441792).sendToTarget();
        }
    }


    public void showGlobalActionsMenu(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(2228224);
            this.mHandler.obtainMessage(2228224, Integer.valueOf(i)).sendToTarget();
        }
    }

    public void showPictureInPictureMenu() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1703936);
            this.mHandler.obtainMessage(1703936).sendToTarget();
        }
    }

    public void showPinningEnterExitToast(boolean z) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(2949120, Boolean.valueOf(z)).sendToTarget();
        }
    }

    public void showPinningEscapeToast() {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(3014656).sendToTarget();
        }
    }

    public void showRecentApps(boolean z) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(851968);
            this.mHandler.obtainMessage(851968, z ? 1 : 0, 0, null).sendToTarget();
        }
    }

    public void showScreenPinningRequest(int i) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1179648, i, 0, null).sendToTarget();
        }
    }

    public void showShutdownUi(boolean z, String str) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(2359296);
            this.mHandler.obtainMessage(2359296, z ? 1 : 0, 0, str).sendToTarget();
        }
    }

    public void showWirelessChargingAnimation(int i) {
        this.mHandler.removeMessages(2883584);
        this.mHandler.obtainMessage(2883584, i, 0).sendToTarget();
    }

    public void startAssist(Bundle bundle) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1507328);
            this.mHandler.obtainMessage(1507328, bundle).sendToTarget();
        }
    }

    public void toggleKeyboardShortcutsMenu(int i) {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1638400);
            this.mHandler.obtainMessage(1638400, i, 0).sendToTarget();
        }
    }

    public void togglePanel() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(2293760);
            this.mHandler.obtainMessage(2293760, 0, 0).sendToTarget();
        }
    }

    public void toggleRecentApps() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(589824);
            Message obtainMessage = this.mHandler.obtainMessage(589824, 0, 0, null);
            obtainMessage.setAsynchronous(true);
            obtainMessage.sendToTarget();
        }
    }

    public void toggleSplitScreen() {
        synchronized (this.mLock) {
            this.mHandler.removeMessages(1966080);
            this.mHandler.obtainMessage(1966080, 0, 0, null).sendToTarget();
        }
    }

    public void topAppWindowChanged(int i, boolean z) {
    }

    public void updateRestartButton(int i, boolean z, boolean z2) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(5111808, i, z ? 1 : 0, Boolean.valueOf(z2)).sendToTarget();
        }
    }
}
