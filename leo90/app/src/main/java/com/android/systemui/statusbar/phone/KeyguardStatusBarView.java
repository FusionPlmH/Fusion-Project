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

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.android.systemui.Rune;
import com.fusionleo.LeoX.systemui.LeoConfig;
import com.samsung.android.feature.SemFloatingFeature;

import static com.android.systemui.SystemUIApplication.getContext;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.setLeoKeyguardStatusBarViewVisibilities;
import static com.fusionleo.LeoX.systemui.LeoConfig.LeoGradientDrawable;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoBasicColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrKeyguardStatusbarIconPadding;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrKeyguardStatusbarIconPaddingEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBGStyle;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgBasicColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgGradientBgStyle;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgWallpaper;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgWallpaperAlpha;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgWallpaperAlphaEnable;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgWallpaperBlurEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBlurBgDegree;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBackGroundColorRadius;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBackGroundCornerRadius;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBgCenterColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBgEndColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBgStartColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBgType;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientColorFive;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientColorFour;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientColorSix;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientEnableCenterColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavShowBG;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavStrokeDashColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavStrokeDashGap;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavStrokeDashWidth;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavStrokeEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavStrokeThickness;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavWallpaperColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavWallpaperColorEnable;


public class KeyguardStatusBarView extends RelativeLayout
       {

           private  Context  mContext;
    private TextView mCarrierLabel;
    private TextView mCustomCarrierLabel;



    private ContentObserver mObserver = new ContentObserver(new Handler()) {
        public void onChange(boolean selfChange, Uri uri) {


        }
    };

    private boolean mTouchStarted;

    public KeyguardStatusBarView(Context context, AttributeSet attrs) {
        super(context, attrs);

        mContext = context;
    }
           @Override
           public void onAttachedToWindow() {
               super.onAttachedToWindow();
               updateLeoKeyguardStatusBarViewVisibilities();
           }


    public void updateLeoKeyguardStatusBarViewVisibilities() {
        LeoSysUiManages(mContext);
        if (setLeoKeyguardStatusBarViewVisibilities) {
            setVisibility(GONE);
        }
    }
    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);


    }



    private void loadDimens() {
        Resources res = getResources();

    }


           public static int LeoKeyguardStatusBarPadding;
           public void setLeoStatusBarPadding() {
               float Padding=setLeoUesrKeyguardStatusbarIconPaddingEnabled ?  (float)setLeoUesrKeyguardStatusbarIconPadding : 10.0F;
               Rune.STATBAR_CONFIG_DEVICE_CORNER_ROUND = Float.parseFloat(SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND", "0.0"));
               LeoKeyguardStatusBarPadding = (int) ((Rune.STATBAR_CONFIG_DEVICE_CORNER_ROUND * (Padding - Rune.STATBAR_CONFIG_DEVICE_CORNER_ROUND)) - 1.0f);
           }



}
