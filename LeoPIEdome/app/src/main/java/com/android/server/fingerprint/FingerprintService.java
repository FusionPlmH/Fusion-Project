package com.android.server.fingerprint;



import android.app.SemStatusBarManager;
import android.content.ComponentName;import android.content.ContentResolver;

import android.content.Context;

import android.database.ContentObserver;

import android.os.Handler;
;
import android.os.SystemService;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.security.KeyStore;
import android.util.Log;
import android.util.SparseArray;

import static com.android.fusionleo.global.LeoGlobalSetting.LeoGlobalSetting;
import static com.android.fusionleo.global.LeoGlobalSetting.setGlobalAmberFingerprintDownAction;
import static com.android.fusionleo.global.LeoGlobalSetting.setGlobalAmberFingerprintDownActionAPP;
import static com.android.fusionleo.global.LeoGlobalSetting.setGlobalAmberFingerprintUPAction;
import static com.android.fusionleo.global.LeoGlobalSetting.setGlobalAmberFingerprintUPActionApp;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;


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
    static String mFpUpActionApp;
    static String mFpDownActionApp;
    private  class SemGestureManager extends ContentObserver {

        ContentResolver mContentResolver;
        boolean mIsEnabledFpMotion;
        boolean mIsEnabledGestureForSpay;
        boolean mIsEnabledGestureForStatusBar;
        SemStatusBarManager mSemStatusBarManager;

        public SemGestureManager(Handler handler) {
            super(handler);
        }
        public void setLeoFingerprintSwipeDown(int i) {

            LeoGlobalActiong(mContext,i ,mFpDownActionApp);
            if (i <= 0) {
                controlStatusBar(true);

            }


        }
        public void setLeoFingerprintSwipeUP(int i ) {
            LeoGlobalActiong(mContext,i ,mFpUpActionApp);
            if (i <= 0) {
                controlStatusBar(false);

            }


        }

        public void getSwipeActions(){
            LeoGlobalSetting(mContext);
            Log.i(FingerprintService.TAG, " 不咸的盐巴 Fingerprint Gesture");
            mFpDownAction= setGlobalAmberFingerprintDownAction;
            mFpDownActionApp=setGlobalAmberFingerprintDownActionAPP;
            mFpUpAction = setGlobalAmberFingerprintUPAction;
            mFpUpActionApp=setGlobalAmberFingerprintUPActionApp;
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
