/*
 * Copyright (C) 2010 The Android Open Source Project
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

package com.android.systemui.statusbar;

import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Rect;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.VisibleForTesting;
import android.util.Pair;

import com.android.internal.os.SomeArgs;
import com.android.internal.statusbar.IStatusBar;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.systemui.SystemUI;

import java.util.ArrayList;

/**
 * This class takes the functions from IStatusBar that come in on
 * binder pool threads and posts messages to get them onto the main
 * thread, and calls onto Callbacks.  It also takes care of
 * coalescing these calls so they don't stack up.  For the calls
 * are coalesced, note that they are all idempotent.
 */
public  class CommandQueue extends IStatusBar.Stub {
    private static final int INDEX_MASK = 0xffff;
    private static final int MSG_SHIFT  = 16;
    private static final int MSG_MASK   = 0xffff << MSG_SHIFT;

    private static final int OP_SET_ICON    = 1;
    private static final int OP_REMOVE_ICON = 2;

    private static final int MSG_ICON                          = 1 << MSG_SHIFT;
    private static final int MSG_DISABLE                       = 2 << MSG_SHIFT;
    private static final int MSG_EXPAND_NOTIFICATIONS          = 3 << MSG_SHIFT;
    private static final int MSG_COLLAPSE_PANELS               = 4 << MSG_SHIFT;
    private static final int MSG_EXPAND_SETTINGS               = 5 << MSG_SHIFT;
    private static final int MSG_SET_SYSTEMUI_VISIBILITY       = 6 << MSG_SHIFT;
    private static final int MSG_TOP_APP_WINDOW_CHANGED        = 7 << MSG_SHIFT;
    private static final int MSG_SHOW_IME_BUTTON               = 8 << MSG_SHIFT;
    private static final int MSG_TOGGLE_RECENT_APPS            = 9 << MSG_SHIFT;
    private static final int MSG_PRELOAD_RECENT_APPS           = 10 << MSG_SHIFT;
    private static final int MSG_CANCEL_PRELOAD_RECENT_APPS    = 11 << MSG_SHIFT;
    private static final int MSG_SET_WINDOW_STATE              = 12 << MSG_SHIFT;
    private static final int MSG_SHOW_RECENT_APPS              = 13 << MSG_SHIFT;
    private static final int MSG_HIDE_RECENT_APPS              = 14 << MSG_SHIFT;
    private static final int MSG_SHOW_SCREEN_PIN_REQUEST       = 18 << MSG_SHIFT;
    private static final int MSG_APP_TRANSITION_PENDING        = 19 << MSG_SHIFT;
    private static final int MSG_APP_TRANSITION_CANCELLED      = 20 << MSG_SHIFT;
    private static final int MSG_APP_TRANSITION_STARTING       = 21 << MSG_SHIFT;
    private static final int MSG_ASSIST_DISCLOSURE             = 22 << MSG_SHIFT;
    private static final int MSG_START_ASSIST                  = 23 << MSG_SHIFT;
    private static final int MSG_CAMERA_LAUNCH_GESTURE         = 24 << MSG_SHIFT;
    private static final int MSG_TOGGLE_KEYBOARD_SHORTCUTS     = 25 << MSG_SHIFT;
    private static final int MSG_SHOW_PICTURE_IN_PICTURE_MENU  = 26 << MSG_SHIFT;
    private static final int MSG_ADD_QS_TILE                   = 27 << MSG_SHIFT;
    private static final int MSG_REMOVE_QS_TILE                = 28 << MSG_SHIFT;
    private static final int MSG_CLICK_QS_TILE                 = 29 << MSG_SHIFT;
    private static final int MSG_TOGGLE_APP_SPLIT_SCREEN       = 30 << MSG_SHIFT;
    private static final int MSG_APP_TRANSITION_FINISHED       = 31 << MSG_SHIFT;
    private static final int MSG_DISMISS_KEYBOARD_SHORTCUTS    = 32 << MSG_SHIFT;
    private static final int MSG_HANDLE_SYSTEM_KEY             = 33 << MSG_SHIFT;
    private static final int MSG_SHOW_GLOBAL_ACTIONS           = 34 << MSG_SHIFT;
    private static final int MSG_TOGGLE_PANEL                  = 35 << MSG_SHIFT;
    private static final int MSG_SHOW_SHUTDOWN_UI              = 36 << MSG_SHIFT;
    private static final int MSG_SET_TOP_APP_HIDES_STATUS_BAR  = 37 << MSG_SHIFT;
    private static final int MSG_ROTATION_PROPOSAL             = 38 << MSG_SHIFT;
    private static final int MSG_FINGERPRINT_SHOW              = 39 << MSG_SHIFT;
    private static final int MSG_FINGERPRINT_AUTHENTICATED     = 40 << MSG_SHIFT;
    private static final int MSG_FINGERPRINT_HELP              = 41 << MSG_SHIFT;
    private static final int MSG_FINGERPRINT_ERROR             = 42 << MSG_SHIFT;
    private static final int MSG_FINGERPRINT_HIDE              = 43 << MSG_SHIFT;
    private static final int MSG_SHOW_CHARGING_ANIMATION       = 44 << MSG_SHIFT;
    private static final int MSG_SHOW_PINNING_TOAST_ENTER_EXIT = 45 << MSG_SHIFT;
    private static final int MSG_SHOW_PINNING_TOAST_ESCAPE     = 46 << MSG_SHIFT;
    private static final int MSG_TOGGLE_CAMERA_FLASH           = 47 << MSG_SHIFT;
    private static final int MSG_SET_AUTOROTATE_STATUS         = 48 << MSG_SHIFT;
    private static final int MSG_RESTART_UI                    = 49 << MSG_SHIFT;
    private static final int MSG_TOGGLE_PIE_ORIENTATION        = 50 << MSG_SHIFT;
    private static final int MSG_SCREEN_PINNING_STATE_CHANGED  = 51 << MSG_SHIFT;
    private static final int MSG_LEFT_IN_LANDSCAPE_STATE_CHANGED  = 52 << MSG_SHIFT;
    private static final int MSG_TOGGLE_NAVIGATION_EDITOR      = 53 << MSG_SHIFT;
    private static final int MSG_DISPATCH_NAVIGATION_EDITOR_RESULTS = 54 << MSG_SHIFT;
    private static final int MSG_IN_DISPLAY_FINGERPRINT        = 55 << MSG_SHIFT;
    private static final int MSG_TOGGLE_SETTINGS_PANEL                  = 100 << MSG_SHIFT;

