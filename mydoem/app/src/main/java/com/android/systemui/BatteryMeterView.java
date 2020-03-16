package com.android.systemui;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.systemui.statusbar.policy.DarkIconDispatcher;
import com.android.systemui.util.SettingsHelper.OnChangedCallback;
import com.leo.utils.Constants;
import com.os.leo.utils.FontsUtils;
import com.os.leo.utils.LeoUserSettings;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.mLeoRom;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.mDefaultLightTextColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisableStockBatteryIcon;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMainBatteryColorTransform;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMainBatteryIconStandbyColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMainBatteryTextFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMainBatteryTextSize;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMainBatteryTextStandbyColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarMainBatteryRandomColor;
import static com.os.leo.utils.LeoUserValues.mLightModeColor;

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
    public void setBatteryIcon() {
        LeoSettings(mLeoRom);
        ImageView  mIconView=mBatteryIconView;
        int Visibility=setLeoUesrDisableStockBatteryIcon;
        if(Visibility==1) {
            mIconView.setVisibility(GONE);
        } else  if(Visibility==0) {
            mIconView.setVisibility(VISIBLE);
        }
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
        mBatteryPercentTint = Constants.getTint(darkIntensity,  mBatteryPercentColor);
 
    }


}
