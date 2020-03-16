package com.android.server.policy;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Handler;

import android.view.DisplayInfo;
import android.view.IWindowManager;
import android.view.KeyEvent;
import android.view.WindowManager.LayoutParams;
import android.view.WindowManagerPolicy.WindowManagerFuncs;
import android.view.WindowManagerPolicy.WindowState;

import java.io.PrintWriter;

public interface IPhoneWindowManagerBridge {
    public static final String ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK = "ADPD";
    public static final int ADD_PASS = 4;
    public static final int ADD_WAKEUP = 16;
    public static final int CONSUME = 2;
    public static final int DOUBLE_TAP_TIMEOUT = 170;
    public static final String EXTRA_ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK = "PowerKey DoubleClick";
    public static final String EXTRA_VOICE_CALL_HOMEKEY_CLICK = "HomeKey Click";
    public static final String EXTRA_VOICE_CALL_RECENTKEY_CLICK = "RecentKey Click";
    public static final int FORWARD = 1;
    public static final int HIDE_SVIEW_COVER_ALWAYS = 1;
    public static final int HIDE_SVIEW_COVER_NONE = 0;
    public static final int HIDE_SVIEW_COVER_ONCE = 2;
    public static final int REMOVE_PASS = 8;
    public static final int REMOVE_WAKEUP = 32;
    public static final String VOICE_CALL_HOMEKEY_ANSWER = "VCHA";
    public static final String VOICE_CALL_HOMEKEY_CLICK = "VCHK";
    public static final String VOICE_CALL_POWERKEY_ENDCALL = "VCPE";
    public static final String VOICE_CALL_POWERKEY_SIELNCE = "VCPS";
    public static final String VOICE_CALL_RECENTKEY_CLICK = "VCRK";
    public static final String VOICE_CALL_VOLUMEKEY_SILENCE = "VCVS";

    void addHiddenWindow(WindowState windowState);

    void adjustAspectRatioFrame(WindowState windowState, Rect rect, DisplayInfo displayInfo);

    void adjustConfigurationLw(Configuration configuration);

    int adjustSystemUiVisibilityLw(int i);

    void adjustWindowParamsLw(LayoutParams layoutParams, int i, int i2);

    void applyFrameInLayoutWindowLw(WindowState windowState, boolean z, Rect rect, Rect rect2, Rect rect3, Rect rect4);

    boolean applyLidSwitchState();

    void applyPostLayoutPolicyLw(WindowState windowState, LayoutParams layoutParams, WindowState windowState2, boolean z);

    boolean applyWindowPolicyLw(WindowState windowState, WindowState windowState2);

    void beginCoverLayoutLw(int i, int i2, int i3);

    void beginLayoutLw(int i, int i2, int i3, int i4);

    void beginPostLayoutPolicyLw(int i, int i2);

    boolean canAffectSystemUiFlags();

    boolean canBeForceHiddenBySViewCover(WindowState windowState);

    WindowState canCandidateSystemUiVisibilityLw(WindowState windowState);

    int changeAppOpsMode(int i, int i2, String str);

    void changeNavigationBarHeight(int i);

    int configureNavBarOpacity(int i, WindowState windowState);

    void dump(String str, PrintWriter printWriter, String[] strArr);

    int finishPostLayoutPolicyLw(int i);

    void finishScreenTurningOn();

    void finishedGoingToSleep(int i);

    void focusChangedLw(WindowState windowState, WindowState windowState2);

    void freezeRotation(int i);

    int getChangeRatioBarSize();



    boolean getCoverStateSwitch();

    float getCurrentAspectRatio();

    float getDefaultMaxAspectRatio();

    Handler getHandler();

    WindowState getHideSViewCoverWindowState();

    int getKeycodeOnNavigationBar(int i, int i2);

    int getNavigationBarCustomHeight();

    int getNavigationBarHeight();

    boolean getNavigationBarHideSetting();

    int getNonDecorDisplayHeight(int i, int i2, int i3);

    int getNonDecorDisplayWidth(int i, int i2, int i3);

    int getRotationLockOrientation();

    int getSViewCoverHeight(DisplayInfo displayInfo);

    int getSViewCoverWidth(DisplayInfo displayInfo);

    int getSurfaceLayerCarModeBar();

    int getTaskBarHeightInDesktopMode();



    boolean handleLongPressOnHome();

    void handleLongPressOnRecent();

    boolean hasLockscreenWallpaper();

    boolean ignorePowerKeyInEncrypting();

    boolean inVSMode();

    void init(Context context, PhoneWindowManager phoneWindowManager, IWindowManager iWindowManager, WindowManagerFuncs windowManagerFuncs);

    void insertLog(String str, String str2);

    int interceptEndCallKey(KeyEvent keyEvent, boolean z, boolean z2);

    long interceptKeyBeforeDispatching(WindowState windowState, KeyEvent keyEvent, int i);

    int interceptKeyBeforeQueueing(KeyEvent keyEvent, int i);

    void interceptPowerKeyDown();

    boolean isAnyKeyMode();

    boolean isAvailableOneTouchReport();

    boolean isBlockedPowerKeyByKeyTest();

    boolean isCarModeBarVisible();

