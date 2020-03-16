/*
 * Copyright (C) 2014 The Android Open Source Project
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
 * limitations under the License
 */

package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.android.keyguard.CarrierText;
import com.android.systemui.statusbar.salt.SaltMainBattery;

import static com.android.settingslib.salt.SaltConfigCenter.getLeoSymbolStyle;
import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltValues.Values8;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCarrier;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCarrierColor;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCarrierCustomColorEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCarrierFont;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCarrierMulti;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCarrierSize;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCarrierSymbol;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCustomCarrier;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCustomCarrierStringA;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCustomCarrierStringB;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardCustomCarrierSymbol;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardStatusBarViewVisibilities;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBar5Gicon;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusbarMainBatterySize;
import static com.android.systemui.statusbar.salt.SaltMainBattery.BATTERY_TAG;

public class KeyguardStatusBarView extends RelativeLayout {

    private  Context  mContext;
    private TextView mCarrierLabel;
    private TextView mCustomCarrierLabel;



    private ContentObserver mObserver = new ContentObserver(new Handler()) {
        public void onChange(boolean selfChange, Uri uri) {


        }
    };

    private boolean mTouchStarted;

    public KeyguardStatusBarView(Context context, AttributeSet attrs) {
        super(context, attrs);

        mContext = context;
    }
    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        refreshKeyguardStatusBarView();
        setLeoSaltBattery();
    }
    public void setLeoSaltBattery() {

        SaltMainBattery mLeoBattery;
        String Batteryleo=BATTERY_TAG;
        mLeoBattery= findViewWithTag(Batteryleo);
        int size=setLeoStatusbarMainBatterySize;
        LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) mLeoBattery.getLayoutParams();
        params.width =size;
        params.height =size;

        mLeoBattery.updateSettings();
    }

    public void refreshKeyguardStatusBarView() {
        LeoSysUiManages(mContext);
        setVisibility(setLeoKeyguardStatusBarViewVisibilities?GONE:VISIBLE);
        CarrierText Carrier=findViewById(getLeoUIResource("id/keyguard_carrier_text"));
        Carrier.updateLeoCarrierText();
        Carrier.setLeoTogeCarrier(setLeoKeyguardCustomCarrier,
                setLeoKeyguardCarrierMulti,
                setLeoKeyguardCustomCarrierStringA,
                setLeoKeyguardCustomCarrierStringB,
                getLeoSymbolStyle(mContext,
                        setLeoKeyguardCarrierSymbol,
                        setLeoKeyguardCustomCarrierSymbol,
                        ","),setLeoKeyguardCarrierCustomColorEnabled,setLeoKeyguardCarrierColor,setLeoStatusBar5Gicon
        );
        Carrier.setVisibility(setLeoKeyguardCarrier? VISIBLE : GONE);
        Carrier.setTextSize( setLeoKeyguardCarrierSize);
        Carrier.setTypeface(setLeoTextFont(mContext,setLeoKeyguardCarrierFont,"sec-roboto-condensed", Typeface.NORMAL));
    }
    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);

    }




}
