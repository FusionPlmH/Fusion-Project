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

package com.android.systemui.statusbar.salt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.SystemClock;

import android.util.AttributeSet;
import android.view.Display;
import android.view.Gravity;
import android.widget.TextView;


import com.android.settingslib.Utils;
import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;


import static com.android.settingslib.salt.SaltConfigCenter.*;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.setLeoTextPadding;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.setLeoTextSize;
import static com.android.settingslib.salt.SaltConfigFrame.*;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltValues.mDarkModeFillColor;
import static com.android.settingslib.salt.SaltValues.mLightModeFillColor;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class SaltTemp extends TextView
        implements DarkIconDispatcher.DarkReceiver{

private Context mContext;

    public static final String TEMP_TAG="leo_statusbar_temp_view";
    public SaltTemp(Context context) {
        this(context, null);
    }

    public SaltTemp(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);

    }

    public SaltTemp(Context context, AttributeSet attributeSet, int level) {
        super(context, attributeSet, level);
        mContext=context;
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
        setTypeface(setLeoTextFont(mContext,mTempDisplayFont,"roboto-regular",Typeface.BOLD));
        setLeoTextPadding(this,setLeoStatusBarTempStartPadding,setLeoStatusBarTempEndPadding);

        setLeoTextSize(this,mTempDisplaySize);
        updateTempColor();
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
    private int mNonAdaptedColor;
    private int mTempTextColor;
    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        mNonAdaptedColor = DarkIconDispatcher.getTint(area, this, tint);
        if (setTempCustomColor()) {
            setTextColor(mTempTextColor);
        } else {
            setTextColor(mNonAdaptedColor);
        }
    }
    public void updateTempColor() {
        LeoSysUiManages(mContext);
        mTempTextColor =setLeoStatusBarTempColor;
        if (setTempCustomColor()) {
            setTextColor(mTempTextColor);
        } else {
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


    public boolean setTempCustomColor() {

        return setLeoStatusBarTempCustomColorEnabled==1;
    }


}
