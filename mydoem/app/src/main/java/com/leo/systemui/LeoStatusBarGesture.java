package com.leo.systemui;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.os.leo.utils.LeoUserString;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarGestureActionZoneWidth;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarGestureDouble;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarGestureLeftSlide;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarGestureRightSlide;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarDoubleAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureActionZoneWidth;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureDouble;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureDoubleApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureLeftSlide;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureLeftSlideApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureRightSlide;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureRightSlideApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureTouchRegionColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureVibrationLevel;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGesturesVibratorEnable;
import static com.os.leo.utils.LeoUserString.LeoAction;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUtils.getLeoUri;


public class LeoStatusBarGesture extends RelativeLayout implements GestureDetector.OnGestureListener {
    private int mActionclick = 0;
    public GestureDetector mDetector = new GestureDetector(this);
    private Context mContext;
    private Vibrator mVibrator;
    private LeoObserver mLeoObserver;
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
            LeoAction(context, act,setLeoUesrStatusBarGestureDoubleApp );
            Vibrate();
    }

    private void updateContext(Context context) {
        LeoSettings(context);
    }
    private void updateLeftSwipeAction(Context context) {
        updateContext(context);
            int act=setLeoUesrStatusBarGestureLeftSlide;
            if(act==0){
                act=101;
            }
            LeoAction(context,act,setLeoUesrStatusBarGestureLeftSlideApp);
            Vibrate();
    }



    private void updateRightSwipeAction(Context context) {
        updateContext(context);
            int act=setLeoUesrStatusBarGestureRightSlide;
            if(act==0){
                act=102;
            }
            LeoUserString.LeoAction(context,act,setLeoUesrStatusBarGestureRightSlideApp);
            Vibrate();

    }
    private int updateTouchRegionColor() {
        int color;
        if(setLeoUesrStatusBarGestureTouchRegionColor){
            color=setLeoUesrStatusBarGestureColor;
        } else{
            color=Transparency;
        }

        return color;
    }
    private void updateLeoGestures() {
        updateContext(mContext);
        setVisibility(setLeoUesrStatusBarDoubleAction ? VISIBLE : GONE);
     setBackgroundColor(updateTouchRegionColor());
        int width = setLeoUesrStatusBarGestureActionZoneWidth;
     ViewGroup.LayoutParams layoutParams = getLayoutParams();

        layoutParams.width = width;
        setLayoutParams(layoutParams);
    }
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver resolver = mContext.getContentResolver();
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarGestureActionZoneWidth()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarGestureDouble()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarGestureLeftSlide()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarGestureRightSlide()), false,
                    this);
        }

        public void onChange(boolean selfChange) {
            updateLeoGestures();
        }
    }

    public void Vibrate() {
        if ( setLeoUesrStatusBarGesturesVibratorEnable == 1) {
           mVibrator = (Vibrator) mContext.getSystemService(Context.VIBRATOR_SERVICE);
          mVibrator.vibrate(setLeoUesrStatusBarGestureVibrationLevel);
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

        updateLeoGestures();
        mLeoObserver = new LeoObserver(new Handler());
        mLeoObserver.observe();
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