package com.android.server.policy;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.media.AudioSystem;
import android.media.IAudioService;
import android.media.session.MediaSessionLegacyHelper;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.util.Log;
import android.util.Slog;
import android.util.SparseIntArray;
import android.view.HapticFeedbackConstants;
import android.view.IWindowManager;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.Toast;

import static android.view.Display.DEFAULT_DISPLAY;


import static com.android.server.utils.salt.SaltPhoneActionManager.*;
import static com.android.server.utils.salt.SaltPhoneSetting.LeoSetting;
import static com.android.server.utils.salt.SaltPhoneSetting.*;
import static com.android.server.utils.salt.SaltServerFrame.ActionToastSring;
import static com.android.server.utils.salt.SaltServerFrame.Provider.getLeoInt;
import static com.android.server.utils.salt.SaltServerFrame.rt100foleo;
import static com.android.server.utils.salt.SaltServerFrame.*;
import static com.android.server.utils.salt.SaltServerFrame.setLeoHaptics;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;


import com.android.internal.policy.IShortcutService;
import com.android.server.GestureLauncherService;
import com.android.server.LocalServices;
import com.android.server.utils.salt.SaltPhoneActionManager;
import com.android.server.utils.salt.SaltServerFrame;


import java.io.PrintWriter;


public class PhoneWindowManager implements WindowManagerPolicy {

	PhoneWindowManagerExtension mExt;
	//DisplayPolicy mDefaultDisplayPolicy;
	private boolean mPocketLockShowing;
	private boolean mScreenshotChordVolumeDownKeyConsumed;

	private class ScreenshotRunnable implements Runnable {
		private int mScreenshotType = 1;

		public void setScreenshotType(int screenshotType) {
			mScreenshotType = screenshotType;
		}

		@Override
		public void run() {
			if (!mPocketLockShowing) {
				//mDefaultDisplayPolicy.takeScreenshot(mScreenshotType);
			}
		}
	}
	@Override
	public void registerShortcutKey(long shortcutCode, IShortcutService shortcutKeyReceiver) throws RemoteException {

	}
	private final ScreenshotRunnable mScreenshotRunnable = new ScreenshotRunnable();
	@Override
	public void onKeyguardOccludedChangedLw(boolean occluded) {

	}

	@Override
	public void setDefaultDisplay(DisplayContentInfo displayContentInfo) {

	}



	@Override
	public int checkAddPermission(WindowManager.LayoutParams attrs, int[] outAppOp) {
		return 0;
	}

	@Override
	public boolean checkShowToOwnerOnly(WindowManager.LayoutParams attrs) {
		return false;
	}

	@Override
	public void adjustConfigurationLw(Configuration config, int keyboardPresence, int navigationPresence) {

	}

	@Override
	public int getMaxWallpaperLayer() {
		return 0;
	}

	@Override
	public boolean isKeyguardHostWindow(WindowManager.LayoutParams attrs) {
		return false;
	}

	@Override
	public boolean canBeHiddenByKeyguardLw(WindowState win) {
		return false;
	}

	@Override
	public StartingSurface addSplashScreen(IBinder appToken, String packageName, int theme, CompatibilityInfo compatInfo, CharSequence nonLocalizedLabel, int labelRes, int icon, int logo, int windowFlags, Configuration overrideConfig, int displayId) {
		return null;
	}

	@Override
	public Animation createHiddenByKeyguardExit(boolean onWallpaper, boolean goingToNotificationShade, boolean subtleAnimation) {
		return null;
	}

	@Override
	public Animation createKeyguardWallpaperExit(boolean goingToNotificationShade) {
		return null;
	}

	@Override
	public int interceptKeyBeforeQueueing(KeyEvent event, int policyFlags) {
		return 0;
	}

	@Override
	public int interceptMotionBeforeQueueingNonInteractive(int displayId, long whenNanos, int policyFlags) {
		return 0;
	}

	@Override
	public long interceptKeyBeforeDispatching(WindowState win, KeyEvent event, int policyFlags) {
		return 0;
	}

	@Override
	public KeyEvent dispatchUnhandledKey(WindowState win, KeyEvent event, int policyFlags) {
		return null;
	}

	@Override
	public void setTopFocusedDisplay(int displayId) {

	}

