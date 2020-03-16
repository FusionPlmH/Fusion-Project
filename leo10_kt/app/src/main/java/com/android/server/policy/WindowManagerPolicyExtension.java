package com.android.server.policy;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.SparseIntArray;
import android.widget.LinearLayout;

 interface WindowManagerPolicyExtension {

	public static final int AOD_FORCE_HIDING_LAYER = 26;
    public static final int FOLD_STATE_CLOSE = 0;
    public static final int FOLD_STATE_OPEN_HALF = 1;
    public static final int FOLD_STATE_OPEN_NORMAL = 2;
    public static final int FOLD_STATE_UNKOWN = -1;
    public static final int PEN_ABSENT = -1;
    public static final int PEN_ATTACHED = 1;
    public static final int PEN_DETACHED = 0;

    public interface WindowStateExtension {
        boolean canDismissKeyguard();

        void disableHideSViewCoverOnce(boolean z);

        int getBaseLayer();

        int getCoverMode();

        String getDefaultTspDeadzone();

        default int getTaskId() {
            return -1;
        }

        Bundle getTspDeadzone();

        boolean isDeviceDefaultTheme();

        boolean isDexCompatModeLw();

        boolean isHiddenFromUserLocked();

        boolean isHomeTask();

        boolean isSurfaceShowingLw();

        void setPendingPolicyVisibility();

        void setTspDeadzone(Bundle bundle);

        boolean willBeHideSViewCoverOnce();
    }

    public interface WindowManagerFuncs {
        void cancelPendingTakeScreenshotRunnable();

        int getDexMode();

        int getDisplayIdForPointerIcon();

        int getFlipFolderType();

        int getFocusedTaskIdWithoutHome();

        Rect getLaunchBoundsForMetaKeyEvent(WindowManagerPolicy.WindowState windowState, int i);

        int getPenState();

        void handleHomeKeyBehavior(int i);

        boolean hasOneHandOpSpec();

        void reconfigureDisplay(int i);

        void removeTask(int i);

        void sendTakeScreenshotRunnable(int i, int i2);

        void switchBuiltInDisplays(boolean z);
    }

    static int getMultiWindowLayerFromTypeLw(int i) {
        if (i == 2604) {
            return 3;
        }
        if (i == 2609) {
            return 21;
        }
        if (i == 2606) {
            return 11;
        }
        if (i == 2607) {
            return 2;
        }
        switch (i) {
            case 2613:
            case 2614:
            case 2615:
                return 2;
            default:
                return -1;
        }
    }

    static int getSubWindowLayerFromTypeLw(int i) {
        return i != 1100 ? 0 : 1;
    }

    static int getWindowLayerFromTypeLw(int i, boolean z) {
        switch (i) {
            case 2095:
            case 2402:
            case 2412:
                return 7;
            case 2099:
            case 2411:

            case 2100:
            case 2101:
                return 34;
            case 2102:
                return 27;
            case 2226:
            case 2415:
                return 19;
            case 2227:
                return 30;
            case 2228:
            case 2601:
                return 25;
            case 2270:
            case 2271:
            case 2409:
                return 16;
            case 2274:
            case 2281:
            case 2440:
            case 2441:
                return 22;
            case 2280:
            case 2401:
            case 2405:
                return 24;
            case 2400:
                return 15;
            case 2403:
                return 5;
            case 2404:
                return 9;
            case 2406:
            case 2430:
                return 3;
            case 2407:
                return 35;
            case 2408:
            case 2600:
                return 29;
            case 2414:
                return 21;
            case 2420:
            case 2619:
                return 32;
            case 2431:
                return 4;
            case 2442:
                return 23;
            case 2620:
                return 1;
            default:
                int multiWindowLayerFromTypeLw = getMultiWindowLayerFromTypeLw(i);
                return multiWindowLayerFromTypeLw > 0 ? multiWindowLayerFromTypeLw : -1;
        }
    }

    void applyForceUserActivityTimeoutWin(WindowManagerPolicy.WindowState windowState);

    void clearOneHandOpWindowLw(WindowManagerPolicy.WindowState windowState);

    void dismissKeyguardByPendingRequest();

    int getCarModeBarHorizontalPosition();

    int getDefaultHideNotchSettings();

    int getDexMode();

    int getHideNotchSettings();

    int getSettingsNavigationBarColor();

    void init(Context context, WindowManagerFuncs windowManagerFuncs);

    boolean interceptKeyBeforeQuickAccess(int i, float f, float f2);

    boolean isColorInversionEnabled();

    boolean isFullscreenNavigationBarGestureEnabled();

   public default boolean isInDexOnPc() {
        return false;
    }

    boolean isLockTaskModeEnabled();

    boolean isMetaKeyEventRequested(ComponentName componentName);

    boolean isNavBarImeBtnEnabled();

    boolean isPreloadInstallComplete();

    boolean isReducedAnimEnabled();

    boolean isSystemKeyEventRequested(int i, ComponentName componentName);

    void keyguardGoingAwayWithFingerprintUnlock(boolean z);

    void launchHomeForDesktopMode();

    void notifyMobileKeyboardCoverChanged(long j, boolean z);

    void notifyPenSwitchChanged(long j, boolean z);

    void onDexModeChangedLw(int i);

    void onLockTaskFeaturesChanged(SparseIntArray sparseIntArray);

    void onLockTaskStateChanged(int i);

    void requestMetaKeyEvent(ComponentName componentName, boolean z);

    boolean requestSystemKeyEvent(int i, ComponentName componentName, boolean z);

    void restartOneHandOpService();

    void restoreForceUserActivityTimeout(boolean z, WindowManagerPolicy.WindowState windowState);

    void screenTurnedOff();

    void setCarModeEnabledDisplayId(int i);

    void setDeadzoneHole(Bundle bundle);

    void setDefaultDisplaySize(int i, int i2, int i3, int i4);

    void setDefaultDisplaySizeDensity(int i, int i2, int i3, int i4);

    int setOneHandOpWindowLw(WindowManagerPolicy.WindowState windowState, LinearLayout.LayoutParams layoutParams);

    void setPendingIntentAfterUnlock(PendingIntent pendingIntent, Intent intent);

    void setRotation(int i);

    void setSafeModeReason(int i, int i2, int i3, int i4, int i5, String str);

    void updateTopActivity(ComponentName componentName);

    void updateTspInputMethodPolicy(WindowManagerPolicy.WindowState windowState, boolean z);

    void updateTspWindowPolicy(WindowManagerPolicy.WindowState windowState);
}
