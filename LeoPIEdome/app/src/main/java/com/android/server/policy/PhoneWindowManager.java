package com.android.server.policy;


import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;

import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.ContentObserver;
import android.hardware.inputs.AInputManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IPowerManager;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.Vibrator;
import android.os.aPowerManager;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.util.Log;
import android.view.IWindowManager;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.WindowManagerInternal;
import com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs;
import com.android.server.statusbar.StatusBarManagerInternal;

import static com.android.fusionleo.global.LeoGlobalSetting.LeoGlobalSetting;

import static com.android.fusionleo.global.LeoGlobalSetting.*;

import static com.android.fusionleo.global.LeoGlobalUtils.*;
import static com.android.fusionleo.global.LeoGlobalValues.getKernel;
import static com.android.server.utils.leoglobal.LeoGlobalAction.*;
import static com.android.server.utils.leoglobal.LeoGlobalAction.LEO_ACTION_SERVICE;
import static com.android.server.utils.leoglobal.LeoGlobalSetting.mAmberLeoBixbyClickStyle;
import static com.android.server.utils.leoglobal.LeoGlobalSetting.mAmberLeoHomeDoubleAction;


public class PhoneWindowManager {
    aPowerManager mPowerManager;


    Context mContext;
    boolean mHomeConsumed;
    static final boolean SHOW_STARTING_ANIMATIONS = true;
    private int mDoubleTapOnHomeBehavior;
    private final ScreenshotRunnable mScreenshotRunnable = new ScreenshotRunnable(this, null);


    public  void takeScreenshot(int i) {
        mScreenshotChordVolumeDownKeyConsumed = true;
        mScreenshotRunnable.setScreenshotType(i);
        mHandler.post(mScreenshotRunnable);
    }