	@Override
	public void applyKeyguardPolicyLw(WindowState win, WindowState imeTarget) {

	}

	@Override
	public void setAllowLockscreenWhenOn(int displayId, boolean allow) {

	}

	@Override
	public void startedGoingToSleep(int why) {

	}

	@Override
	public void finishedGoingToSleep(int why) {

	}

	@Override
	public void screenTurningOn(ScreenOnListener screenOnListener) {

	}

	@Override
	public void screenTurnedOn() {

	}

	@Override
	public void screenTurningOff(ScreenOffListener screenOffListener) {

	}

	@Override
	public void screenTurnedOff() {

	}

	@Override
	public boolean isScreenOn() {
		return false;
	}

	@Override
	public boolean okToAnimate() {
		return false;
	}

	@Override
	public void notifyLidSwitchChanged(long whenNanos, boolean lidOpen) {

	}

	@Override
	public void notifyCameraLensCoverSwitchChanged(long whenNanos, boolean lensCovered) {

	}

	@Override
	public void enableKeyguard(boolean enabled) {

	}

	@Override
	public void exitKeyguardSecurely(OnKeyguardExitResult callback) {

	}

	@Override
	public boolean isKeyguardLocked() {
		return false;
	}

	@Override
	public boolean isKeyguardSecure(int userId) {
		return false;
	}

	@Override
	public boolean isKeyguardOccluded() {
		return false;
	}

	@Override
	public boolean isKeyguardShowingAndNotOccluded() {
		return false;
	}

	@Override
	public boolean isKeyguardTrustedLw() {
		return false;
	}

	@Override
	public boolean inKeyguardRestrictedKeyInputMode() {
		return false;
	}

	@Override
	public boolean isKeyguardDrawnLw() {
		return false;
	}

	@Override
	public void setSafeMode(boolean safeMode) {

	}

	@Override
	public void systemReady() {

	}

	@Override
	public void systemBooted() {

	}

	@Override
	public void showBootMessage(CharSequence msg, boolean always) {

	}

	@Override
	public void hideBootMessages() {

	}

	@Override
	public void userActivity() {

	}

	@Override
	public void enableScreenAfterBoot() {

	}

	@Override
	public boolean performHapticFeedback(int uid, String packageName, int effectId, boolean always, String reason) {
		return false;
	}

	@Override
	public void keepScreenOnStartedLw() {

	}

	@Override
	public void keepScreenOnStoppedLw() {

	}

	@Override
	public void setRecentsVisibilityLw(boolean visible) {

	}

	@Override
	public void setPipVisibilityLw(boolean visible) {

	}

	@Override
	public void setNavBarVirtualKeyHapticFeedbackEnabledLw(boolean enabled) {

	}

	@Override
	public boolean hasNavigationBar() {
		return false;
	}

	@Override
	public boolean hasPermanentMenuKey() {
		return false;
	}

	@Override
	public void sendCustomAction(Intent intent) {

	}

	@Override
	public void lockNow(Bundle options) {

	}

	@Override
	public void showRecentApps() {

	}

	@Override
	public void showGlobalActions() {

	}

	@Override
	public boolean isUserSetupComplete() {
		return false;
	}

	@Override
	public int getUiMode() {
		return 0;
	}

	@Override
	public void setCurrentUserLw(int newUserId) {

	}

	@Override
	public void setSwitchingUser(boolean switching) {

	}

	@Override
	public void dump(String prefix, PrintWriter writer, String[] args) {

	}

	@Override
	public boolean isTopLevelWindow(int windowType) {
		return false;
	}

	@Override
	public void startKeyguardExitAnimation(long startTime, long fadeoutDuration) {

	}

	@Override
	public void onSystemUiStarted() {

	}

	@Override
	public boolean canDismissBootAnimation() {
		return false;
	}

	@Override
	public void requestUserActivityNotification() {

	}

	@Override
	public boolean setAodShowing(boolean aodShowing) {
		return false;
	}

	@Override
	public void init(Context context, IWindowManager windowManager, WindowManagerFuncs windowManagerFuncs) {

	}

	boolean keyguardOn() {
		return isKeyguardShowingAndNotOccluded() || inKeyguardRestrictedKeyInputMode();
	}
	private class DisplayHomeButtonHandler {

		private final int mDisplayId;

