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
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.support.graphics.drawable.ArgbEvaluator;
import android.telephony.TelephonyManager;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.view.Display;
import android.view.Gravity;
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


import static com.fusionleo.LeoX.systemui.LeoConfig.TEMP_TAG;
import static com.fusionleo.LeoX.systemui.LeoConfig.getCustomDrawable;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.getLeoUIResource;
import static com.fusionleo.LeoProvider.LeoManages.mDarkModeFillColor;
import static com.fusionleo.LeoProvider.LeoManages.*;


public class LeoTemp extends LeoConfigTextView
        implements DarkIconDispatcher.DarkReceiver{




    public LeoTemp(Context context) {
        this(context, null);
    }

    public LeoTemp(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);

    }

    public LeoTemp(Context context, AttributeSet attributeSet, int level) {
        super(context, attributeSet, level);
        setTag(TEMP_TAG);
        setGravity(Gravity.CENTER);
        setSingleLine(false);
    }
    private boolean mTempDisplay;
    private int mTempDisplayStyle;
    private int mTempDisplaySize;
    private int mTempDisplayFont;

    public void getLeoTempVoltage(){
        mTempDisplay= setLeoStatusBarTempEnabled;
        mTempDisplayStyle=setLeoStatusBarTempStyle;
        mTempDisplayFont= setLeoStatusBarTempFont;
        mTempDisplaySize=setLeoStatusBarTempSize;
        if (mTempDisplay){
            if (mHandler == null && getDisplay() != null) {
                mHandler = new Handler();
                if (getDisplay().getState() == Display.STATE_ON) {
                    mHandler.postAtTime(mTemperatureTick,
                            SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                }
                IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
                filter.addAction(Intent.ACTION_SCREEN_ON);
                getContext().registerReceiver(mTemperatureReceiver, filter);
            }
        }

        setText(getLeoTempVoltageData(mTempDisplayStyle));
        setLeoTextFont(mTempDisplayFont,"roboto-regular",Typeface.BOLD);
        setLeoTextPadding(setLeoStatusBarTempStartPadding,setLeoStatusBarTempEndPadding);

        setLeoTextSize(mTempDisplaySize);
        if (TEMP_TAG.equals(getTag())) {
            setTextColor(mNonAdaptedColor == mDarkModeFillColor ? setTempDarkColor()  : setTempLightColor());
        }
    }
    private String  getLeoTempVoltageData(int style){
        String  strcpump=getCPUTemperature();
        String  strBatterymp=getBatteryTemperature();

        String  strcpu=LeoString("cpu");
        String  strBattery=LeoString("battery");
        String  newline="\n";

        String  cpu=strcpump+newline+strcpu;
        String  Battery=strBatterymp+newline+strBattery;
        String  multi=strBattery+strBatterymp+newline+strcpu+strcpump;

        switch (style) {
            case 1:
                return cpu;
            case 2:
                return Battery;
            default:
                return multi;
        }

    }

    private static final String TEMP=" ℃";
    private String getBatteryTemperature() {
        float f =getBatteryTemp();
        return Math.round(f) + TEMP;
    }
    private String getCPUTemperature() {

        return getCpuTemp()+ TEMP;
    }

    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        LeoSysUiManages(mContext);
        if (TEMP_TAG.equals(getTag())) {
            mNonAdaptedColor =getColorForDarkIntensity(darkIntensity,setTempLightColor(),setTempDarkColor());
        } else if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
            mNonAdaptedColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);
        } else {
            int color=mDarkModeFillColor;
            mNonAdaptedColor =color;
        }
        if (!mUseWallpaperTextColor) {
            setTextColor(mNonAdaptedColor);
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getLeoTempVoltage();
        Dependency.get(DarkIconDispatcher.class).addDarkReceiver(this);
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Dependency.get(DarkIconDispatcher.class).removeDarkReceiver(this);
        if (mHandler != null) {
            getContext().unregisterReceiver(mTemperatureReceiver);
            mHandler.removeCallbacks(mTemperatureTick);
            mHandler = null;
            getLeoTempVoltage();
        }
        Dependency.get(DarkIconDispatcher.class).addDarkReceiver(this);
    }
    private Handler mHandler;
    private final BroadcastReceiver mTemperatureReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                if (mHandler != null) {
                    mHandler.removeCallbacks(mTemperatureTick);
                }
            } else if (Intent.ACTION_SCREEN_ON.equals(action)) {
                if (mHandler != null) {
                    mHandler.postAtTime(mTemperatureTick,
                            SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                }
            }
        }
    };
    private final Runnable mTemperatureTick = new Runnable() {
        @Override
        public void run() {
            getLeoTempVoltage();
            mHandler.postAtTime(this, SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
        }
    };

    private boolean mUseWallpaperTextColor;
    public void useWallpaperTextColor(boolean z) {
        if (z != this.mUseWallpaperTextColor) {
            this.mUseWallpaperTextColor = z;
            if (this.mUseWallpaperTextColor) {
                int color=Utils.getColorAttr(mContext, getLeoUIResource("attr/wallpaperTextColor"));
                setTextColor(color);
            } else {
                setTextColor(mNonAdaptedColor);
            }
        }
    }
    public int setTempDarkColor() {
        int DarkColor;
        if(setLeoStatusBarTempCustomDarkColorEnabled==1){
            DarkColor= setLeoStatusBarDarkTempColor;
        }else {
            DarkColor=mDarkModeFillColor;
        }
        return DarkColor;
    }
    public int setTempLightColor() {
        int DarkColor;
        if(setLeoStatusBarTempCustomColorEnabled==1){
            DarkColor=setLeoStatusBarTempColor;
        }else {
            DarkColor=mLightModeFillColor;
        }
        return DarkColor;
    }


}
