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

package com.android.systemui.statusbar.phone;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.IActivityManager;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.PixelFormat;
import android.os.Binder;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view2.WindowManager;
import android.view2.WindowManager.LayoutParams;



import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPullDownBlurEffect;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPullDownBlurEffectStyle;
import static com.os.leo.utils.LeoUtils.getLeoUri;

/**
 * Encapsulates all logic for the status bar window state management.
 */
public class StatusBarWindowManager {

    private static final String TAG = "StatusBarWindowManager";

    private final Context mContext;
    private final WindowManager mWindowManager;
   // private final IActivityManager mActivityManager;
    private View mStatusBarView;
    private WindowManager.LayoutParams mLp;
    private WindowManager.LayoutParams mLpChanged;
    private boolean mHasTopUi;
    private boolean mHasTopUiChanged;
    private int mBarHeight;
    private boolean mKeyguardScreenRotation;
    private float mScreenBrightnessDoze;
    private final State mCurrentState = new State();
    private OtherwisedCollapsedListener mListener;

    @SuppressLint("ServiceCast")
    public StatusBarWindowManager(Context context) {
        mContext = context;
        mWindowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
     //   mActivityManager = ActivityManager.getService();
        mKeyguardScreenRotation = shouldEnableKeyguardScreenRotation();
        mScreenBrightnessDoze = mContext.getResources().getInteger(
                com.android.internal.R.integer.config_screenBrightnessDoze) / 255f;
    }
    public void LeoPullDownBlurEffect() {
        LeoSettings(mContext);
        if (setLeoUesrPullDownBlurEffect==1) {
            float Style = setLeoUesrPullDownBlurEffectStyle;
            LayoutParams layoutParams;
            if (!(this.mCurrentState.keyguardShowing && this.mCurrentState.qsExpanded) && (this.mCurrentState.keyguardShowing || !this.mCurrentState.panelExpanded)) {
                layoutParams = this.mLpChanged;
                layoutParams.flags &= -3;
                layoutParams = this.mLpChanged;
                layoutParams.samsungFlags &= -65;
                return;
            }
            layoutParams = this.mLpChanged;
            layoutParams.flags |= 2;
            this.mLpChanged.dimAmount = Style;
            layoutParams = this.mLpChanged;
            layoutParams.samsungFlags |= 64;
        }
    }

    private boolean shouldEnableKeyguardScreenRotation() {
        Resources res = mContext.getResources();
     //   boolean enableAccelerometerRotation = Settings.System.getInt(mContext.getContentResolver(),
            //    Settings.System.ACCELEROMETER_ROTATION, 1) != 0;
        //boolean enableLockScreenRotation = LineageSettings.System.getInt(mContext.getContentResolver(),
           //     LineageSettings.System.LOCKSCREEN_ROTATION, 0) != 0;
     //   return SystemProperties.getBoolean("lockscreen.rot_override", false)
              //  || (res.getBoolean(R.bool.config_enableLockScreenRotation)
              //  && (enableLockScreenRotation && enableAccelerometerRotation));
        return false;
    }

    /**
     * Adds the status bar view to the window manager.
     *
     * @param statusBarView The view to add.
     * @param barHeight The height of the status bar in collapsed state.
     */
    public void add(View statusBarView, int barHeight) {

        // Now that the status bar window encompasses the sliding panel and its
        // translucent backdrop, the entire thing is made TRANSLUCENT and is
        // hardware-accelerated.
        mLp = new WindowManager.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                barHeight,
                WindowManager.LayoutParams.TYPE_STATUS_BAR,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                        | WindowManager.LayoutParams.FLAG_TOUCHABLE_WHEN_WAKING
                        | WindowManager.LayoutParams.FLAG_SPLIT_TOUCH
                        | WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH
                        | WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS,
                PixelFormat.TRANSLUCENT);
        mLp.token = new Binder();
        mLp.gravity = Gravity.TOP;
        mLp.softInputMode = WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE;
        mLp.setTitle("StatusBar");
        mLp.packageName = mContext.getPackageName();
        mStatusBarView = statusBarView;
        mBarHeight = barHeight;
     //   mWindowManager.addView(mStatusBarView, mLp);
        mLpChanged = new WindowManager.LayoutParams();
        mLpChanged.copyFrom(mLp);

