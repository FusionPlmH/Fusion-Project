package com.leo.systemui;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.ContentObserver;

import android.graphics.Color;
import android.graphics.PorterDuff;

import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;

import android.os.Handler;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;

import android.widget.RelativeLayout;
import android.widget.TextView;

import com.android.systemui.BatteryMeterView;
import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;
import com.leo.utils.Constants;
import com.os.leo.utils.FontsUtils;
import com.os.leo.utils.LeoUserSettings;
import com.os.leo.utils.LeoUserValues;
import com.os.leo.utils.LeoUtils;


import static com.android.systemui.UId.getLeoRandomColor;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUserValues.mLightModeColor;
import static com.os.leo.utils.LeoUtils.getLeoUri;



public class LeoMainBattery extends LinearLayout implements DarkIconDispatcher.DarkReceiver {
    private static final LayoutParams ICON_PARAMS = new LayoutParams(-1, -2);

    private BroadcastReceiver mBatteryChangedReceiver;
    private int mBatteryIconSize;
    private ImageView mBatteryImageView;
    private TextView mBatteryPercent;
  // private int mBatteryPercentFont;
  // private int mBatteryPercentSize;

    private int mBatteryStyle;
   private int mBatteryTextStandbyColor;
   private int mBatteryTextTint;
    private int mBatteryTint;
    private Context mContext;
    private Drawable mCustomBattery;
    private Drawable mCustomBatteryCharge;
    private String mCustomBatteryPKG;
    private boolean mIsPlugged;
    private int mLevel;
  //  private int mLevelLowStyle;
    private LeoObserver mMainBatteryObserver;
    PorterDuff.Mode mode;

    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver = LeoMainBattery.this.mContext.getContentResolver();
            contentResolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatusbarMainBatteryStyle()), false, this);
            contentResolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatusbarMainBatteryPackage()), false, this);
            contentResolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatusbarMainBatteryIconStandbyColor()), false, this);
            contentResolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatusbarMainBatteryTextStandbyColor()), false, this);
            contentResolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatusbarMainBatteryAllowTransform()), false, this);
            contentResolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatusbarMainBatteryIconSize()), false, this);
            contentResolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatusbarMainBatteryTextSize()), false, this);
            contentResolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoStatusbarMainBatteryTextFont()), false, this);
            contentResolver.registerContentObserver(LeoUtils.getLeoUri("display_battery_percentage"), false, this);
            contentResolver.registerContentObserver(LeoUtils.getLeoUri(getLeoStatusBarMainBatteryRandomColor()), false, this);
            LeoMainBattery.this.updateSettings();
        }

        public void onChange(boolean z) {
            LeoMainBattery.this.updateSettings();
        }
    }

    public LeoMainBattery(Context context) {
        this(context, null);
    }

    public LeoMainBattery(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LeoMainBattery(Context context, AttributeSet attributeSet, int level) {
        super(context, attributeSet, level);
     //   this.mLevelLowStyle = 16;
        this.mode = PorterDuff.Mode.SRC_ATOP;
        this.mContext = context;
        init(context);
    }

    private void init(Context context) {
        this.mCustomBattery = null;
        this.mCustomBatteryCharge = null;
        this.mLevel = -1;
        this.mIsPlugged = false;
        this.mBatteryChangedReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                boolean plugged = false;
                if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                    int level = intent.getIntExtra("level", 0);
                    if (intent.getIntExtra("plugged", 0) != 0) {
                        plugged = true;
                    }
                    LeoMainBattery.this.handleBatteryChange(level, plugged);
                }
            }
        };
        this.mBatteryImageView = new ImageView(context);
        this.mBatteryImageView.setLayoutParams(ICON_PARAMS);
        this.mBatteryPercent = new TextView(context);
        int dimensionPixelSize4 = (int) 8.0;
        if (dimensionPixelSize4 != mBatteryPercent.getPaddingEnd()) {
            mBatteryPercent.setPaddingRelative(0, 5, dimensionPixelSize4, 0);
        }

        //this.mBatteryPercent.setTextAppearance(context, 16973926);


            addView(this.mBatteryPercent);

        addView(this.mBatteryImageView);

        getCustomBattery();
        updateSettings();
        this.mMainBatteryObserver = new LeoObserver(new Handler());
    }
    int style;
    private void getCustomBattery() {
        if (isCustomBatteryInstalled()) {
            try {
                Context createPackageContext = this.mContext.createPackageContext(this.mCustomBatteryPKG, 3);
                this.mCustomBattery = createPackageContext.getResources().getDrawable(createPackageContext.getResources().getIdentifier("stat_sys_battery", "drawable", this.mCustomBatteryPKG));
                this.mCustomBatteryCharge = createPackageContext.getResources().getDrawable(createPackageContext.getResources().getIdentifier("stat_sys_battery_charge", "drawable", this.mCustomBatteryPKG));
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        this.mCustomBattery = null;
        this.mCustomBatteryCharge = null;
    }

    private void handleBatteryChange(int level, boolean plugged) {
        this.mLevel = level;
        this.mIsPlugged = plugged;
        Drawable drawable = !plugged ? this.mCustomBattery : this.mCustomBatteryCharge;

        this.mBatteryImageView.setImageDrawable(null);
        this.mBatteryImageView.setImageDrawable(drawable);
        this.mBatteryImageView.setImageLevel(this.mLevel);
        this.mBatteryPercent.setText(Integer.toString(this.mLevel));
      SpannableStringBuilder formatted = new SpannableStringBuilder(Integer.toString(this.mLevel) + "%");
        CharacterStyle style = new RelativeSizeSpan(1);
        if (this.mLevel < 10) {
            formatted.setSpan(style, 1, 2, 34);
        } else if (this.mLevel < 100) {
            formatted.setSpan(style, 2, 3, 34);
        } else {
            formatted.setSpan(style, 3, 4, 34);
        }
        this.mBatteryPercent.setText(formatted);

    }

    private boolean isCustomBatteryInstalled() {
        try {
            return (TextUtils.isEmpty(this.mCustomBatteryPKG) || this.mContext.getPackageManager().getApplicationInfo(this.mCustomBatteryPKG, 0) == null) ? false : true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
    private int mBatteryStandbyColor;
    private void updateBatteryColor() {
        int Colordefault=Transparency;
        int TextColor=mDefaultLightTextColor;
        int IconColor=Colordefault;
        int colorstyle= setLeoUesrStatusBarMainBatteryRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
        switch (setLeoUesrMainBatteryColorTransform) {
            case 1:
                if(colorstyle==0){
                    TextColor=setLeoUesrMainBatteryTextStandbyColor;
                    IconColor=setLeoUesrMainBatteryIconStandbyColor;
                }else if(colorstyle==1){
                    TextColor=colorrandom;
                    IconColor=colorrandom;
                }
                break;
            default:
                TextColor=mDefaultLightTextColor;
                IconColor=Colordefault;
                break;
        }
        mBatteryTextStandbyColor=TextColor;
        mBatteryTextTint=TextColor;
        mBatteryStandbyColor=IconColor;
        mBatteryTint =IconColor;
        mBatteryImageView.setColorFilter(mBatteryStandbyColor, mode);
        mBatteryPercent.setTextColor(mBatteryTextStandbyColor);

    }

 public void updateSettings() {
        LeoUserSettings.LeoSettings(this.mContext);
        this.mBatteryStyle = LeoUserSettings.setLeoUesrMinBatteryStyle;
        switch (this.mBatteryStyle) {
            case 1:

              this.mBatteryImageView.setVisibility(VISIBLE);


            //  this.mBatteryPercent.setVisibility(0);
                setVisibility(0);
                break;
            default:
                this.mBatteryImageView.setVisibility(0);
            //    this.mBatteryPercent.setVisibility(8);
             //  removeView(mBatteryPercent);
                setVisibility(0);
                break;
        }
        this.mBatteryIconSize = LeoUserSettings.setLeoUesrMainBatteryIconSize;
        setViewSize(this.mBatteryImageView, this.mBatteryIconSize, this.mBatteryIconSize);
        updateBatteryColor();
        this.mCustomBatteryPKG = LeoUserSettings.setLeoUesrMainBatteryPackage;
        getCustomBattery();
        handleBatteryChange(this.mLevel, this.mIsPlugged);
     mBatteryPercent.setTypeface(setLeoRomFonts(0,setLeoUesrMainBatteryTextFont));
     mBatteryPercent.setTextSize(setLeoUesrMainBatteryTextSize);
   style=Settings.System.getInt(mContext.getContentResolver(), "display_battery_percentage", 1);
     if(style==1){
         mBatteryPercent.setVisibility(VISIBLE);
     }else if(style==0){
         mBatteryPercent.setVisibility(GONE);

     }
 }

    public void setViewSize(ImageView icon, int width, int height) {
        LayoutParams params = (LayoutParams) icon.getLayoutParams();
        params.width = width;
        params.height = height;
        icon.setLayoutParams(params);
    }

   protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mContext.registerReceiver(this.mBatteryChangedReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.mMainBatteryObserver.observe();
        updateSettings();
      ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class)).addDarkReceiver(this);
    }

   protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mContext.getContentResolver().unregisterContentObserver(this.mMainBatteryObserver);
        this.mContext.unregisterReceiver(this.mBatteryChangedReceiver);
       ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class)).removeDarkReceiver(this);
    }

    public void onDarkChanged(Rect rect, float darkIntensity, int n) {
        this.mBatteryTint = Constants.getTint(darkIntensity, this.mBatteryStandbyColor);
        this.mBatteryImageView.setColorFilter(this.mBatteryTint, this.mode);
        mBatteryTextTint = Constants.getTint(darkIntensity, this.mBatteryTextStandbyColor);
        mBatteryPercent.setTextColor(this.mBatteryTextTint);
    }
}