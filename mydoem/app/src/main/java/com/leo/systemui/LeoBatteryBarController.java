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

package com.leo.systemui;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.os.BatteryManager;
import android.os.Handler;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUtils.getLeoUri;


public class LeoBatteryBarController extends LinearLayout {

    private static final String TAG = "BatteryBarController";

    LeoBatteryBar mainBar;
    LeoBatteryBar alternateStyleBar;

    public static final int STYLE_REGULAR = 0;
    public static final int STYLE_SYMMETRIC = 1;
    public static final int STYLE_REVERSE = 2;

    int mStyle = STYLE_REGULAR;
    int mLocation = 0;

    protected final static int CURRENT_LOC = 1;
    int mLocationToLookFor = 0;

    private int mBatteryLevel = 0;
    private boolean mBatteryCharging = false;

    boolean isAttached = false;
    boolean isVertical = false;

    class LeoRomObserver extends ContentObserver {

        public LeoRomObserver(Handler handler) {
            super(handler);
        }

        void observer() {
            ContentResolver resolver = mContext.getContentResolver();
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarBatteryBardp()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarBatteryBarStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarBatteryBar()),
                    false, this);
        }

        @Override
        public void onChange(boolean selfChange) {
            updateSettings();
        }
    }

    public LeoBatteryBarController(Context context, AttributeSet attrs) {
        super(context, attrs);

        if (attrs != null) {
            String ns = "http://schemas.android.com/apk/res/com.android.systemui";
            mLocationToLookFor = attrs.getAttributeIntValue(ns, "LeoBatteryBarLocation", 0);
        }
        mContext=context;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isAttached) {
            isVertical = (getLayoutParams().height == LayoutParams.MATCH_PARENT);

            isAttached = true;
            IntentFilter filter = new IntentFilter();
            filter.addAction(Intent.ACTION_BATTERY_CHANGED);
            getContext().registerReceiver(mIntentReceiver, filter);

            LeoRomObserver observer = new LeoRomObserver(new Handler());
            observer.observer();
            updateSettings();
        }
    }
    private  Context mContext;
    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();

            if (Intent.ACTION_BATTERY_CHANGED.equals(action)) {
                mBatteryLevel = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0);
                mBatteryCharging = intent.getIntExtra(BatteryManager.EXTRA_STATUS, 0) == BatteryManager.BATTERY_STATUS_CHARGING;
                Prefs.setLastBatteryLevel(context, mBatteryLevel);
            }
        }
    };

    @Override
    protected void onDetachedFromWindow() {
        if (isAttached) {
            isAttached = false;
            removeBars();
        }
        super.onDetachedFromWindow();
    }

    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (isAttached) {
            getHandler().postDelayed(new Runnable() {
                @Override
                public void run() {
                    updateSettings();
                }
            }, 500);

        }
    }

    public void addBars() {
        // set heights
        LeoSettings( getContext());
        DisplayMetrics metrics = getContext().getResources().getDisplayMetrics();
        float dp = (float) setLeoUesrStatusBarBatteryBarDP;
        int pixels = (int) ((metrics.density * dp) + 0.5);

        ViewGroup.LayoutParams params = (ViewGroup.LayoutParams) getLayoutParams();

        if (isVertical)
            params.width = pixels;
        else
            params.height = pixels;
        setLayoutParams(params);

        if (isVertical)
            params.width = pixels;
        else
            params.height = pixels;
        setLayoutParams(params);
        mBatteryLevel = Prefs.getLastBatteryLevel(getContext());
        if (mStyle == STYLE_REGULAR) {
            addView(new LeoBatteryBar(mContext, mBatteryCharging, mBatteryLevel, isVertical),
                    new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,
                            LayoutParams.MATCH_PARENT, 1));
        } else if (mStyle == STYLE_SYMMETRIC) {
            LeoBatteryBar bar1 = new LeoBatteryBar(mContext, mBatteryCharging, mBatteryLevel, isVertical);
            LeoBatteryBar bar2 = new LeoBatteryBar(mContext, mBatteryCharging, mBatteryLevel, isVertical);

            if (isVertical) {
                bar2.setRotation(180);
                addView(bar2, (new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,
                        LayoutParams.MATCH_PARENT, 1)));
                addView(bar1, (new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,
                        LayoutParams.MATCH_PARENT, 1)));
            } else {
                bar1.setRotation(180);
                addView(bar1, (new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,
                        LayoutParams.MATCH_PARENT, 1)));
                addView(bar2, (new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,
                        LayoutParams.MATCH_PARENT, 1)));
            }
        } else if (mStyle == STYLE_REVERSE) {
            LeoBatteryBar bar = new LeoBatteryBar(mContext, mBatteryCharging, mBatteryLevel, isVertical);
            bar.setRotation(180);
            addView(bar, new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,
                        LayoutParams.MATCH_PARENT, 1));
        }
    }

    public void removeBars() {
        removeAllViews();
    }

    public void updateSettings() {
        LeoSettings(mContext);
        mStyle =setLeoUesrStatusBarBatteryBarStyle;
        mLocation =  setLeoUesrStatusBarBatteryBar;

        if (mLocation > 0 && isLocationValid(mLocation)) {
            removeBars();
            addBars();
            // Visibility handled externally
            // setVisibility(View.VISIBLE);
        } else {
            removeBars();
            // Visibility handled externally (after removing bars we're not visible either way)
            // setVisibility(View.GONE);
        }
    }
    public static class Prefs {
        private static final String SHARED_PREFS_NAME = "status_bar";

        public static final String LAST_BATTERY_LEVEL = "last_battery_level";

        public static SharedPreferences read(Context context) {
            return context.getSharedPreferences(Prefs.SHARED_PREFS_NAME, Context.MODE_PRIVATE);
        }

        public static SharedPreferences.Editor edit(Context context) {
            return context.getSharedPreferences(Prefs.SHARED_PREFS_NAME, Context.MODE_PRIVATE).edit();
        }

        public static void setLastBatteryLevel(Context context, int level) {
            edit(context).putInt(LAST_BATTERY_LEVEL, level).commit();
        }

        public static int getLastBatteryLevel(Context context) {
            return read(context).getInt(LAST_BATTERY_LEVEL, 50);
        }

    }
    protected boolean isLocationValid(int location) {
        return mLocationToLookFor == location;
    }
}