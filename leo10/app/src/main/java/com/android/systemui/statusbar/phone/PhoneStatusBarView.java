package com.android.systemui.statusbar.phone;


import android.content.Context;

import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;

import android.view.MotionEvent;
import android.view.View;

import com.android.systemui.qs.QSServiceBox;
import com.android.systemui.statusbar.salt.SaltAction;
import com.android.systemui.statusbar.salt.SaltStatusBarController;

import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoHaptics;
import static com.android.settingslib.salt.utils.LeoManages.mLeoStatusBarGesture;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarGestureLeftSlide;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarGestureLongPress;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarGestureRightSlide;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarGestureVibratorEnable;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarGestureVibratorLevel;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarLongPressGestureEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarSlideGestureEnabled;


public class PhoneStatusBarView extends PanelBar {
    private View mBackgroundView;
    private SaltStatusBarController mLeoManager;
    private GestureDetector mGestureDetector;
    Context mContext;


    public PhoneStatusBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mLeoManager= new SaltStatusBarController(this.mContext, this);
        getLeoGesture();

    }
    public SaltStatusBarController getLeoStatusBarManager() {
        return mLeoManager;
    }

    public void getLeoGesture() {



        mLeoManager= new SaltStatusBarController(this.mContext, this);
        try {
            mGestureDetector = new GestureDetector(mContext ,  new LeoGestureDetector(mContext));

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

    public class LeoGestureDetector extends GestureDetector.SimpleOnGestureListener {
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
