package com.android.systemui.statusbar.policy;

public interface KeyguardMonitor extends CallbackController<KeyguardMonitor.Callback> {

    public interface Callback {
        void onKeyguardShowingChanged();
    }

    boolean canSkipBouncer();

    long getKeyguardFadingAwayDelay();

    long getKeyguardFadingAwayDuration();

    boolean isKeyguardFadingAway();

    boolean isKeyguardGoingAway();

    boolean isOccluded();

    boolean isSecure();

    boolean isShowing();
}
