package com.android.launcher3.framework.view.ui.icon;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.provider.Settings.System;
import android.support.annotation.NonNull;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;

import com.android.launcher3.framework.support.context.appstate.LauncherAppState;

import com.android.launcher3.framework.view.context.ViewContext;

import static com.fusionleo.LeoProvider.LeoLauncherManages.LeoLauncherManages;
import static com.fusionleo.LeoProvider.LeoLauncherManages.setLeoUesrLeoLauncherIconTextEnabled;


public class IconView extends FrameLayout  {
    private static final int CHECKBOX_ANIM_DURATION = 250;
    public static final int DISPLAY_APPS = 2;
    public static final int DISPLAY_APPS_FOLDER_ITEM = 4;
    public static final int DISPLAY_HOME_FOLDER_ITEM = 3;
    public static final int DISPLAY_HOTSEAT = 1;
    public static final int DISPLAY_RECOMMENDED = 5;
    public static final int DISPLAY_WORKSPACE = 0;

    private static final int GRAVITY_LEFT = 3;
    private static final int INVALID_DATA = -1;
    private static final float NOTI_BADGE_POSITION_TOP_FACTOR = 0.27f;
    private static final float NOTI_DOT_BADGE_POSITION_TOP_FACTOR = 0.5f;
    private static final int SCALE_ANIMATION_DURATION = 300;

    private static final String TAG = "IconView";
    private static float mPositionHorizontalFactor = -1.0f;
    private static float mPositionVerticalFactor = -1.0f;
    private static DisplayMetrics sDisplayMetrics = new DisplayMetrics();
    private static int[] sViewPosition = new int[2];

    protected TextView mBadgeView;

    private CheckBox mCheckBox;
    protected TextView mCountBadgeView;
    private boolean mDisableRelayout;
    protected int mDrawablePadding;
    private Drawable mIcon;
    protected int mIconDisplay;
    private Drawable mIconShadowDrawable;
    protected int mIconSize;
    protected Drawable mIconTextBackground;
    private ImageView mIconView;
    private boolean mIsBadgeHidden;
    protected boolean mIsPhoneLandscape;
    private boolean mIsPressedEnterKey;
    private boolean mLockToLayoutContents;
    private boolean mLongClickEnabled;

    protected ViewContext mViewContext;
    protected int mVisibleState;

    public IconView(Context context) {
        this(context, null, 0);
    }

    public IconView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);

    }


    private static final boolean FEATURE_IS_TABLET = false;

    private boolean isHomeLabel() {
        LeoLauncherManages(LauncherAppState.getInstance().getContext());
        return setLeoUesrLeoLauncherIconTextEnabled ? false : true;
    }

}
