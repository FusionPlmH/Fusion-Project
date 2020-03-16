package com.android.systemui.plugins.statusbar.phone;

import android.view.MotionEvent;


public interface NavGesture  {
    public static final String ACTION = "com.android.systemui.action.PLUGIN_NAV_GESTURE";
    public static final int VERSION = 1;

    public interface GestureHelper {
        boolean onInterceptTouchEvent(MotionEvent motionEvent);

        boolean onTouchEvent(MotionEvent motionEvent);

        void setBarState(boolean z, boolean z2);


    }

    GestureHelper getGestureHelper();
}
