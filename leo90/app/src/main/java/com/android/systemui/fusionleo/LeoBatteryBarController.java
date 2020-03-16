package com.android.systemui.fusionleo;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.os.BatteryManager;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import com.fusionleo.LeoX.systemui.LeoConfig;
import com.fusionleo.LeoProvider.LeoObserver;

import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.*;

public class LeoBatteryBarController extends LinearLayout implements LeoObserver.ObListener{

    private static final String TAG = "BatteryBarController";

    LeoBatteryBar mainBar;
    LeoBatteryBar alternateStyleBar;

    public static final int STYLE_REGULAR = 0;
    public static final int STYLE_SYMMETRIC = 1;
    public static final int STYLE_REVERSE = 2;

    int mStyle = STYLE_REGULAR;
    int mLocation = 0;
    Context mContext;
    protected final static int CURRENT_LOC = 1;
    int mLocationToLookFor = 0;

    private int mBatteryLevel = 0;
    private boolean mBatteryCharging = false;

    boolean isAttached = false;
    boolean isVertical = false;

    @Override
    public void onLeoChange(String str) {
        for (String equals :mLeoStatusBarMainBattery) {
            if (equals.equals(str)) {
                updateSettings();
                return;
            }
        }
    }

    public LeoBatteryBarController(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext=context;
        if (attrs != null) {
            String ns = "http://schemas.android.com/apk/res/com.android.systemui";
            mLocationToLookFor = attrs.getAttributeIntValue(ns, "viewLocation", 0);
        }

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

            com.fusionleo.LeoProvider.LeoObserver Resolver  = new com.fusionleo.LeoProvider.LeoObserver(new Handler(),this);
            ContentResolver contentResolver = mContext.getContentResolver();
            for (String uriFor :mLeoStatusBarMainBattery) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
            }
            updateSettings();
        }
    }

    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_BATTERY_CHANGED.equals(action)) {
                mBatteryLevel = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0);
                mBatteryCharging = intent.getIntExtra(BatteryManager.EXTRA_STATUS, 0) == BatteryManager.BATTERY_STATUS_CHARGING;
                LeoConfig.Prefs.setLastBatteryLevel(context, mBatteryLevel);
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
            getHandler().postDelayed(() -> updateSettings(), 500);

        }
    }

    public void addBars() {
        // set heights
        DisplayMetrics metrics = getContext().getResources().getDisplayMetrics();
        float dp = (float) setLeoStatusBarBatteryBarThickness;
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
        mBatteryLevel = LeoConfig.Prefs.getLastBatteryLevel(getContext());
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
        LeoSysUiManages(mContext);
        mStyle = setLeoStatusBarBatteryBarStyle;
        mLocation =setLeoStatusBarBatteryBarLocation;

        if (mLocation > 0 && isLocationValid(mLocation)) {
            removeBars();
            addBars();
            setVisibility(View.VISIBLE);
        } else {
            removeBars();
            setVisibility(View.GONE);
        }
    }

    protected boolean isLocationValid(int location) {
        return mLocationToLookFor == location;
    }
}
