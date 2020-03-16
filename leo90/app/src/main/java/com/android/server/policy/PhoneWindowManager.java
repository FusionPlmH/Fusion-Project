package com.android.server.policy;
import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioSystem;
import android.media.IAudioService;
import android.net.Uri;
import android.os.Handler;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.os.aPowerManager;

import android.telecom.TelecomManager;


import android.util.Log;
import android.view.KeyEvent;

import android.view.WindowManagerInternal;
import com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs;
import com.fusionleo.LeoX.server.LeoConfig;


import static com.fusionleo.LeoX.server.LeoConfig.*;
import static com.fusionleo.LeoX.server.LeoGlobalAction.*;
import static com.fusionleo.LeoProvider.LeoGlobalSetting.*;
import static com.fusionleo.LeoX.server.RebootUtil.*;



public class PhoneWindowManager {
    aPowerManager mPowerManager;
    static final int PENDING_KEY_NULL = -1;
    private SkipTracks mSkipTracks;

    Context mContext;
    boolean mHomeConsumed;
    static final boolean SHOW_STARTING_ANIMATIONS = true;
    private int mDoubleTapOnHomeBehavior;
 //   private final ScreenshotRunnable mScreenshotRunnable = new ScreenshotRunnable(this, null);


    public  void takeScreenshot(int i) {

    }