    void showGlobalActionsInternal() {

    }
    public void getLeoActionReceived(String str) {
        if (str == null) {
            return;
        }
        if (str.equals(HITOMILEO_ACTION_LOCK)) {
            //switchScreenOff(mContext);
        } else if (str.equals(HITOMILEO_ACTION_HOME)) {
          //  sendHomeKeyEvent();
        }else if (str.equals(HITOMILEO_ACTION_BACK)) {
            //sendKeyEvent(4);
        }else if (str.equals(HITOMILEO_ACTION_SOUND_PLUS)) {
           // sendKeyEvent(24);
        }else if (str.equals(HITOMILEO_ACTION_SOUND_MINUS)) {
           // sendKeyEvent(25);
        }else if (str.equals(HITOMILEO_ACTION_MOBEDATA)) {
          //  toggleMobile(mContext);
        }else if (str.equals(HITOMILEO_ACTION_PART_SCREENSSHOT)) {
            takeScreenshot(2);
        }else if (str.equals(HITOMILEO_ACTION_FINDER)) {
            LeoComponetURL(mContext,"com.samsung.android.app.galaxyfinder/com.samsung.android.app.galaxyfinder.GalaxyFinderActivity");
        }else if (str.equals(HITOMILEO_ACTION_WIFI_CODE)) {
            LeoComponetURL(mContext,"com.fusionleo.salt/com.fusionleo.salt.activity.WifiPasswordActivity");
        }else if (str.equals(HITOMILEO_ACTION_TASK)) {
           // getRecentKeyEvent();
        }else if (str.equals(HITOMILEO_ACTION_CAMERA)) {
           // openCamera(mContext);
        }else if (str.equals(HITOMILEO_ACTION_NOTIFICATION)) {
         //   expandNotification();
        }else if (str.equals(HITOMILEO_ACTION_SCREENSSHOT)) {
          //  takeScreenshot(1);
        } else if (str.equals(HITOMILEO_ACTION_CLEARMEMORY)) {
          //  ClearMemory(mContext);
        }else if (str.equals(HITOMILEO_ACTION_KILLAPP)) {
         //   KillForegroundApp(mContext);
        }else if (str.equals(HITOMILEO_ACTION_SCREENRECORD)) {
            LeoComponetURL(mContext,"com.sec.app.screenrecorder/com.sec.app.screenrecorder.activity.LauncherActivity");
        }else if (str.equals(HITOMILEO_ACTION_MWDIA_DOWN)) {
            NextTrack();
        }else if (str.equals(HITOMILEO_ACTION_MWDIA_UP)) {
            PreviousPiece();
        }else if (str.equals(HITOMILEO_ACTION_MADIA_PLAY)) {
            playPause();
        }else if (str.equals(HITOMILEO_ACTION_VIBRATE)) {
           // setAudioMode(mContext);
        }else if (str.equals(HITOMILEO_ACTION_WIFI)) {
            //toggleWifi(mContext);
        }else if (str.equals(HITOMILEO_ACTION_APP_GLOBALACTIONS)) {
            showGlobalActionsInternal();
        }else if (str.equals(HITOMILEO_ACTION_AIRPLANE)) {
            //toggleAirplane(mContext);
        }else if (str.equals(HITOMILEO_ACTION_BIXBY_HOME)) {
            launchBixbyHome();
        }else if (str.equals(HITOMILEO_ACTION_BIXBY_VOICE)) {
         //   launchBixbyVoice(mContext);
        }else if (str.equals(HITOMILEO_ACTION_LAST_APP)) {
          //  toggleLastApp(mContext);
        }else if (str.equals(HITOMILEO_ACTION_WAKEUP)) {
            mPowerManager.wakeUp(SystemClock.uptimeMillis());
        }else if (str.equals(HITOMILEO_ACTION_LEOAPPNAEM)) {
            LeoComponetURL(mContext,"com.fusionleo.salt/com.fusionleo.salt.MainActivity");
        }else if (str.equals(HITOMILEO_ACTION_RECOBERY)) {
            togglePowerManager(mContext,2);
        }else if (str.equals(HITOMILEO_ACTION_DOWNLOAD)) {
            togglePowerManager(mContext,3);
        }
        else if (str.equals(HITOMILEO_ACTION_REBOOT)) {
            togglePowerManager(mContext,1);
        }
        else if (str.equals(HITOMILEO_ACTION_SHUTDOWN)) {
            togglePowerManager(mContext,0);
        }else if (str.equals(HITOMILEO_ACTION_QUICK_BOOT)) {
            togglePowerManager(mContext,4);
        }else if (str.equals(HITOMILEO_ACTION_OUTDOOR)) {
            isOutdoorModel(mContext);
        }else if (str.equals(HITOMILEO_ACTION_SPLITSCTEEN)) {
            splitScreen();
        }else if (str.equals(HITOMILEO_ACTION_MIPOP)) {
          //  isMiPopModel(mContext);
        }else if (str.equals(HITOMILEO_ACTION_FLOATBLL)) {
           // isFloatingModel(mContext);
        }else if (str.equals(HITOMILEO_ACTION_TODAY)) {
           // getToday(mContext);
        }else if (str.equals(HITOMILEO_ACTION_BLUE)) {
            //toggleBluetooth();
        }
    }
    private boolean mLeoEnableGesture = false;
    private LeoHitomiGesturesListener mLeoHitomiGestures;

    private void enableSwipeThreeFingerGesture(boolean enable){
        if (enable) {
            if (mLeoEnableGesture) return;
            mLeoEnableGesture = true;
            mWindowManagerFuncs.registerPointerEventListener(mLeoHitomiGestures);
        } else {
            if (!mLeoEnableGesture) return;
            mLeoEnableGesture = false;
            mWindowManagerFuncs.unregisterPointerEventListener(mLeoHitomiGestures);
        }
    }


    public void  initLeoGesturesListener(){
        mLeoHitomiGestures = new LeoHitomiGesturesListener(mContext, () -> {
            LeoGlobalSetting(mContext);
            int style=setGlobalAmberThreeGesturesAction;
            String str=setGlobalAmberThreeGesturesActionAPP;
            if(style<=0){
                takeScreenshot(1);
            }
            LeoGlobalActiong(mContext,style, str);
            Vibrate(setGlobalAmberThreeGesturesVibration,setGlobalAmberThreeGesturesVibrationLevel);
        });

    }

    public  boolean mLeoNavBarHeightLandscape;
    public  boolean mLeoNavBarHeightPortrait;
    public  int mLeoNavBarLandscape;
    public int  mLeoNavBarPortrait;
public void  launchBixbyHome(){

}
    public void   performTask(String action) {
      
    }
    private final BroadcastReceiver mLeoServiceReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (LEO_ACTION_SERVICE.equals(intent.getAction())) {
                performTask(intent.getStringExtra(LEO_ACTION_GLOBAL));
                return;
            }
        }
    };






    private boolean mScreenshotChordVolumeDownKeyConsumed;
    Handler mHandler;



    private class ScreenshotRunnable implements Runnable {

        public ScreenshotRunnable(PhoneWindowManager phoneWindowManager, Object o) {
        }

        @Override
        public void run() {

        }
        public void setScreenshotType(int i) {

        }

    }
    public void init(Context context, IWindowManager iWindowManager, WindowManagerPolicy.WindowManagerFuncs windowManagerFuncs) {
        this.mContext = context;

        LeoService(context);
    }

