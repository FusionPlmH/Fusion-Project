package com.android.systemui.fusionleo;;


import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.GradientDrawable;
import android.os.BatteryManager;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

import com.fusionleo.LeoProvider.LeoObserver;

import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoProvider.LeoManages.*;
import static com.fusionleo.LeoProvider.LeoManages.mLeoStatusBarMainBattery;

public class LeoBatteryBar extends RelativeLayout implements Animatable , LeoObserver.ObListener{
    public Context   mContext;
    private static final String TAG = LeoBatteryBar.class.getSimpleName();

    // Total animation duration
    private static final int ANIM_DURATION = 1000; // 5 seconds

    // When to use the low battery color
    private static final int BATTERY_LOW_VALUE = 15;

    private boolean mAttached = false;
    private int mBatteryLevel = 0;
    private int mChargingLevel = -1;
    private boolean mBatteryCharging = false;
    private boolean shouldAnimateCharging = true;
    private boolean isAnimating = false;

    private int mColor = 0xFFFFFFFF;
    private int mChargingColor = 0xFF00FF00;
    private int mBatteryLowColorWarning = 0xFFFF6600;

    private int mLowColor = 0xFFFF0000;
    private int mHighColor = 0xFF00FF00;
    private int mAnimOffset;
    GradientDrawable mBarGradient;
    int[] mGradientColors;
    private boolean useGradientColor = false;


    LinearLayout mBatteryBarLayout;
    View mBatteryBar;

    LinearLayout mChargerLayout;
    View mCharger;

    public static final int STYLE_REGULAR = 0;
    public static final int STYLE_SYMMETRIC = 1;

    boolean vertical = false;

    @Override
    public void onLeoChange(String str) {
        for (String equals :mLeoStatusBarMainBattery) {
            if (equals.equals(str)) {
                updateSettings();
                return;
            }
        }
    }


    public LeoBatteryBar(Context context) {
        this(context, null);
    }

    public LeoBatteryBar(Context context, boolean isCharging, int currentCharge) {
        this(context, null);

        mBatteryLevel = currentCharge;
        mBatteryCharging = isCharging;
    }

    public LeoBatteryBar(Context context, boolean isCharging, int currentCharge, boolean isVertical) {
        this(context, null);

        mBatteryLevel = currentCharge;
        mBatteryCharging = isCharging;
        vertical = isVertical;
    }

    public LeoBatteryBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LeoBatteryBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        mContext=context;
        Resources res = getResources();

        mGradientColors = new int[2];
        mGradientColors[0] = mLowColor;
        mGradientColors[1] = mHighColor;