    public static final int FLAG_EXCLUDE_NONE = 0;
    public static final int FLAG_EXCLUDE_SEARCH_PANEL = 1 << 0;
    public static final int FLAG_EXCLUDE_RECENTS_PANEL = 1 << 1;
    public static final int FLAG_EXCLUDE_NOTIFICATION_PANEL = 1 << 2;
    public static final int FLAG_EXCLUDE_INPUT_METHODS_PANEL = 1 << 3;
    public static final int FLAG_EXCLUDE_COMPAT_MODE_PANEL = 1 << 4;

    private static final String SHOW_IME_SWITCHER_KEY = "showImeSwitcherKey";

    private final Object mLock = new Object();
    private ArrayList<Callbacks> mCallbacks = new ArrayList<>();
    private Handler mHandler = new H(Looper.getMainLooper());
    private int mDisable1;
    private int mDisable2;

    /**
     * These methods are called back on the main thread.
     */
    public interface Callbacks {

    }

    @VisibleForTesting
    protected CommandQueue() {
    }

    public void addCallbacks(Callbacks callbacks) {
        mCallbacks.add(callbacks);
      //  callbacks.disable(mDisable1, mDisable2, false /* animate */);
    }

    public void removeCallbacks(Callbacks callbacks) {
        mCallbacks.remove(callbacks);
    }

