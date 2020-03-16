package com.android.launcher3.home.view.container;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Vibrator;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import com.android.launcher3.framework.support.context.appstate.LauncherAppState;
import com.android.launcher3.framework.view.context.ViewContext;


import static com.android.launcher3.LeoAmber.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.*;


public class HomeTouchInteractor implements  OnSharedPreferenceChangeListener {
    private static final int FACTOR_INTERVAL = 2;
    private static final int FACTOR_VALID_DECIMAL_PLACE = 2;
    private static final String SFINDER_CLS_NAME = "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity";
    private static final String SFINDER_PKG_NAME = "com.samsung.android.app.galaxyfinder";
    private static final String TAG = "HomeTouchInteractor";
    private static final int TOUCH_RETURN_TYPE_FALSE = 2;
    static final int TOUCH_RETURN_TYPE_NONE = 0;
    static final int TOUCH_RETURN_TYPE_TRUE = 1;
    private static final int TOUCH_STATE_CONSUME = 1;
    private static final int TOUCH_STATE_REST = 0;
    private boolean mActivateTouchSFinder = false;
    private final Handler mBlurRunnableHandler = new Handler();
    private final View mContainerView;
    private int mDownwardFadeOutEnd;
    private int mDownwardFadeOutStart;
    private float mFadeOutRange;
    private float mFirstDownY = 0.0f;

    private boolean mIsInstalledSFinder = false;
    private boolean mIsStartedTrayEventSetY = false;
    private boolean mIsTouchStartedFromNaviBar = false;
    private int mMoveToAppsPanelHeight;
    private boolean mMultiTouch = false;
    private int mOverlayEnd;

    private boolean mQuickAccessFinderEnabled;

    private final ViewContext mViewContext;


    HomeTouchInteractor(View view, ViewContext viewContext) {
        this.mContainerView = view;
        this.mViewContext = viewContext;

    }


    private void launchSfinder(String str, boolean z) {
        LeoGestureDown("swype_down", false);
        LeoGestureUP("swype_up", true);
    }
    private void LeoGestureUP(String str, boolean z) {

        LeoGlobalSetting(mViewContext);
        int i=setGlobalHitomiLeoLauncherSlideGestureUP;
        if (setGlobalHitomiLeoLauncherSlideGestureEnabled) {
            LeoGlobalActiong(mViewContext,i,setGlobalHitomiLeoLauncherSlideGestureUPString);
            Vibrate(mViewContext,setGlobalHitomiLeoLauncherSlideGestureVibration,setGlobalHitomiLeoLauncherSlideGestureVibrationLevel);
        }else{
            launchSfinder(str,z);
        }

    }
    private void LeoGestureDown(String str, boolean z) {
        LeoGlobalSetting(mViewContext);
        int i=setGlobalHitomiLeoLauncherSlideGestureDown;
        if (setGlobalHitomiLeoLauncherSlideGestureEnabled) {
            LeoGlobalActiong(mViewContext,i,setGlobalHitomiLeoLauncherSlideGestureDownString);
            Vibrate(mViewContext,setGlobalHitomiLeoLauncherSlideGestureVibration,setGlobalHitomiLeoLauncherSlideGestureVibrationLevel);
        } else{
            launchSfinder(str,z);
        }

    }
    public void Vibrate(Context context,int of,int style) {
        if (of== 1) {
            this.mVibrator = (Vibrator)context.getSystemService(Context.VIBRATOR_SERVICE);
            int  level=style;
            this.mVibrator.vibrate(level);
        }
    }
    private Vibrator mVibrator;




    @Override
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String s) {

    }
}
