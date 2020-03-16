package com.android.systemui.statusbar.phone;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Color;
import android.os.Handler;
import android.os.Vibrator;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.mLeoNavGesture;
import static com.fusionleo.LeoProvider.LeoManages.setLeoNavGesture;
import static com.fusionleo.LeoProvider.LeoManages.setLeoNavGestureVibratorEnable;
import static com.fusionleo.LeoProvider.LeoManages.setLeoNavGestureVibratorLevel;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoAction;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoHaptics;


public class NavigationBarFrame extends FrameLayout {


    public NavigationBarFrame(@NonNull Context context) {
        super(context);
        mLeoNavDoubleTap= new GestureDetector(context , new LeoGestureDetector(context));
    }
    private boolean mIsDoubleTapEnabled;
    public void setDoubleTapToSleep(boolean z) {
        this.mIsDoubleTapEnabled = z;
    }

    private GestureDetector mLeoNavDoubleTap;
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return (this.mIsDoubleTapEnabled && this.mLeoNavDoubleTap != null && this.mLeoNavDoubleTap.onTouchEvent(motionEvent)) ? true : super.onTouchEvent(motionEvent);
    }



    private  class LeoGestureDetector extends GestureDetector.SimpleOnGestureListener {
        private Context mContext;
        public  LeoGestureDetector(Context context){
            LeoSysUiManages(context);
            mContext=context;
        }
        @Override
        public boolean onDoubleTap(MotionEvent e) {
            Context context=mContext;
            int style=setLeoNavGesture;
            setLeoAction(context,mLeoNavGesture[2],style);
            setLeoHaptics(context,setLeoNavGestureVibratorEnable,setLeoNavGestureVibratorLevel);
            return true;
        }
    }


}
