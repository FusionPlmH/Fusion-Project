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
public class CommandQueue extends IStatusBar.Stub {
    public interface Callbacks {

    }

    public void setIcon(String s, StatusBarIcon statusBarIcon) throws RemoteException {

    }

    public void removeIcon(String s) throws RemoteException {

    }

    public void disable(int i, int i1) throws RemoteException {

    }

    public void animateExpandNotificationsPanel() throws RemoteException {

    }

    public void animateExpandSettingsPanel(String s) throws RemoteException {

    }

    public void animateCollapsePanels() throws RemoteException {

    }

    public void setSystemUiVisibility(int i, int i1, int i2, int i3, Rect rect, Rect rect1) throws RemoteException {

    }

    public void topAppWindowChanged(boolean b) throws RemoteException {

    }

    public void setImeWindowStatus(IBinder iBinder, int i, int i1, boolean b) throws RemoteException {

    }

    public void setWindowState(int i, int i1) throws RemoteException {

    }


    public void buzzBeepBlinked() throws RemoteException {

    }

    public void notificationLightOff() throws RemoteException {

    }

    public void notificationLightPulse(int i, int i1, int i2) throws RemoteException {

    }

    public void showRecentApps(boolean b, boolean b1) throws RemoteException {

    }

    public void hideRecentApps(boolean b, boolean b1) throws RemoteException {

    }

    public void toggleRecentApps() throws RemoteException {

    }

    public void toggleSplitScreen() throws RemoteException {

    }

    public void preloadRecentApps() throws RemoteException {

    }

    public void cancelPreloadRecentApps() throws RemoteException {

    }

    public void showScreenPinningRequest(int i) throws RemoteException {

    }

    public void dismissKeyboardShortcutsMenu() throws RemoteException {

    }

    public void toggleKeyboardShortcutsMenu(int i) throws RemoteException {

    }

    public void appTransitionPending() throws RemoteException {

    }

    public void appTransitionCancelled() throws RemoteException {

    }

    public void appTransitionStarting(long l, long l1) throws RemoteException {

    }

    public void appTransitionFinished() throws RemoteException {

    }

    public void showAssistDisclosure() throws RemoteException {

    }

    public void startAssist(Bundle bundle) throws RemoteException {

    }
    public void addCallbacks(Callbacks callbacks) {
        this.mCallbacks.add(callbacks);

    }

    public void onCameraLaunchGestureDetected(int i) throws RemoteException {

    }

    public void showTvPictureInPictureMenu() throws RemoteException {

    }

    public void addQsTile(ComponentName componentName) throws RemoteException {

    }

    public void remQsTile(ComponentName componentName) throws RemoteException {

    }

    public void clickQsTile(ComponentName componentName) throws RemoteException {

    }

    @Override
    public void handleSystemNavigationKey(int i) throws RemoteException {

    }

    public void removeCallbacks(Callbacks callbacks) {
        this.mCallbacks.remove(callbacks);
    }
    private ArrayList<Callbacks> mCallbacks = new ArrayList();


    public static class CommandQueueStart extends SystemUI {
        @Override
        public void start() {
            putComponent(CommandQueue.class, new CommandQueue());
        }
    }
}

