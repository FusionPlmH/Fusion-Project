/**
 * Copyright (C) 2019 The Android Open Source Project
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

import static android.view.Display.INVALID_DISPLAY;
import static android.view.View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.utils.LeoManages.LeoStockGlobalGestures;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoEdgeBackGestureBackAction;
import static com.android.settingslib.salt.utils.LeoManages.setLeoEdgeBackGestureBackActionEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoEdgeBackGestureBackActionRight;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.display.DisplayManager.DisplayListener;
import android.os.Looper;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.aPowerManager;
import android.provider.Settings;
import android.util.Log;
import android.util.MathUtils;
import android.util.StatsLog;
import android.view.Gravity;

import android.view.InputChannel;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.InputEventReceiver;

import android.view.InputMonitor;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;

import com.android.systemui.Dependency;
import com.android.systemui.Rune;
import com.android.systemui.recents.OverviewProxyService;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.statusbar.phone.bandaid.ArgumentBuilder;
import com.android.systemui.statusbar.phone.store.EventType;
import com.android.systemui.statusbar.phone.store.NavBarStore;
import com.android.systemui.util.SettingsHelper;


import java.io.PrintWriter;
import java.util.concurrent.Executor;

/**
 * Utility class to handle edge swipes for back gesture
 */
public class EdgeBackGestureHandler implements DisplayListener {

    private static final String TAG = "EdgeBackGestureHandler";
    private static final int MAX_LONG_PRESS_TIMEOUT = SystemProperties.getInt(
            "gestures.back_timeout", 250);



    private final Context mContext;


    private final Point mDisplaySize = new Point();


    private final Executor mMainExecutor;

    private final Region mExcludeRegion = new Region();
    private final Region mUnrestrictedExcludeRegion = new Region();

    // The edge width where touch down is allowed
    private int mEdgeWidth;
    // The slop to distinguish between horizontal and vertical motion
    private final float mTouchSlop;
    // Duration after which we consider the event as longpress.
    private final int mLongPressTimeout;


    private final PointF mDownPoint = new PointF();
    private boolean mThresholdCrossed = false;
    private boolean mAllowGesture = false;
    private boolean mInRejectedExclusion = false;
    private boolean mIsOnLeftEdge;

    private int mImeHeight = 0;

    private boolean mIsAttached;
    private boolean mIsGesturalModeEnabled;
    private boolean mIsEnabled;
    private boolean mIsInTransientImmersiveStickyState;


    private InputEventReceiver mInputEventReceiver;

    private final WindowManager mWm;

    private NavigationBarEdgePanel mEdgePanel;
    private WindowManager.LayoutParams mEdgePanelLp;
    private final Rect mSamplingRect = new Rect();

    private int mLeftInset;
    private int mRightInset;
    private boolean mPartialScreenshotActive;

    private int mEdgeHeight;

    public EdgeBackGestureHandler(Context context) {
        final Resources res = context.getResources();
        mContext = context;

        mMainExecutor = context.getMainExecutor();
        mWm = context.getSystemService(WindowManager.class);


        // Reduce the default touch slop to ensure that we can intercept the gesture
        // before the app starts to react to it.
        // TODO(b/130352502) Tune this value and extract into a constant
        mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop() * 0.75f;
        mLongPressTimeout = Math.min(MAX_LONG_PRESS_TIMEOUT,
                ViewConfiguration.getLongPressTimeout());

        updateCurrentUserResources(res);
    }

    public void updateCurrentUserResources(Resources res) {

    }

    private void updateEdgeHeightValue() {
        if (mDisplaySize == null) {
            return;
        }
        int edgeHeightSetting = 0;
        // edgeHeigthSettings cant be range 0 - 3
        // 0 means full height
        // 1 measns half of the screen
        // 2 means lower third of the screen
        // 3 means lower sicth of the screen
        if (edgeHeightSetting == 0) {
            mEdgeHeight = mDisplaySize.y;
        } else if (edgeHeightSetting == 1) {
            mEdgeHeight = mDisplaySize.y / 2;
        } else if (edgeHeightSetting == 2) {
            mEdgeHeight = mDisplaySize.y / 3;
        } else {
            mEdgeHeight = mDisplaySize.y / 6;
        }
    }

    public void onNavBarAttached() {
        mIsAttached = true;
        updateIsEnabled();
    }


    public void onNavBarDetached() {
        mIsAttached = false;
        updateIsEnabled();
    }


    public void onSystemUiVisibilityChanged(int systemUiVisibility) {

    }

    public void onSettingsChanged() {
        updateEdgeHeightValue();
    }

    private void disposeInputChannel() {
        if (mInputEventReceiver != null) {
            mInputEventReceiver.dispose();
            mInputEventReceiver = null;
        }

    }

    private void updateIsEnabled() {
        boolean isEnabled = mIsAttached && mIsGesturalModeEnabled;
        if (isEnabled == mIsEnabled) {
            return;
        }
        mIsEnabled = isEnabled;
        disposeInputChannel();

        if (mEdgePanel != null) {
            mWm.removeView(mEdgePanel);
            mEdgePanel = null;

        }
    }



