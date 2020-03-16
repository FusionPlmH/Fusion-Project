package com.android.keyguard;


import android.os.SystemClock;

import java.util.TimeZone;

public class KeyguardUpdateMonitorCallback {
    private boolean mShowing;
    private long mVisibilityChangedCalled;



    public void onBiometricLockoutChanged(boolean z) {
    }



    public void onBootCompleted() {
    }

    public void onClockVisibilityChanged() {
    }

    public void onDevicePolicyManagerStateChanged() {
    }

    public void onDeviceProvisioned() {
    }

    public void onDlsViewModeChanged(int i) {
    }

    public void onDreamingStateChanged(boolean z) {
    }

    public void onEmergencyCallAction() {
    }

    public void onFaceUnlockStateChanged(boolean z, int i) {
    }

    public void onFailedUnlockAttemptChanged() {
    }

    @Deprecated
    public void onFinishedGoingToSleep(int i) {
    }

    public void onFolderStateChanged(boolean z) {
    }

    public void onHasLockscreenWallpaperChanged(boolean z) {
    }

    public void onKeyguardBouncerChanged(boolean z) {
    }

    public void onKeyguardVisibilityChanged(boolean z) {
    }

    public void onKeyguardVisibilityChangedRaw(boolean z) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (z != this.mShowing || elapsedRealtime - this.mVisibilityChangedCalled >= 1000) {
            onKeyguardVisibilityChanged(z);
            this.mVisibilityChangedCalled = elapsedRealtime;
            this.mShowing = z;
        }
    }

    public void onLocaleChanged() {
    }

    public void onLockModeChanged() {
    }

    public void onLogoutEnabledChanged() {
    }

    public void onNotifyKeyguardLockout() {
    }

    public void onOpenThemeChangeStarted() {
    }

    public void onOpenThemeChanged() {
    }

    public void onOpenThemeReApply() {
    }

    public void onPackageAdded(String str) {
    }

    public void onPackageChanged(String str) {
    }

    public void onPackageRemoved(String str, boolean z) {
    }

    public void onPhoneStateChanged(int i) {
    }


    public void onRefreshCarrierInfo() {
    }

    public void onRemoteLockInfoChanged() {
    }

    public void onRingerModeChanged(int i) {
    }

    @Deprecated
    public void onScreenTurnedOff() {
    }

    @Deprecated
    public void onScreenTurnedOn() {
    }

    public void onSecurityModeChanged(boolean z) {
    }

    @Deprecated
    public void onStartedGoingToSleep(int i) {
    }

    @Deprecated
    public void onStartedWakingUp() {
    }

    public void onStrongAuthStateChanged(int i) {
    }

    public void onSystemDialogsShowing() {
    }

    public void onTelephonyCapable(boolean z) {
    }

    public void onTimeChanged() {
    }

    public void onTimeZoneChanged(TimeZone timeZone) {
    }

    public void onTrustAgentErrorMessage(CharSequence charSequence) {
    }

    public void onTrustChanged(int i) {
    }

    public void onTrustGrantedWithFlags(int i, int i2) {
    }

    public void onTrustManagedChanged(int i) {
    }



    public void onUserInfoChanged(int i) {
    }

    public void onUserSwitchComplete(int i) {
    }

    public void onUserSwitching(int i) {
    }

    public void onUserUnlocked() {
    }

    public void showBackgroundAuthToast(int i) {
    }

    public void updateBackgroundAuthToast(boolean z, int i) {
    }
}
