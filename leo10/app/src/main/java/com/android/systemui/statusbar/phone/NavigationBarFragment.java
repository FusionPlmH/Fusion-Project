package com.android.systemui.statusbar.phone;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Color;
import android.os.Handler;
import android.os.Vibrator;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;




public class NavigationBarFragment extends Fragment {

    protected NavigationBarView mNavigationBarView = null;

    public void setDoubleTapToSleep() {
        if (this.mNavigationBarView != null) {
            this.mNavigationBarView.setDoubleTapToSleep();
        }
    }



}
