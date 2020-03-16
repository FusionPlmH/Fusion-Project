package com.android.server.policy;
import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.media.AudioSystem;
import android.media.IAudioService;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.VibrationEffect;
import android.os.Vibrator;


import android.telecom.TelecomManager;


import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.IWindowManager;
import android.view.KeyEvent;

import android.view.WindowManager;
import android.view.WindowManagerInternal;
import android.view.animation.Animation;

import com.android.internal.policy.IShortcutService;
import com.android.server.utils.salt.SaltPhoneWindowManager;


import java.io.PrintWriter;

import static com.android.server.utils.salt.SaltPhoneSetting.*;
import static com.android.server.utils.salt.SaltPhoneWindowManager.EnablePowerGlobalService;
import static com.android.server.utils.salt.SaltPhoneWindowManager.PowerMenuService;
import static com.android.server.utils.salt.SaltPhoneWindowManager.mAppsManager;
import static com.android.server.utils.salt.SaltPhoneWindowManager.mLeoManager;
import static com.android.server.utils.salt.SaltPhoneWindowManager.mSearch;
import static com.android.server.utils.salt.SaltPhoneWindowManager.mVideoManager;
import static com.android.server.utils.salt.SaltPhoneWindowManager.mWIFIManager;
import static com.android.server.utils.salt.SaltReboot.performRestartTask;
import static com.android.server.utils.salt.SaltServerFrame.ActionToastSring;
import static com.android.server.utils.salt.SaltServerFrame.*;
import static com.android.server.utils.salt.SaltServerFrame.Provider.getLeoInt;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;


public class PhoneWindowManager implements WindowManagerPolicy{
    public SaltPhoneWindowManager mSaltManager;
    PowerManager mPowerManager;
    static final int PENDING_KEY_NULL = -1;
    public SkipTracks mSkipTracks;

    Context mContext;
    boolean mHomeConsumed;
    static final boolean SHOW_STARTING_ANIMATIONS = true;
    private int mDoubleTapOnHomeBehavior;
 //   private final ScreenshotRunnable mScreenshotRunnable = new ScreenshotRunnable(this, null);


