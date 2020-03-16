package com.android.server.fingerprint;

import android.app.ActivityManager;
import android.app.ActivityManager.RecentTaskInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.app.SemStatusBarManager;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
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

import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.DumpUtils;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrClickRecent;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrClickRecentAPP;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFpDownAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFpDownActionAPP;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFpUPAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFpUPActionAPP;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPowerLongPress;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPowerLongPressAPP;
import static com.os.leo.utils.LeoUserString.LeoAction;


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
        SemStatusBarManager mStatusBarManager;

        public SemGestureManager(Handler handler) {
            super(handler);
        }
        public void setLeoFingerprintSwipeDown(int i) {

            LeoAction(mContext,i ,mFpDownActionApp);
            if (i <= 0) {
                controlStatusBar(true);

            }


        }
        public void setLeoFingerprintSwipeUP(int i ) {
            LeoAction(mContext,i ,mFpUpActionApp);
            if (i <= 0) {
                controlStatusBar(false);

            }


        }

        public void getSwipeActions(){
            LeoSettings (mContext);
            mFpDownAction=setLeoUesrFpDownAction;
            mFpDownActionApp=setLeoUesrFpDownActionAPP;
            mFpUpAction =setLeoUesrFpUPAction;
            mFpUpActionApp=setLeoUesrFpUPActionAPP;
        }



        void handleGestureEvent(int event) {
            if (FingerprintService.this.semIsDesktopMode()) {
                Log.i(FingerprintService.TAG, "handleGestureEvent : skip action because of DeX");
                return;
            }
            FingerprintService.this.userActivity();
            if (event == 20001) {
                boolean isQuickPanelExpanded = this.mStatusBarManager.isPanelExpanded();
                if (FingerprintService.DEBUG) {
                    Log.v(FingerprintService.TAG, "handleAcquired : QuickPanel = " + isQuickPanelExpanded);
                }
                getSwipeActions();
                int i = mFpUpAction;
                if (i != 1 || isQuickPanelExpanded) {
                    setLeoFingerprintSwipeUP(i);

                } else if (this.mIsEnabledGestureForSpay) {
                    launchSamsungPay();
                }
            } else if (event == 20002 && this.mIsEnabledGestureForStatusBar) {
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
