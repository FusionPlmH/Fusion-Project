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

package com.android.systemui.statusbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;

import com.os.leo.utils.LeoBlur;
import com.os.leo.utils.LeoUserSettings;
import com.os.leo.utils.LeoUtils;

import java.io.File;

import static android.view.NotificationHeaderView.NO_COLOR;


import static com.os.leo.utils.LeoUserSettings.*;

import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUtils.LeoGradientDrawable;
import static com.os.leo.utils.LeoUtils.getLeoBasicColor;
import static com.os.leo.utils.LeoUtils.getLeoBlurWallpaper;
import static com.os.leo.utils.LeoUtils.*;

import static com.leo.utils.Constants.*;

public abstract class ActivatableNotificationView extends FrameLayout{


    private static final Interpolator ACTIVATE_INVERSE_INTERPOLATOR
            = new PathInterpolator(0.6f, 0, 0.5f, 1);
    private static final Interpolator ACTIVATE_INVERSE_ALPHA_INTERPOLATOR
            = new PathInterpolator(0, 0, 0.5f, 1);
    private int mTintedRippleColor;
    private int mLowPriorityRippleColor;
    protected int mNormalRippleColor;


    private boolean mDimmed;
    private boolean mDark;

    protected int mBgTint = NO_COLOR;
    private float mBgAlpha = 1f;

    /**
     * Flag to indicate that the notification has been touched once and the second touch will
     * click it.
     */
    private boolean mActivated;



    private final Interpolator mSlowOutFastInInterpolator;
    private final Interpolator mSlowOutLinearInInterpolator;
    private Interpolator mCurrentAppearInterpolator;
    private Interpolator mCurrentAlphaInterpolator;

    private NotificationBackgroundView mBackgroundNormal;
    private NotificationBackgroundView mBackgroundDimmed;
    private ObjectAnimator mBackgroundAnimator;
    private RectF mAppearAnimationRect = new RectF();
    private float mAnimationTranslationY;
    private boolean mDrawingAppearAnimation;
    private ValueAnimator mAppearAnimator;
    private ValueAnimator mBackgroundColorAnimator;
    private float mAppearAnimationFraction = -1.0f;
    private float mAppearAnimationTranslation;
    private int mNormalColor;
    private int mLowPriorityColor;
    private boolean mIsBelowSpeedBump;