        mBarGradient = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, mGradientColors);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!mAttached) {
            mAttached = true;

            mBatteryBarLayout = new LinearLayout(mContext);
            addView(mBatteryBarLayout, new RelativeLayout.LayoutParams(LayoutParams.MATCH_PARENT,
                    LayoutParams.MATCH_PARENT));

            mBatteryBar = new View(mContext);
            mBatteryBarLayout.addView(mBatteryBar, new LinearLayout.LayoutParams(
                    LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));

            DisplayMetrics metrics = getContext().getResources().getDisplayMetrics();
            float dp = 4f;
            int pixels = (int) (metrics.density * dp + 0.5f);

            // charger
            mChargerLayout = new LinearLayout(mContext);

            if (vertical)
                addView(mChargerLayout, new RelativeLayout.LayoutParams(LayoutParams.MATCH_PARENT,
                        pixels));
            else
                addView(mChargerLayout, new RelativeLayout.LayoutParams(pixels,
                        LayoutParams.MATCH_PARENT));

            mCharger = new View(mContext);
            mChargerLayout.setVisibility(View.GONE);
            mChargerLayout.addView(mCharger, new LinearLayout.LayoutParams(
                    LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));

            IntentFilter filter = new IntentFilter();
            filter.addAction(Intent.ACTION_BATTERY_CHANGED);
            filter.addAction(Intent.ACTION_SCREEN_OFF);
            filter.addAction(Intent.ACTION_SCREEN_ON);
            getContext().registerReceiver(mIntentReceiver, filter, null, getHandler());
            com.fusionleo.LeoProvider.LeoObserver Resolver  = new com.fusionleo.LeoProvider.LeoObserver(new Handler(),this);
            ContentResolver contentResolver = mContext.getContentResolver();
            for (String uriFor :mLeoStatusBarMainBattery) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
            }
            updateSettings();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mAttached) {
            mAttached = false;
            getContext().unregisterReceiver(mIntentReceiver);
        }
    }

    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();

            if (Intent.ACTION_BATTERY_CHANGED.equals(action)) {
                mBatteryLevel = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0);
                mBatteryCharging = intent.getIntExtra(BatteryManager.EXTRA_STATUS, 0) == BatteryManager.BATTERY_STATUS_CHARGING;
                if (mBatteryCharging && mBatteryLevel < 100) {
                    start();
                } else {
                    stop();
                }
                setProgress(mBatteryLevel);
            } else if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                stop();
            } else if (Intent.ACTION_SCREEN_ON.equals(action)) {
                if (mBatteryCharging && mBatteryLevel < 100) {
                    start();
                }
            }
        }
    };

  public void updateSettings() {
        LeoSysUiManages(mContext);

        mColor = setLeoStatusBarBatteryBarColor;

        mChargingColor = setLeoStatusBarBatteryBarChargingColor;

        mBatteryLowColorWarning = setLeoStatusBarBatteryBarLowColorWarning;

        shouldAnimateCharging = setLeoStatusBarBatteryBarAnimateCharging;

        mLowColor = setLeoStatusBarBatteryBarLowColor;

        mHighColor = setLeoStatusBarBatteryBarHighColor;

        useGradientColor =setLeoStatusBarBatteryBarGradientColorEnabled;

        if (mBatteryCharging && mBatteryLevel < 100 && shouldAnimateCharging) {
            start();
        } else {
            stop();
        }
        setProgress(mBatteryLevel);

        mCharger.setBackgroundColor(mChargingColor);
    }

    private void setProgress(int n) {
        if (vertical) {
            int w = (int) (((getHeight() / 100.0) * n) + 0.5);
            RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) mBatteryBarLayout
                    .getLayoutParams();
            params.height = w;
            mBatteryBarLayout.setLayoutParams(params);

        } else {
            int w = (int) (((getWidth() / 100.0) * n) + 0.5);
            RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) mBatteryBarLayout
                    .getLayoutParams();
            params.width = w;
            mBatteryBarLayout.setLayoutParams(params);
        }

        if (useGradientColor) {
            float size = n / 100f;
            mGradientColors[1] = mixColors(mHighColor, mLowColor, size);
            mBarGradient.setColors(mGradientColors);
            mBatteryBar.setBackgroundDrawable(mBarGradient);
        } else {
            mBatteryBar.setBackgroundColor(mBatteryCharging ?
                    mChargingColor : (n > BATTERY_LOW_VALUE ?
                    mColor : mBatteryLowColorWarning));
        }
    }

    private int mixColors(int color1, int color2, float mix) {
        int[] rgb1 = colorToRgb(color1);
        int[] rgb2 = colorToRgb(color2);

        rgb1[0] = mixedValue(rgb1[0], rgb2[0], mix);
        rgb1[1] = mixedValue(rgb1[1], rgb2[1], mix);
        rgb1[2] = mixedValue(rgb1[2], rgb2[2], mix);
        rgb1[3] = mixedValue(rgb1[3], rgb2[3], mix);

        return rgbToColor(rgb1);
    }

    private int[] colorToRgb(int color) {
        int[] rgb = {(color & 0xFF000000) >> 24, (color & 0xFF0000) >> 16, (color & 0xFF00) >> 8, (color & 0xFF)};
        return rgb;
    }

    private int rgbToColor(int[] rgb) {
        return (rgb[0] << 24) + (rgb[1] << 16) + (rgb[2] << 8) + rgb[3];
    }

    private int mixedValue(int val1, int val2, float mix) {
        return (int)Math.min((mix * val1 + (1f - mix) * val2), 255f);
    }

    @Override
    public void start() {
        if (!shouldAnimateCharging)
            return;

        if (vertical) {
            TranslateAnimation a = new TranslateAnimation(getX(), getX(), getHeight(),
                    mBatteryBarLayout.getHeight());
            a.setInterpolator(new AccelerateInterpolator());
            a.setDuration(ANIM_DURATION);
            a.setRepeatCount(Animation.INFINITE);
            mChargerLayout.startAnimation(a);
            mChargerLayout.setVisibility(View.VISIBLE);
        } else {
            TranslateAnimation a = new TranslateAnimation(getWidth(), mBatteryBarLayout.getWidth(),
                    getTop(), getTop());
            a.setInterpolator(new AccelerateInterpolator());
            a.setDuration(ANIM_DURATION);
            a.setRepeatCount(Animation.INFINITE);
            mChargerLayout.startAnimation(a);
            mChargerLayout.setVisibility(View.VISIBLE);
        }
        isAnimating = true;
    }

    @Override
    public void stop() {
        mChargerLayout.clearAnimation();
        mChargerLayout.setVisibility(View.GONE);
        isAnimating = false;
    }

    @Override
    public boolean isRunning() {
        return isAnimating;
    }

}
