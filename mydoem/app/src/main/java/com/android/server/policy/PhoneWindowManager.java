package com.android.server.policy;


import android.app.KeyguardManager;
import android.app.SearchManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.IPowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.Vibrator;
import android.os.aPowerManager;

import android.text.TextUtils;
import android.util.Log;
import android.view.IWindowManager;
import android.view.WindowManagerPolicy;
import android.widget.Toast;

import com.android.server.LocalServices;
import com.android.server.statusbar.StatusBarManagerInternal;
import com.os.leo.utils.LeoUserSettings;
import com.os.leo.utils.LeoUserString;

import static com.android.server.policy.LeoWindowAction.isMiPopModel;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserString.*;
import static com.os.leo.utils.LeoUserValues.AUTHOR;


import static com.os.leo.utils.LeoUtils.mNavBar;
import static com.android.server.policy.LeoWindowAction.ClearMemory;
import static com.android.server.policy.LeoWindowAction.KillForegroundApp;
import static com.android.server.policy.LeoWindowAction.ScreenRecord;
import static com.android.server.policy.LeoWindowAction.defaultkey;
import static com.android.server.policy.LeoWindowAction.expandNotification;
import static com.android.server.policy.LeoWindowAction.isOutdoorModel;
import static com.android.server.policy.LeoWindowAction.launchBixbyVoice;
import static com.android.server.policy.LeoWindowAction.openCamera;
import static com.android.server.policy.LeoWindowAction.sendHomeKeyEvent;
import static com.android.server.policy.LeoWindowAction.sendKeyEvent;
import static com.android.server.policy.LeoWindowAction.sendMediaKeyEvent;
import static com.android.server.policy.LeoWindowAction.setAudioMode;
import static com.android.server.policy.LeoWindowAction.startSFinderActivity;
import static com.android.server.policy.LeoWindowAction.startWActivity;
import static com.android.server.policy.LeoWindowAction.switchScreenOff;
import static com.android.server.policy.LeoWindowAction.toggleAirplane;
import static com.android.server.policy.LeoWindowAction.toggleBlueTooth;
import static com.android.server.policy.LeoWindowAction.toggleLastApp;
import static com.android.server.policy.LeoWindowAction.toggleMobile;
import static com.android.server.policy.LeoWindowAction.toggleWifi;


public class PhoneWindowManager {