    public void dispatchNavigationEditorResults(Intent intent) {
        synchronized (mLock) {
            // don't coalesce these
            // this command can't come in fast enough to make a difference
            // but for the sake of principle...
            mHandler.obtainMessage(MSG_DISPATCH_NAVIGATION_EDITOR_RESULTS, intent).sendToTarget();
        }
    }

    public void toggleNavigationEditor() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_TOGGLE_NAVIGATION_EDITOR);
            mHandler.sendEmptyMessage(MSG_TOGGLE_NAVIGATION_EDITOR);
        }
    }

    public void leftInLandscapeChanged(boolean isLeft) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_LEFT_IN_LANDSCAPE_STATE_CHANGED);
            mHandler.obtainMessage(MSG_LEFT_IN_LANDSCAPE_STATE_CHANGED,
                    isLeft ? 1 : 0, 0, null).sendToTarget();
        }
    }

    public void screenPinningStateChanged(boolean enabled) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_SCREEN_PINNING_STATE_CHANGED);
            mHandler.obtainMessage(MSG_SCREEN_PINNING_STATE_CHANGED,
                    enabled ? 1 : 0, 0, null).sendToTarget();
        }
    }
    public void setIcon(String slot, StatusBarIcon icon) {
        synchronized (mLock) {
            // don't coalesce these
            mHandler.obtainMessage(MSG_ICON, OP_SET_ICON, 0,
                    new Pair<String, StatusBarIcon>(slot, icon)).sendToTarget();
        }
    }

    public void removeIcon(String slot) {
        synchronized (mLock) {
            // don't coalesce these
            mHandler.obtainMessage(MSG_ICON, OP_REMOVE_ICON, 0, slot).sendToTarget();
        }
    }

    public void disable(int state1, int state2, boolean animate) {
        synchronized (mLock) {
            mDisable1 = state1;
            mDisable2 = state2;
            mHandler.removeMessages(MSG_DISABLE);
            Message msg = mHandler.obtainMessage(MSG_DISABLE, state1, state2, animate);
            if (Looper.myLooper() == mHandler.getLooper()) {
                // If its the right looper execute immediately so hides can be handled quickly.
                mHandler.handleMessage(msg);
                msg.recycle();
            } else {
                msg.sendToTarget();
            }
        }
    }

    public void disable(int state1, int state2) {
        disable(state1, state2, true);
    }

    public void recomputeDisableFlags(boolean animate) {
        disable(mDisable1, mDisable2, animate);
    }

    public void animateExpandNotificationsPanel() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_EXPAND_NOTIFICATIONS);
            mHandler.sendEmptyMessage(MSG_EXPAND_NOTIFICATIONS);
        }
    }

    public void animateCollapsePanels() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_COLLAPSE_PANELS);
            mHandler.obtainMessage(MSG_COLLAPSE_PANELS, 0, 0).sendToTarget();
        }
    }

    public void animateCollapsePanels(int flags) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_COLLAPSE_PANELS);
            mHandler.obtainMessage(MSG_COLLAPSE_PANELS, flags, 0).sendToTarget();
        }
    }

    public void togglePanel() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_TOGGLE_PANEL);
            mHandler.obtainMessage(MSG_TOGGLE_PANEL, 0, 0).sendToTarget();
        }
    }

    public void toggleSettingsPanel() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_TOGGLE_SETTINGS_PANEL);
            mHandler.obtainMessage(MSG_TOGGLE_SETTINGS_PANEL, 0, 0).sendToTarget();
        }
    }

    public void animateExpandSettingsPanel(String subPanel) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_EXPAND_SETTINGS);
            mHandler.obtainMessage(MSG_EXPAND_SETTINGS, subPanel).sendToTarget();
        }
    }

    public void setSystemUiVisibility(int vis, int fullscreenStackVis, int dockedStackVis,
                                      int mask, Rect fullscreenStackBounds, Rect dockedStackBounds) {
        synchronized (mLock) {
            // Don't coalesce these, since it might have one time flags set such as
            // STATUS_BAR_UNHIDE which might get lost.
            SomeArgs args = SomeArgs.obtain();
            args.argi1 = vis;
            args.argi2 = fullscreenStackVis;
            args.argi3 = dockedStackVis;
            args.argi4 = mask;
            args.arg1 = fullscreenStackBounds;
            args.arg2 = dockedStackBounds;
            mHandler.obtainMessage(MSG_SET_SYSTEMUI_VISIBILITY, args).sendToTarget();
        }
    }

    public void topAppWindowChanged(boolean menuVisible) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_TOP_APP_WINDOW_CHANGED);
            mHandler.obtainMessage(MSG_TOP_APP_WINDOW_CHANGED, menuVisible ? 1 : 0, 0,
                    null).sendToTarget();
        }
    }

    public void setImeWindowStatus(IBinder token, int vis, int backDisposition,
                                   boolean showImeSwitcher) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_SHOW_IME_BUTTON);
            Message m = mHandler.obtainMessage(MSG_SHOW_IME_BUTTON, vis, backDisposition, token);
            m.getData().putBoolean(SHOW_IME_SWITCHER_KEY, showImeSwitcher);
            m.sendToTarget();
        }
    }

    public void showRecentApps(boolean triggeredFromAltTab) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_SHOW_RECENT_APPS);
            mHandler.obtainMessage(MSG_SHOW_RECENT_APPS, triggeredFromAltTab ? 1 : 0, 0,
                    null).sendToTarget();
        }
    }

    public void hideRecentApps(boolean triggeredFromAltTab, boolean triggeredFromHomeKey) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_HIDE_RECENT_APPS);
            mHandler.obtainMessage(MSG_HIDE_RECENT_APPS,
                    triggeredFromAltTab ? 1 : 0, triggeredFromHomeKey ? 1 : 0,
                    null).sendToTarget();
        }
    }

    public void toggleSplitScreen() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_TOGGLE_APP_SPLIT_SCREEN);
            mHandler.obtainMessage(MSG_TOGGLE_APP_SPLIT_SCREEN, 0, 0, null).sendToTarget();
        }
    }

    public void toggleRecentApps() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_TOGGLE_RECENT_APPS);
            Message msg = mHandler.obtainMessage(MSG_TOGGLE_RECENT_APPS, 0, 0, null);

            msg.sendToTarget();
        }
    }

    public void preloadRecentApps() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_PRELOAD_RECENT_APPS);
            mHandler.obtainMessage(MSG_PRELOAD_RECENT_APPS, 0, 0, null).sendToTarget();
        }
    }

    public void cancelPreloadRecentApps() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_CANCEL_PRELOAD_RECENT_APPS);
            mHandler.obtainMessage(MSG_CANCEL_PRELOAD_RECENT_APPS, 0, 0, null).sendToTarget();
        }
    }

    @Override
    public void dismissKeyboardShortcutsMenu() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_DISMISS_KEYBOARD_SHORTCUTS);
            mHandler.obtainMessage(MSG_DISMISS_KEYBOARD_SHORTCUTS).sendToTarget();
        }
    }

    @Override
    public void toggleKeyboardShortcutsMenu(int deviceId) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_TOGGLE_KEYBOARD_SHORTCUTS);
            mHandler.obtainMessage(MSG_TOGGLE_KEYBOARD_SHORTCUTS, deviceId, 0).sendToTarget();
        }
    }


    public void showPictureInPictureMenu() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_SHOW_PICTURE_IN_PICTURE_MENU);
            mHandler.obtainMessage(MSG_SHOW_PICTURE_IN_PICTURE_MENU).sendToTarget();
        }
    }

    public void toggleOrientationListener(boolean enable) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_TOGGLE_PIE_ORIENTATION);
            mHandler.obtainMessage(MSG_TOGGLE_PIE_ORIENTATION).sendToTarget();
        }
    }

    public void setWindowState(int window, int state) {
        synchronized (mLock) {
            // don't coalesce these
            mHandler.obtainMessage(MSG_SET_WINDOW_STATE, window, state, null).sendToTarget();
        }
    }

    @Override
    public void buzzBeepBlinked() throws RemoteException {

    }

    @Override
    public void notificationLightOff() throws RemoteException {

    }

    @Override
    public void notificationLightPulse(int i, int i1, int i2) throws RemoteException {

    }

    @Override
    public void showRecentApps(boolean b, boolean b1) throws RemoteException {

    }

    public void showScreenPinningRequest(int taskId) {
        synchronized (mLock) {
            mHandler.obtainMessage(MSG_SHOW_SCREEN_PIN_REQUEST, taskId, 0, null)
                    .sendToTarget();
        }
    }

    public void appTransitionPending() {
        appTransitionPending(false /* forced */);
    }

    public void appTransitionPending(boolean forced) {
        synchronized (mLock) {
            mHandler.obtainMessage(MSG_APP_TRANSITION_PENDING, forced ? 1 : 0, 0).sendToTarget();
        }
    }

    public void appTransitionCancelled() {
        synchronized (mLock) {
            mHandler.sendEmptyMessage(MSG_APP_TRANSITION_CANCELLED);
        }
    }

    public void appTransitionStarting(long startTime, long duration) {
        appTransitionStarting(startTime, duration, false /* forced */);
    }

    public void appTransitionStarting(long startTime, long duration, boolean forced) {
        synchronized (mLock) {
            mHandler.obtainMessage(MSG_APP_TRANSITION_STARTING, forced ? 1 : 0, 0,
                    Pair.create(startTime, duration)).sendToTarget();
        }
    }

    @Override
    public void appTransitionFinished() {
        synchronized (mLock) {
            mHandler.sendEmptyMessage(MSG_APP_TRANSITION_FINISHED);
        }
    }

    public void showAssistDisclosure() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_ASSIST_DISCLOSURE);
            mHandler.obtainMessage(MSG_ASSIST_DISCLOSURE).sendToTarget();
        }
    }

    public void startAssist(Bundle args) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_START_ASSIST);
            mHandler.obtainMessage(MSG_START_ASSIST, args).sendToTarget();
        }
    }

    @Override
    public void onCameraLaunchGestureDetected(int source) {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_CAMERA_LAUNCH_GESTURE);
            mHandler.obtainMessage(MSG_CAMERA_LAUNCH_GESTURE, source, 0).sendToTarget();
        }
    }

    @Override
    public void showTvPictureInPictureMenu() throws RemoteException {

    }

    @Override
    public void addQsTile(ComponentName tile) {
        synchronized (mLock) {
            mHandler.obtainMessage(MSG_ADD_QS_TILE, tile).sendToTarget();
        }
    }

    @Override
    public void remQsTile(ComponentName tile) {
        synchronized (mLock) {
            mHandler.obtainMessage(MSG_REMOVE_QS_TILE, tile).sendToTarget();
        }
    }

    @Override
    public void clickQsTile(ComponentName tile) {
        synchronized (mLock) {
            mHandler.obtainMessage(MSG_CLICK_QS_TILE, tile).sendToTarget();
        }
    }

    @Override
    public void handleSystemNavigationKey(int i) throws RemoteException {

    }


    public void restartUI() {
        synchronized (mLock) {
            mHandler.removeMessages(MSG_RESTART_UI);
            mHandler.obtainMessage(MSG_RESTART_UI).sendToTarget();
        }
    }

    private final class H extends Handler {
        private H(Looper l) {
            super(l);
        }

        public void handleMessage(Message msg) {

        }
    }

    // Need this class since CommandQueue already extends IStatusBar.Stub, so CommandQueueStart
    // is needed so it can extend SystemUI.
    public static class CommandQueueStart extends SystemUI {
        @Override
        public void start() {
            putComponent(CommandQueue.class, new CommandQueue());
        }
    }
}