		private boolean mHomeDoubleTapPending;
		private boolean mHomePressed;
		private boolean mHomeConsumed;

		private final Runnable mHomeDoubleTapTimeoutRunnable = new Runnable() {
			@Override
			public void run() {
				if (mHomeDoubleTapPending) {
					mHomeDoubleTapPending = false;
					handleShortPressOnHome(mDisplayId);
				}
			}
		};

		DisplayHomeButtonHandler(int displayId) {
			mDisplayId = displayId;
		}

		int handleHomeButton(WindowState win, KeyEvent event) {
			final boolean keyguardOn = keyguardOn();
			final int repeatCount = event.getRepeatCount();
			final boolean down = event.getAction() == KeyEvent.ACTION_DOWN;
			final boolean canceled = event.isCanceled();

			if (DEBUG_INPUT) {
				Log.d(TAG, String.format("handleHomeButton in display#%d mHomePressed = %b",
						mDisplayId, mHomePressed));
			}

			// If we have released the home key, and didn't do anything else
			// while it was pressed, then it is time to go home!
			if (!down) {
				if (mDisplayId == DEFAULT_DISPLAY) {

				}

				mHomePressed = false;
				if (mHomeConsumed) {
					mHomeConsumed = false;
					return -1;
				}

				if (canceled) {
					Log.i(TAG, "Ignoring HOME; event canceled.");
					return -1;
				}

				// Delay handling home if a double-tap is possible.
				if (mDoubleTapOnHomeBehavior != DOUBLE_TAP_HOME_NOTHING) {
					mHandler.removeCallbacks(mHomeDoubleTapTimeoutRunnable); // just in case
					mHomeDoubleTapPending = true;
					mHandler.postDelayed(mHomeDoubleTapTimeoutRunnable,
							ViewConfiguration.getDoubleTapTimeout());
					return -1;
				}

				// Post to main thread to avoid blocking input pipeline.
				mHandler.post(() -> handleShortPressOnHome(mDisplayId));
				return -1;
			}

			// If a system window has focus, then it doesn't make sense
			// right now to interact with applications.
			WindowManager.LayoutParams attrs = win != null ? win.getAttrs() : null;

			// Remember that home is pressed and handle special actions.
			if (repeatCount == 0) {
				mHomePressed = true;
				if (mHomeDoubleTapPending) {
					mHomeDoubleTapPending = false;
					mHandler.removeCallbacks(mHomeDoubleTapTimeoutRunnable);
				//	handleDoubleTapOnHome();
					// TODO(multi-display): Remove display id check once we support recents on
					// multi-display
				} else if (mDoubleTapOnHomeBehavior == DOUBLE_TAP_HOME_RECENT_SYSTEM_UI
						&& mDisplayId == DEFAULT_DISPLAY) {
					//preloadRecentApps();
				}
			} else if ((event.getFlags() & KeyEvent.FLAG_LONG_PRESS) != 0) {
				if (!keyguardOn) {
					// Post to main thread to avoid blocking input pipeline.
					mHandler.post(() -> saltHandleLongPressOnHome(event.getDeviceId()));
				}
			}
			return -1;
		}
		private void saltHandleLongPressOnHome(int i) {
			Context context = mContext;
			LeoSetting(context);
			if(setLeoGlobalHwKeysEnableAction){
				String str=setLongPressOnHomeAction;
				int style=setLeoGlobalLongPressOnHomeAction;
				setLeoAction(context,str,style);
				setLeoHaptics(mContext,setLeowGlobalHwKyesVibratorEnable,setLeoGlobalHwKyesVibratorLevel);
			} else {
				handleLongPressOnHome(i);
			}
		}
		private void handleLongPressOnHome(int i) {

		}


	}
	static final int LONG_PRESS_HOME_ALL_APPS = 1;
	private void performHapticFeedback(int longPress, boolean b, String s) {

	}
	private int mLongPressOnHomeBehavior;
	static final int LONG_PRESS_HOME_ASSIST = 2;
	// What we do when the user double-taps on home
	private int mDoubleTapOnHomeBehavior;
	static final int DOUBLE_TAP_HOME_NOTHING = 0;
	static final int DOUBLE_TAP_HOME_RECENT_SYSTEM_UI = 1;
	static final String TAG = "WindowManager";
	static final boolean localLOGV = false;
	static final boolean DEBUG = false;
	static final boolean DEBUG_INPUT = false;
	static final boolean DEBUG_KEYGUARD = false;
	static final boolean DEBUG_SPLASH_SCREEN = false;
	static final boolean DEBUG_WAKEUP = false;
	static final boolean SHOW_SPLASH_SCREENS = true;
	private void handleShortPressOnHome(int displayId) {

	}
	Handler mHandler;
	Context mContext;


