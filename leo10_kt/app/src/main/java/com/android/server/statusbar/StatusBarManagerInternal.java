package com.android.server.statusbar;

import android.graphics.Rect;
import android.os.Bundle;


public interface StatusBarManagerInternal {
    void appTransitionCancelled(int i);

    void appTransitionFinished(int i);

    void appTransitionPending(int i);

    void appTransitionStarting(int i, long j, long j2);

    void cancelPreloadRecentApps();

    void dismissKeyboardShortcutsMenu();

    void hideRecentApps(boolean z, boolean z2);

    void hideRecentAppsFromType(boolean z, boolean z2, int i);

    void onCameraLaunchGestureDetected(int i);

    void onDisplayReady(int i);

    void onProposedRotationChanged(int i, boolean z);

    void onRecentsAnimationStateChanged(boolean z);

    void preloadRecentApps();

    void setCurrentUser(int i);


    void setSystemUiVisibility(int i, int i2, int i3, int i4, int i5, Rect rect, Rect rect2, boolean z, String str);

    void setSystemUiVisibilityToType(int i, int i2, int i3, int i4, int i5, Rect rect, Rect rect2, boolean z, String str, int i6);

    void setTopAppHidesStatusBar(boolean z);

    void setWindowState(int i, int i2, int i3);

    void showAssistDisclosure();

    void showChargingAnimation(int i);

    void showPictureInPictureMenu();

    void showRecentApps(boolean z);

    void showRecentAppsToType(boolean z, int i);

    void showScreenPinningRequest(int i);

    void showScreenPinningRequestToType(int i, int i2);

    boolean showShutdownUi(boolean z, String str);

    void startAssist(Bundle bundle);

    void toggleKeyboardShortcutsMenu(int i);

    void toggleKeyboardShortcutsMenuToType(int i, int i2);

    void toggleRecentApps();

    void toggleRecentAppsToType(int i);

    void toggleSplitScreen();

    void topAppWindowChanged(int i, boolean z);

    void updateRestartButton(int i, boolean z, boolean z2);
}