    private void setLeoWindowManager(){
        LeoSetting(mContext);
        mSaltManager=new SaltPhoneWindowManager(mContext,this);
        mSkipTracks=new SkipTracks(mContext);
        updateNavBarHeight();
        mSkipTracks.updateSkipTracksOptions();
        BroadcastReceiver actionBroadcastReceiver = new SaltPhoneWindowReceiver(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(mLeoGlobalService);
        intentFilter.addAction(rt100foleo(SALT_UPDATE_NAV_GESTURE_SETTINGS));
        intentFilter.addAction(rt100foleo(SALT_UPDATE_STKP_SETTINGS));
        mContext.registerReceiver(actionBroadcastReceiver, intentFilter);
    }


    public void updateNavBarHeight(){
        if(getSafetyVersion().equals(SecurityCode)){
            mLeoNavBarHeightLandscape =setGlobalAmberLeoNavBarHeightLandscape;
            mLeoNavBarHeightPortrait = setGlobalAmberLeoNavBarHeightPortrait;
            mLeoNavBarLandscape =  (int) (mNavBar * ((float)setGlobalAmberLeoLandscapeNavBarHeight));
            mLeoNavBarPortrait = (int) (mNavBar * ((float)setGlobalAmberLeoPortraitNavBarHeight));
        }else{
            Log.d("", "未捐赠");
        }
    }
    private static final String   SALT_UPDATE_NAV_GESTURE_SETTINGS="U0FMVF9VUERBVEVfTkFWX0dFU1RVUkVfU0VUVElOR1M=";
    private static final String   SALT_UPDATE_STKP_SETTINGS="U0FMVF9VUERBVEVfU1RLUF9TRVRUSU5HUw==";
    public  class SaltPhoneWindowReceiver extends BroadcastReceiver {


     public SaltPhoneWindowReceiver(PhoneWindowManager PhoneWindowManager) {

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
         }else if (action.equals(rt100foleo(SALT_UPDATE_NAV_GESTURE_SETTINGS))) {
             LeoSetting(mContext);
             updateNavBarHeight();
             return;
         }else if (action.equals(rt100foleo(SALT_UPDATE_STKP_SETTINGS))) {
             LeoSetting(mContext);
             mSkipTracks.updateSkipTracksOptions();
             return;
         }
     }

     public void SaltPhoneAction(int STYLE,String stringExtra,String processNa) {
         Context context=mContext;
         SaltPhoneWindowManager saltPhoneWindowManager=   mSaltManager;
         saltPhoneWindowManager.getSaltPhoneWindowAction();
         Intent intent=new Intent();
         switch (STYLE) {
             case 88://热重启
                 saltPhoneWindowManager.getSaltPhoneWindowAction().startAppsActivity(stringExtra ,false);
                 return;
             case 99://热重启
                 saltPhoneWindowManager.getSaltPhoneWindowAction().startAppsActivity(stringExtra ,true);
                 return;
             case 200://返回
                 saltPhoneWindowManager.getSaltPhoneWindowAction().triggerVirtualKeypress( KeyEvent.KEYCODE_BACK);
                 return;
             case 201://HOME
                 saltPhoneWindowManager.getSaltPhoneWindowAction().triggerVirtualKeypress( KeyEvent.KEYCODE_HOME);
                 return;
             case 202://锁屏
                 saltPhoneWindowManager.getSaltPhoneWindowAction().screenOff();
                 return;
             case 203://最近任务
                 saltPhoneWindowManager.getSaltPhoneWindowAction().getRecentKeyEvent();
                 return;
             case 204://分屏
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleSPlitScreens();
                 return;
             case 205://电源
                 showGlobalActionsInternal();
                 return;
             case 206://S搜索
                 saltPhoneWindowManager.getSaltPhoneWindowAction().LeoComponetURL(mSearch);
                 return;
             case 207://屏幕录像
                 saltPhoneWindowManager.getSaltPhoneWindowAction().LeoComponetURL(mVideoManager);
                 return;
             case 208://屏幕截图
                 takeScreenshot(1);
                 return;
             case 209://局部截图
                 takeScreenshot(2);
                 ActionToastSring(context,"partial_screenshot");
                 return;
             case 210://本地WIFI密码
                 saltPhoneWindowManager.getSaltPhoneWindowAction().LeoComponetURL(mWIFIManager);
                 return;
             case 211://Leo设置
                 saltPhoneWindowManager.getSaltPhoneWindowAction().LeoManagerService(mLeoManager);
                 return;
             case 212://快速下啦面板
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleNotificationsPanel();
                 return;
             case 213://QS按钮面板
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleSettingsPanel();
                 return;
             case 214://手电
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleFlashlight();
                 return;
             case 215://WIFI切换
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleWifi(context);
                 return;
             case 216://飞行模式
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleAirplane(context);
                 return;
             case 217://悬浮球
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleFloatingModel(context);
                 return;
             case 218://户外模式
                 saltPhoneWindowManager.getSaltPhoneWindowAction().isOutdoorModel(context);
                 return;
             case 219://屏幕助手
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleMipopModel(context);
                 return;
             case 220://相机
                 saltPhoneWindowManager.getSaltPhoneWindowAction().openCamera(context);
                 return;
             case 221://屏幕沉浸
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleExpandedDesktop(context,"policy_control");
                 return;
             case 222://下一曲
                 saltPhoneWindowManager.getSaltPhoneWindowAction().NextTrack();
                 return;
             case 223://上一曲

                 saltPhoneWindowManager.getSaltPhoneWindowAction().PreviousPiece();
                 return;
             case 224://播放暂停
                 saltPhoneWindowManager.getSaltPhoneWindowAction().playPause();
                 return;
             case 225://声音模式
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleRingerModes(context);
                 return;
             case 226://无声模式切换声音模式
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleRingerSoundModes(context);
                 return;
             case 227://震动模式切换声音模式
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleRingerVIBRATESoundModes(context);
                 return;
             case 228://bixby
                 launchBixbyHome();
                 return;
             case 229://bixby语音
                 saltPhoneWindowManager.getSaltPhoneWindowAction().launchBixbyVoice(context);
                 return;
             case 230://切换到上一个打开的程序
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleLastApp(context);
                 return;
             case 231://清理进程
                 saltPhoneWindowManager.getSaltPhoneWindowAction().CleanProcesse();
                 return;
             case 232://结束当前程序包含最近任务中
                 saltPhoneWindowManager.getSaltPhoneWindowAction().KillRecentAppsAll(context);
                 return;
             case 233://移动数据
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleMobile();
                 return;
             case 234://音量控制面板
                 saltPhoneWindowManager.getSaltPhoneWindowAction().volumePanel(context);
                 return;
             case 235://清理全部通知
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleclearAllNotifications(context);
                 return;
             case 236://微信扫一扫
                 saltPhoneWindowManager.getSaltPhoneWindowAction().LeoComponetURL(mAppsManager);
                 return;
             case 237://WIFI热点
                 saltPhoneWindowManager.getSaltPhoneWindowAction().toggleWifiAP(context);
                 ActionToastSring(context,"hotspot_state");
                 return;
             case 238://时间日设置
                 saltPhoneWindowManager.getSaltPhoneWindowAction().LeoSysUiShortcut(intent,0);
                 return;
             case 239://闹钟列表
                 saltPhoneWindowManager.getSaltPhoneWindowAction().LeoSysUiShortcut(intent,1);
                 return;
             case 240://设置闹钟
                 saltPhoneWindowManager.getSaltPhoneWindowAction().LeoSysUiShortcut(intent,2);
                 return;
             case 241://定时器
                 saltPhoneWindowManager.getSaltPhoneWindowAction().LeoSysUiShortcut(intent,3);
                 return;
             case 242://日历
                 saltPhoneWindowManager.getSaltPhoneWindowAction().LeoSysUiShortcut(intent,4);
                 return;
             case 260://WIFI热点
                 saltPhoneWindowManager.getSaltPhoneWindowAction().wakeUpDevice();
                 return;
             case 710://蓝牙
                 saltPhoneWindowManager.getSaltPhoneWindowAction().WeChatScan(context);
                 return;
             case 1999://热重启
                 saltPhoneWindowManager.getSaltPhoneWindowAction().ClearMemory(context);
                 return;
             case 2001://重启UI
                 performRestartTask(context,rt100foleo("bGVvLmFjdGlvbi5TeXN0ZW1VaQ=="),processNa);
                 return;
             case 2002://重新启动
                 performRestartTask(context,rt100foleo("bGVvLmFjdGlvbi5yZWJvb3RTeXN0ZW0="),null);
                 return;
             case 2003://线刷
                 performRestartTask(context,rt100foleo("bGVvLmFjdGlvbi5Eb3dubG9hZA=="),null);

                 return;
             case 2004://卡刷
                 performRestartTask(context,rt100foleo("bGVvLmFjdGlvbi5SZWNvdmVyeQ=="),null);
                 return;
             case 2005://热重启
                 performRestartTask(context,rt100foleo("bGVvLmFjdGlvbi5ob3RSZWJvb3Q="),null);
                 return;
             case 2006://关机
                 performRestartTask(context,rt100foleo("bGVvLmFjdGlvbi5TeXN0ZW1TaHV0ZG93bg=="),null);
                 return;
         }

     }
 }

