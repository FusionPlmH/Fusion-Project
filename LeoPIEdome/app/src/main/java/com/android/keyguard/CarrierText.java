/*
 * Copyright (C) 2012 The Android Open Source Project
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

package com.android.keyguard;

import java.util.Locale;

import android.content.Context;
import android.graphics.Rect;
import android.net.wifi.WifiManager;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

import com.android.systemui.statusbar.policy.DarkIconDispatcher;


public class CarrierText extends TextView implements DarkIconDispatcher.DarkReceiver {

    private static final String TAG = "CarrierText";

    private static CharSequence mSeparator;

    private final boolean mIsEmergencyCallCapable;



    private WifiManager mWifiManager;



    /**
     * The status of this lock screen. Primarily used for widgets on LockScreen.
     */
    private static enum StatusMode {
        Normal, // Normal case (sim card present, it's not locked)
        NetworkLocked, // SIM card is 'network locked'.
        SimMissing, // SIM card is missing.
        SimMissingLocked, // SIM card is missing, and device isn't provisioned; don't allow access
        SimPukLocked, // SIM card is PUK locked because SIM entered wrong too many times
        SimLocked, // SIM card is currently locked
        SimPermDisabled, // SIM card is permanently disabled due to PUK unlock failure
        SimNotReady; // SIM is not ready yet. May never be on devices w/o a SIM.
    }

    public CarrierText(Context context) {
        this(context, null);
    }

    public CarrierText(Context context, AttributeSet attrs) {
        super(context, attrs);
        mIsEmergencyCallCapable = context.getResources().getBoolean(
                com.android.internal.R.bool.config_voice_capable);
        boolean useAllCaps;


     //   updateText(0);
        // 中国移动 4G
        // 中国联通
    }

    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {

    }
    public int CustomSymbol;
    protected String updateCustomSymbol(int CustomSymbol) {
        switch (CustomSymbol) {
            case 1:
                return "\n";
            default:
                return "｜";
        }

    }



    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();



    }

    private CharSequence makeCarrierText(CharSequence charSequence, CharSequence charSequence2) {

        return charSequence +"\n" + charSequence2;
    }


    protected void updateCarrierText() {
        boolean allSimsMissing = true;
        boolean anySimReadyAndInService = false;

setText(updateCustomSymbol(CustomSymbol));

    }




    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();

    }







    private class CarrierTextTransformationMethod extends SingleLineTransformationMethod {
        private final Locale mLocale;
        private final boolean mAllCaps;

        public CarrierTextTransformationMethod(Context context, boolean allCaps) {
            mLocale = context.getResources().getConfiguration().locale;
            mAllCaps = allCaps;
        }

        @Override
        public CharSequence getTransformation(CharSequence source, View view) {
            source = super.getTransformation(source, view);

            if (mAllCaps && source != null) {
                source = source.toString().toUpperCase(mLocale);
            }

            return source;
        }
    }
}