	private static final String   SALT_UPDATE_NAV_GESTURE_SETTINGS="U0FMVF9VUERBVEVfTkFWX0dFU1RVUkVfU0VUVElOR1M=";
	private static final String   SALT_UPDATE_STKP_SETTINGS="U0FMVF9VUERBVEVfU1RLUF9TRVRUSU5HUw==";

	public void showGlobalActionsInternal(int i) {

	}

	WindowManagerFuncs mWindowManagerFuncs;

	private void loadLeoWindowManagerService(){
		mSkipTracks=new SkipTracks(mContext);
		mSkipTracks.updateSkipTracksOptions();
		BroadcastReceiver actionBroadcastReceiver = new SaltPhoneWindowReceiver(mContext);
		IntentFilter intentFilter = new IntentFilter();
		intentFilter.addAction(mLeoGlobalService);
		intentFilter.addAction(rt100foleo(SALT_UPDATE_NAV_GESTURE_SETTINGS));
		intentFilter.addAction(rt100foleo(SALT_UPDATE_STKP_SETTINGS));
		mContext.registerReceiver(actionBroadcastReceiver, intentFilter);

	}


	class SaltPhoneWindowReceiver extends BroadcastReceiver {
		SaltPhoneActionManager mSaltActionManager;
		public SaltPhoneWindowReceiver(Context context) {
			mSaltActionManager=new SaltPhoneActionManager(context);
		}
		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();
			if (action.equals(mLeoGlobalService)) {
				int Style= intent.getIntExtra(rt100foleo("bGVvX2FjdGlvbg=="), 0);
				String  stringExtra = intent.getStringExtra(rt100foleo("bGVvX2FwcA=="));
				String processNa = intent.getStringExtra(rt100foleo("bGVvX3Byb2Nlc3NOYW1l"));
				SaltPhoneAction(Style,stringExtra,processNa);
				return;
			}
		}

		public void launchBixbyHome() {
			ComponentName unflattenFromString = ComponentName.unflattenFromString("com.samsung.android.app.spage/com.samsung.android.app.spage.service.SpageService");
			Intent intent = new Intent();
			intent.setComponent(unflattenFromString);
			intent.putExtra("from_bixby_agent_button", true);
			intent.putExtra("from_bixby_agent", true);
			mContext.startService(intent);
		}

