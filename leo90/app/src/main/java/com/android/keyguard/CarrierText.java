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

import java.util.List;
import java.util.Locale;
import java.util.Objects;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.provider.Settings;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.TextView;


import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;
import com.android.systemui.widget.SystemUITextView;

import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBar5Gicon;
import static com.fusionleo.LeoX.systemui.LeoConfig.getColorForDarkIntensity;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoInt;
import static com.fusionleo.LeoX.systemui.LeoConfig.*;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoSymbolStyle;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoText;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.mDarkModeFillColor;
import static com.fusionleo.LeoProvider.LeoManages.mLeoStatusBarCarrier;
import static com.fusionleo.LeoProvider.LeoManages.mLightModeFillColor;



public class CarrierText extends TextView implements DarkIconDispatcher.DarkReceiver {

    private boolean mUseWallpaperTextColor;

    private int mTogeCarrierDarkColor,mTogeCarrierLightColor ,mTogeCarrierDarkColorEnabled,mTogeCarrierLightColorEnabled,mNonAdaptedColor,mTogeCarrier,mTogePanelCarrierColor,mTogeCarrierSingleLine;
    private String mTogeCarrierStrA,mTogeCarrierStrB,mTogeCarrierSymbol;
    private CharSequence mTogeCarrierText;
    private boolean mTogeCarrier5G;
    private static final String TAG = "CarrierText";


    public CarrierText(Context context) {
        this(context, null);
    }

    public CarrierText(Context context, AttributeSet attrs) {
        super(context, attrs);
        updateCarrierText();

    }



    public void setLeoTogeCarrierColor(int style,int en,int Darkstyle, int Darken) {

        mTogeCarrierLightColor = style;
        mTogeCarrierLightColorEnabled = en;
        mTogeCarrierDarkColor = Darkstyle;
        mTogeCarrierDarkColorEnabled= Darken;
        updateLeoCarrierText();

    }

    public void setLeoTogeCarrier(int of,int of2,String format,String format2,String Symbol) {
            mTogeCarrier =of;
            mTogeCarrierSingleLine=of2;

        mTogeCarrierStrA = format;
        mTogeCarrierStrB= format2;
        mTogeCarrierSymbol=Symbol;
            updateLeoCarrierText();

    }
    public void setLeoTogeCarrier5G(boolean style) {
        mTogeCarrier5G = style;
        updateLeoCarrierText();


    }
    public void setLeoTogePanelCarrierColor(int style) {

            mTogePanelCarrierColor = style;
            updateLeoCarrierText();


    }
    public int setCarrierTextDarkColor() {
        int DarkColor;
        if(mTogeCarrierDarkColorEnabled==1){
            DarkColor=mTogeCarrierDarkColor;
        }else {
            DarkColor=mDarkModeFillColor;
        }
        return DarkColor;
    }
    public int setCarrierTextLightColor() {
        int DarkColor;
        if(mTogeCarrierLightColorEnabled==1){
            DarkColor=mTogeCarrierLightColor;
        }else {
            DarkColor=mLightModeFillColor;
        }
        return DarkColor;
    }

    protected void updateCarrierText() {
        CharSequence updateCarrierTextWithSimIoError ="";


        getCarrierText("");
        updateLeoCarrierText();
    }


    public void getCarrierText(CharSequence charSequence) {
         mTogeCarrierText=charSequence;
    }

    public void updateLeoCarrierText() {
        String Str45G = String.valueOf(mTogeCarrierText);
        if(mTogeCarrier==1){
            String dsss;
            if(mTogeCarrierSingleLine== 1){
                dsss=getLeoString(mTogeCarrierStrA)+mTogeCarrierSymbol+getLeoString(mTogeCarrierStrB);
            }else {
                dsss=getLeoString(mTogeCarrierStrA);
            }
            setText( dsss);
        }else{
            String g5;
             if(mTogeCarrier5G){
                 g5=Str45G.replaceAll("4G", "5G" );
             } else {
                 g5=Str45G;
             }
            setText(g5);
        }
        if (mLeoTag[0].equals(getTag()) || mLeoTag[1].equals(getTag())) {
            setTextColor(mNonAdaptedColor == mDarkModeFillColor ? setCarrierTextDarkColor() : setCarrierTextLightColor());
        }else  if (mLeoTag[2].equals(getTag())) {
            setTextColor(mTogePanelCarrierColor);
        }
        if (mLeoTag[0].equals(getTag()) || mLeoTag[2].equals(getTag())) {
            setSingleLine(true);
        }if (mLeoTag[1].equals(getTag())) {
            if(mTogeCarrierSingleLine==1){
                setSingleLine(false);
            }else{
                setSingleLine(true);
            }
        }

    }

    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        LeoSysUiManages(getContext());
        if (mLeoTag[0].equals(getTag()) || mLeoTag[1].equals(getTag())) {
            if (mLeoTag[0].equals(getTag()) || mLeoTag[1].equals(getTag())) {
                mNonAdaptedColor =getColorForDarkIntensity(darkIntensity,setCarrierTextLightColor(),setCarrierTextDarkColor());
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
    }
    public void onVisibilityChanged(View view, int i) {
        CarrierText.super.onVisibilityChanged(view, i);
        if (i == 0) {
            setEllipsize(TextUtils.TruncateAt.MARQUEE);
        } else {
            setEllipsize(TextUtils.TruncateAt.END);
        }
    }




    private CharSequence updateCarrierTextWithSimIoError(CharSequence charSequence, boolean z) {

        return charSequence;
    }

    public void onAttachedToWindow() {
        CarrierText.super.onAttachedToWindow();
        onLeoAttached();
    }


    public void onDetachedFromWindow() {
        CarrierText.super.onDetachedFromWindow();
        onLeoDetached();
    }


    public void onLeoAttached() {

        Dependency.get(DarkIconDispatcher.class).addDarkReceiver(this);

    }


    public void onLeoDetached() {

        Dependency.get(DarkIconDispatcher.class).removeDarkReceiver(this);
    }







}