    public  void takeScreenshot(int i) {

    }


    public void showGlobalActionsInternal() {
        Context context=mContext;
        LeoSetting(context);
        boolean of=setLeoGlobalEnablePowerGlobalActionsStyle;
        if(getSafetyVersion().equals(SecurityCode) || EnablePowerGlobalService){
            if(of){
                PowerMenuService(mContext);
            }else{
                showGlobalActionsInternalDefault();
            }
        }else{
            showGlobalActionsInternalDefault();
        }
    }
    void showGlobalActionsInternalDefault() {
        showGlobalActionsInternal(false);
    }


    void showGlobalActionsInternal(boolean z) {

    }

    boolean mWindowManagerDrawComplete;
    WindowManagerFuncs mWindowManagerFuncs;
    WindowManagerInternal mWindowManagerInternal;




    private void toggleRecentApps() {

    }
    public int setLeoBixbyClickAction(){
        return mSaltManager.getLeoBixbyAction();
    }
    public int setLeoBixbyLongPressAction(){
        return mSaltManager.getSaltBixbyLongPressAction();
    }

    public int setLeoBixbyCustomAction() {
        Context context = this.mContext;
        LeoSetting(context);
        return setLeoGlobalBixbyEnableAction;
    }
    private void powerMultiPressAction(long j, boolean z, int i) {

    }