		public void SaltPhoneAction(int STYLE,String stringExtra,String processNa) {
			Context context=mContext;
			Intent intent=new Intent();
			SaltPhoneActionManager actionManager =mSaltActionManager ;
			switch (STYLE) {
				case 88://热重启
					actionManager.startAppsActivity(stringExtra ,false);
					return;
				case 99://热重启
					actionManager.startAppsActivity(stringExtra ,true);
					return;
				case 200://返回
					actionManager.triggerVirtualKeypress( KeyEvent.KEYCODE_BACK);
					return;
				case 201://HOME
					actionManager.triggerVirtualKeypress( KeyEvent.KEYCODE_HOME);
					return;
				case 202://锁屏
					actionManager.screenOff();
					return;
				case 203://最近任务
					actionManager.getRecentKeyEvent();
					return;
				case 204://分屏
					actionManager.toggleSPlitScreens();
					return;
				case 205://电源
					showGlobalActionsInternal();
					return;
				case 206://S搜索
					actionManager.LeoComponetURL(mSearch);
					return;
				case 207://屏幕录像
					actionManager.LeoComponetURL(mVideoManager);
					return;
				case 208://屏幕截图
					takeScreenshot(1);
					return;
				case 209://局部截图
					takeScreenshot(2);
					ActionToastSring(context,"partial_screenshot");
					return;
				case 210://本地WIFI密码
					actionManager.startConfigAction(mWIFIManager);
					return;
				case 211://Leo设置
					actionManager.LeoManagerService(mLeoManager);
					return;
				case 212://快速下啦面板
					actionManager.toggleNotificationsPanel();
					return;
				case 213://QS按钮面板
					actionManager.toggleSettingsPanel();
					return;
				case 214://手电
					actionManager.toggleFlashlight();
					return;
				case 215://WIFI切换
					actionManager.toggleWifi(context);
					return;
				case 216://飞行模式
					actionManager.toggleAirplane(context);
					return;
				case 217://悬浮球
					actionManager.toggleFloatingModel(context);
					return;
				case 218://户外模式
					actionManager.isOutdoorModel(context);
					return;
				case 219://屏幕助手
					actionManager.toggleMipopModel(context);
					return;
				case 220://相机
					actionManager.openCamera(context);
					return;
				case 221://屏幕沉浸
					actionManager.toggleExpandedDesktop(context,"policy_control");
					return;
				case 222://下一曲
					actionManager.NextTrack();
					return;
				case 223://上一曲
					actionManager.PreviousPiece();
					return;
				case 224://播放暂停
					actionManager.playPause();
					return;
				case 225://声音模式
					actionManager.toggleRingerModes(context);
					return;
				case 226://无声模式切换声音模式
					actionManager.toggleRingerSoundModes(context);
					return;
				case 227://震动模式切换声音模式
					actionManager.toggleRingerVIBRATESoundModes(context);
					return;
				case 228://bixby
					launchBixbyHome();
					return;
				case 229://bixby语音
					actionManager.launchBixbyVoice(context);
					return;
				case 230://切换到上一个打开的程序
					actionManager.toggleLastApp(context);
					return;
				case 231://清理进程
					actionManager.CleanProcesse();
					return;
				case 232://结束当前程序包含最近任务中
					actionManager.KillRecentAppsAll(context);
					return;
				case 233://移动数据
					actionManager.toggleMobile();
					return;
				case 234://音量控制面板
					actionManager.volumePanel(context);
					return;
				case 235://清理全部通知
					actionManager.toggleclearAllNotifications(context);
					return;
				case 236://微信扫一扫
					actionManager.startConfigAction(mAppsManager);
					return;
				case 237://WIFI热点
					actionManager.toggleWifiAP();
					ActionToastSring(context,"hotspot_state");
					return;
				case 238://时间日设置
					actionManager.LeoSysUiShortcut(intent,0);
					return;
				case 239://闹钟列表
					actionManager.LeoSysUiShortcut(intent,1);
					return;
				case 240://设置闹钟
					actionManager.LeoSysUiShortcut(intent,2);
					return;
				case 241://定时器
					actionManager.LeoSysUiShortcut(intent,3);
					return;
				case 242://日历
					actionManager.LeoSysUiShortcut(intent,4);
					return;
				case 260://WIFI热点
					actionManager.wakeUpDevice();
					return;
				case 710://蓝牙
					actionManager.WeChatScan(context);
					return;
				case 1999://热重启
					actionManager.ClearMemory(context);
					return;
				case 2001://重启UI
					actionManager.performRestartTask(rt100foleo("bGVvLmFjdGlvbi5TeXN0ZW1VaQ=="),processNa);
					return;
				case 2002://重新启动
					actionManager.performRestartTask(rt100foleo("bGVvLmFjdGlvbi5yZWJvb3RTeXN0ZW0="),null);
					return;
				case 2003://线刷
					actionManager.performRestartTask(rt100foleo("bGVvLmFjdGlvbi5Eb3dubG9hZA=="),null);

					return;
				case 2004://卡刷
					actionManager.performRestartTask(rt100foleo("bGVvLmFjdGlvbi5SZWNvdmVyeQ=="),null);
					return;
				case 2005://热重启
					actionManager.performRestartTask(rt100foleo("bGVvLmFjdGlvbi5ob3RSZWJvb3Q="),null);
					return;
				case 2006://关机
					actionManager.performRestartTask(rt100foleo("bGVvLmFjdGlvbi5TeXN0ZW1TaHV0ZG93bg=="),null);
					return;
			}

		}
	}

	public void takeScreenshot(int i) {
		mScreenshotChordVolumeDownKeyConsumed = true;
		mScreenshotRunnable.setScreenshotType(i);
		mHandler.post(mScreenshotRunnable);
	}


	public void showGlobalActionsInternal() {
		Context context=mContext;
		LeoSetting(context);
		boolean of=setLeoGlobalEnablePowerGlobalActionsStyle;
		if(of){
			if(getSafetyVersion().equals(SecurityCode)){
				if(EnablePowerGlobalService){
					PowerMenuService(mContext);
				}
			}else{
				showGlobalActionsInternal(-1);;
			}
		}else{
			showGlobalActionsInternal(-1);;
		}

	}
	public boolean isDeviceProvisioned() {
		return Settings.Global.getInt(this.mContext.getContentResolver(), "device_provisioned", 0) != 0;
	}
	private void backLongPress() {
		Context context = this.mContext;
		LeoSetting(context);
		if(setLeoGlobalHwKeysEnableAction){
			String str=setLongPressOnBackAction;
			int style=setLeoGlobalLongPressOnBackAction;
			setLeoAction(mContext,str,style);
			setLeoHaptics(mContext,setLeowGlobalHwKyesVibratorEnable,setLeoGlobalHwKyesVibratorLevel);
		} else {
			backLongPressDefault();
		}
	}

	private void backLongPressDefault() {
		this.mBackKeyHandled = true;
		int i = this.mLongPressOnBackBehavior;
		if (i != 0 && i == 1) {
		//	launchVoiceAssist(false);
		}
	}
	volatile boolean mBackKeyHandled;
	int mLongPressOnBackBehavior;

		int mVeryLongPressOnPowerBehavior;
	volatile boolean mPowerKeyHandled;


	public void powerLongPress(KeyEvent keyEvent, boolean z, int i) {
		setSaltLongPressOnPowerAction();
	}

	 void setSaltLongPressOnPowerAction()  {
		LeoSetting(mContext);
		if(setLeoGlobalPowerEnableAction){
			int style;
			String key;
			if(keyguardOn()){
				key=null;
				style=setLeoGlobalPowerLongPressKeyguardAction;
				if(style<=0){
					style=205; //当选择项目为0默认相机
				}
			}else{
				key=setPowerLongPressAction;
				style=setLeoGlobalPowerLongPressAction;
				if(style<=0){
					style=205; //当选择项目为0默认相机
				}
			}
			setLeoAction(mContext,key,style);
		}else{
			showGlobalActionsInternal();
		}
	}

	public void setSaltLeoPowerDoubleAction()  {
		LeoSetting(mContext);
		if(setLeoGlobalPowerEnableAction){
			int style;
			String key;
			if(keyguardOn()){
				key=null;
				style=setLeoGlobalPowerDoubleKeyguardAction;
				if(style<=0){
					style=220; //当选择项目为0默认相机
				}
			}else{
				key=setPowerDoubleAction;
				style=setLeoGlobalPowerDoubleAction;
				if(style<=0){
					style=220; //当选择项目为0默认相机
				}
			}
			setLeoAction(mContext,key,style);
		}else{
			GestureLauncherService gestureLauncherService = (GestureLauncherService) LocalServices.getService(GestureLauncherService.class);
			if (gestureLauncherService != null) {
				gestureLauncherService.handleCameraGesture(1);
			}
		}
	}
	public int setLeoBixbyClickAction(){
		LeoSetting(mContext);
		int style;
		String key;
		if(keyguardOn()){
			key=null;
			style=setLeoGlobalBixbyClickKeyguardAction;
			if(style<=0){
				style=260; //当选择项目为0默认BIX语音
			}
		}else{
			key=setBixbyClickAction;
			style=setLeoGlobalBixbyClickAction;
			if(style<=0){
				style=229; //当选择项目为0默认BIX语音
			}
		}
		setLeoAction(mContext,key,style);
		return style;
	}
	public int setLeoBixbyLongPressAction(){
		Context context=mContext;
		LeoSetting(context);
		int style;
		String key;
		if(keyguardOn()){
			key=null;
			style=setLeoGlobalBixbyLongPressKeyguardAction;
			if(style<=0){
				style=260; //当选择项目为0默认唤醒屏幕
			}
		}else{
			key=setBixbyLongAction;
			style=setLeoGlobalBixbyLongPressAction;
			if(style<=0){
				style=229; //当选择项目为0默认BIX语音
			}
		}
		setLeoAction(context,key,style);
		return style;
	}

	public int setLeoBixbyCustomAction() {
		Context context = this.mContext;
		LeoSetting(context);
		return setLeoGlobalBixbyEnableAction;
	}

	public void setSaltLongPressOnRecent() {
		Context context = this.mContext;
		LeoSetting(context);
		String str=setLongPressOnRecentAction;
		int style;
		if(setLeoGlobalHwKeysEnableAction){
			style=setLeoGlobalLongPressOnRecentAction;
			if(style<=87){
				style=204;
			}
		}else{
			style=204;
		}
		SaltServerFrame.setLeoAction(mContext,str,style);
		setLeoHaptics(mContext,setLeowGlobalHwKyesVibratorEnable,setLeoGlobalHwKyesVibratorLevel);
	}


	public void dispatchMediaKeyWithWakeLockToAudioService(KeyEvent keyEvent) {

	}
	SkipTracks mSkipTracks;

	public class SkipTracks {
		private static final int KEYCODE_MEDIA_NEXT = 87;
		private static final int KEYCODE_MEDIA_PLAY_PAUSE = 85;
		private static final int KEYCODE_MEDIA_PREVIOUS = 88;
		private static final int KEYCODE_VOLUME_UP = 24;
		Context mContext;
		public boolean mDoubleClickPlayStop = true;
		public boolean mDoubleTapPending = false;
		public Runnable mDoubleTapRunnable;
		public long mDoubleTapTimeOut = 500;
		public Handler mHandler;
		public boolean mIsLongVol = false;
		public Runnable mLongPressRunnable;
		public long mLongPressTime = 500;
		public int mNumTaps = 0;
		public boolean mSkipTrackEnabled = true;
		public TelecomManager mTelecomManager;
		public int mVolKeyCode;
		public SkipTracks(Context context) {
			this.mContext = context;
			initMod();
		}
		private void doNextPreviousTrack() {
			vibrate();
			Object obj = null;
			Object obj2 = this.mVolKeyCode == KEYCODE_VOLUME_UP ? 1 : null;
			String str = null;
			IAudioService audioService = getAudioService();
			if (audioService != null) {
				try {
					str = audioService.getCurrentAudioFocusPackageName();
				} catch (RemoteException e) {
					Log.d("Grx  ", "GRX: Long press failed");
					str = null;
				}
			}
			if (str != null && str.equals("com.spotify.music")) {
				obj = 1;
			}
			if (obj == null) {
				sendMediaButton(obj2 != null ? KEYCODE_MEDIA_NEXT : KEYCODE_MEDIA_PREVIOUS);
				return;
			}
			Intent intent = new Intent(obj2 != null ? "com.spotify.mobile.android.ui.widget.NEXT" : "com.spotify.mobile.android.ui.widget.PREVIOUS");
			intent.addFlags(268435456);
			if (this.mContext != null) {
				this.mContext.sendBroadcast(intent);
			}
		}

		private int getActiveStream() {
			return AudioSystem.isStreamActive(3, 0) ? 3 : AudioSystem.isStreamActive(10, 0) ? 10 : 0;
		}

		private IAudioService getAudioService() {
			return IAudioService.Stub.asInterface(ServiceManager.checkService("audio"));
		}

		private void initMod() {
			updateSkipTracksOptions();
			this.mHandler = new Handler();
			this.mTelecomManager = (TelecomManager) this.mContext.getSystemService("telecom");


			mLongPressRunnable = () -> {
				mIsLongVol = true;
				doNextPreviousTrack();
			};
			mDoubleTapRunnable = () -> {
				if (! mDoubleTapPending) {
					finishVolTap();
				} else if ( mNumTaps == 2) {
					finishDoubleTap();
				} else {
					finishVolTap();
				}
			};
		}

		private boolean isInPhoneCall() {
			TelecomManager telecomManager = this.mTelecomManager;
			return false;
		}

		private void sendMediaButton(int i) {
			Long valueOf = Long.valueOf(SystemClock.uptimeMillis());
			KeyEvent keyEvent = new KeyEvent(valueOf.longValue(), valueOf.longValue(), 0, i, 0);
			PhoneWindowManager.this.dispatchMediaKeyWithWakeLockToAudioService(keyEvent);
			PhoneWindowManager.this.dispatchMediaKeyWithWakeLockToAudioService(KeyEvent.changeAction(keyEvent, 1));
		}

		public void finishDoubleTap() {
			this.mNumTaps = 0;
			this.mDoubleTapPending = false;
			this.mHandler.removeCallbacks(this.mDoubleTapRunnable);
			vibrate();
			startStopMusic();
		}

		public void finishVolTap() {
			this.mNumTaps = 0;
			this.mDoubleTapPending = false;
			this.mHandler.removeCallbacks(this.mDoubleTapRunnable);
			try {
				increaseVolume(this.mVolKeyCode == KEYCODE_VOLUME_UP ? 1 : -1);
			} catch (RemoteException e) {
				e.printStackTrace();
			}
		}

		public void handleVolKeyUp() {
			int i = 1;
			if (this.mDoubleClickPlayStop) {
				this.mNumTaps++;
				if (!this.mDoubleTapPending) {
					this.mHandler.removeCallbacks(this.mDoubleTapRunnable);
					this.mDoubleTapPending = true;
					this.mHandler.postDelayed(this.mDoubleTapRunnable, this.mDoubleTapTimeOut);
					return;
				}
				return;
			}
			try {
				if (this.mVolKeyCode != KEYCODE_VOLUME_UP) {
					i = -1;
				}
				increaseVolume(i);
			} catch (RemoteException e) {
				e.printStackTrace();
			}
		}

		public void increaseVolume(int i) throws RemoteException {
			int activeStream = getActiveStream();
			if (activeStream != 0) {
				IAudioService audioService = getAudioService();
				if (audioService != null) {
					PhoneWindowManager.this.mBroadcastWakeLock.acquire();
					try {
						audioService.adjustStreamVolume(activeStream, i, 0, "android");
						PhoneWindowManager.this.mBroadcastWakeLock.release();
					} catch (RemoteException e) {
						PhoneWindowManager.this.mBroadcastWakeLock.release();
						throw e;
					}
				}
			}
		}

		public boolean shouldKeyBeStopped(KeyEvent keyEvent) {
			if (isInPhoneCall()) {
				return false;
			}
			this.mVolKeyCode = keyEvent.getKeyCode();
			if (keyEvent.getAction() == 1) {
				this.mHandler.removeCallbacks(this.mLongPressRunnable);
				if (this.mIsLongVol) {
					this.mIsLongVol = false;
				} else {
					this.mIsLongVol = false;
					handleVolKeyUp();
				}
				return false;
			}
			this.mIsLongVol = false;
			this.mHandler.postDelayed(this.mLongPressRunnable, this.mLongPressTime);
			return true;
		}

		public void startStopMusic() {
			String str = null;
			IAudioService audioService = getAudioService();
			if (audioService != null) {
				try {
					str = audioService.getCurrentAudioFocusPackageName();
				} catch (RemoteException e) {
					Log.d("Grx  ", "Casque Double Tap");
					str = null;
				}
			}
			Object obj = (str == null || !str.equals("com.spotify.music")) ? null : 1;
			if (obj == null) {
				sendMediaButton(KEYCODE_MEDIA_PLAY_PAUSE);
				return;
			}
			Intent intent = new Intent("com.spotify.mobile.android.ui.widget.PLAY");
			intent.addFlags(268435456);
			if (this.mContext != null) {
				this.mContext.sendBroadcast(intent);
			}
		}

		public void updateSkipTracksOptions() {
			LeoSetting(mContext);
			mSkipTrackEnabled = getLeoInt( mContext,"skip_tracks", 1) == 1;
			PhoneWindowManager.this.mSkipTrackEnabled = this.mSkipTrackEnabled;
			mDoubleClickPlayStop =getLeoInt(mContext,"doble_click_skip_tracks", 1) == 1;
			mLongPressTime =(long)getLeoInt( mContext,"timeout_skip_tracks", 500);
			mDoubleTapTimeOut =(long)getLeoInt(mContext,"timeout_dc_skip_tracks", 500);
		}
		public void vibrate() {
			LeoSetting(mContext);
			setLeoHaptics(mContext,getLeoInt(mContext,"skip_tracks_vibrate", 0),getLeoInt(mContext,"skip_tracks_vibrate_level", 15));
		}

	}
	PowerManager.WakeLock mBroadcastWakeLock;
	public boolean mSkipTrackEnabled;
}
