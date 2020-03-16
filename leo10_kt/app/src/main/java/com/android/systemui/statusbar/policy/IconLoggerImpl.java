/*
 * Copyright (C) 2017 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the
 * License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.android.systemui.statusbar.policy;


import android.annotation.SuppressLint;
import android.content.Context;

import android.os.Handler;
import android.os.Looper;

import android.util.ArraySet;

import androidx.annotation.VisibleForTesting;

import com.android.internal.logging.MetricsLogger;

import java.util.Arrays;
import java.util.List;

public class IconLoggerImpl implements IconLogger {

    // Minimum ms between log statements.
    // NonFinalForTesting
    @VisibleForTesting
    protected static long MIN_LOG_INTERVAL = 1000;

    private final Context mContext;
    private final Handler mHandler;
    private final MetricsLogger mLogger;
    @SuppressLint("NewApi")
    private final ArraySet<String> mIcons = new ArraySet<>();
    private final List<String> mIconIndex;
    private long mLastLog = System.currentTimeMillis();

    public IconLoggerImpl(Context context, Looper bgLooper, MetricsLogger logger) {
        mContext = context;
        mHandler = new Handler(bgLooper);
        mLogger = logger;
        String[] icons = new String[0];
        mIconIndex = Arrays.asList(icons[0]);
        doLog();
    }

    @Override
    public void onIconShown(String tag) {
        synchronized (mIcons) {
            if (mIcons.contains(tag)) return;
            mIcons.add(tag);
        }

    }

    @Override
    public void onIconHidden(String tag) {
        synchronized (mIcons) {
            if (!mIcons.contains(tag)) return;
            mIcons.remove(tag);
        }

    }

    private void doLog() {
        long time = System.currentTimeMillis();
        long timeSinceLastLog = time - mLastLog;
        mLastLog = time;


    }

    private int getBitField(ArraySet<String> icons) {
        int iconsVisible = 0;

        return iconsVisible;
    }

    private final Runnable mLog = this::doLog;
}