public  void LeoService(Context context){
    IntentFilter intentFilter = new IntentFilter();
    intentFilter.addAction(LEO_ACTION_SERVICE);
    context.registerReceiver(this.mLeoServiceReceiver, intentFilter);

}
    Vibrator mVibrator;
    public void Vibrate(int off,int style) {
        if (off== 1) {
          mVibrator = (Vibrator) mContext.getSystemService(Context.VIBRATOR_SERVICE);
          mVibrator.vibrate(style);
        }
    }
    private void handleLongPressOnRecent() {
        Context context = this.mContext;
        LeoGlobalSetting(context);
        int style;
        String str=setGlobalAmberLeoRecentLongpressActionSting;
        if(setGlobalAmberLeoNavNavActionEnabled==1){
            style=setGlobalAmberLeoRecentLongpressAction;
        } else {
            style=129;
        }
        LeoGlobalActiong(context,style, str);
        Vibrate(setGlobalAmberLeoNavVibration,setGlobalAmberLeoNavVibrationLevel);
    }

    public void handleLongPressOnBack() {
        Context context = this.mContext;
        LeoGlobalSetting(context);
        int style;
        String str=setGlobalAmberLeoBackLongpressActionSting;
        if(setGlobalAmberLeoNavNavActionEnabled==1){
            style=setGlobalAmberLeoBackLongpressAction;
        } else {
            style=0;
        }
        LeoGlobalActiong(context,style, str);
        Vibrate(setGlobalAmberLeoNavVibration,setGlobalAmberLeoNavVibrationLevel);
    }


    private void handleLongPressOnHome() {
        LeoGlobalSetting(mContext);
        int style;
        String str=setGlobalAmberLeoHomeLongpressActionSting;
        if(setGlobalAmberLeoNavNavActionEnabled==1){
            style=setGlobalAmberLeoHomeLongpressAction;
        } else {
            //分屏
            style=0;
        }
        LeoGlobalActiong(mContext,style, str);
        Vibrate(setGlobalAmberLeoNavVibration,setGlobalAmberLeoNavVibrationLevel);
    }

    public void splitScreen() {
        getStatusBarManagerInternal().toggleSplitScreen();

    }
  StatusBarManagerInternal getStatusBarManagerInternal() {
        StatusBarManagerInternal statusBarManagerInternal = null;

        return statusBarManagerInternal;
    }

    public void DoublePressOnPowerAction() {
        String str;
        int i;
        Context context = this.mContext;
        LeoGlobalSetting(context);
        int off=setGlobalAmberLeoTogglePowerKeysSAction;
        if (off==1) {
            if (((KeyguardManager) mContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
                str = null;
                i = setGlobalAmberLeoPowerDoubleActionLS;
            } else {
                str = setGlobalAmberLeoPowerDoubleActionAPP;
                i =setGlobalAmberPowerDoubleAction;
                if(i<=0) {
                    i=110;
                }
            }
            LeoGlobalActiong(this.mContext, i, str);
        }   else if (off==0) {
            LeoGlobalActiong(this.mContext, 110, null);
        }

    }
    void LongPressOnPower() {
        String str;
        int i;
        Context context = this.mContext;
        LeoGlobalSetting(context);
        int off=setGlobalAmberLeoTogglePowerKeysSAction;
        if (off==1) {
            if (((KeyguardManager) this.mContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
                str = null;
                i =setGlobalAmberLeoPowerLongpressActionLS;
            } else {
                str = setGlobalAmberLeoPowerLongpressActionAPP;
                i = setGlobalAmberPowerLongpressAction;
                if(i<=0) {
                    i=121;
                }
            }
            LeoGlobalActiong(this.mContext, i, str);
        } else if (off==0) {
            showGlobalActionsInternal();
        }
    }

    public int handleBixbyAction() {
        String str;
        int i;
        Context context = this.mContext;
        LeoGlobalSetting(context);
            str =setGlobalAmberLeoBixbyClickAPP;
            i = setGlobalAmberLeoBixbyClickAction;
            if(i<=0) {
                i=125;
            }
        LeoGlobalActiong(this.mContext, i, str);
        return i;
    }
    public int handleLongpressBixbyAction() {
        String str;
        int i;
        Context context = this.mContext;
        LeoGlobalSetting(context);
            str =setGlobalAmberLeoBixbyLongPressAPP;
            i = setGlobalAmberLeoBixbyLongPressAction;
            if(i<=0) {
                i=124;
            }

        LeoGlobalActiong(this.mContext, i, str);
        return i;
    }

    public int handleMyBixbyAction() {
        Context context = this.mContext;
        LeoGlobalSetting(context);
        return setGlobalAmberLeoBixbyActionToggle;
    }


    boolean mWindowManagerDrawComplete;
    WindowManagerFuncs mWindowManagerFuncs;
    WindowManagerInternal mWindowManagerInternal;




    private void toggleRecentApps() {

    }


    public void setLeoAction(int style, Intent intent) {
        String action = intent.getAction();

        if (intent == null) {
            return;
        }
        if (action.equals("android.intent.action.AbsPhoneWindowManagers")) {
            switch (style) {

                case 200://返回
                    triggerVirtualKeypress( KeyEvent.KEYCODE_BACK);
                    return;
                case 201://HOME
                    triggerVirtualKeypress( KeyEvent.KEYCODE_HOME);
                    return;
                case 202://锁屏
                    screenOff(mContext);
                    return;
                case 203://最近任务
                    getRecentKeyEvent();
                    return;
                case 204://分屏
                    toggleSPlitScreens();
                    return;
                case 205://电源
                    showGlobalActionsInternal();
                    return;
                case 206://S搜索
                    LeoComponetURL(mContext,"com.samsung.android.app.galaxyfinder/com.samsung.android.app.galaxyfinder.GalaxyFinderActivity");;
                    return;
                case 207://屏幕录像
                    LeoComponetURL(mContext,"com.sec.app.screenrecorder/com.sec.app.screenrecorder.activity.LauncherActivity");
                    return;
                case 208://屏幕截图
                    takeScreenshot(1);
                    return;
                case 209://局部截图
                    takeScreenshot(2);
                    return;
                case 210://本地WIFI密码
                    LeoComponetURL(mContext,"com.leo.global.tweaks/com.leo.global.amber.WifiPasswordActivity");
                    return;
                case 211://Leo设置
                    LeoComponetURL(mContext,"com.leo.global.tweaks/com.leo.global.tweaks.MainActivity");
                    return;
                case 212://快速下啦面板
                    toggleNotificationPanel();
                    return;
                case 213://QS按钮面板
                    toggleSettingsPanel();
                    return;
                case 214://手电
                    toggleFlashlight(mContext);
                    return;
                case 215://WIFI切换
                    toggleWifi(mContext);
                    return;
                case 216://飞行模式
                    toggleAirplane(mContext);
                    return;
                case 217://悬浮球
                    toggleFloatingModel(mContext);
                    return;
                case 218://户外模式
                    isOutdoorModel(mContext);
                    return;
                case 219://屏幕助手
                    toggleMipopModel(mContext);
                    return;
                case 220://相机
                    openCamera(mContext);
                    return;
                case 221://屏幕沉浸
                    toggleExpandedDesktop(mContext,"policy_control");
                    return;
                case 222://下一曲
                    NextTrack();
                    return;
                case 223://上一曲
                    PreviousPiece();
                    return;
                case 224://播放暂停
                    playPause();
                    return;
                case 225://声音模式
                    toggleRingerModes(mContext);
                    return;
                case 226://无声模式切换声音模式
                    toggleRingerSoundModes(mContext);
                    return;
                case 227://震动模式切换声音模式
                    toggleRingerVIBRATESoundModes(mContext);
                    return;
                case 228://bixby
                    launchBixbyHome();
                    return;
                case 229://bixby语音
                    launchBixbyVoice(mContext);
                    return;
                case 230://切换到上一个打开的程序
                    toggleLastApp(mContext);
                    return;
                case 231://清理进程
                    ClearMemory(mContext);
                    return;
                case 232://结束当前程序
                    KillCurrentApps(mContext);
                    return;
                case 233://结束当前程序包含最近任务中
                    KillRecentAppsAll(mContext);
                    return;
                case 234://移动数据
                    toggleMobile(mContext);
                    return;
                case 235://音量控制面板
                    volumePanel(mContext);
                    return;
                case 236://一年中的今天
                    getToday(mContext);
                    return;
                case 500://关机
                    togglePowerManager(mContext,0);
                    return;
                case 501://重启
                    togglePowerManager(mContext,1);
                    return;
                case 502://卡刷
                    togglePowerManager(mContext,2);
                    return;
                case 503://先刷
                    togglePowerManager(mContext,3);
                    return;
                case 504://热重启
                    togglePowerManager(mContext,4);
                    return;
            }
        }



    }

  public String mLeoActionApps;
    public int mLeoActionStyle;
    private class LeoActionReceiver extends BroadcastReceiver {

        public LeoActionReceiver(PhoneWindowManager phoneWindowManager, Object o) {
        }


        public void onReceive(Context context, Intent intent) {

            String action = intent.getAction();
            if (intent == null) {
                return;
            }
            if (action.equals(LEO_ACTION_SERVICE)) {
                int intExtra = intent.getIntExtra("GlobalAction", 999);
                switch (intExtra) {

                    case 200://返回
                        triggerVirtualKeypress( KeyEvent.KEYCODE_BACK);
                        return;
                    case 201://HOME
                        triggerVirtualKeypress( KeyEvent.KEYCODE_HOME);
                        return;
                    case 202://锁屏
                        screenOff(mContext);
                        return;
                    case 203://最近任务
                        getRecentKeyEvent();
                        return;
                    case 204://分屏
                        toggleSPlitScreens();
                        return;
                    case 205://电源
                        showGlobalActionsInternal();
                        return;
                    case 206://S搜索
                        LeoComponetURL(mContext,"com.samsung.android.app.galaxyfinder/com.samsung.android.app.galaxyfinder.GalaxyFinderActivity");;
                        return;
                    case 207://屏幕录像
                        LeoComponetURL(mContext,"com.sec.app.screenrecorder/com.sec.app.screenrecorder.activity.LauncherActivity");
                        return;
                    case 208://屏幕截图
                        takeScreenshot(1);
                        return;
                    case 209://局部截图
                        takeScreenshot(2);
                        return;
                    case 210://本地WIFI密码
                        LeoComponetURL(mContext,"com.leo.global.tweaks/com.leo.global.amber.WifiPasswordActivity");
                        return;
                    case 211://Leo设置
                        LeoComponetURL(mContext,"com.leo.global.tweaks/com.leo.global.tweaks.MainActivity");
                        return;
                    case 212://快速下啦面板
                        toggleNotificationPanel();
                        return;
                    case 213://QS按钮面板
                        toggleSettingsPanel();
                        return;
                    case 214://手电
                        toggleFlashlight(mContext);
                        return;
                    case 215://WIFI切换
                        toggleWifi(mContext);
                        return;
                    case 216://飞行模式
                        toggleAirplane(mContext);
                        return;
                    case 217://悬浮球
                        toggleFloatingModel(mContext);
                        return;
                    case 218://户外模式
                        isOutdoorModel(mContext);
                        return;
                    case 219://屏幕助手
                        toggleMipopModel(mContext);
                        return;
                    case 220://相机
                        openCamera(mContext);
                        return;
                    case 221://屏幕沉浸
                        toggleExpandedDesktop(mContext,"policy_control");
                        return;
                    case 222://下一曲
                        NextTrack();
                        return;
                    case 223://上一曲
                        PreviousPiece();
                        return;
                    case 224://播放暂停
                        playPause();
                        return;
                    case 225://声音模式
                        toggleRingerModes(mContext);
                        return;
                    case 226://无声模式切换声音模式
                        toggleRingerSoundModes(mContext);
                        return;
                    case 227://震动模式切换声音模式
                        toggleRingerVIBRATESoundModes(mContext);
                        return;
                    case 228://bixby
                        launchBixbyHome();
                        return;
                    case 229://bixby语音
                        launchBixbyVoice(mContext);
                        return;
                    case 230://切换到上一个打开的程序
                        toggleLastApp(mContext);
                        return;
                    case 231://清理进程
                        ClearMemory(mContext);
                        return;
                    case 232://结束当前程序
                        KillCurrentApps(mContext);
                        return;
                    case 233://结束当前程序包含最近任务中
                        KillRecentAppsAll(mContext);
                        return;
                    case 234://移动数据
                        toggleMobile(mContext);
                        return;
                    case 235://音量控制面板
                        volumePanel(mContext);
                        return;
                    case 236://一年中的今天
                        getToday(mContext);
                        return;
                    case 500://关机
                        togglePowerManager(mContext,0);
                        return;
                    case 501://重启
                        togglePowerManager(mContext,1);
                        return;
                    case 502://卡刷
                        togglePowerManager(mContext,2);
                        return;
                    case 503://先刷
                        togglePowerManager(mContext,3);
                        return;
                    case 504://热重启
                        togglePowerManager(mContext,4);
                        return;
                }
                String stringExtra = intent.getStringExtra("GlobalApps");
                if (stringExtra != null) {
                }
                String stringExtraActivity = intent.getStringExtra("GlobalAppsActivity");
                launchActivity(mContext,stringExtra,stringExtraActivity);
                }

            }

    }
    private LeoObserver mLeoObserver;
    private void setLeoWindowManager(){
        BroadcastReceiver actionBroadcastReceiver = new LeoActionReceiver(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(LEO_ACTION_SERVICE);
        mContext.registerReceiver(actionBroadcastReceiver, intentFilter);
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        initLeoGesturesListener();
        LeoGlobalSetting(mContext);
        if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
            boolean threeFingerGesture =setGlobalAmberThreeGesturesEnabled;
            enableSwipeThreeFingerGesture(threeFingerGesture);
            mLeoNavBarHeightLandscape =setGlobalAmberLeoNavBarHeightLandscape;
            mLeoNavBarHeightPortrait = setGlobalAmberLeoNavBarHeightPortrait;
            mLeoNavBarLandscape =  (int) (mNavBar * ((float)setGlobalAmberLeoLandscapeNavBarHeight));
            mLeoNavBarPortrait = (int) (mNavBar * ((float)setGlobalAmberLeoPortraitNavBarHeight));
            return;
        }
    }
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver = mContext.getContentResolver();


        }

        @Override
        public void onChange(boolean selfChange) {

        }
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



    public long interceptKeyBeforeDispatching(WindowManagerPolicy.WindowState windowState, KeyEvent keyEvent, int i) {
        String str;
        StringBuilder append;
        String stringBuilder;
        String keyCodeToString;
        isKeyguardOn = keyguardOn();

        return 0;
    }
    public boolean keyguardOn() {
        boolean z = false;

        return z;
    }

    public void handleBixbyDoublePress() {
        //remoteExecuteAction(this.db_bixby_action, "soul_bixby_dp");
    }

    public void handleBixbyLongPress() {
      //  remoteExecuteAction(this.lp_bixby_action, "soul_bixby_lp");
    }

    public void handleBixbyShortPress() {
        int Style=mAmberLeoBixbyClickStyle;

        if (Style== 666) {
            Intent intent = new Intent();
            intent.setAction(LEO_ACTION_SERVICE);
            intent.putExtra("GlobalAction", Style);
            //intent.putExtra("GlobalApps", GetCode2);
            mContext.sendBroadcast(intent);
            return;
        }


    }
    public void handleHomeDoublePress() {
        if (this.isKeyguardOn) {
            //remoteExecuteAction(this.ls_db_home_action, "soul_home_ls_db");
        } else {
           // remoteExecuteAction(this.db_home_action, "soul_home_db");
        }
    }

    public void handleHomeLongPress() {
        if (this.isKeyguardOn) {
            //remoteExecuteAction(this.ls_lp_home_action, "soul_home_ls_lp");
        } else {
          //  remoteExecuteAction(this.lp_home_action, "soul_home_lp");
        }
        this.mHomeConsumed = true;
    }

    public void handleBackLongPress() {
        if (this.isKeyguardOn) {
       //     remoteExecuteAction(this.ls_lp_back_action, "soul_back_ls_lp");
        } else {
         //   remoteExecuteAction(this.lp_back_action, "soul_back_lp");
        }
    }
    public void handleRecentLongPress() {
        if (this.isKeyguardOn) {
           // remoteExecuteAction(this.ls_lp_recent_action, "soul_recent_ls_lp");
        } else {
           // remoteExecuteAction(this.lp_recent_action, "soul_recent_lp");
        }
    }
    public void handleRecentShortPress() {
        if (isKeyguardOn) {
            //remoteExecuteAction(ls_sp_recent_action, "soul_recent_ls_sp");
        } else {
           // remoteExecuteAction(this.sp_recent_action, "soul_recent_sp");
        }
    }


}