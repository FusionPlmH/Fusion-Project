package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.FrameLayout;


public abstract class PanelBar extends FrameLayout {

    private int mState = 0;
    private boolean mTracking;

    public PanelBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }


}
