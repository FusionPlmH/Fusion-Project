package com.android.launcher3.home;

import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;

import com.android.launcher3.common.drag.DragView;

import com.android.launcher3.util.BlurUtils;

import com.android.launcher3.common.drag.DragView;
import com.android.launcher3.util.BlurUtils;

import static android.content.Intent.FLAG_ACTIVITY_CLEAR_TOP;
import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherDoubleTapVibrator;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherDownAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherDownApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherDownEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherGesturalVibrationLevel;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherUPAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherUPApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherUPEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightLongClickAction;
import static com.os.leo.utils.LeoUserString.LeoAction;


public class HomeContainer extends FrameLayout {
    private static final int FACTOR_INTERVAL = 2;
    private static final int FACTOR_VALID_DECIMAL_PLACE = 2;
    private static final float MAX_SWIPE_ANGLE = 1.2252212f;
    private static final String SFINDER_CLS_NAME = "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity";
    private static final String SFINDER_PKG_NAME = "com.samsung.android.app.galaxyfinder";
    private static final String TAG = "HomeContainer";
    private static final int THRESHOLD_DIST_START_SFINDER = 200;
    private static final int TOUCH_STATE_CONSUME = 1;
    private static final int TOUCH_STATE_REST = 0;
    private boolean mActivateTouchSFinder;
    //private HomeController mController;
    private int mDownwardFadeOutEnd;
    private int mDownwardFadeOutStart;
    private View mExternalPageIndicator;
    private float mFadeOutRange;
    private float mFirstDownX;
    private float mFirstDownY;
    private float mHomeAlphaRatio;
    private float mHomeShrinkFactor;
    private boolean mIsInstalledSFinder;
    private Launcher mLauncher;
    private boolean mMultiTouch;
    private int mOverlayEnd;
    private int mOverlayStart;
    private float mPageIndicatorScaleRatio;
    private float mPageIndicatorShrinkFactor;
    private int mPinchDelta;
    private boolean mStartedSFinder;
    private int mTouchPointDistance;
    private int mTouchState;
    //private TrayManager mTrayManager;
    private int mUpwardFadeOutEnd;
    private int mUpwardFadeOutStart;

    public HomeContainer(Context context) {
        this(context, null);
    }

