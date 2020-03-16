/*
 * Copyright (C) 2012 The Android Open Source Project
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
 * limitations under the License.
 */

package com.android.systemui.statusbar.phone;


import android.app.StatusBarManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;

import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DisplayCutout;
import android.view.GestureDetector;
import android.view.InputDevice;
import android.view.InputQueue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

import android.widget.FrameLayout;


import com.android.internal.view.FloatingActionMode;
import com.android.internal.widget.FloatingToolbar;

import com.android.systemui.statusbar.DragDownHelper;
;
import com.android.systemui.tuner.TunerService;

import java.io.FileDescriptor;
import java.io.PrintWriter;

import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardDoubleTapToSleepAnywhere;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardDoubleTapToSleepEnabled;

public class StatusBarWindowView extends FrameLayout {
    public static final String TAG = "StatusBarWindowView";
    public static final boolean DEBUG = true;

    private final GestureDetector mGestureDetector;
   // private final StatusBarStateController mStatusBarStateController;
    private boolean mDoubleTapEnabled;
    private boolean mSingleTapEnabled;
    private DragDownHelper mDragDownHelper;
   // private NotificationStackScrollLayout mStackScrollLayout;
    private NotificationPanelView mNotificationPanel;
    private View mBrightnessMirror;
 //   private LockIcon mLockIcon;
    private PhoneStatusBarView mStatusBarView;

    private int mRightInset = 0;
    private int mLeftInset = 0;

    private StatusBar mService;
    private final Paint mTransparentSrcPaint = new Paint();
  //  private FalsingManager mFalsingManager;

    // Implements the floating action mode for TextView's Cut/Copy/Past menu. Normally provided by
    // DecorView, but since this is a special window we have to roll our own.
    private View mFloatingActionModeOriginatingView;
    private ActionMode mFloatingActionMode;
    private FloatingToolbar mFloatingToolbar;
    private ViewTreeObserver.OnPreDrawListener mFloatingToolbarPreDrawListener;
    private boolean mTouchCancelled;
    private boolean mTouchActive;
    private boolean mExpandAnimationRunning;
    private boolean mExpandAnimationPending;
    private boolean mSuppressingWakeUpGesture;

    private int mDoubleTapEnabledNative;
    private boolean mDoubleTapDozeEnabled;

    private final GestureDetector.SimpleOnGestureListener mGestureListener =
            new GestureDetector.SimpleOnGestureListener() {
        @Override
        public boolean onSingleTapConfirmed(MotionEvent e) {
            if (mSingleTapEnabled && !mSuppressingWakeUpGesture) {

                return true;
            }
            return false;
        }

        @Override
        public boolean onDoubleTap(MotionEvent e) {

            return false;
        }
    };
    private final TunerService.Tunable mTunable = (key, newValue) -> {


    };

    /**
     * If set to true, the current gesture started below the notch and we need to dispatch touch
     * events manually as it's outside of the regular view bounds.
     */
    private boolean mExpandingBelowNotch;
   // private KeyguardBypassController mBypassController;

    private boolean mIsMusicTickerTap;

