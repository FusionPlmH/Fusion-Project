/*
 * Copyright (C) 2013 The Android Open Source Project
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

package com.android.systemui.settings;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.VisibleForTesting;


import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

public abstract class CurrentUserTracker {
    private final UserReceiver mUserReceiver;

    private Consumer<Integer> mCallback = this::onUserSwitched;

    public CurrentUserTracker(Context context) {
        this(UserReceiver.getInstance(context));
    }

    @VisibleForTesting
    CurrentUserTracker(UserReceiver receiver) {
        mUserReceiver = receiver;
    }

    public int getCurrentUserId() {
        return mUserReceiver.getCurrentUserId();
    }

    public void startTracking() {
        mUserReceiver.addTracker(mCallback);
    }

    public void stopTracking() {
        mUserReceiver.removeTracker(mCallback);
    }

    public abstract void onUserSwitched(int newUserId);

    @VisibleForTesting
    static class UserReceiver extends BroadcastReceiver {
        private static UserReceiver sInstance;

        private Context mAppContext;
        private boolean mReceiverRegistered;
        private int mCurrentUserId;

        private List<Consumer<Integer>> mCallbacks = new ArrayList<>();

        @VisibleForTesting
        UserReceiver(Context context) {
            mAppContext = context.getApplicationContext();
        }

        static UserReceiver getInstance(Context context) {
            if (sInstance == null) {
                sInstance = new UserReceiver(context);
            }
            return sInstance;
        }

        @Override
        public void onReceive(Context context, Intent intent) {

        }

        public int getCurrentUserId() {
            return mCurrentUserId;
        }

        private void addTracker(Consumer<Integer> callback) {
            if (!mCallbacks.contains(callback)) {
                mCallbacks.add(callback);
            }
            if (!mReceiverRegistered) {

            }
        }

        private void removeTracker(Consumer<Integer> callback) {
            if (mCallbacks.contains(callback)) {
                mCallbacks.remove(callback);
                if (mCallbacks.size() == 0 && mReceiverRegistered) {
                    mAppContext.unregisterReceiver(this);
                    mReceiverRegistered = false;
                }
            }
        }

        private void notifyUserSwitched(int newUserId) {
            if (mCurrentUserId != newUserId) {
                mCurrentUserId = newUserId;
                List<Consumer<Integer>> callbacks = new ArrayList<>(mCallbacks);
                for (Consumer<Integer> consumer : callbacks) {
                    // Accepting may modify this list

                }
            }
        }
    }
}