    private void setLeoPowerDoubleAction(long j, boolean z, int i)  {
        LeoSetting(mContext);
        if(setLeoGlobalPowerEnableAction){
            mSaltManager.getSaltPowerDoubleAction();
        }else{
            powerMultiPressAction(j,z,i);
        }
    }
    public void setLeoLongPressOnPowerAction()  {
        LeoSetting(mContext);
        if(setLeoGlobalPowerEnableAction){
            mSaltManager.getSaltPowerLongAction();
        }else{
            showGlobalActionsInternal();
        }
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
    void LongPressOnHome(int i) {
        Context context = this.mContext;
        LeoSetting(context);
        if(setLeoGlobalHwKeysEnableAction){
            mSaltManager.getSaltLongHomeAction();
        } else {
            handleLongPressOnHome(i);
        }
    }
    public void handleLongPressOnRecent(int i) {
        Context context = this.mContext;
        LeoSetting(context);
        if(setLeoGlobalHwKeysEnableAction){
            mSaltManager.getSaltLongRecentAction();
        } else {
            mSamsungPolicy.handleLongPressOnRecent(i);
        }
    }
    volatile boolean mBackKeyHandled;
    int mLongPressOnBackBehavior;


        void handleLongPressOnHome(int i) {

        }

    private void backLongPressDefault() {

    }

    SamsungPhoneWindowManager mSamsungPolicy;


    Vibrator mVibrator;
    public void intVibrator(Context context,int off,int strength){
        if (off== 1) {
            mVibrator = (Vibrator)context.getSystemService(Context.VIBRATOR_SERVICE);
            mVibrator.vibrate(strength);
        }
    }




    public void  launchBixbyHome(){

    }


    @SuppressLint("NewApi")
    public TelecomManager getTelecommService() {
        return (TelecomManager) this.mContext.getSystemService("telecom");
    }
    public void launchHomeFromHotKey() {

    }

    public void handlecancelPreloadRecentApps() {
        //cancelPreloadRecentApps();
    }

    boolean isKeyguardOn = false;


    @Override
    public void registerShortcutKey(long shortcutCode, IShortcutService shortcutKeyReceiver) throws RemoteException {

    }

    @Override
    public void onKeyguardOccludedChangedLw(boolean occluded) {

    }

    @Override
    public void init(Context context, IWindowManager windowManager, WindowManagerFuncs windowManagerFuncs) {

    }

    @Override
    public boolean isDefaultOrientationForced() {
        return false;
    }

    @Override
    public void setInitialDisplaySize(Display display, int width, int height, int density) {

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
    public void adjustWindowParamsLw(WindowState win, WindowManager.LayoutParams attrs, boolean hasStatusBarServicePermission) {

    }

    @Override
    public void adjustConfigurationLw(Configuration config, int keyboardPresence, int navigationPresence) {

    }

    @Override
    public int getMaxWallpaperLayer() {
        return 0;
    }

    @Override
    public int getNonDecorDisplayWidth(int fullWidth, int fullHeight, int rotation, int uiMode, int displayId, DisplayCutout displayCutout) {
        return 0;
    }

    @Override
    public int getNonDecorDisplayHeight(int fullWidth, int fullHeight, int rotation, int uiMode, int displayId, DisplayCutout displayCutout) {
        return 0;
    }

    @Override
    public int getConfigDisplayWidth(int fullWidth, int fullHeight, int rotation, int uiMode, int displayId, DisplayCutout displayCutout) {
        return 0;
    }

    @Override
    public int getConfigDisplayHeight(int fullWidth, int fullHeight, int rotation, int uiMode, int displayId, DisplayCutout displayCutout) {
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
    public int prepareAddWindowLw(WindowState win, WindowManager.LayoutParams attrs) {
        return 0;
    }

    @Override
    public void removeWindowLw(WindowState win) {

    }

    @Override
    public int selectAnimationLw(WindowState win, int transit) {
        return 0;
    }

    @Override
    public void selectRotationAnimationLw(int[] anim) {

    }

    @Override
    public boolean validateRotationAnimationLw(int exitAnimId, int enterAnimId, boolean forceDefault) {
        return false;
    }

    @Override
    public Animation createHiddenByKeyguardExit(boolean onWallpaper, boolean goingToNotificationShade) {
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
    public int interceptMotionBeforeQueueingNonInteractive(long whenNanos, int policyFlags) {
        return 0;
    }

    public long interceptKeyBeforeDispatching(WindowManagerPolicy.WindowState windowState, KeyEvent keyEvent, int i) {
        String str;
        StringBuilder append;
        String stringBuilder;
        String keyCodeToString;
        isKeyguardOn = keyguardOn();

        return 0;
    }

    @Override
    public KeyEvent dispatchUnhandledKey(WindowState win, KeyEvent event, int policyFlags) {
        return null;
    }

    @Override
    public int getSystemDecorLayerLw() {
        return 0;
    }

    @Override
    public void beginPostLayoutPolicyLw(int displayWidth, int displayHeight) {

    }

    @Override
    public void applyPostLayoutPolicyLw(WindowState win, WindowManager.LayoutParams attrs, WindowState attached, WindowState imeTarget) {

    }

    @Override
    public int finishPostLayoutPolicyLw() {
        return 0;
    }

    @Override
    public boolean allowAppAnimationsLw() {
        return false;
    }

    @Override
    public int focusChangedLw(WindowState lastFocus, WindowState newFocus) {
        return 0;
    }

    @Override
    public void startedWakingUp() {

    }

    @Override
    public void finishedWakingUp() {

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
    public boolean isShowingDreamLw() {
        return false;
    }

    @Override
    public void setRotationLw(int rotation) {

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
    public boolean performHapticFeedbackLw(WindowState win, int effectId, boolean always) {
        return false;
    }

    @Override
    public void keepScreenOnStartedLw() {

    }

    @Override
    public void keepScreenOnStoppedLw() {

    }

    @Override
    public int getUserRotationMode() {
        return 0;
    }

    @Override
    public int adjustSystemUiVisibilityLw(int visibility) {
        return 0;
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
    public void setLastInputMethodWindowLw(WindowState ime, WindowState target) {

    }

    @Override
    public void showRecentApps() {

    }

    @Override
    public void showGlobalActions() {

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
    public void getStableInsetsLw(int displayRotation, int displayWidth, int displayHeight, DisplayCutout displayCutout, Rect outInsets) {

    }

    @Override
    public boolean isNavBarForcedShownLw(WindowState win) {
        return false;
    }

    @Override
    public int getNavBarPosition() {
        return 0;
    }

    @Override
    public void getNonDecorInsetsLw(int displayRotation, int displayWidth, int displayHeight, DisplayCutout displayCutout, Rect outInsets) {

    }

    @Override
    public boolean isDockSideAllowed(int dockSide, int originalDockSide, int displayWidth, int displayHeight, int displayRotation) {
        return false;
    }

    @Override
    public void onConfigurationChanged() {

    }

    @Override
    public boolean shouldRotateSeamlessly(int oldRotation, int newRotation) {
        return false;
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
    public void onLockTaskStateChangedLw(int lockTaskState) {

    }

    @Override
    public boolean setAodShowing(boolean aodShowing) {
        return false;
    }

    @Override
    public boolean isGestureButtonEnabled() {
        return false;
    }

    @Override
    public boolean isGestureButtonRegion(int i, int i2) {
        return false;
    }

    @Override
    public void screenRecordAction(int mode) {

    }


    public boolean keyguardOn() {
        boolean z = false;
        return z;
    }
    public  boolean mLeoNavBarHeightLandscape;
    public  boolean mLeoNavBarHeightPortrait;
    public  int mLeoNavBarLandscape;
    public int  mLeoNavBarPortrait;
    public boolean mSkipTrackEnabled;

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

        VibrationEffect mVibrationEffect;
        Vibrator mVibrator;
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
            this.mVibrator = (Vibrator) this.mContext.getSystemService("vibrator");
            this.mVibrationEffect = VibrationEffect.createOneShot(50, -1);

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
    public void dispatchMediaKeyWithWakeLockToAudioService(KeyEvent keyEvent) {

    }


}