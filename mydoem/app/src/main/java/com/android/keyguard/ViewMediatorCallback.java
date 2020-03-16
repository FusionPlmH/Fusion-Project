package com.android.keyguard;

public interface ViewMediatorCallback {
    int getBouncerPromptReason();

    boolean isScreenOn();

    void keyguardDone(boolean z, int i);

    void keyguardDoneDrawing();

    void keyguardDonePending(boolean z, int i);

    void keyguardGone();

    void onUserActivityTimeoutChanged();

    void playTrustedSound();

    void readyForKeyguardDone();

    void resetKeyguard();

    void resetKeyguardDismissAction();

    void setNeedsInput(boolean z);

    void userActivity();
}
