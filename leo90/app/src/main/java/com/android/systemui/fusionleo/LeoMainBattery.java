/*
 * Copyright (C) 2018 crDroid Android Project
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
 * limitations under the License.
 */

package com.android.systemui.fusionleo;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.provider.Settings;
import android.support.graphics.drawable.ArgbEvaluator;
import android.telephony.TelephonyManager;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.settingslib.Utils;
import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.fusionleo.LeoX.systemui.LeoConfigImageView;
import com.android.systemui.Dependency;
import com.fusionleo.LeoX.systemui.LeoConfigTextView;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;


import static com.fusionleo.LeoProvider.LeoManages.mLightModeFillColor;
import static com.fusionleo.LeoX.systemui.LeoConfig.BATTERY_TAG;
import static com.fusionleo.LeoX.systemui.LeoConfig.getCustomDrawable;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.getLeoUIResource;
import static com.fusionleo.LeoProvider.LeoManages.mDarkModeFillColor;
import static com.fusionleo.LeoProvider.LeoManages.*;


public class LeoMainBattery extends LeoConfigImageView
        implements DarkIconDispatcher.DarkReceiver{
    private BroadcastReceiver mBatteryReceiver;
    private String ACTION_BATTERY= Intent.ACTION_BATTERY_CHANGED;
    private Drawable mCustomBattery;
    private Drawable mCustomBatteryCharge;
    private String mCustomBatteryPKG;
    private boolean mIsPlugged;
    public LeoMainBattery(Context context) {
        this(context, null);
    }

    public LeoMainBattery(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LeoMainBattery(Context context, AttributeSet attributeSet, int level) {
        super(context, attributeSet, level);
        init(context);
    }
   public int mBatteryLevel;

    private void init(Context context) {
        mCustomBattery = null;
        mCustomBatteryCharge = null;
        mBatteryLevel= -1;
        mIsPlugged = false;
        mBatteryReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                boolean plugged = false;
                if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                    int level = intent.getIntExtra("level", 0);
                    if (intent.getIntExtra("plugged", 0) != 0) {
                        plugged = true;

                    }
                    handleBatteryChange(level, plugged);
                }
            }
        };
        updateSettings();
    }



    private void getCustomBattery(String str) {
        if (isCustomBatteryInstalled(str)) {
            try {
                Context createPackageContext =getContext().createPackageContext(str, 3);
             mCustomBattery = createPackageContext.getResources().getDrawable(createPackageContext.getResources().getIdentifier("stat_sys_battery", "drawable",str));
             mCustomBatteryCharge = createPackageContext.getResources().getDrawable(createPackageContext.getResources().getIdentifier("stat_sys_battery_charge", "drawable", str));
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
      mCustomBattery = null;
       mCustomBatteryCharge = null;
    }

    private void handleBatteryChange(int level, boolean plugged) {
        LeoSysUiManages(mContext);
        mBatteryLevel = level;
       mIsPlugged = plugged;
       Drawable drawable = !plugged ? mCustomBattery : mCustomBatteryCharge;
       setImageDrawable(null);
       setImageDrawable(drawable);
       setImageLevel(mBatteryLevel);
    }

    private boolean isCustomBatteryInstalled(String str) {
        try {
            return (TextUtils.isEmpty(str) || this.mContext.getPackageManager().getApplicationInfo(str, 0) == null) ? false : true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
    public void updateSettings() {
        LeoSysUiManages(mContext);
        setLeoImagePadding(setLeoStatusBarMainBatteryStartPadding,setLeoStatusBarMainBatteryEndPadding);
        mCustomBatteryPKG =getLeMianBatteryStyle (setLeoStatusbarMainBatteryPackage);
        getCustomBattery(mCustomBatteryPKG);
        handleBatteryChange(mBatteryLevel, mIsPlugged);
        updateVisibility(setLeoStatusbarMainBatteryEnabled);
        updateBatteryColor();
    }

    private void updateVisibility(int leobatt){
        if(leobatt== 0){
          setVisibility(GONE);
        }else if(leobatt== 1){
            setVisibility(VISIBLE);
        }else if(leobatt== 2){
          setVisibility(GONE);
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        mContext.registerReceiver(mBatteryReceiver, new IntentFilter(ACTION_BATTERY));
        Dependency.get(DarkIconDispatcher.class).addDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
        updateSettings();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
         mContext.unregisterReceiver(mBatteryReceiver);
        Dependency.get(DarkIconDispatcher.class).removeDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
    }



    public void updateBatteryColor() {
        LeoSysUiManages(mContext);
        if (BATTERY_TAG.equals(getTag())) {
         setColorFilter(mNonAdaptedColor == mDarkModeFillColor ? setBatteryDarkColor()  : setBatteryLightColor(),PorterDuff.Mode.SRC_IN);
        }
    }

    public int setBatteryDarkColor() {
        int DarkColor ;
        if(setLeoStatusBarMainBatteryCustomDarkColorEnabled==1){
           DarkColor=setLeoStatusBarMainBatteryDarkColor;
        }else {
            DarkColor=mDarkModeFillColor;
        }
        return DarkColor;
    }

    public int setBatteryLightColor() {
        int DarkColor;
        if(setLeoStatusBarMainBatteryCustomColorEnabled==1){
            DarkColor=setLeoStatusBarMainBatteryColor;
        }else {
            DarkColor=mLightModeFillColor;
        }
        return DarkColor;
    }
 ;

    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        LeoSysUiManages(mContext);
        if (BATTERY_TAG.equals(getTag())) {
            mNonAdaptedColor  =getColorForDarkIntensity(darkIntensity,setBatteryLightColor(),setBatteryDarkColor());
        } else  if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
            mNonAdaptedColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);
        }else{
            mNonAdaptedColor =mDarkModeFillColor;
        }
        if (!mUseWallpaperTextColor) {
            setAlpha(0.8f);
          setColorFilter(mNonAdaptedColor,PorterDuff.Mode.SRC_ATOP);
        }
        if ("leo_qs_battery_view".equals(getTag())) {
            if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled() && this.mShouldUseQsTintColor) {
                mNonAdaptedColor  = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(31);
            }else{
                mNonAdaptedColor= getColorForIntensity(0,mLightModeFillColor, mDarkModeFillColor);

            }

        }

    }
    public int getColorForIntensity(float f, int i, int i2) {
        return ((Integer) ArgbEvaluator.getInstance().evaluate(f, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
    }

    private boolean mShouldUseQsTintColor = false;


    public void setForceQsTintColor(boolean z, float f) {
        this.mShouldUseQsTintColor = z;
        onDarkChanged(new Rect(), 0.0f, -1107296257);
    }
    public void useWallpaperTextColor(boolean z) {
        if (z != this.mUseWallpaperTextColor) {
            this.mUseWallpaperTextColor = z;
            if (this.mUseWallpaperTextColor) {
              setColorFilter(Utils.getColorAttr(mContext,getLeoUIResource("attr/wallpaperTextColor")),PorterDuff.Mode.SRC_ATOP);
            } else {
                setColorFilter(mNonAdaptedColor,PorterDuff.Mode.SRC_ATOP);
            }
        }
    }


}
