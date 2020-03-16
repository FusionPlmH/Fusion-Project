package com.android.systemui.statusbar.phone;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.Color;
import android.os.Handler;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;


import com.android.systemui.Rune;
import com.android.systemui.fusionleo.LeoLogoView;
import com.android.systemui.fusionleo.LeoNetworkTraffic;

import com.android.systemui.fusionleo.LeoStatusBarController;
import com.android.systemui.fusionleo.LeoTemp;
import com.fusionleo.LeoX.systemui.LeoConfig;
import com.android.systemui.statusbar.policy.NetspeedView;
import com.samsung.android.feature.SemFloatingFeature;

import static com.android.systemui.SystemUIApplication.getContext;
import static com.fusionleo.LeoX.systemui.LeoConfig.LeoGradientDrawable;
import static com.fusionleo.LeoX.systemui.LeoConfig.LeoSysUiShortcut;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoBasicColor;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoWallpaper;


import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoAction;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoHaptics;

import static com.fusionleo.LeoProvider.LeoManages.mLeoStatusBarGesture;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarGestureLeftSlide;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarGestureLongPress;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarGestureRightSlide;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarGestureVibratorEnable;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarGestureVibratorLevel;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarLongPressGestureEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarSlideGestureEnabled;


public class PhoneStatusBarView extends PanelBar {
    private View mBackgroundView;
    private LeoStatusBarController mLeoManager;

    Context mContext;


    public PhoneStatusBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);

        getLeoGesture();

    }
    public void getLeoGesture() {
        mLeoManager= new LeoStatusBarController(this.mContext, this);
        try {
            mGestureDetector = new GestureDetector(mContext , new LeoGestureDetector(mContext));
        } catch (Throwable th) {
            Log.e("Leo Salt", "Listener");
        }
    }
    public View getClockView() {
        return null;
    }


    public boolean onTouchEvent(MotionEvent motionEvent) {
    onLeoTouchEvent(motionEvent);
        return true;
    }

    public  void onLeoTouchEvent(MotionEvent event) {

        if (mGestureDetector != null) {
            if (setLeoStatusBarSlideGestureEnabled ==1 || setLeoStatusBarLongPressGestureEnabled ==1) {
                mGestureDetector.onTouchEvent(event);
                return;
            }
        }


    }
    private GestureDetector mGestureDetector;
    class LeoGestureDetector extends GestureDetector.SimpleOnGestureListener {
        public Context mContext;
        public  LeoGestureDetector(Context context){
            mContext=context;
        }

        public boolean onDoubleTap(MotionEvent motionEvent) {

            return false;
        }
        public  void aVibrator(Context context){
            setLeoHaptics(context,setLeoStatusBarGestureVibratorEnable,setLeoStatusBarGestureVibratorLevel);

        }


        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            float x = motionEvent.getX();
            float x2 = motionEvent2.getX();
            float y = motionEvent.getY();
            float y2 = motionEvent2.getY();
            if (x - x2 > 150.0f && Math.abs(f) > 0.0f && y2 - y < 30.0f) {
                setLeoAction(mContext,mLeoStatusBarGesture[2],setLeoStatusBarGestureRightSlide);
                aVibrator(mContext);
            } else if (x2 - x > 150.0f && Math.abs(f) > 0.0f && y2 - y < 30.0f) {
                setLeoAction(mContext,mLeoStatusBarGesture[1],setLeoStatusBarGestureLeftSlide);
                aVibrator(mContext);
            }
            return false;
        }

        public void onLongPress(MotionEvent motionEvent) {
            aVibrator(mContext);
            setLeoAction(mContext,mLeoStatusBarGesture[0],setLeoStatusBarGestureLongPress);
        }
    };

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (mLeoManager != null) {
            mLeoManager.onAttachedToWindow();
        }

    }
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();

        if (mLeoManager != null) {
            mLeoManager.onDetachedFromWindow();
        }
    }



}
