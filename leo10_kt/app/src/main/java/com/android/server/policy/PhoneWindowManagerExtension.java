package com.android.server.policy;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Slog;
import android.util.SparseIntArray;
import android.widget.LinearLayout;

import com.android.server.GestureLauncherService;
import com.android.server.LocalServices;

import static com.android.server.utils.salt.SaltPhoneSetting.LeoSetting;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalHwKeysEnableAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalHwKyesVibratorLevel;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalLongPressOnRecentAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalPowerDoubleAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalPowerDoubleKeyguardAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeoGlobalPowerEnableAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setLeowGlobalHwKyesVibratorEnable;
import static com.android.server.utils.salt.SaltPhoneSetting.setLongPressOnRecentAction;
import static com.android.server.utils.salt.SaltPhoneSetting.setPowerDoubleAction;
import static com.android.server.utils.salt.SaltServerFrame.setLeoAction;
import static com.android.server.utils.salt.SaltServerFrame.setLeoHaptics;

public class PhoneWindowManagerExtension implements WindowManagerPolicyExtension {

	@Override
	public void applyForceUserActivityTimeoutWin(WindowManagerPolicy.WindowState windowState) {

	}

	@Override
	public void clearOneHandOpWindowLw(WindowManagerPolicy.WindowState windowState) {

	}

	@Override
	public void dismissKeyguardByPendingRequest() {

	}

	@Override
	public int getCarModeBarHorizontalPosition() {
		return 0;
	}

	@Override
	public int getDefaultHideNotchSettings() {
		return 0;
	}

	@Override
	public int getDexMode() {
		return 0;
	}

	@Override
	public int getHideNotchSettings() {
		return 0;
	}

	@Override
	public int getSettingsNavigationBarColor() {
		return 0;
	}

	@Override
	public void init(Context context, WindowManagerFuncs windowManagerFuncs) {

	}

	@Override
	public boolean interceptKeyBeforeQuickAccess(int i, float f, float f2) {
		return false;
	}

	@Override
	public boolean isColorInversionEnabled() {
		return false;
	}

	@Override
	public boolean isFullscreenNavigationBarGestureEnabled() {
		return false;
	}

	@Override
	public boolean isLockTaskModeEnabled() {
		return false;
	}

	@Override
	public boolean isMetaKeyEventRequested(ComponentName componentName) {
		return false;
	}

	@Override
	public boolean isNavBarImeBtnEnabled() {
		return false;
	}

	@Override
	public boolean isPreloadInstallComplete() {
		return false;
	}

	@Override
	public boolean isReducedAnimEnabled() {
		return false;
	}

	@Override
	public boolean isSystemKeyEventRequested(int i, ComponentName componentName) {
		return false;
	}

	@Override
	public void keyguardGoingAwayWithFingerprintUnlock(boolean z) {

	}

	@Override
	public void launchHomeForDesktopMode() {

	}

	@Override
	public void notifyMobileKeyboardCoverChanged(long j, boolean z) {

	}

	@Override
	public void notifyPenSwitchChanged(long j, boolean z) {

	}

	@Override
	public void onDexModeChangedLw(int i) {

	}

	@Override
	public void onLockTaskFeaturesChanged(SparseIntArray sparseIntArray) {

	}

	@Override
	public void onLockTaskStateChanged(int i) {

	}

	@Override
	public void requestMetaKeyEvent(ComponentName componentName, boolean z) {

	}

	@Override
	public boolean requestSystemKeyEvent(int i, ComponentName componentName, boolean z) {
		return false;
	}

	@Override
	public void restartOneHandOpService() {

	}

	@Override
	public void restoreForceUserActivityTimeout(boolean z, WindowManagerPolicy.WindowState windowState) {

	}

	@Override
	public void screenTurnedOff() {

	}

	@Override
	public void setCarModeEnabledDisplayId(int i) {

	}

	@Override
	public void setDeadzoneHole(Bundle bundle) {

	}

	@Override
	public void setDefaultDisplaySize(int i, int i2, int i3, int i4) {

	}

	@Override
	public void setDefaultDisplaySizeDensity(int i, int i2, int i3, int i4) {

	}

	@Override
	public int setOneHandOpWindowLw(WindowManagerPolicy.WindowState windowState, LinearLayout.LayoutParams layoutParams) {
		return 0;
	}

	@Override
	public void setPendingIntentAfterUnlock(PendingIntent pendingIntent, Intent intent) {

	}

	@Override
	public void setRotation(int i) {

	}

	@Override
	public void setSafeModeReason(int i, int i2, int i3, int i4, int i5, String str) {

	}

	@Override
	public void updateTopActivity(ComponentName componentName) {

	}

	@Override
	public void updateTspInputMethodPolicy(WindowManagerPolicy.WindowState windowState, boolean z) {

	}

	@Override
	public void updateTspWindowPolicy(WindowManagerPolicy.WindowState windowState) {

	}

	Context mContext;
	PhoneWindowManager mPolicy;
	public PhoneWindowManagerExtension(WindowManagerPolicy windowManagerPolicy) {

	}
	private void handleLongPressOnRecentDefault(int i) {
        mPolicy.setSaltLeoPowerDoubleAction();
        mPolicy.setSaltLongPressOnRecent();
	}



}
