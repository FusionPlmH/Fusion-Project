package com.android.systemui.statusbar.phone;

import android.content.ContentResolver;
import android.content.Context;
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
import android.widget.FrameLayout;


import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNavGestureEnabled;



public class NavigationBarView extends FrameLayout {
    private View mBackgroundView;

    Context mContext;


    public  NavigationBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);

    }
    public View getClockView() {
        return null;
    }


    public boolean onTouchEvent(MotionEvent motionEvent) {

        return true;
    }


    public void setDoubleTapToSleep() {
        LeoSysUiManages(getContext());
        ((NavigationBarFrame) getRootView()).setDoubleTapToSleep(setLeoNavGestureEnabled);
    }






}