    private boolean isWithinTouchRegion(int x, int y) {

        return false;
    }

    private void cancelGesture(MotionEvent ev) {
        // Send action cancel to reset all the touch events
        mAllowGesture = false;
        mInRejectedExclusion = false;
        MotionEvent cancelEv = MotionEvent.obtain(ev);
        cancelEv.setAction(MotionEvent.ACTION_CANCEL);
        mEdgePanel.handleTouch(cancelEv);
        cancelEv.recycle();
    }
    private final OverviewProxyService mOverviewProxyService=null;
    private boolean mIsBlockGestureOnGame = false;

    public void setPartialScreenshot(boolean active) {
        mPartialScreenshotActive = active;
    }
    private boolean mDisabledByPolicy;
    private NavBarStore mNavbarStore;
    private RegionSamplingHelper mRegionSamplingHelper;
    private InputMonitor mInputMonitor;
    public MotionEvent mMotionEvent;
    private void onMotionEvent(MotionEvent motionEvent) {
        mMotionEvent=motionEvent;
        int actionMasked = motionEvent.getActionMasked();
        boolean z = true;
        if (actionMasked == 0) {
            actionMasked = mOverviewProxyService.getSystemUiStateFlags();
            this.mIsOnLeftEdge = ((int) motionEvent.getX()) <= this.mEdgeWidth + this.mLeftInset;
            boolean z2 = !QuickStepContract.isBackGestureDisabled(actionMasked) && isWithinTouchRegion((int) motionEvent.getX(), (int) motionEvent.getY());
            this.mAllowGesture = z2;
            if (Rune.NAVBAR_SUPPORT_GESTURE) {
                z2 = (!this.mAllowGesture || this.mDisabledByPolicy || isBlockSpenGesture(motionEvent)) ? false : true;
                this.mAllowGesture = z2;
            }
            if (Rune.NAVBAR_SUPPORT_REMOTEVIEW) {
                this.mIsBlockGestureOnGame = false;
                if (this.mAllowGesture) {
                    if (this.mNavbarStore.handleEvent(this, EventType.GET_BOOL_GESTURE_BLOCK_ON_GAME, new ArgumentBuilder().build())) {
                        this.mIsBlockGestureOnGame = ((Boolean) this.mNavbarStore.getResult(EventType.GET_BOOL_GESTURE_BLOCK_ON_GAME)).booleanValue();
                    }
                    this.mDownPoint.set(motionEvent.getX(), motionEvent.getY());
                }
                if (!this.mAllowGesture || this.mIsBlockGestureOnGame) {
                    z = false;
                }
                this.mAllowGesture = z;
            }
            if (this.mAllowGesture) {
                this.mEdgePanelLp.gravity = this.mIsOnLeftEdge ? 51 : 53;
                this.mEdgePanel.setIsLeftPanel(this.mIsOnLeftEdge);
                this.mEdgePanel.handleTouch(motionEvent);
                updateEdgePanelPosition(motionEvent.getY());
                this.mWm.updateViewLayout(this.mEdgePanel, this.mEdgePanelLp);
                this.mRegionSamplingHelper.start(this.mSamplingRect);
                this.mDownPoint.set(motionEvent.getX(), motionEvent.getY());
                this.mThresholdCrossed = false;
            }
        } else if (this.mAllowGesture) {
            if (!this.mThresholdCrossed) {
                if (actionMasked == 5) {
                    cancelGesture(motionEvent);
                    return;
                } else if (actionMasked == 2) {
                    if (motionEvent.getEventTime() - motionEvent.getDownTime() > ((long) this.mLongPressTimeout)) {
                        cancelGesture(motionEvent);
                        return;
                    }
                    float abs = Math.abs(motionEvent.getX() - this.mDownPoint.x);
                    float abs2 = Math.abs(motionEvent.getY() - this.mDownPoint.y);
                    if (abs2 > abs && abs2 > this.mTouchSlop) {
                        cancelGesture(motionEvent);
                        return;
                    } else if (abs > abs2 && abs > this.mTouchSlop) {
                        this.mThresholdCrossed = true;
                        this.mInputMonitor.pilferPointers();
                    }
                }
            }
            this.mEdgePanel.handleTouch(motionEvent);
            boolean z3 = actionMasked == 1;
            if (z3) {
                boolean shouldTriggerBack = this.mEdgePanel.shouldTriggerBack();
                if (shouldTriggerBack) {
                   sendEvent(0, 4);
                   sendEvent(1, 4);
                    setSaltEdgeBackGesture(KeyEvent.ACTION_DOWN,KeyEvent.ACTION_UP);
                }
                OverviewProxyService overviewProxyService = this.mOverviewProxyService;
                PointF pointF = this.mDownPoint;
                overviewProxyService.notifyBackAction(shouldTriggerBack, (int) pointF.x, (int) pointF.y, false, mIsOnLeftEdge);
            }
            if (z3 || actionMasked == 3) {
                this.mRegionSamplingHelper.stop();
            } else {
                updateSamplingRect();
                this.mRegionSamplingHelper.updateSamplingRect();
            }
        } else if (this.mIsBlockGestureOnGame) {
            float abs3 = Math.abs(motionEvent.getX() - this.mDownPoint.x);
            if (abs3 > Math.abs(motionEvent.getY() - this.mDownPoint.y) && abs3 > this.mTouchSlop) {
                ((SettingsHelper) Dependency.get(SettingsHelper.class)).setGametoolsEnabled(true);
                this.mIsBlockGestureOnGame = false;
            }
        }
    }


