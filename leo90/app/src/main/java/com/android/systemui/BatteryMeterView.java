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

import com.android.leo.R;
import com.android.settingslib.Utils;
import com.android.systemui.coloring.QSColoringServiceManager;

import com.android.systemui.fusionleo.LeoMainBattery;
import com.android.systemui.settings.CurrentUserTracker;

import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;
import com.android.systemui.statusbar.policy.DarkIconDispatcher.DarkReceiver;
import com.android.systemui.statusbar.policy.IconLogger;
import com.fusionleo.LeoProvider.LeoObserver;

import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.getLeoIdentifier;
import static com.fusionleo.LeoProvider.LeoManages.mLeoQSHeadsClock;
import static com.fusionleo.LeoProvider.LeoManages.mLeoStatusBarMainBattery;
import static com.fusionleo.LeoProvider.LeoManages.setLeoQSTileFont;
import static com.fusionleo.LeoProvider.LeoManages.setLeoQSTileSize;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarBatteryPercentFont;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBarBatteryPercentSize;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusbarMainBatteryEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusbarMainBatteryPackage;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoFonts;


public class BatteryMeterView extends LinearLayout implements  ConfigurationListener, DarkReceiver , LeoObserver.ObListener{
    private float mAlapa;

    private float mBatteryIconDarkModeAlpha;
    private float mBatteryIconLightModeAlpha;
    private ImageView mBatteryIconView;
    private LeoMainBattery mLeoBatteryView;
    private TextView mBatteryPercentView;
    private float mDarkIntensity;
    private int mDarkModeBackgroundColor;
    private int mDarkModeFillColor;
    /* access modifiers changed from: private|final */

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
        int i = this.mBatteryPercentView != null ? 1 : 0;
        if (z || this.mForceShowPercent) {
            if (i == 0) {
                this.mBatteryPercentView = loadPercentView();

                if (this.mTextColor != 0) {
                    this.mBatteryPercentView.setTextColor(this.mTextColor);
                }
                if (this.mAlapa > 0.0f) {
                    this.mBatteryPercentView.setAlpha(this.mAlapa);
                }

                addView(this.mBatteryPercentView, 0);
                LayoutParams layoutParams = (LayoutParams) this.mBatteryPercentView.getLayoutParams();
                layoutParams.setMarginEnd(getResources().getDimensionPixelSize(R.dimen.battery_level_padding_start));
                this.mBatteryPercentView.setLayoutParams(layoutParams);
                this.mBatteryPercentView.setLayoutDirection(2);
            }
        } else if (i != 0) {
            removeView(this.mBatteryPercentView);
            this.mBatteryPercentView = null;
        }
        updateSettings();
    }

    public BatteryMeterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAlapa = -1.0f;
        this.mShouldUseQsTintColor = false;


        setOrientation(0);
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
        if(style  == 0){
           mBatteryIconView.setVisibility(VISIBLE);
       }else  if(style  == 1){
            mBatteryIconView.setVisibility(GONE);
        }else if(style  ==2){
          mBatteryIconView.setVisibility(GONE);
        }
        if (this.mBatteryPercentView != null) {
            mBatteryPercentView.setTypeface(setLeoFonts(mContext,setLeoStatusBarBatteryPercentFont,"sec-roboto-light", Typeface.NORMAL));
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


    @Override
    public void onLeoChange(String str) {

    }
}