    public HomeContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HomeContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMultiTouch = false;
        this.mTouchPointDistance = 0;
        this.mPinchDelta = 0;
        this.mTouchState = 0;
        this.mIsInstalledSFinder = false;
        this.mStartedSFinder = false;
        this.mActivateTouchSFinder = false;
        this.mFirstDownY = 0.0f;
        this.mFirstDownX = 0.0f;
        this.mLauncher = (Launcher) context;
        Resources resources = getResources();
        this.mHomeShrinkFactor = resources.getFraction(2131558408, 1, 1);
        this.mHomeAlphaRatio = resources.getFraction(2131558405, 1, 1);
        this.mPageIndicatorShrinkFactor = resources.getFraction(2131558407, 1, 1);
        this.mPageIndicatorScaleRatio = resources.getFraction(2131558406, 1, 1);
       // if (LauncherAppState.getInstance().isHomeOnlyModeEnabled()) {
           // this.mIsInstalledSFinder = Utilities.isAppInstalled(context, SFINDER_PKG_NAME);
       // }
        this.mOverlayStart = resources.getDimensionPixelSize(2131231039);
        this.mOverlayEnd = 0;
    }
   // private Launcher mLauncher;

    private void LeoGestureUP(String str, boolean z) {

        LeoSettings( mLauncher);
        int i=setLeoUesrLauncherUPAction;
        if (setLeoUesrLauncherUPEnabled) {
            LeoAction( mLauncher,i,setLeoUesrLauncherUPApp);
            Vibrate();
        }else{
            launchSfinder(str,z);
        }

    }
    private void LeoGestureDown(String str, boolean z) {
        LeoSettings(mLauncher);
        int i=setLeoUesrLauncherDownAction;
        if (setLeoUesrLauncherDownEnabled) {
            LeoAction( mLauncher,i,setLeoUesrLauncherDownApp);
            Vibrate();
        } else{
            launchSfinder(str,z);
        }

    }
    private Vibrator mVibrator;
    public void Vibrate() {
        if (setLeoUesrLauncherDoubleTapVibrator == 1) {
            this.mVibrator = (Vibrator) mLauncher.getSystemService(Context.VIBRATOR_SERVICE);
            int  level=setLeoUesrLauncherGesturalVibrationLevel;
            this.mVibrator.vibrate(level);
        }
    }
    private void launchSfinder(String str, boolean z) {
        int i;
        int i2;
        BlurUtils.blurByWindowManager(true, this.mLauncher.getWindow());
        this.mStartedSFinder = true;
        if (z) {
            i = 2130968581;
            i2 = 2130968583;
        } else {
            i = 2130968580;
            i2 = 2130968582;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(SFINDER_PKG_NAME, SFINDER_CLS_NAME));
        intent.putExtra("launch_mode", str);
        intent.addFlags(268468224);
        try {
            getContext().startActivity(intent, ActivityOptions.makeCustomAnimation(this.mLauncher, i, i2).toBundle());
        } catch (Throwable e) {
            Log.e(TAG, "Unable to launch. tag= intent=" + intent, e);
        }
    }



        private void updateScaleAndAlphaByTranslationY(float f) {
        float min;
        if (f > 0.0f) {
            float f2 = f;
            min = f2 < ((float) this.mDownwardFadeOutStart) ? DragView.EXTRA_VIEW_SCALE_FACTOR : f2 < ((float) this.mDownwardFadeOutEnd) ? Math.min(DragView.EXTRA_VIEW_SCALE_FACTOR, (((float) this.mDownwardFadeOutEnd) - f2) / this.mFadeOutRange) : 0.0f;
        } else {
            float height = f + ((float) getHeight());
            if (height > ((float) this.mUpwardFadeOutStart)) {
                min = DragView.EXTRA_VIEW_SCALE_FACTOR;
            } else if (height > ((float) this.mUpwardFadeOutEnd)) {
                min = Math.min(DragView.EXTRA_VIEW_SCALE_FACTOR, (height - ((float) this.mUpwardFadeOutEnd)) / this.mFadeOutRange);
            } else {
                min = (float) (f == 0.0f ? 1 : 0);
            }
        }
       // Utilities.simplifyDecimalFraction(min, 2, 2);
        float f3 = this.mHomeShrinkFactor + ((DragView.EXTRA_VIEW_SCALE_FACTOR - this.mHomeShrinkFactor) * min);
        setAlpha(Math.max(0.0f, DragView.EXTRA_VIEW_SCALE_FACTOR - ((DragView.EXTRA_VIEW_SCALE_FACTOR - min) * this.mHomeAlphaRatio)));
        setScaleX(f3);
        setScaleY(f3);
        if (this.mExternalPageIndicator != null) {
            float max = this.mPageIndicatorShrinkFactor + ((DragView.EXTRA_VIEW_SCALE_FACTOR - this.mPageIndicatorShrinkFactor) * Math.max(0.0f, DragView.EXTRA_VIEW_SCALE_FACTOR - ((DragView.EXTRA_VIEW_SCALE_FACTOR - min) * this.mPageIndicatorScaleRatio)));
            this.mExternalPageIndicator.setScaleX(max);
            this.mExternalPageIndicator.setScaleY(max);
        }
    }

    private boolean willStartSFinder(float f, float f2) {
        return ((float) Math.atan2((double) f2, (double) f)) > MAX_SWIPE_ANGLE && Math.sqrt(Math.pow((double) f, 2.0d) + Math.pow((double) f2, 2.0d)) > 200.0d;
    }

   // void bindController(ControllerBase controllerBase) {
       // if (controllerBase instanceof HomeController) {
           // this.mController = (HomeController) controllerBase;
       // }
  //  }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (getAlpha() < 0.5f) {
            return false;
        }
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.mTouchState = 1;
                break;
            case 1:
            case 3:
                this.mTouchState = 0;
                break;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    int getPinchDelta() {
        return this.mPinchDelta;
    }

    boolean hasStartedSFinder() {
        return this.mStartedSFinder;
    }

    boolean isMultiTouch() {
        return this.mMultiTouch;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {

        return super.onInterceptTouchEvent(motionEvent);
    }


    private void UPslide(String str, boolean z) {

        ContentResolver LeoSettings = getContext().getContentResolver();
        //关闭星期显示
        int style=0;
        if ( style == 0) {
            launchSfinder("swype_up", true);
        } else if ( style == 1) {
            String string = Settings.System.getString(LeoSettings,
                    "leo_three_finger_app");
            if (string != null) {
                String[] split = string.split("##");
                ComponentName componentName = new ComponentName(split[0], split[1]);
                Intent intent = new Intent();
                intent.setFlags(FLAG_ACTIVITY_NEW_TASK | FLAG_ACTIVITY_CLEAR_TOP);
                intent.putExtra("swype_up", str);
                intent.setComponent(componentName);
                getContext().startActivity(intent);
            }
        }

    }
    private void Downslide(String str, boolean z) {
        ContentResolver LeoSettings = getContext().getContentResolver();
        int style=0;
        if ( style == 1) {
            launchSfinder("swype_down", true);
        } else if ( style == 1) {
            String string = Settings.System.getString(LeoSettings,
                    "leo_three_finger_app");
            if (string != null) {
                String[] split = string.split("##");
                ComponentName componentName = new ComponentName(split[0], split[1]);
                Intent intent = new Intent();
                intent.setFlags(FLAG_ACTIVITY_NEW_TASK | FLAG_ACTIVITY_CLEAR_TOP);
                intent.putExtra("swype_down", str);
                intent.setComponent(componentName);
                getContext().startActivity(intent);
            }
        }
    }


    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (mUpwardFadeOutStart != (i4 - i2) - this.mOverlayStart) {
            Log.d(TAG, "height is change !! mUpwardFadeOutStart : " + this.mUpwardFadeOutStart + " mOverlayStart : " + this.mOverlayStart + " top : " + i2 + " bottom : " + i4);
            this.mUpwardFadeOutStart = (i4 - i2) - this.mOverlayStart;
            this.mUpwardFadeOutEnd = (i4 - i2) - this.mOverlayEnd;
            this.mFadeOutRange = (float) (this.mUpwardFadeOutStart - this.mUpwardFadeOutEnd);
        }
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (true) {
           // this.mOverlayEnd = this.mTrayManager.getTrayMovingRange();
            this.mDownwardFadeOutStart = this.mOverlayStart;
            this.mDownwardFadeOutEnd = this.mOverlayEnd;
            this.mUpwardFadeOutStart = getHeight() - this.mOverlayStart;
            this.mUpwardFadeOutEnd = getHeight() - this.mOverlayEnd;
            this.mFadeOutRange = (float) (this.mUpwardFadeOutStart - this.mUpwardFadeOutEnd);
        }
        if (this.mExternalPageIndicator == null) {
         //   View homePageIndicatorView = this.mController.getHomePageIndicatorView();
          //  if (homePageIndicatorView != null && !equals(homePageIndicatorView.getParent())) {
                //this.mExternalPageIndicator = homePageIndicatorView;
           // }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
      //  return (this.mTrayManager == null || this.mController == null || !this.mController.canMoveHometray()) ? super.onTouchEvent(motionEvent) : this.mTrayManager.onTouchEvent(this.mController, motionEvent);
        return false;
    }

    void resetStartedSFinder() {
        this.mStartedSFinder = false;
    }

    void resetTouchState() {
        this.mTouchState = 0;
    }

    public void setAlpha(float f) {
        super.setAlpha(f);
        Log.d(TAG, "setAlpha : " + f);
        if (this.mExternalPageIndicator != null) {
            this.mExternalPageIndicator.setAlpha(Math.max(0.0f, DragView.EXTRA_VIEW_SCALE_FACTOR - ((DragView.EXTRA_VIEW_SCALE_FACTOR - f) * this.mPageIndicatorScaleRatio)));
        }
    }

    public void setTranslationY(float f) {
        super.setTranslationY(f);
        //if (!(this.mTrayManager == null || this.mController == null)) {
           // this.mTrayManager.onChangeTrayTranslationY(this.mController, f, getHeight());
      //  }
       // int trayMovingRange = this.mTrayManager != null ? this.mTrayManager.getTrayMovingRange() : Utilities.getFullScreenHeight(this.mLauncher);
       // int i = (f == 0.0f || (f > ((float) (-trayMovingRange)) && f < ((float) trayMovingRange))) ? 0 : 8;
       // if (getVisibility() != i) {
          //  setVisibility(i);
       // }
        updateScaleAndAlphaByTranslationY(f);
    }

 //   void setTrayManager(TrayManager trayManager) {
      //  this.mTrayManager = trayManager;
  //  }

    public void setVisibility(int i) {
        super.setVisibility(i);
        Log.d(TAG, "setVisibility : " + i);
        if (this.mExternalPageIndicator == null) {
         //   View homePageIndicatorView = this.mController.getHomePageIndicatorView();
           // if (homePageIndicatorView != null && !equals(homePageIndicatorView.getParent())) {
              //  this.mExternalPageIndicator = homePageIndicatorView;
              //  this.mExternalPageIndicator.setVisibility(i);
               // return;
            }
            return;
        }
       // this.mExternalPageIndicator.setVisibility(i);
   // }
}
