/*
 * Copyright (C) 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License
 */

package com.android.systemui.statusbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.PowerManager;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;


import com.android.systemui.Dependency;
import com.android.systemui.Gefingerpoken;
import com.android.systemui.KnoxStateMonitor;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.statusbar.notification.row.ExpandableView;


import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;


/**
 * A utility class to enable the downward swipe on the lockscreen to go to the full shade and expand
 * the notification where the drag started.
 */
public class DragDownHelper implements Gefingerpoken {

    private static final float RUBBERBAND_FACTOR_EXPANDABLE = 0.5f;
    private static final float RUBBERBAND_FACTOR_STATIC = 0.15f;

    private static final int SPRING_BACK_ANIMATION_LENGTH_MS = 375;

    private int mMinDragDistance;

    private float mInitialTouchX;
    private float mInitialTouchY;
    private boolean mDraggingDown;
    private float mTouchSlop;
 //   private DragDownCallback mDragDownCallback;
    private View mHost;
    private final int[] mTemp2 = new int[2];
    private boolean mDraggedFarEnough;

    private float mLastHeight;
    private ExpandableView mStartingChild;

    private boolean mDoubleTapToSleepEnabled;
    private int mStatusBarHeaderHeight;
    private long mLastDownEvent = -1;
    private long mDoubleTapTimeout;
    private Runnable mGoToSleep;

    public DragDownHelper(final Context context, View host) {
        SaltGoToSleep(context);
    }
  private void SaltGoToSleep(Context context){
      mDoubleTapTimeout = ViewConfiguration.get(context).getDoubleTapTimeout();
        mStatusBarHeaderHeight = context
                .getResources().getDimensionPixelSize(getLeoUIResource("dimen/status_bar_header_height_keyguard"));

    }
    public void onSaltTouchEvent(MotionEvent event,float x,float y){

        this.mDraggedFarEnough = false;
        this.mDraggingDown = false;
        this.mStartingChild = null;
        this.mInitialTouchY = y;
        this.mInitialTouchX = x;
        if (mDoubleTapToSleepEnabled && y < mStatusBarHeaderHeight) {
            long eventTime = event.getEventTime();
            if (mLastDownEvent != -1) {
                long diff = eventTime - mLastDownEvent;

                if (diff < mDoubleTapTimeout) {
                    mGoToSleep.run();
                }
                mLastDownEvent = -1;
            } else {
                mLastDownEvent = eventTime;
            }
        }
    }
    private FalsingManager mFalsingManager;
    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        final float x = event.getX();
        final float y = event.getY();

        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                onSaltTouchEvent(event,x,y);
                break;

            case MotionEvent.ACTION_MOVE:
                final float h = y - mInitialTouchY;
                if (h > mTouchSlop && h > Math.abs(x - mInitialTouchX)) {
                    mFalsingManager.onNotificatonStartDraggingDown();
                    mDraggingDown = true;
                    captureStartingChild(mInitialTouchX, mInitialTouchY);
                    mInitialTouchY = y;
                    mInitialTouchX = x;
                    mDragDownCallback.onTouchSlopExceeded();

                }
                if (!((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class)).isPanelExpandEnabled()) {
                    return true;
                }
                break;
        }
        return false;
    }


    private DragDownCallback mDragDownCallback;

    public interface DragDownCallback {
        boolean isFalsingCheckNeeded();

        void onCrossedThreshold(boolean z);

        void onDragDownReset();

        boolean onDraggedDown(View view, int i);

        void onTouchSlopExceeded();

        void setEmptyDragAmount(float f);
    }

    private void captureStartingChild(float f, float f2) {

    }


    @Override
    public boolean onTouchEvent(MotionEvent ev) {
        return false;
    }


    public void updateDoubleTapToSleep(boolean updateDoubleTapToSleep) {
        mDoubleTapToSleepEnabled = updateDoubleTapToSleep;
    }
}