    private boolean haveEnableGesture = false;
    Context mContext;
    boolean mHomeConsumed;
    static final boolean SHOW_STARTING_ANIMATIONS = true;
    private int mDoubleTapOnHomeBehavior;
    public void getLeoActionReceived(String str) {
        if (str == null) {
            return;
        }
        if (str.equals(LEO_ACTION_SCREENOFF)) {
            switchScreenOff(mContext);
        } else if (str.equals(LEO_ACTION_HOME)) {
            sendHomeKeyEvent();
        }else if (str.equals(LEO_ACTION_BACK)) {
            sendKeyEvent(4);
        }else if (str.equals(LEO_ACTION_SOUND_A)) {
            sendKeyEvent(24);
        }else if (str.equals(LEO_ACTION_SOUND_B)) {
            sendKeyEvent(25);
        }else if (str.equals(LEO_ACTION_MOBILEDATA)) {
            toggleMobile(mContext);
        }else if (str.equals(LEO_ACTION_MEUN)) {
            takeScreenshot(2);
        }else if (str.equals(LEO_ACTION_SFINDER)) {
            startSFinderActivity(mContext);
        }else if (str.equals(LEO_ACTION_WIFI_CODE)) {
            startWActivity(mContext);
        }else if (str.equals(LEO_ACTION_RECENT_TASK)) {
            toggleRecentApps();
        }else if (str.equals(LEO_ACTION_CAMERA)) {
            openCamera(mContext);
        }else if (str.equals(LEO_ACTION_NOTIFICATION)) {
            expandNotification();
        }else if (str.equals(LEO_ACTION_SCREENSHOT)) {
            takeScreenshot(1);
        } else if (str.equals(LEO_ACTION_APP_CLEARMEMORY)) {
            ClearMemory(mContext);
        }else if (str.equals(LEO_ACTION_APP_KILL)) {
            KillForegroundApp(mContext);
        }else if (str.equals(LEO_ACTION_MIPOP)) {
            isMiPopModel(mContext);
        }else if (str.equals(LEO_ACTION_LEOAPP)) {
            defaultkey(mContext);
        }else if (str.equals(LEO_ACTION_SCREENRECORD)) {
            ScreenRecord(mContext);
        }else if (str.equals(LEO_ACTION_MWDIA_DOWN)) {
            sendMediaKeyEvent(mContext, 87);
        }else if (str.equals(LEO_ACTION_MWDIA_UP)) {
            sendMediaKeyEvent(mContext, 88);
        }else if (str.equals(LEO_ACTION_MADIA_PLAY)) {
            sendMediaKeyEvent(mContext, 85);
        }else if (str.equals(LEO_ACTION_VIBRATE)) {
            setAudioMode(mContext);
        }else if (str.equals(LEO_ACTION_WIFI)) {
            toggleWifi(mContext);
        }else if (str.equals(LEO_ACTION_SPlLITSCREEN)) {
            ((StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class)).toggleSplitScreen();
        }else if (str.equals(LEO_ACTION_APP_GLOBALACTIONS)) {
            showGlobalActionsInternal();
        }else if (str.equals(LEO_ACTION_AIRPLANE)) {
            toggleAirplane(mContext);
        }else if (str.equals(LEO_ACTION_BIXBY_HOME)) {
            launchBixbyHome();
        }else if (str.equals(LEO_ACTION_BIXBY_VOICE)) {
            launchBixbyVoice(mContext);
        }else if (str.equals(LEO_ACTION_LAST_APP)) {
            toggleLastApp(mContext);
        }else if (str.equals(LEO_ACTION_WAKEUP)) {
            mPowerManager.wakeUp(SystemClock.uptimeMillis());
        }else if (str.equals(LEO_ACTION_OUTDOOLMODE)) {
            isOutdoorModel(mContext);
        }else if (str.equals(LEO_ACTION_RECOBERY)) {

            try {
                IPowerManager.Stub.asInterface(ServiceManager.getService("power")).reboot(false, "recovery", false);
            } catch (RemoteException e) {
                Log.d(AUTHOR, "recovery");
            }
        }else if (str.equals(LEO_ACTION_RECOBERY)) {
            try {
                IPowerManager.Stub.asInterface(ServiceManager.getService("power")).reboot(false, "download", false);
            } catch (RemoteException e) {
                Log.d(AUTHOR, "download");
            }
        }


    }

