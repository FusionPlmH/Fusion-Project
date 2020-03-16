package com.android.systemui;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.systemui.statusbar.policy.DarkIconDispatcher;


public  class BatteryMeterView extends LinearLayout implements DarkIconDispatcher.DarkReceiver {
    private final String TAG;

    private LinearLayout mBatteryIconContainer;
    private float mBatteryIconDarkModeAlpha;
    private float mBatteryIconLightModeAlpha;
    private  ImageView mBatteryIconView;
    private TextView mBatteryPercentView;
    private int mDarkModeBackgroundColor;
    private int mDarkModeFillColor;
    private int mBatteryPercentColor,mBatteryPercentTint;
    private boolean mForceHidePercent;
    private boolean mForceShowPercent;
    private boolean mIsDeskTopMode;

    private int mLevel;
    private int mLightModeBackgroundColor;
    private int mLightModeFillColor;

    private int mTextColor;



    public BatteryMeterView(Context context) {
        this(context, null, 0);
    }

    public BatteryMeterView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BatteryMeterView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.TAG = "BatteryMeterView";
        this.mIsDeskTopMode = false;
        this.mForceHidePercent = false;

    }

    protected void onFinishInflate() {
        super.onFinishInflate();

    }

    public void setForceShowPercent(boolean show) {
        this.mForceShowPercent = show;

    }

    public void setForceHidePercent(boolean hide) {
        this.mForceHidePercent = hide;

    }


    public boolean hasOverlappingRendering() {
        return false;
    }


    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        TextView textView = this.mBatteryPercentView;
        if (textView != null) {
            textView.setTextColor( mBatteryPercentTint);
        }
      //  mBatteryPercentTint = Constants.getTint(darkIntensity,  mBatteryPercentColor);
 
    }


}