    void showGlobalActionsInternal() {
        Context context=mContext;
        LeoSetting(context);
        boolean of=setLeoGlobalEnablePowerGlobalActionsStyle;
        if(getSafetyVersion().equals(SecurityCode)){
            if(EnablePowerGlobalService){
                if(of){
                    PowerMenuService(mContext,setLeoGlobalPowerGlobalActionsStyle);
                }else{
                    showGlobalActionsInternalDefault();
                }
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
    public int setLeoBixbyLongPressAction() {
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
        setLeoNavKeypressAction(key,style);
           return style;
    }
    public int setLeoBixbyClickAction() {
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
        setLeoNavKeypressAction(key,style);
        return style;
    }
    private void powerMultiPressAction(long j, boolean z, int i) {

    }


    private void setLeoPowerDoubleAction(long j, boolean z, int i)  {
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
            setLeoNavKeypressAction(key,style);
        }else{
            powerMultiPressAction(j,z,i);
        }
    }
    public void setLeoLongPressOnPowerAction()  {
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
            setLeoNavKeypressAction(key,style);
        }else{
            showGlobalActionsInternal();
        }
    }
    public void setLeoNavKeypressAction(String key,int style){
        setLeoKeypressAction(mContext,key,style);
    }
    public int setLeoBixbyCustomAction() {
        Context context = this.mContext;
        LeoSetting(context);
        return setLeoGlobalBixbyEnableAction;
    }

    volatile boolean mBackKeyHandled;
    int mLongPressOnBackBehavior;

    void LongPressOnHome(int i) {
        Context context = this.mContext;
        LeoSetting(context);
        if(setLeoGlobalHwKeysEnableAction){
            String str=setLongPressOnHomeAction;
            int style=setLeoGlobalLongPressOnHomeAction;
            setLeoNavKeypressAction(str,style);
            intVibrator(context,setLeowGlobalHwKyesVibratorEnable,setLeoGlobalHwKyesVibratorLevel);
        } else {
            handleLongPressOnHome(i);
        }
    }
        void handleLongPressOnHome(int i) {

        }
    private void backLongPress() {
        Context context = this.mContext;
        LeoSetting(context);
        if(setLeoGlobalHwKeysEnableAction){
            String str=setLongPressOnBackAction;
            int style=setLeoGlobalLongPressOnBackAction;
            setLeoNavKeypressAction(str,style);
            intVibrator(context,setLeowGlobalHwKyesVibratorEnable,setLeoGlobalHwKyesVibratorLevel);
        } else {
            backLongPressDefault();
        }
    }
    private void backLongPressDefault() {

    }
    public void handleLongPressOnRecent(int i) {
        Context context = this.mContext;
        LeoSetting(context);
        if(setLeoGlobalHwKeysEnableAction){
            String str=setLongPressOnRecentAction;
            int style=setLeoGlobalLongPressOnRecentAction;
            setLeoNavKeypressAction(str,style);
            intVibrator(context,setLeowGlobalHwKyesVibratorEnable,setLeoGlobalHwKyesVibratorLevel);
        } else {
            mSamsungPolicy.handleLongPressOnRecent(i);
        }
    }
    SamsungPhoneWindowManager mSamsungPolicy;

    public void setLeoLongPressOnBackAction()  {
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
            setLeoNavKeypressAction(key,style);
        }else{
            showGlobalActionsInternal();
        }
    }
    Vibrator mVibrator;
    public void intVibrator(Context context,int off,int strength){
        if (off== 1) {
            mVibrator = (Vibrator)context.getSystemService(Context.VIBRATOR_SERVICE);
            mVibrator.vibrate(strength);
        }
    }
    private class ActionReceiver extends BroadcastReceiver {
        private ActionReceiver() {
        }
        ActionReceiver(PhoneWindowManager phoneWindowManager, ActionReceiver actionReceiver) {
            this();


        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(mLeoGlobalService)) {
                int Style= intent.getIntExtra(rt1001foleo("bGVvX2FjdGlvbg=="), 0);
                String  stringExtra = intent.getStringExtra(rt1001foleo("bGVvX2FwcA=="));
                String processNa = intent.getStringExtra(rt1001foleo("bGVvX3Byb2Nlc3NOYW1l"));
                LeoAction(Style,stringExtra,processNa);
            }
        }
        public void LeoAction(int STYLE,String stringExtra,String processNa) {
            switch (STYLE) {
                case 88://热重启
                    startAppsActivity(mContext,stringExtra ,false);
                    return;
                case 99://热重启
                    startAppsActivity(mContext,stringExtra ,true);
                    return;
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
                    LeoComponetURL(mContext,mSearch);;
                    return;
                case 207://屏幕录像
                    LeoComponetURL(mContext,mVideoManager);
                    return;
                case 208://屏幕截图
                    takeScreenshot(1);
                    return;
                case 209://局部截图
                    takeScreenshot(2);
                    ActionToastSring(mContext,"partial_screenshot");
                    return;
                case 210://本地WIFI密码
                    LeoComponetURL(mContext,mWIFIManager);
                    return;
                case 211://Leo设置
                    LeoManagerService(mContext,mLeoManager);
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
                    CleanProcesse(mContext);
                    return;
                case 232://结束当前程序包含最近任务中
                    KillRecentAppsAll(mContext);
                    return;
                case 233://移动数据
                    toggleMobile(mContext);
                    return;
                case 234://音量控制面板
                    volumePanel(mContext);
                    return;
                case 235://清理全部通知
                    toggleclearAllNotifications(mContext);
                    return;
                case 236://微信扫一扫
                    LeoComponetURL(mContext,mAppsManager);
                    return;
                case 237://WIFI热点
                    toggleWifiAP(mContext);
                    ActionToastSring(mContext,"hotspot_state");
                    return;
                case 260://WIFI热点
                    wakeUpDevice(mContext);
                    return;
                case 710://蓝牙
                    WeChatScan(mContext);
                    return;
                case 1999://热重启
                    ClearMemory(mContext);
                    return;
                case 2001://重启UI
                    performRestartTask(mContext,rt1001foleo("bGVvLmFjdGlvbi5TeXN0ZW1VaQ=="),processNa);
                    return;
                case 2002://重新启动
                    performRestartTask(mContext,rt1001foleo("bGVvLmFjdGlvbi5yZWJvb3RTeXN0ZW0="),null);
                    return;
                case 2003://线刷
                    performRestartTask(mContext,rt1001foleo("bGVvLmFjdGlvbi5Eb3dubG9hZA=="),null);

                    return;
                case 2004://卡刷
                    performRestartTask(mContext,rt1001foleo("bGVvLmFjdGlvbi5SZWNvdmVyeQ=="),null);
                    return;
                case 2005://热重启
                    performRestartTask(mContext,rt1001foleo("bGVvLmFjdGlvbi5ob3RSZWJvb3Q="),null);
                    return;
                case 2006://关机
                    performRestartTask(mContext,rt1001foleo("bGVvLmFjdGlvbi5TeXN0ZW1TaHV0ZG93bg=="),null);

                    return;
            }

        }

    }





    public void  launchBixbyHome(){

    }

    private void setLeoWindowManager(){
        BroadcastReceiver actionBroadcastReceiver = new ActionReceiver(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(mLeoGlobalService);
        mContext.registerReceiver(actionBroadcastReceiver, intentFilter);
        mSkipTracks=new SkipTracks(mContext);
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        updateLeoPhoneWindow();
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
    public void updateLeoPhoneWindow(){
        LeoSetting(mContext);
        mSkipTracks.updateSkipTracksOptions();
        if(getSafetyVersion().equals(SecurityCode)){
            mLeoNavBarHeightLandscape =setGlobalAmberLeoNavBarHeightLandscape;
            mLeoNavBarHeightPortrait = setGlobalAmberLeoNavBarHeightPortrait;
            mLeoNavBarLandscape =  (int) (mNavBar * ((float)setGlobalAmberLeoLandscapeNavBarHeight));
            mLeoNavBarPortrait = (int) (mNavBar * ((float)setGlobalAmberLeoPortraitNavBarHeight));
        }else{
            Log.d("", "未捐赠");
        }
    }
    public boolean keyguardOn() {
        boolean z = false;
        return z;
    }
    private LeoObserver mLeoObserver;
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

    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver =mContext.getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(setNavBarHeightLandscape), false,this);
            contentResolver.registerContentObserver(getLeoUri(setNavBarHeightPortrait), false,this);
            contentResolver.registerContentObserver(getLeoUri(setHeightLandscape), false,this);
            contentResolver.registerContentObserver(getLeoUri(setHeightPortrait), false,this);
            contentResolver.registerContentObserver(getLeoUri("skip_tracks"), false,this);
            contentResolver.registerContentObserver(getLeoUri("doble_click_skip_tracks"), false,this);
            contentResolver.registerContentObserver(getLeoUri("timeout_skip_tracks"), false,this);
            contentResolver.registerContentObserver(getLeoUri("timeout_dc_skip_tracks"), false,this);
            contentResolver.registerContentObserver(getLeoUri("timeout_dc_skip_tracks"), false,this);
            contentResolver.registerContentObserver(getLeoUri("skip_tracks_vibrate"), false,this);
            contentResolver.registerContentObserver(getLeoUri("skip_tracks_vibrate_level"), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            updateLeoPhoneWindow();
        }


    }
}