        SettingsObserver observer = new SettingsObserver(new Handler());
        observer.observe(mContext);
    }

    public void setDozeScreenBrightness(int value) {
        mScreenBrightnessDoze = value / 255f;
    }

    public void setKeyguardDark(boolean dark) {

        mStatusBarView.setSystemUiVisibility(2);
    }

    private void applyKeyguardFlags(State state) {
        if (state.keyguardShowing) {
          //  mLpChanged.privateFlags |= WindowManager.LayoutParams.PRIVATE_FLAG_KEYGUARD;
        } else {
          //  mLpChanged.privateFlags &= ~WindowManager.LayoutParams.PRIVATE_FLAG_KEYGUARD;
        }

        if (state.keyguardShowing && !state.backdropShowing && !state.dozing) {
            mLpChanged.flags |= WindowManager.LayoutParams.FLAG_SHOW_WALLPAPER;
        } else {
            mLpChanged.flags &= ~WindowManager.LayoutParams.FLAG_SHOW_WALLPAPER;
        }
    }

    private void adjustScreenOrientation(State state) {
        if (state.isKeyguardShowingAndNotOccluded() || state.dozing) {
            if (mKeyguardScreenRotation) {
                mLpChanged.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_USER;
            } else {
                mLpChanged.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_NOSENSOR;
            }
        } else {
            mLpChanged.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;
        }
    }

    private void applyFocusableFlag(State state) {
        boolean panelFocusable = state.statusBarFocusable && state.panelExpanded;
        if (state.bouncerShowing && (state.keyguardOccluded || state.keyguardNeedsInput)
               // || StatusBar.ENABLE_REMOTE_INPUT && state.remoteInputActive
        ) {
            mLpChanged.flags &= ~WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
            mLpChanged.flags &= ~WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM;
        } else if (state.isKeyguardShowingAndNotOccluded() || panelFocusable) {
            mLpChanged.flags &= ~WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
            mLpChanged.flags |= WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM;
        } else {
            mLpChanged.flags |= WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
            mLpChanged.flags &= ~WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM;
        }

        mLpChanged.softInputMode = WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE;
    }

    private void applyHeight(State state) {
        boolean expanded = isExpanded(state);
        if (state.forcePluginOpen) {
            mListener.setWouldOtherwiseCollapse(expanded);
            expanded = true;
        }
        if (expanded) {
            mLpChanged.height = ViewGroup.LayoutParams.MATCH_PARENT;
        } else {
            mLpChanged.height = mBarHeight;
        }
    }

    private boolean isExpanded(State state) {
        return !state.forceCollapsed && (state.isKeyguardShowingAndNotOccluded()
                || state.panelVisible || state.keyguardFadingAway || state.bouncerShowing
                || state.headsUpShowing || state.scrimsVisible);
    }

    private void applyFitsSystemWindows(State state) {
        boolean fitsSystemWindows = !state.isKeyguardShowingAndNotOccluded();
        if (mStatusBarView.getFitsSystemWindows() != fitsSystemWindows) {
            mStatusBarView.setFitsSystemWindows(fitsSystemWindows);
            mStatusBarView.requestApplyInsets();
        }
    }
    private void applyUserActivityTimeout(State state) {
        if (state.isKeyguardShowingAndNotOccluded()){

            //   && state.statusBarState == StatusBarState.KEYGUARD
        // && !state.qsExpanded) {
        // mLpChanged.userActivityTimeout = KeyguardViewMediator.AWAKE_INTERVAL_DEFAULT_MS;
        } else {

        //  mLpChanged.userActivityTimeout = -1;
             }
    }

    private void applyInputFeatures(State state) {
        if (state.isKeyguardShowingAndNotOccluded()
      ) {

        } else {

        }
    }


    private void apply(State state) {
        applyKeyguardFlags(state);
        applyForceStatusBarVisibleFlag(state);
        applyFocusableFlag(state);
        adjustScreenOrientation(state);
        applyHeight(state);
        applyUserActivityTimeout(state);
        applyInputFeatures(state);
        applyFitsSystemWindows(state);
        applyModalFlag(state);
        applyBrightness(state);
        applyHasTopUi(state);
        applySleepToken(state);
        if (mLp.copyFrom(mLpChanged) != 0) {
          //  mWindowManager.updateViewLayout(mStatusBarView, mLp);
        }
        if (mHasTopUi != mHasTopUiChanged) {
            //  mActivityManager.setHasTopUi(mHasTopUiChanged);
            mHasTopUi = mHasTopUiChanged;
        }
    }

    private void applyForceStatusBarVisibleFlag(State state) {
        if (state.forceStatusBarVisible) {
           // mLpChanged.privateFlags |= WindowManager
                  //  .LayoutParams.PRIVATE_FLAG_FORCE_STATUS_BAR_VISIBLE_TRANSPARENT;
        } else {
           // mLpChanged.privateFlags &= ~WindowManager
               //     .LayoutParams.PRIVATE_FLAG_FORCE_STATUS_BAR_VISIBLE_TRANSPARENT;
        }
    }

    private void applyModalFlag(State state) {
        if (state.headsUpShowing) {
            mLpChanged.flags |= WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL;
        } else {
            mLpChanged.flags &= ~WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL;
        }
    }

    private void applyBrightness(State state) {
        if (state.forceDozeBrightness) {
            mLpChanged.screenBrightness = mScreenBrightnessDoze;
        } else {
            mLpChanged.screenBrightness = WindowManager.LayoutParams.BRIGHTNESS_OVERRIDE_NONE;
        }
    }

    private void applyHasTopUi(State state) {
        mHasTopUiChanged = isExpanded(state);
    }

    private void applySleepToken(State state) {
        if (state.dozing) {
          //  mLpChanged.privateFlags |= LayoutParams.PRIVATE_FLAG_ACQUIRES_SLEEP_TOKEN;
        } else {
            //mLpChanged.privateFlags &= ~LayoutParams.PRIVATE_FLAG_ACQUIRES_SLEEP_TOKEN;
        }
    }

    public void setKeyguardShowing(boolean showing) {
        mCurrentState.keyguardShowing = showing;
        apply(mCurrentState);
    }

    public void setKeyguardOccluded(boolean occluded) {
        mCurrentState.keyguardOccluded = occluded;
        apply(mCurrentState);
    }

    public void setKeyguardNeedsInput(boolean needsInput) {
        mCurrentState.keyguardNeedsInput = needsInput;
        apply(mCurrentState);
    }

    public void setPanelVisible(boolean visible) {
        mCurrentState.panelVisible = visible;
        mCurrentState.statusBarFocusable = visible;
        apply(mCurrentState);
    }

    public void setStatusBarFocusable(boolean focusable) {
        mCurrentState.statusBarFocusable = focusable;
        apply(mCurrentState);
    }

    public void setBouncerShowing(boolean showing) {
        mCurrentState.bouncerShowing = showing;
        apply(mCurrentState);
    }

    public void setBackdropShowing(boolean showing) {
        mCurrentState.backdropShowing = showing;
        apply(mCurrentState);
    }

    public void setKeyguardFadingAway(boolean keyguardFadingAway) {
        mCurrentState.keyguardFadingAway = keyguardFadingAway;
        apply(mCurrentState);
    }

    public void setQsExpanded(boolean expanded) {
        mCurrentState.qsExpanded = expanded;
        apply(mCurrentState);
    }

    public void setForceUserActivity(boolean forceUserActivity) {
        mCurrentState.forceUserActivity = forceUserActivity;
        apply(mCurrentState);
    }

    public void setScrimsVisible(boolean scrimsVisible) {
        mCurrentState.scrimsVisible = scrimsVisible;
        apply(mCurrentState);
    }

    public void setHeadsUpShowing(boolean showing) {
        mCurrentState.headsUpShowing = showing;
        apply(mCurrentState);
    }

    public void setStatusBarState(int state) {
        mCurrentState.statusBarState = state;
        apply(mCurrentState);
    }

    public void setForceStatusBarVisible(boolean forceStatusBarVisible) {
        mCurrentState.forceStatusBarVisible = forceStatusBarVisible;
        apply(mCurrentState);
    }

    /**
     * Force the window to be collapsed, even if it should theoretically be expanded.
     * Used for when a heads-up comes in but we still need to wait for the touchable regions to
     * be computed.
     */
    public void setForceWindowCollapsed(boolean force) {
        mCurrentState.forceCollapsed = force;
        apply(mCurrentState);
    }

    public void setPanelExpanded(boolean isExpanded) {
        mCurrentState.panelExpanded = isExpanded;
        apply(mCurrentState);
    }


    public void onRemoteInputActive(boolean remoteInputActive) {
        mCurrentState.remoteInputActive = remoteInputActive;
        apply(mCurrentState);
    }

    /**
     * Set whether the screen brightness is forced to the value we use for doze mode by the status
     * bar window.
     */
    public void setForceDozeBrightness(boolean forceDozeBrightness) {
        mCurrentState.forceDozeBrightness = forceDozeBrightness;
        apply(mCurrentState);
    }

    public void setDozing(boolean dozing) {
        mCurrentState.dozing = dozing;
        apply(mCurrentState);
    }

    public void setBarHeight(int barHeight) {
        mBarHeight = barHeight;
        apply(mCurrentState);
    }

    public void setForcePluginOpen(boolean forcePluginOpen) {
        mCurrentState.forcePluginOpen = forcePluginOpen;
        apply(mCurrentState);
    }

    public void setStateListener(OtherwisedCollapsedListener listener) {
        mListener = listener;
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("StatusBarWindowManager state:");
        pw.println(mCurrentState);
    }

    public boolean isShowingWallpaper() {
        return !mCurrentState.backdropShowing;
    }

    private static class State {
        boolean keyguardShowing;
        boolean keyguardOccluded;
        boolean keyguardNeedsInput;
        boolean panelVisible;
        boolean panelExpanded;
        boolean statusBarFocusable;
        boolean bouncerShowing;
        boolean keyguardFadingAway;
        boolean qsExpanded;
        boolean headsUpShowing;
        boolean forceStatusBarVisible;
        boolean forceCollapsed;
        boolean forceDozeBrightness;
        boolean forceUserActivity;
        boolean backdropShowing;

        /**
         * The {@link StatusBar} state from the status bar.
         */
        int statusBarState;

        boolean remoteInputActive;
        boolean forcePluginOpen;
        boolean dozing;
        boolean scrimsVisible;

        private boolean isKeyguardShowingAndNotOccluded() {
            return keyguardShowing && !keyguardOccluded;
        }

        @Override
        public String toString() {
            StringBuilder result = new StringBuilder();
            String newLine = "\n";
            result.append("Window State {");
            result.append(newLine);

            Field[] fields = this.getClass().getDeclaredFields();

            // Print field names paired with their values
            for (Field field : fields) {
                result.append("  ");
                try {
                    result.append(field.getName());
                    result.append(": ");
                    //requires access to private field:
                    result.append(field.get(this));
                } catch (IllegalAccessException ex) {
                }
                result.append(newLine);
            }
            result.append("}");

            return result.toString();
        }
    }

    /**
     * Custom listener to pipe data back to plugins about whether or not the status bar would be
     * collapsed if not for the plugin.
     * TODO: Find cleaner way to do this.
     */
    public interface OtherwisedCollapsedListener {
        void setWouldOtherwiseCollapse(boolean otherwiseCollapse);
    }

    private class SettingsObserver extends ContentObserver {
        public SettingsObserver(Handler handler) {
            super(handler);
        }

        public void observe(Context context) {
            context.getContentResolver().registerContentObserver(
                    getLeoUri(Settings.System.ACCELEROMETER_ROTATION),
                    false,
                    this);

        }

        public void unobserve(Context context) {
            context.getContentResolver().unregisterContentObserver(this);
        }

        @Override
        public void onChange(boolean selfChange) {
            mKeyguardScreenRotation = shouldEnableKeyguardScreenRotation();
            // update the state
            apply(mCurrentState);
        }
    }
}
