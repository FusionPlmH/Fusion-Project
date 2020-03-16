package com.android.systemui.statusbar.phone;

import android.content.ContentResolver;
import android.content.Context;

import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;


import com.android.systemui.statusbar.policy.DeadZone;

import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoHaptics;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.mLeoNavGesture;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNavGesture;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNavGestureVibratorEnable;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNavGestureVibratorLevel;


public class NavigationBarFrame extends FrameLayout {

    private DeadZone mDeadZone = null;

    public NavigationBarFrame(Context context) {
        super(context);
    }

    public NavigationBarFrame(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NavigationBarFrame(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
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
