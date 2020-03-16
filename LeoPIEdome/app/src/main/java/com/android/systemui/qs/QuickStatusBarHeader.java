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

package com.android.systemui.qs;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.PorterDuff.Mode;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextClock;
import android.widget.TextView;


import com.android.systemui.BatteryMeterView;
import com.android.systemui.Dependency;

import com.android.systemui.coloring.QSColoringServiceManager;

import com.android.systemui.statusbar.policy.DarkIconDispatcher.DarkReceiver;
import com.android.systemui.statusbar.policy.DateView;
import com.android.systemui.statusbar.policy.QSClock;

import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockBigCustomEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockBigFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockBigSize;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockBigVisibility;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockCustomEnabled;


public class QuickStatusBarHeader extends RelativeLayout  {
    private static final String TAG = "QuickStatusBarHeader";


    // omni additions
    private HorizontalScrollView mQuickQsPanelScroller;
    private ImageView mBackgroundImage;
    private Drawable mCurrentBackground;
    private BatteryMeterView mBatteryView;

    public QuickStatusBarHeader(Context context, AttributeSet attrs) {
        super(context, attrs);
    }
    private QSClock mClockView;
    private DateView mDateView;

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();

    }


    private void applyDarkness(int id, Rect tintArea, float intensity, int color) {
        View v = findViewById(id);
        if (v instanceof DarkReceiver) {
            ((DarkReceiver) v).onDarkChanged(tintArea, intensity, color);
        }
    }

    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateResources();
    }

    @Override
    public void onRtlPropertiesChanged(int layoutDirection) {
        super.onRtlPropertiesChanged(layoutDirection);
        updateResources();
    }

    private void updateResources() {

    }

    public int getCollapsedHeight() {
        return getHeight();
    }

    public int getExpandedHeight() {
        return getHeight();
    }


    public void setExpansion(float headerExpansionFraction) {
    }

    @Override
    @VisibleForTesting
    public void onDetachedFromWindow() {

        super.onDetachedFromWindow();
    }





    private void doUpdateStatusBarCustomHeader(final Drawable next, final boolean force) {
        if (next != null) {
            Log.i(TAG, "Updating status bar header background");
            mBackgroundImage.setVisibility(View.VISIBLE);
            mCurrentBackground = next;
            setNotificationPanelHeaderBackground(next, force);
        } else {
            mCurrentBackground = null;
            mBackgroundImage.setVisibility(View.GONE);
        }
    }

    private void setNotificationPanelHeaderBackground(final Drawable dw, final boolean force) {
        if (mBackgroundImage.getDrawable() != null && !force) {
            Drawable[] arrayDrawable = new Drawable[2];
            arrayDrawable[0] = mBackgroundImage.getDrawable();
            arrayDrawable[1] = dw;

            TransitionDrawable transitionDrawable = new TransitionDrawable(arrayDrawable);
            transitionDrawable.setCrossFadeEnabled(true);
            mBackgroundImage.setImageDrawable(transitionDrawable);
            transitionDrawable.startTransition(1000);
        } else {
            mBackgroundImage.setImageDrawable(dw);
        }

    }
    public Context mContext;

}