    private final BroadcastReceiver mLeoServiceReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (LEO_ACTION_SERVICE.equals(intent.getAction())) {
                getLeoActionReceived(intent.getStringExtra(LEO_ACTION_GLOBAL));
                return;
            }
        }

    };
    private LeoWindowGesturesListener mLeoGestures;


    int mLongPressOnBackBehavior;

    private void backLongPress() {
        this.mBackKeyHandled = true;
        getLeoGlobalLongPressOnBack();

    }
    private void getLeoGlobalLongPressOnBack() {
        LeoSettings(mContext);
        int off=setLeoUesrToggleKeysSAction;
        if (off==1) {
            int back=setLeoUesrLongPressBack;
            if(back<=0) {
                Toast.makeText(mContext, "☹ "+"当前无动作", Toast.LENGTH_LONG).show();
            }
            LeoAction(mContext,back,setLeoUesrLongPressBackAPP);
            Vibrate();
        } else if (off==0) {

        }
    }
    private void getLeoGlobalLongPressOnHome() {
        LeoSettings(mContext);
        int off=setLeoUesrToggleKeysSAction;
        if (off==1) {
            int back=setLeoUesrLongPressHome;
            if(back<=0) {
                Toast.makeText(mContext, "☹ "+"当前无动作", Toast.LENGTH_LONG).show();
            }
            LeoAction(mContext,back,setLeoUesrLongPressHomeAPP);
            Vibrate();
        } else if (off==0) {

        }
    }
    private void getLeoGlobalPressOnRecent() {
        LeoSettings(mContext);
        int off=setLeoUesrToggleKeysSAction;
        if (off==1) {
            int back=setLeoUesrClickRecent;
            if(back<=0) {
                back=109;
            }
            LeoAction(mContext,back,setLeoUesrClickRecentAPP);
            Vibrate();
        } else if (off==0) {
            LeoAction(mContext,109,null);
        }

    }
    private void getLeoGlobalLongPressOnRecent() {
        LeoSettings(mContext);
        int off=setLeoUesrToggleKeysSAction;
        if (off==1) {
        int back=setLeoUesrLongPressRecent;
        if(back<=0) {
          back=124;
        }
        LeoAction(mContext,back,setLeoUesrLongPressRecentAPP);
        Vibrate();
        } else if (off==0) {
            LeoAction(mContext,124,null);
        }
    }

    public int handleBixbyAction() {
        String str;
        int i;
       LeoSettings(this.mContext);
        if (((KeyguardManager) this.mContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            str = null;
            i =getSetLeoUesrLeoBixbyActionLS;
        } else {
            str =setLeoUesrBixbyClickAPP;
            i = setLeoUesrBixbyClick;
            if(i<=0) {
                i=127;
            }

        }
       LeoAction(this.mContext, i, str);
        return i;
    }
    public int handleLongpressBixbyAction() {
        String str;
        int i;
        LeoUserSettings.LeoSettings(this.mContext);
        if (((KeyguardManager) this.mContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            str = null;
            i = LeoUserSettings.getSetLeoUesrLeoBixbyActionLS;
        } else {
            str = LeoUserSettings.setLeoUesrBixbyLongPressAPP;
            i = LeoUserSettings.setLeoUesrBixbyLongPress;
            if(i<=0) {
                i=128;
            }
        }
        LeoUserString.LeoAction(this.mContext, i, str);
        return i;
    }
    public void DoublePressOnPowerAction() {
        String str;
        int i;
        LeoUserSettings.LeoSettings(this.mContext);
        int off=setLeoUesrTogglePowerKeysSAction;
        if (off==1) {
            if (((KeyguardManager) mContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
                str = null;
                i = LeoUserSettings.setLeoUesrPowerDoubleActionLS;
            } else {
                str = LeoUserSettings.setLeoUesrPowerDoubleActionAPP;
                i = LeoUserSettings.setLeoUesrPowerDoubleAction;
                if(i<=0) {
                    i=110;
                }
            }
            LeoUserString.LeoAction(this.mContext, i, str);
        }   else if (off==0) {
            LeoUserString.LeoAction(this.mContext, 110, null);
        }

    }
    void LongPressOnPower() {
        String str;
        int i;
        LeoUserSettings.LeoSettings(this.mContext);
        int off=setLeoUesrTogglePowerKeysSAction;
        if (off==1) {
        if (((KeyguardManager) this.mContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            str = null;
            i = LeoUserSettings.getSetLeoUesrPowerLongPressActionLS;
        } else {
            str = LeoUserSettings.setLeoUesrPowerLongPressAPP;
            i = LeoUserSettings.setLeoUesrPowerLongPress;
            if(i<=0) {
                i=125;
            }
        }
        LeoUserString.LeoAction(this.mContext, i, str);
        } else if (off==0) {
            showGlobalActionsInternal();
        }
    }

    public PhoneWindowManager() {

    }






    StatusBarManagerInternal getStatusBarManagerInternal() {
        StatusBarManagerInternal statusBarManagerInternal = null;

        return statusBarManagerInternal;
    }

    private class ScreenshotRunnable implements Runnable {
        private int mScreenshotType;

        private ScreenshotRunnable() {
            this.mScreenshotType = 1;
        }

        public void run() {
       //     PhoneWindowManager.this.takeScreenshot(this.mScreenshotType);
        }

        public void setScreenshotType(int i) {
            this.mScreenshotType = i;
        }
    }



    private static final String GLOBAL_ACTION_KEY_POWER = "power";


    void toggleRecentApps() {

    }

    private void takeScreenshot(final int r9) {

    }

    public int mLeoToastAnimation;


    int[] mNavigationBarWidthForRotationDefault = new int[4];
    int[] mNavigationBarHeightForRotationDefault = new int[4];

 public int  mLeoNavBarPortrait=48;


   public int mLeoNavBarLandscape=48;
  public  boolean mLeoNavBarLanHeight;

    public void init(Context context, IWindowManager iWindowManager, WindowManagerPolicy.WindowManagerFuncs windowManagerFuncs) {
       // setLeoRomToastAnimation(context);

        this.mContext = context;



    }
   public int mLeoNavBarThoroughDisabled;
    private int getNavigationBarWidth(int i, int i2) {


       // styke= NavBarLanHeight ? NavBarLandscape : this.mNavigationBarWidthForRotationDefault[i];
        return mLeoNavBarLanHeight ? mLeoNavBarLandscape : this.mNavigationBarWidthForRotationDefault[i];
    }

    IPhoneWindowManagerBridge mSPWM;



    int getNavigationBarHeight(int i, int i2) {
        if (this.mSPWM != null && this.mSPWM.isDesktopModeForPreparing()) {
            return this.mSPWM.getTaskBarHeightInDesktopMode();
        }
        return mLeoNavBarLanHeight ? this.mLeoNavBarPortrait : this.mNavigationBarHeightForRotationDefault[i];
    }




    public static void setTorchLight(int i) {

    }

    public void launchBixbyHome() {

    }

        void showGlobalActionsInternal(){

    }

    private void readConfigurationDependentBehaviors() {

    }
    WindowManagerPolicy.WindowManagerFuncs mWindowManagerFuncs;


    public void updateSettings() {



        updateLeoGlobalSetting();
    }

    private void enableSwipeThreeFingerGesture(boolean enable){
        if (enable) {
            if (haveEnableGesture) return;
            haveEnableGesture = true;
            mWindowManagerFuncs.registerPointerEventListener( mLeoGestures);
        } else {
            if (!haveEnableGesture) return;
            haveEnableGesture = false;
            mWindowManagerFuncs.unregisterPointerEventListener( mLeoGestures);
        }
    }
    public void updateLeoGestures() {
        mLeoGestures= new LeoWindowGesturesListener(mContext, new LeoWindowGesturesListener.Callbacks() {
            @Override
            public void onSwipeThreeFinger() {
                LeoSettings(mContext);
                int sty=setLeoUesrThreeGestureAction;
                if(sty<=0) {
                    sty=112;
                }
                LeoAction(mContext,sty,setLeoUesrThreeGestureActionAPP);
                Vibrate();
            }
            public void Vibrate() {
                if (setLeoUesrThreeGestureVibration == 1) {
                   mVibrator = (Vibrator) mContext.getSystemService(Context.VIBRATOR_SERVICE);
                    mVibrator.vibrate(setLeoUesrThreeGestureVibrationLevel);
                }
            }
        });


    }
 public   int LeoLandscapeStyle;
    public int  LeoPortraitStyle;

    public void updateLeoGlobalSetting() {
        LeoSettings(mContext);
        boolean threeFingerGesture=setLeoUesrThreeGesture;
        enableSwipeThreeFingerGesture(threeFingerGesture);
        int style=setLeoUesrMavLandscapeDisabled;
        int style1=setLeoUesrMavPortraitDisabled;
        if(style==0) {
            LeoLandscapeStyle= setLeoUesrLandscapeNavBarHeight;
        } else if(style==1){
            LeoLandscapeStyle=0;
        }
        if(style1==0) {
            LeoPortraitStyle=setLeoUesrPortraitNavBarHeight;
        } else if(style1==1){
            LeoPortraitStyle=0;
        }
        mLeoNavBarLandscape =  (int) (mNavBar * ((float)LeoLandscapeStyle));
        mLeoNavBarPortrait = (int) (mNavBar * ((float)LeoPortraitStyle));
        mLeoNavBarLanHeight=setLeoUesrNavbarHeightSwitch ;

        String string = setLeoUesrToastAnimation;
        if (string == null || TextUtils.isEmpty(string)) {
            string = "Animation.Toast";
        }
        this.mLeoToastAnimation = this.mContext.getResources().getIdentifier(string, "style", "android");
    }

    boolean keyguardOn() {
        boolean z = true;

        return z;
    }

    Vibrator mVibrator;
    public void Vibrate() {
        if (setLeoUesrNavigationBarGestureVibration== 1) {
            this.mVibrator = (Vibrator) mContext.getSystemService(Context.VIBRATOR_SERVICE);
            this.mVibrator.vibrate(setLeoUesrNavigationBarGestureVibrationLevel);
        }
    }


    public int handleMyBixbyAction() {
        LeoSettings (mContext);
        return setLeoUesrBixbyAction;
    }




    void handleLongPressOnHome(int i) {

    }


    volatile boolean mBackKeyHandled;



    int mPanicPressOnBackBehavior;
    boolean mHasNavigationBar = false;

    public void setHasNavigationBar() {
        Resources resources = this.mContext.getResources();

        this.mHasNavigationBar = resources.getBoolean(17957014);
        if (mLeoNavBarThoroughDisabled==0) {
           mHasNavigationBar = true;
        } else if (mLeoNavBarThoroughDisabled==1) {
            mHasNavigationBar = false;
        }
    }



    aPowerManager mPowerManager;

    private void volumeWakeUp(int style) {
        if ( setLeoUesrSoundMakeUP) {
            int i2 =style;
            if (24 == i2 || 25 == i2) {
                LeoAction(mContext,131,null);
            }
        }


    }



}