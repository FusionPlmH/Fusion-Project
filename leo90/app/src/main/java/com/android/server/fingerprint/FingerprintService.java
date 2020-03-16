package com.android.server.fingerprint;



import android.app.SemStatusBarManager;
import android.content.ComponentName;import android.content.ContentResolver;

import android.content.Context;

import android.content.Intent;
import android.database.ContentObserver;

import android.os.Handler;
;
import android.os.PowerManager;
import android.os.SystemService;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.security.KeyStore;
import android.util.Log;

import static com.fusionleo.LeoProvider.LeoGlobalSetting.*;
import static com.fusionleo.LeoX.server.LeoConfig.*;


public class FingerprintService extends SystemService  {
    static final String TAG = "FingerprintService";
    static final boolean DEBUG = true;

    private Context mContext;

    private boolean semIsDesktopMode() {

        return false;
    }
    private void userActivity() {
        //this.mPowerManager.userActivity(SystemClock.uptimeMillis(), 2, 0);
    }

    static int mFpDownAction;
    static int mFpUpAction;
    private  class SemGestureManager extends ContentObserver {

        ContentResolver mContentResolver;
        boolean mIsEnabledFpMotion;
        boolean mIsEnabledGestureForSpay;
        boolean mIsEnabledGestureForStatusBar;
        SemStatusBarManager mSemStatusBarManager;

        public SemGestureManager(Handler handler) {
            super(handler);
        }
        public void setLeoFingerprintServiceAction(String Code,int style ) {
            Context context=mContext;
            setLeoKeypressAction(context,Code,style);
        }
        public void setLeoFingerprintSwipeDown(int i) {

            setLeoFingerprintServiceAction(setFingerprintDownAction,i);
            if (i <= 0) {
                controlStatusBar(true);
            }
        else{
                if (i <= 0) {
                    controlStatusBar(true);
                }
            }
        }
        public void setLeoFingerprintSwipeUP(int i ) {
            setLeoFingerprintServiceAction(setFingerprintUPAction,i);
            if (i <= 0) {
                controlStatusBar(false);
            }
        }

        public void getSwipeActions(){
            LeoSetting(mContext);
            Log.i(FingerprintService.TAG, " 不咸的盐巴 Fingerprint Gesture");
            mFpDownAction=setLeoGlobalFingerprintDownAction;
            mFpUpAction =setLeoGlobalFingerprintUPAction;
        }

        void handleGestureEvent(int i) {
            if (FingerprintService.this.semIsDesktopMode()) {
                Log.i(FingerprintService.TAG, "handleGestureEvent : skip action because of DeX");
                return;
            }
            FingerprintService.this.userActivity();
            if (i == 20001) {
                boolean isPanelExpanded = this.mSemStatusBarManager.isPanelExpanded();
                if (FingerprintService.DEBUG) {
                    String str = FingerprintService.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("handleAcquired : QuickPanel = ");
                    stringBuilder.append(isPanelExpanded);
                    Log.v(str, stringBuilder.toString());
                }
                Log.i(FingerprintService.TAG, " 不咸的盐巴 Fingerprint Gesture");
                getSwipeActions();
                int style = mFpUpAction;
                if (style != 1 || isPanelExpanded) {
                    if (this.mIsEnabledGestureForStatusBar) {
                        setLeoFingerprintSwipeUP(style);
                    }
                } else if (this.mIsEnabledGestureForSpay) {
                    launchSamsungPay();
                }
            } else if (i == 20002 && this.mIsEnabledGestureForStatusBar) {
                getSwipeActions();
                setLeoFingerprintSwipeDown(mFpDownAction);
            }
        }

        private void launchSamsungPay() {

        }

        private void controlStatusBar(boolean bExpand) {

        }
    }







}
