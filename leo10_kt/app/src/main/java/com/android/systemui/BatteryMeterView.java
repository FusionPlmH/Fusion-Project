package com.android.systemui;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;

import com.android.systemui.statusbar.salt.SaltMainBattery;
import com.salt.leokt10.R;


import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarBatteryPercentFont;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBarBatteryPercentSize;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusbarMainBatteryEnabled;


public class BatteryMeterView extends LinearLayout implements  ConfigurationListener, DarkIconDispatcher.DarkReceiver {
    private float mAlapa;

    private float mBatteryIconDarkModeAlpha;
    private float mBatteryIconLightModeAlpha;
    private ImageView mBatteryIconView;
    private SaltMainBattery mLeoBatteryView;
    private TextView mBatteryPercentView;
    private float mDarkIntensity;
    private int mDarkModeBackgroundColor;
    private int mDarkModeFillColor;

    private boolean mForceShowPercent;
    private float mIntensity;
    private int mLevel;
    private int mLightModeBackgroundColor;
    private int mLightModeFillColor;
    private int mNonAdaptedBackgroundColor;
    private int mNonAdaptedForegroundColor;
    private float mQsTintIntensity;

    private boolean mShouldUseQsTintColor;

    private int mTextColor;
    private boolean mUseWallpaperTextColors;

    public BatteryMeterView(Context context, ImageView mBatteryIconView) {
        this(context, null, 0);
    }

    public BatteryMeterView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
    private TextView loadPercentView() {
        return (TextView) LayoutInflater.from(getContext()).inflate(R.layout.activity_main, null);
    }

    private void updateShowPercent(boolean z) {

        updateSettings();
    }

    public BatteryMeterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAlapa = -1.0f;
        this.mShouldUseQsTintColor = false;

        setGravity(8388627);


        mBatteryIconView = new ImageView(context);

        MarginLayoutParams marginLayoutParams = new MarginLayoutParams(getResources().getDimensionPixelSize(0), getResources().getDimensionPixelSize(0));
        marginLayoutParams.setMargins(0, 0, 0, getResources().getDimensionPixelOffset(0));

        onDarkChanged(new Rect(), 0.0f, -1107296257);
        setClipChildren(false);
        setClipToPadding(false);

    }
    public  Drawable mDrawable;




    public void updateLeoBatteryView(TextView textView){
        Context context=getContext();

    }
    Context mContext;
    public void updateSettings(){
        LeoSysUiManages(mContext);
        int style =setLeoStatusbarMainBatteryEnabled;
        ImageView imageView = this.mBatteryIconView;
        if (imageView != null) {
            if(style  == 0){
                imageView.setVisibility(VISIBLE);
            }else  if(style  == 1){
                imageView.setVisibility(GONE);
            }else if(style  ==2){
                imageView.setVisibility(GONE);
            }

        }

        if (this.mBatteryPercentView != null) {
            mBatteryPercentView.setTypeface(setLeoTextFont(mContext,setLeoStatusBarBatteryPercentFont,"sec-roboto-light", Typeface.NORMAL));
            mBatteryPercentView.setTextSize(setLeoStatusBarBatteryPercentSize);
        }


  }


    public boolean hasOverlappingRendering() {
        return false;
    }

    public boolean isBatteryPercentVisible() {
        return this.mBatteryPercentView != null;
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();

    }

    public void onBatteryLevelChanged(int i, boolean z, boolean z2, int i2, int i3, int i4) {

        this.mLevel = i;

    }

    public void onDarkChanged(Rect rect, float f, int i) {
        this.mDarkIntensity = f;
        boolean isInArea = DarkIconDispatcher.isInArea(rect, this);
        float f2 = isInArea ? f : 0.0f;
        if (this.mShouldUseQsTintColor) {
            f2 = this.mQsTintIntensity;
        }
        this.mIntensity = f2;
        float f3 = isInArea ? this.mBatteryIconLightModeAlpha + ((this.mBatteryIconDarkModeAlpha - this.mBatteryIconLightModeAlpha) * f2) : 1.0f;
        this.mAlapa = f3;
        if (this.mBatteryIconView != null) {
            this.mBatteryIconView.setAlpha(f3);
        }
        if (this.mBatteryPercentView != null) {
            this.mBatteryPercentView.setAlpha(f3);
        }
       // this.mNonAdaptedForegroundColor = getColorForDarkIntensity(f2, this.mLightModeFillColor, this.mDarkModeFillColor);
      //  this.mNonAdaptedBackgroundColor = getColorForDarkIntensity(f2, this.mLightModeBackgroundColor, this.mDarkModeBackgroundColor);
        if (!this.mUseWallpaperTextColors) {
          //  updateColors(this.mNonAdaptedForegroundColor, this.mNonAdaptedBackgroundColor);
        }
    }

    public void onDensityOrFontScaleChanged() {

    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();

    }

    public void onPowerSaveChanged(boolean z) {

    }

    public void onTuningChanged(String str, String str2) {

    }

    public void setColorsFromContext(Context context) {
        if (context != null) {

        }
    }

    public void setFillColor(int i) {
        if (this.mLightModeFillColor != i) {
            this.mLightModeFillColor = i;
            onDarkChanged(new Rect(), this.mDarkIntensity, -1107296257);
        }
    }

    public void setForceQsTintColor(boolean z, float f) {
        this.mShouldUseQsTintColor = z;
        this.mQsTintIntensity = f;
        onDarkChanged(new Rect(), 0.0f, -1107296257);
    }

    public void setForceShowPercent(boolean z) {
        this.mForceShowPercent = z;

    }

    public void useWallpaperTextColor(boolean z) {
        if (z != this.mUseWallpaperTextColors) {
            this.mUseWallpaperTextColors = z;
            if (this.mUseWallpaperTextColors) {
               // updateColors(Utils.getColorAttr(this.mContext, R.attr.wallpaperTextColor), Utils.getColorAttr(this.mContext, R.attr.wallpaperTextColorSecondary));
            } else {
              //  updateColors(this.mNonAdaptedForegroundColor, this.mNonAdaptedBackgroundColor);
            }
        }
    }

    public void updateQuickStarStyle() {
        updateSettings();
    }

}