    private float mNormalBackgroundVisibilityAmount;
    private ValueAnimator mFadeInFromDarkAnimator;
    private float mDimmedBackgroundFadeInAmount = -1;
    private ValueAnimator.AnimatorUpdateListener mBackgroundVisibilityUpdater
            = new ValueAnimator.AnimatorUpdateListener() {
        @Override
        public void onAnimationUpdate(ValueAnimator animation) {

            mDimmedBackgroundFadeInAmount = mBackgroundDimmed.getAlpha();
        }
    };
    private AnimatorListenerAdapter mFadeInEndListener = new AnimatorListenerAdapter() {
        @Override
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            mFadeInFromDarkAnimator = null;
            mDimmedBackgroundFadeInAmount = -1;

        }
    };
    private ValueAnimator.AnimatorUpdateListener mUpdateOutlineListener
            = new ValueAnimator.AnimatorUpdateListener() {
        @Override
        public void onAnimationUpdate(ValueAnimator animation) {

        }
    };
    private float mShadowAlpha = 1.0f;

    private int mCurrentBackgroundTint;
    private int mTargetTint;
    private int mStartTint;
    private int mOverrideTint;
    private float mOverrideAmount;
    private boolean mShadowHidden;
    private boolean mWasActivatedOnDown;
    /**
     * Similar to mDimmed but is also true if it's not dimmable but should be
     */
    private boolean mNeedsDimming;
    private int mDimmedAlpha;

    public ActivatableNotificationView(Context context, AttributeSet attrs) {
        super(context, attrs);
        mSlowOutFastInInterpolator = new PathInterpolator(0.8f, 0.0f, 0.6f, 1.0f);
        mSlowOutLinearInInterpolator = new PathInterpolator(0.8f, 0.0f, 1.0f, 1.0f);
        setClipChildren(false);
        setClipToPadding(false);

    }
    private void setNotificationBackgrounds() {
        LeoSettings(getContext());
        NotificationBackgroundView notificationBackgroundView = this.mBackgroundNormal;
        notificationBackgroundView.setOpacityTarget(0);
        notificationBackgroundView.setCustomBackground(getLeoResource("drawable/notification_material_bg"));
        notificationBackgroundView = this.mBackgroundDimmed;
        notificationBackgroundView.setOpacityTarget(1);
        notificationBackgroundView.setCustomBackground(getLeoResource("drawable/notification_material_bg_dim"));
    }


    /**
     * Sets the custom backgrounds on {@link #mBackgroundNormal} and {@link #mBackgroundDimmed}.
     * This method can also be used to reload the backgrounds on both of those views, which can
     * be useful in a configuration change.
     */
    protected void initBackground() {
        setLeoRomBackground();
    //    mBackgroundNormal.setCustomBackground(R.drawable.notification_material_bg);
      //  mBackgroundDimmed.setCustomBackground(R.drawable.notification_material_bg_dim);
    }
    private  Drawable mCustomBackground;
    public void setLeoRomBackground() {

    }

    private final Runnable mTapTimeoutRunnable = new Runnable() {
        @Override
        public void run() {

        }
    };

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (mNeedsDimming && !mActivated && ev.getActionMasked() == MotionEvent.ACTION_DOWN
                && disallowSingleClick(ev) && !isTouchExplorationEnabled()) {
            return true;
        }
        return super.onInterceptTouchEvent(ev);
    }

    private boolean isTouchExplorationEnabled() {

        return false;
    }

    protected boolean disallowSingleClick(MotionEvent ev) {
        return false;
    }

    protected boolean handleSlideBack() {
        return false;
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        boolean result=true;


        return result;
    }

    /**
     * @return whether this view is interactive and can be double tapped
     */
    protected boolean isInteractive() {
        return true;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();

        this.mBackgroundNormal.setOpacityTarget(0);
        this.mBackgroundDimmed.setOpacityTarget(1);


    }

    public void updateLeoNotificationItem() {
        LeoSettings(getContext());
        boolean StrokeEnabled=setLeoUesrNotificationItemStrokeEnabled;
        int StrokeThickness=setLeoUesrNotificationItemStrokeThickness;
        int DashWidth= setLeoUesrNotificationItemStrokeDashWidth;
        int DashGap= setLeoUesrNotificationItemStrokeDashGap;
        int DashColor= setLeoUesrNotificationItemStrokeDashColor;
        int CornerRadius=setLeoUesrNotificationItemGradientBackGroundCornerRadius;
        String str=setLeoUesrNotificationItemBgWallpaper;
        int bgcolor=setLeoUesrNotificationItemWallpaperColor;
        int circular=setLeoUesrNotificationItemCircularLevel;
        int trans=setLeoUesrNotificationTransparencyLevel;
        transparency= setLeoUesrNotificationEnabledBG;
        int ency =getLeoResource("drawable/leo_empty");
            if (transparency) {
                if(setLeoUesrNotificationItemEnabledCircular) {
                    if(trans==0){
                        mBackgroundNormal.setCustomBackground(getLeoResource("drawable/notification_material_bg_round_transparency"));
                        mBackgroundDimmed.setCustomBackground(getLeoResource("drawable/notification_material_bg_dim_round_transparency"));
                    }else if (trans==1) {
                        mBackgroundNormal.setCustomBackground(getLeoResource("drawable/notification_material_bg_round_transparency1"));
                        mBackgroundDimmed.setCustomBackground(getLeoResource("drawable/notification_material_bg_dim_round_transparency1"));
                    }else if (trans==2) {
                        mBackgroundNormal.setCustomBackground(getLeoResource("drawable/notification_material_bg_round_transparency2"));
                        mBackgroundDimmed.setCustomBackground(getLeoResource("drawable/notification_material_bg_dim_round_transparency2"));
                    }else if (trans==3) {
                        mBackgroundNormal.setCustomBackground(ency);
                        mBackgroundDimmed.setCustomBackground(ency);
                    }
                }else {
                    if(circular==0){
                        mBackgroundNormal.setCustomBackground(getLeoResource("drawable/notification_material_bg_round"));
                        mBackgroundDimmed.setCustomBackground(getLeoResource("drawable/notification_material_bg_dim_round"));
                    }else if (circular==1) {
                        mBackgroundNormal.setCustomBackground(getLeoResource("drawable/notification_material_bg_round1"));
                        mBackgroundDimmed.setCustomBackground(getLeoResource("drawable/notification_material_bg_dim_round1"));
                    }else if (circular==2) {
                        mBackgroundNormal.setCustomBackground(getLeoResource("drawable/notification_material_bg_round2"));
                        mBackgroundDimmed.setCustomBackground(getLeoResource("drawable/notification_material_bg_dim_round2"));
                    }else if (circular==3) {
                        mBackgroundNormal.setCustomBackground(getLeoResource("drawable/notification_material_bg_round3"));
                        mBackgroundDimmed.setCustomBackground(getLeoResource("drawable/notification_material_bg_dim_round3"));
                    }
                }
            }else {
            if ( setLeoUesrNotificationItemShowBG) {
                mBackgroundNormal.setCustomBackground(ency);
                mBackgroundDimmed.setCustomBackground(ency);
                int SPanelBGStyle=setLeoUesrNotificationItemBGStyle;
                if (SPanelBGStyle == 0) {
                    int colorStyle=setLeoUesrNotificationItemGradientColorEnabled;
                    if(colorStyle==0){
                        setBackground(getLeoBasicColor(
                                StrokeEnabled,
                                StrokeThickness,
                                DashWidth,
                                DashGap,
                                DashColor,
                                CornerRadius,
                                setLeoUesrNotificationItemBgBasicColor
                        ));
                    } else if (colorStyle==1) {
                        setBackground(LeoGradientDrawable(setLeoUesrNotificationItemGradientBgStartColor,
                                setLeoUesrNotificationItemGradientBgCenterColor,
                                setLeoUesrNotificationItemGradientBgEndColor,
                                setLeoUesrNotificationItemGradientColorFour,
                                setLeoUesrNotificationItemGradientColorFive,
                                setLeoUesrNotificationItemGradientColorSix,
                                setLeoUesrNotificationItemGradientEnableCenterColor,
                                setLeoUesrNotificationItemBgGradientBgStyle,StrokeEnabled,StrokeThickness, DashWidth,DashGap, DashColor,CornerRadius
                                ,setLeoUesrNotificationItemGradientBgType,setLeoUesrNotificationItemGradientBackGroundColorRadius));
                    }
                }  else if (SPanelBGStyle == 999 &&  str != null) {
                    Drawable ddd=null;
                    Drawable BlurDrawable = null;
                    Bitmap bitmapWallpaper;
                    int wallpaperstyle=setLeoUesrNotificationItemBgWallpaperBlurEnabled;
                    if(wallpaperstyle==0){
                        if (str != null) {
                            File backgroundwallpaper = new File(Uri.parse(str).getPath());
                            if (backgroundwallpaper != null) {
                                ddd = new BitmapDrawable(getContext().getResources(), BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath()));
                                Log.v(AUTHOR, CORYRIGHT+ China );
                            }
                            getLeoWallpaperColor(ddd, setLeoUesrNotificationItemWallpaperColorEnable, bgcolor);
                        }
                        setBackground(ddd);
                    }else if (wallpaperstyle==1) {

                        if (str != null) {
                            File backgroundwallpaper = new File(Uri.parse(str).getPath());
                            if (backgroundwallpaper != null) {
                                bitmapWallpaper = BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath());
                                Log.v(AUTHOR, CORYRIGHT+China );
                                Bitmap finalBitmap = LeoBlur.with(getContext())
                                        .bitmap(bitmapWallpaper) //要模糊的图片
                                        .radius(setLeoUesrNotificationItemBlurBgDegree)//模糊半径
                                        .scale(8)//指定模糊前缩小的倍数
                                        .blur();
                                BlurDrawable= new BitmapDrawable(
                                        getContext().getResources(), finalBitmap);

                            }
                        }
                        setBackground(BlurDrawable );
                        getLeoWallpaperColor(BlurDrawable,setLeoUesrNotificationItemBlurWallpaperColorEnabled, bgcolor);
                    }
                }
            } else {
                mBackgroundNormal.setCustomBackground(getLeoResource("drawable/notification_material_bg"));
                mBackgroundDimmed.setCustomBackground(getLeoResource("drawable/notification_material_bg_dim"));
            }
        }
    }

    public void onWindowFocusChanged(boolean mBoolean) {
        updateLeoNotificationItem();
    }
    public void setFakeShadowIntensity(float f, float f2, int i, int i2) {
        if (transparency) {

        }else {
            setFakeShadowIntensity2(f, f2, i, i2);
        }
    }
    public void setFakeShadowIntensity2(float f, float f2, int i, int i2) {

    }
    public  boolean  transparency;
    protected void updateOutlineAlpha() {
        if (transparency) {

        }else {
            updateOutlineAlpha2();
        }


    }
    protected void updateOutlineAlpha2() {
        LeoSettings(getContext());
        if ( setLeoUesrNotificationEnabledBG) {

        }else {
            updateOutlineAlpha2();
        }
    }
    private int mBgColor;

    public void updateLeoOverlayColor() {
        LeoSettings(getContext());
        if ( setLeoUesrNotificationEnabledBG) {
            mBgColor=Transparency;
        }else {
            mBgColor = getContext().getColor(getLeoResource("color/notification_shade_background_color"));

        }
    }
}
