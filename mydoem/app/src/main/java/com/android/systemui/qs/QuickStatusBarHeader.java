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

import static com.android.systemui.UId.UId50;
import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoHeadClockColor;
import static com.os.leo.utils.LeoUserSettings.getLeoHeadClockDisable;
import static com.os.leo.utils.LeoUserSettings.getLeoHeadMultiuserButton;
import static com.os.leo.utils.LeoUserSettings.getLeoHeadSettingButton;
import static com.os.leo.utils.LeoUserSettings.getLeoHeadSettingButtonColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderDateColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderDateRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderLunarColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderMultiuserButton;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderSettingButton;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderSettingButtonColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderSettingButtonColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderSettingButtonRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockDisplay;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextLunarColor;
import static com.os.leo.utils.LeoUtils.getLeoUri;
import static com.android.systemui.UId.UId19;
import static com.android.systemui.UId.UId20;
import static com.android.systemui.UId.UId21;


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

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        updateHeaderButton();
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
    private ImageButton mSettingsButton;
    private TextView mTimeView;

    private ImageButton mMoreButton;
    private ImageView mMultiUserAvatar;
    public void updateHeaderButton() {
        LeoSettings(getContext());
        LinearLayout timeimgLayout =(LinearLayout) findViewById(UId19);

        View timeimg = findViewById(UId20);
        if (setLeoUesrHeaderTextClockDisplay) {
            timeimgLayout.setVisibility(View.VISIBLE);
            timeimg.setBackgroundColor(setLeoUesrHeaderTextClockColor);
        } else {
            timeimgLayout.setVisibility(View.GONE);
        }
        if ( setLeoUesrHeaderSettingButton==1) {

           mSettingsButton.setVisibility(GONE);
            //mSettingsButton.setColorFilter(setLeoUesrHeaderSettingButtonColor);
        }else if( setLeoUesrHeaderSettingButton==0) {
            mSettingsButton.setVisibility(VISIBLE);

        }
        int mDefaultSettingButtonColor=getContext().getColor(getLeoResource("color/qs_header_setting"));
        int SettingButtonColor=mDefaultSettingButtonColor;
        if ( setLeoUesrHeaderSettingButtonColorEnabled==1) {
            int colorstyle= setLeoUesrHeaderSettingButtonRandomColor;
            int colorrandom=getLeoRandomColor(getContext());
            if(colorstyle==0){
                SettingButtonColor=setLeoUesrHeaderSettingButtonColor;
            }else if(colorstyle==1){
                SettingButtonColor=colorrandom;
            }
        }else if( setLeoUesrHeaderSettingButtonColorEnabled==0) {
             SettingButtonColor=mDefaultSettingButtonColor;
        }
        mSettingsButton.setColorFilter(SettingButtonColor);
        mMoreButton.setColorFilter(SettingButtonColor);
       // LinearLayout MultiUserAvatar =(LinearLayout) findViewById(UId50);

        if (setLeoUesrHeaderMultiuserButton==1) {
        //    MultiUserAvatar .setVisibility(MultiUserAvatar.GONE);
            mMultiUserAvatar.setVisibility(mMultiUserAvatar.GONE);
        }else if(setLeoUesrHeaderMultiuserButton==0) {
         //   MultiUserAvatar .setVisibility(MultiUserAvatar.VISIBLE);
            mMultiUserAvatar.setVisibility(mMultiUserAvatar.VISIBLE);
        }


        }
            public void onWindowFocusChanged(boolean mBoolean) {
                updateHeaderButton();
            }
    private void updateQSCoringResources() {

        int leocolor=setLeoUesrHeaderLunarColor;
        int iconColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(4);
        int textColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);
        this.mSettingsButton.setColorFilter(iconColor);
        this.mMoreButton.setColorFilter(iconColor);
        if(true){
            this.mTimeView.setTextColor(textColor);
            findViewById(2131362104).setBackgroundColor(textColor);
        }else {

            this.mTimeView.setTextColor(leocolor);
            findViewById(2131362104).setBackgroundColor(leocolor);
        }

        ((TextView) findViewById(2131362099)).setTextColor(textColor);
    }


}