    public StatusBarWindowView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setMotionEventSplittingEnabled(false);
        mTransparentSrcPaint.setColor(0);
        mTransparentSrcPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
       // mFalsingManager = Dependency.get(FalsingManager.class);  // TODO: inject into a controller.
        mGestureDetector = new GestureDetector(context, mGestureListener);
       // mStatusBarStateController = Dependency.get(StatusBarStateController.class);
       // Dependency.get(TunerService.class).addTunable(mTunable,
              //  Settings.Secure.DOZE_DOUBLE_TAP_GESTURE,
              //  Settings.Secure.DOZE_TAP_SCREEN_GESTURE,
              //  Settings.System.GESTURE_DOUBLE_TAP,
              //  Settings.System.DOZE_TRIGGER_DOUBLETAP);
    }

    @Override
    protected boolean fitSystemWindows(Rect insets) {
        if (getFitsSystemWindows()) {
            boolean paddingChanged = insets.top != getPaddingTop()
                    || insets.bottom != getPaddingBottom();

            int rightCutout = 0;
            int leftCutout = 0;
            DisplayCutout displayCutout = getRootWindowInsets().getDisplayCutout();
            if (displayCutout != null) {
                leftCutout = displayCutout.getSafeInsetLeft();
                rightCutout = displayCutout.getSafeInsetRight();
            }

            int targetLeft = Math.max(insets.left, leftCutout);
            int targetRight = Math.max(insets.right, rightCutout);

            // Super-special right inset handling, because scrims and backdrop need to ignore it.
            if (targetRight != mRightInset || targetLeft != mLeftInset) {
                mRightInset = targetRight;
                mLeftInset = targetLeft;
                applyMargins();
            }
            // Drop top inset, and pass through bottom inset.
            if (paddingChanged) {
                setPadding(0, 0, 0, 0);
            }
            insets.left = 0;
            insets.top = 0;
            insets.right = 0;
        } else {
            if (mRightInset != 0 || mLeftInset != 0) {
                mRightInset = 0;
                mLeftInset = 0;
                applyMargins();
            }
            boolean changed = getPaddingLeft() != 0
                    || getPaddingRight() != 0
                    || getPaddingTop() != 0
                    || getPaddingBottom() != 0;
            if (changed) {
                setPadding(0, 0, 0, 0);
            }
            insets.top = 0;
        }
        return false;
    }

    private void applyMargins() {
        final int N = getChildCount();
        for (int i = 0; i < N; i++) {
            View child = getChildAt(i);
            if (child.getLayoutParams() instanceof LayoutParams) {
                LayoutParams lp = (LayoutParams) child.getLayoutParams();
                if (!lp.ignoreRightInset
                        && (lp.rightMargin != mRightInset || lp.leftMargin != mLeftInset)) {
                    lp.rightMargin = mRightInset;
                    lp.leftMargin = mLeftInset;
                    child.requestLayout();
                }
            }
        }
    }

   // @VisibleForTesting
   // protected NotificationStackScrollLayout getStackScrollLayout() {
       // return mStackScrollLayout;
   // }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    @Override
    protected FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
       // mStackScrollLayout = findViewById(R.id.notification_stack_scroller);
        //mNotificationPanel = findViewById(R.id.notification_panel);
        //mBrightnessMirror = findViewById(R.id.brightness_mirror);
       // mLockIcon = findViewById(R.id.lock_icon);
    }

    @Override
    public void onViewAdded(View child) {
        super.onViewAdded(child);
      //  if (child.getId() == R.id.brightness_mirror) {
           // mBrightnessMirror = child;
       // }
    }

    /**
     * Propagate {@link StatusBar} pulsing state.
     */
    public void setPulsing(boolean pulsing) {
       // if (mLockIcon != null) {
      //      mLockIcon.setVisibility(pulsing ? View.GONE : View.VISIBLE);
      //  }
    }

    public void onBiometricAuthModeChanged(boolean wakeAndUnlock, boolean isUnlock) {
        //if (mLockIcon != null) {
         //   mLockIcon.onBiometricAuthModeChanged(wakeAndUnlock, isUnlock);
       // }
    }

    public void setStatusBarView(PhoneStatusBarView statusBarView) {
        mStatusBarView = statusBarView;
    }

    public void setService(StatusBar service) {
        mService = service;
      //  NotificationStackScrollLayout stackScrollLayout = getStackScrollLayout();
      //  ExpandHelper.Callback expandHelperCallback = stackScrollLayout.getExpandHelperCallback();
       // DragDownHelper.DragDownCallback dragDownCallback = stackScrollLayout.getDragDownCallback();
       // setDragDownHelper(new DragDownHelper(getContext(), this, expandHelperCallback,
            //    dragDownCallback, mFalsingManager));
    }

  //  @VisibleForTesting
    void setDragDownHelper(DragDownHelper dragDownHelper) {
        mDragDownHelper = dragDownHelper;
    }

    @Override
    protected void onAttachedToWindow () {
        super.onAttachedToWindow();
        setWillNotDraw(!DEBUG);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
      //  if (mService.interceptMediaKey(event)) {
       //     return true;
      //  }
        if (super.dispatchKeyEvent(event)) {
            return true;
        }
        boolean down = event.getAction() == KeyEvent.ACTION_DOWN;
        switch (event.getKeyCode()) {
            case KeyEvent.KEYCODE_BACK:
                if (!down) {
                   // mService.onBackPressed();
                }
                return true;
            case KeyEvent.KEYCODE_MENU:
                if (!down) {
                  //  return mService.onMenuPressed();
                }
            case KeyEvent.KEYCODE_SPACE:
                if (!down) {
                  //  return mService.onSpacePressed();
                }
                break;
            case KeyEvent.KEYCODE_VOLUME_DOWN:
            case KeyEvent.KEYCODE_VOLUME_UP:

                break;
        }
        return false;
    }

    public void setTouchActive(boolean touchActive) {
        mTouchActive = touchActive;
    }

    void suppressWakeUpGesture(boolean suppress) {
        mSuppressingWakeUpGesture = suppress;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        boolean isDown = ev.getActionMasked() == MotionEvent.ACTION_DOWN;
        boolean isUp = ev.getActionMasked() == MotionEvent.ACTION_UP;
        boolean isCancel = ev.getActionMasked() == MotionEvent.ACTION_CANCEL;

        // Reset manual touch dispatch state here but make sure the UP/CANCEL event still gets
        // delivered.
        boolean expandingBelowNotch = mExpandingBelowNotch;
        if (isUp || isCancel) {
            mExpandingBelowNotch = false;
        }


        if (isDown) {
            setTouchActive(true);
            mTouchCancelled = false;
        } else if (ev.getActionMasked() == MotionEvent.ACTION_UP
                || ev.getActionMasked() == MotionEvent.ACTION_CANCEL) {
            setTouchActive(false);
        }
        if (mTouchCancelled || mExpandAnimationRunning || mExpandAnimationPending) {
            return false;
        }

        mGestureDetector.onTouchEvent(ev);
        if (mBrightnessMirror != null && mBrightnessMirror.getVisibility() == VISIBLE) {
            // Disallow new pointers while the brightness mirror is visible. This is so that you
            // can't touch anything other than the brightness slider while the mirror is showing
            // and the rest of the panel is transparent.
            if (ev.getActionMasked() == MotionEvent.ACTION_POINTER_DOWN) {
                return false;
            }
        }


        // In case we start outside of the view bounds (below the status bar), we need to dispatch
        // the touch manually as the view system can't accomodate for touches outside of the
        // regular view bounds.


        return super.dispatchTouchEvent(ev);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {

        return false;
    }

    @Override
    public boolean onTouchEvent(MotionEvent ev) {
        boolean handled = false;

        return handled;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (DEBUG) {
            Paint pt = new Paint();
            pt.setColor(0x80FFFF00);
            pt.setStrokeWidth(12.0f);
            pt.setStyle(Paint.Style.STROKE);
            canvas.drawRect(0, 0, canvas.getWidth(), canvas.getHeight(), pt);
        }
    }

    public void cancelExpandHelper() {

    }

    public void cancelCurrentTouch() {
        if (mTouchActive) {
            final long now = SystemClock.uptimeMillis();
            MotionEvent event = MotionEvent.obtain(now, now,
                    MotionEvent.ACTION_CANCEL, 0.0f, 0.0f, 0);
            event.setSource(InputDevice.SOURCE_TOUCHSCREEN);
            dispatchTouchEvent(event);
            event.recycle();
            mTouchCancelled = true;
        }
    }

    public void setExpandAnimationRunning(boolean expandAnimationRunning) {
        mExpandAnimationRunning = expandAnimationRunning;
    }

    public void setExpandAnimationPending(boolean pending) {
        mExpandAnimationPending = pending;
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.print("  mExpandAnimationPending="); pw.println(mExpandAnimationPending);
        pw.print("  mExpandAnimationRunning="); pw.println(mExpandAnimationRunning);
        pw.print("  mTouchCancelled="); pw.println(mTouchCancelled);
        pw.print("  mTouchActive="); pw.println(mTouchActive);
    }


    public class LayoutParams extends FrameLayout.LayoutParams {

        public boolean ignoreRightInset;

        public LayoutParams(int width, int height) {
            super(width, height);
        }

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);


        }
    }

    @Override
    public ActionMode startActionModeForChild(View originalView, ActionMode.Callback callback,
            int type) {
        if (type == ActionMode.TYPE_FLOATING) {
            return startActionMode(originalView, callback, type);
        }
        return super.startActionModeForChild(originalView, callback, type);
    }

    private ActionMode createFloatingActionMode(
            View originatingView, ActionMode.Callback2 callback) {
        if (mFloatingActionMode != null) {
            mFloatingActionMode.finish();
        }
        cleanupFloatingActionModeViews();

        return null;
    }

    private void setHandledFloatingActionMode(ActionMode mode) {
        mFloatingActionMode = mode;
        mFloatingActionMode.invalidate();  // Will show the floating toolbar if necessary.
        mFloatingActionModeOriginatingView.getViewTreeObserver()
                .addOnPreDrawListener(mFloatingToolbarPreDrawListener);
    }

    private void cleanupFloatingActionModeViews() {
        if (mFloatingToolbar != null) {
            mFloatingToolbar.dismiss();
            mFloatingToolbar = null;
        }
        if (mFloatingActionModeOriginatingView != null) {
            if (mFloatingToolbarPreDrawListener != null) {
                mFloatingActionModeOriginatingView.getViewTreeObserver()
                        .removeOnPreDrawListener(mFloatingToolbarPreDrawListener);
                mFloatingToolbarPreDrawListener = null;
            }
            mFloatingActionModeOriginatingView = null;
        }
    }

    private ActionMode startActionMode(
            View originatingView, ActionMode.Callback callback, int type) {
        ActionMode.Callback2 wrappedCallback = new ActionModeCallback2Wrapper(callback);
        ActionMode mode = createFloatingActionMode(originatingView, wrappedCallback);
        if (mode != null && wrappedCallback.onCreateActionMode(mode, mode.getMenu())) {
            setHandledFloatingActionMode(mode);
        } else {
            mode = null;
        }
        return mode;
    }

    private class ActionModeCallback2Wrapper extends ActionMode.Callback2 {
        private final ActionMode.Callback mWrapped;

        public ActionModeCallback2Wrapper(ActionMode.Callback wrapped) {
            mWrapped = wrapped;
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            return mWrapped.onCreateActionMode(mode, menu);
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            requestFitSystemWindows();
            return mWrapped.onPrepareActionMode(mode, menu);
        }

        public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
            return mWrapped.onActionItemClicked(mode, item);
        }

        public void onDestroyActionMode(ActionMode mode) {
            mWrapped.onDestroyActionMode(mode);
            if (mode == mFloatingActionMode) {
                cleanupFloatingActionModeViews();
                mFloatingActionMode = null;
            }
            requestFitSystemWindows();
        }

        @Override
        public void onGetContentRect(ActionMode mode, View view, Rect outRect) {
            if (mWrapped instanceof ActionMode.Callback2) {
                ((ActionMode.Callback2) mWrapped).onGetContentRect(mode, view, outRect);
            } else {
                super.onGetContentRect(mode, view, outRect);
            }
        }
    }
    Context mContext;


}