    private void updateEdgePanelPosition(float touchY) {

        updateSamplingRect();
    }

    private void updateSamplingRect() {
        int top = mEdgePanelLp.y;
        int left = mIsOnLeftEdge ? mLeftInset : mDisplaySize.x - mRightInset - mEdgePanelLp.width;
        int right = left + mEdgePanelLp.width;
        int bottom = top + mEdgePanelLp.height;
        mSamplingRect.set(left, top, right, bottom);
        mEdgePanel.adjustRectToBoundingBox(mSamplingRect);
    }
    private boolean isBlockSpenGesture(MotionEvent motionEvent) {

        return false;
    }

    @Override
    public void onDisplayAdded(int displayId) { }

    @Override
    public void onDisplayRemoved(int displayId) { }

    @Override
    public void onDisplayChanged(int displayId) {

    }

    private void updateDisplaySize() {

    }

    public void setSaltForBackArrowGesture() {
        if (mEdgePanel != null) {
            mEdgePanel.setSaltBackArrowSatyle();
        }

    }


    private void  setSaltEdgeBackGesture(int down,int up){
        LeoSysUiManages(mContext);
        boolean enabled=setLeoEdgeBackGestureBackActionEnabled;
        int action;
        String str;
        if(enabled){//启用自定义
            if(mIsOnLeftEdge){ //左边手势动作，开启自定义触发
                action=setLeoEdgeBackGestureBackAction;
                str=LeoStockGlobalGestures[3];
            }else {//右边手势动作，开启自定义触发
                action=setLeoEdgeBackGestureBackActionRight;
                str=LeoStockGlobalGestures[6];
            }
            setLeoAction(mContext,str, action);
            Log.e("Custom EdgeBackGesture", "BY: Leo Salt/ Aurora");
        }else {//默认手势动作，关闭自定义后触发
            sendEvent(down, KeyEvent.KEYCODE_BACK);
            sendEvent(up, KeyEvent.KEYCODE_BACK);
        }
    }
    public void onNavigationModeChanged(int i, Context context) {
        this.mIsGesturalModeEnabled = QuickStepContract.isGesturalMode(i);
        if (Rune.NAVBAR_ENABLED && this.mIsGesturalModeEnabled) {

            if (this.mNavbarStore.handleEvent(this, EventType.GET_BOOL_GESTURE_DISABLED_BY_POLICY, new ArgumentBuilder().build())) {
                this.mDisabledByPolicy = ((Boolean) this.mNavbarStore.getResult(EventType.GET_BOOL_GESTURE_DISABLED_BY_POLICY)).booleanValue();
            }
        }
        updateIsEnabled();
        if (!Rune.NAVBAR_SUPPORT_GESTURE) {
            updateCurrentUserResources(context.getResources());
        }
    }

    private void sendEvent(int action, int code) {
        long when = SystemClock.uptimeMillis();
        final KeyEvent ev = new KeyEvent(when, when, action, code, 0 /* repeat */,
                0 /* metaState */, KeyCharacterMap.VIRTUAL_KEYBOARD, 0 /* scancode */,
                KeyEvent.FLAG_FROM_SYSTEM | KeyEvent.FLAG_VIRTUAL_HARD_KEY,
                InputDevice.SOURCE_KEYBOARD);


    }

    public void setInsets(int leftInset, int rightInset) {
        mLeftInset = leftInset;
        mRightInset = rightInset;
    }

    public void dump(PrintWriter pw) {
        pw.println("EdgeBackGestureHandler:");
        pw.println("  mIsEnabled=" + mIsEnabled);
        pw.println("  mAllowGesture=" + mAllowGesture);
        pw.println("  mInRejectedExclusion" + mInRejectedExclusion);
        pw.println("  mExcludeRegion=" + mExcludeRegion);
        pw.println("  mUnrestrictedExcludeRegion=" + mUnrestrictedExcludeRegion);
        pw.println("  mImeHeight=" + mImeHeight);
        pw.println("  mIsAttached=" + mIsAttached);
        pw.println("  mEdgeWidth=" + mEdgeWidth);
    }

    class SysUiInputEventReceiver extends InputEventReceiver {
        SysUiInputEventReceiver(InputChannel channel, Looper looper) {
            super(channel, looper);
        }

        public void onInputEvent(InputEvent event) {

            finishInputEvent(event, true);
        }
    }
}
