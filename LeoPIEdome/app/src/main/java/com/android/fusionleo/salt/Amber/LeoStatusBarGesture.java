package com.android.fusionleo.salt.Amber;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;

import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGestureDouble;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGestureDoubleApp;


import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGestureVibrationLevel;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGesturesVibratorEnable;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.Transparency;


public class LeoStatusBarGesture extends FrameLayout implements GestureDetector.OnGestureListener {
    private int mActionclick = 0;
    public GestureDetector mDetector = new GestureDetector(this);
    private Context mContext;
    private Vibrator mVibrator;
    public LeoStatusBarGesture(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext=context;

    }

    private void updateDoubleAction(Context context) {
           updateContext(context);
            int act=setLeoUesrStatusBarGestureDouble;
            if(act==0){
                act=100;
            }
        LeoGlobalActiong(context, act,setLeoUesrStatusBarGestureDoubleApp );
            Vibrate();
    }

    private void updateContext(Context context) {
        LeoStatusSettings(context);
    }
    private void updateLeftSwipeAction(Context context) {

    }

    private void updateRightSwipeAction(Context context) {


    }


    public void Vibrate() {
        if ( setLeoUesrStatusBarGesturesVibratorEnable == 1) {
           mVibrator = (Vibrator) mContext.getSystemService(Context.VIBRATOR_SERVICE);
          mVibrator.vibrate(setLeoUesrStatusBarGestureVibrationLevel);
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();


    }

    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float x = motionEvent2.getX() - motionEvent.getX();
        if (Math.abs(x) > Math.abs(motionEvent2.getY() - motionEvent.getY()) && Math.abs(x) > 2.3957E-41f && Math.abs(f) > 2.3957E-41f) {
            if (x > 0.0f) {
                updateRightSwipeAction(mContext);
            } else {
                updateLeftSwipeAction(mContext);
            }
        }
        return true;
    }

    public void onLongPress(MotionEvent motionEvent) {
    //    LongAction(this.mContext);
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    public void onShowPress(MotionEvent motionEvent) {
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        mActionclick += 1;
        if (this.mActionclick == 2) {
            updateDoubleAction(mContext);
            this.mActionclick = 0;
        }
        new Thread() {
            public void run() {
                try {
                    sleep(1800);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                } finally {
                    mActionclick = 0;
                }
            }
        }.start();
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return mDetector.onTouchEvent(motionEvent);
    }
}