    boolean isCarModeEnabled();

    boolean isCombinationKeyTriggered();

    boolean isDesktopModeForPreparing();

    boolean isDesktopModeLoadingScreenShowing();

    boolean isDesktopModeTi();

    boolean isDockHomeEnabled(Intent intent);

    boolean isDoubleTapOnPowerEnabled();

    boolean isDozeDream();

    boolean isEasyOneHandEnabled();

    boolean isEnableAccessControl(int i);

    boolean isForceHideBySViewCover();

    boolean isForceStatusBarFromSViewCover();

    boolean isGearVrDocked();

    boolean isGearVrSupport();

    boolean isKeyguardLocked();

    boolean isKeyguardScrimWindow(LayoutParams layoutParams);

    boolean isKeyguardShowingAndNotOccluded();

    boolean isKnoxDesktopMode();

    boolean isLockTaskModeEnabled();

    boolean isMetaKeyEventRequested();

    boolean isMetaKeyEventRequested(ComponentName componentName);

    boolean isMirrorLinkEnabled();

    boolean isMobileKeyboardEnabled();

    boolean isNaviBarGestureLockedByGameTools();

    boolean isNavigationBarDisabled();

    boolean isNavigationColorWin(WindowState windowState, WindowState windowState2);

    boolean isNeedLayoutCoverApplication(WindowState windowState);

    boolean isRecentsTaskShowing();

    boolean isSafetyAssuranceEnabled();

    boolean isShowingSViewCover();

    boolean isStatusBarSViewCover();

    boolean isStatusBarVisible();

    boolean isStatusColorWin(WindowState windowState);

    boolean isSystemKeyEventRequested(int i, ComponentName componentName);

    boolean isTphoneRelaxMode();

    boolean isVolumeKeyMode();

    boolean isWakeupPreventionPackage(String str, int i);

    void launchHomeForDesktopMode();

    void layoutWindowLw(WindowState windowState, Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, Rect rect6);

    boolean needFullScreenDimBounds();

    boolean needLayoutForNavigationBar(WindowState windowState, WindowState windowState2);

    int needSensorRunningLp();

    boolean needUpdateSystemBarsForCoverLw();

    boolean notifyBeforeQuickAccess(int i, float f, float f2);

    void notifyCoverSwitchStateChanged(long j, boolean z);

    boolean notifyLidSwitchChanged(long j, boolean z);

    void notifyPenSwitchChanged(long j, boolean z);

    void onConfigurationChanged();

    void onLockTaskModeChanged(int i);

    void performCPUBoost();

    boolean performHapticFeedbackLw(WindowState windowState, int i, boolean z);

    void performHome();

    void performSystemKeyFeedback(KeyEvent keyEvent);

    boolean powerMultiPressAction(int i);

    boolean powerPress(KeyEvent keyEvent, boolean z);

    int prepareAddWindowLw(WindowState windowState, LayoutParams layoutParams);

    void prepareDesktopTaskBar(boolean z);

    void removeWindowLw(WindowState windowState);

    void requestMetaKeyEvent(ComponentName componentName, boolean z);

    boolean requestSystemKeyEvent(int i, ComponentName componentName, boolean z);

    void requestTransientBars(boolean z, boolean z2);

    void restoreForceUserActivityTimeout(boolean z, WindowState windowState);

    int rotationForOrientationLw(int i, int i2);

    void screenTurnedOff();

    int selectAnimationLw(WindowState windowState, int i);

    void selectRotationAnimationLw(int[] iArr);

    void setBendedPendingIntent(PendingIntent pendingIntent, Intent intent);

  //  boolean setCoverSwitchState(CoverState coverState);

    void setDesktopTaskBar(boolean z);

    void setForceStatusBarFromSViewCover(boolean z);

    void setHideSViewCoverWindowState(WindowState windowState);

    void setHomeConsumed();

    void setInitialDisplaySize(int i, int i2, int i3, int i4, int i5, int i6);

    void setRotationLw(int i);

    void setSafeModeReason(int i, int i2, int i3, int i4, int i5, int i6);

    void setShowingSViewCover(boolean z);

    boolean setUserRotationMode(int i, int i2);

    boolean shouldBeHiddenIfNeeded(WindowState windowState);

    void startedWakingUp(int i);

    int subWindowTypeToLayerLw(int i);

    void systemBooted();

    //void systemReady(KeyguardServiceDelegate keyguardServiceDelegate);

    void takeScreenshot(int i);

    void updateDeskTopUiMode();

    int updateLightNaviBarLw(int i, WindowState windowState);

    int updateLightStatusBarLw(int i, WindowState windowState, WindowState windowState2);

    void updateSViewCoverLayout(boolean z);

    void updateSettings();

    int updateSystemBarsLw(WindowState windowState, WindowState windowState2, int i, int i2);

    void updateSystemUiVisibilityLw();

    void updateTaskBarHeightInDesktopMode();

    void updateTopActivity(ComponentName componentName);

    void updateTouchableArea(boolean z);

    void updateTspInputMethodPolicy(WindowState windowState, boolean z);

    void updateTspWindowPolicy(WindowState windowState);

    int windowTypeToLayer(int i);
}
