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

import android.content.Context;

import android.graphics.Rect;

import android.text.TextUtils;

import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.TextView;


import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoCustomString;
import static com.android.settingslib.salt.SaltValues.Values10;
import static com.android.settingslib.salt.SaltValues.Values8;
import static com.android.settingslib.salt.SaltValues.Values9;

import static com.android.settingslib.salt.SaltValues.mLightModeFillColor;



public class CarrierText extends TextView implements DarkIconDispatcher.DarkReceiver {

    private boolean mUseWallpaperTextColor;

    private int mTogeCarrierTextColor=mLightModeFillColor,mTogeCarrierColorEnabled,mNonAdaptedColor,mTogeCarrier,mTogeCarrierSingleLine;
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



    public void setLeoTogeCarrierColor(int Darkstyle, int Darken) {
        mTogeCarrierTextColor= Darkstyle;
        mTogeCarrierColorEnabled= Darken;
        if (Values8.equals(getTag()) || Values9.equals(getTag())) {
            if (mTogeCarrierColorEnabled==1) {
                setTextColor(mTogeCarrierTextColor);
            } else {
                setTextColor(mNonAdaptedColor);
            }
        }else if (Values10.equals(getTag())) {
            setTextColor(mTogeCarrierTextColor);
        }
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
                dsss=getLeoCustomString(mTogeCarrierStrA)+mTogeCarrierSymbol+getLeoCustomString(mTogeCarrierStrB);
            }else {
                dsss=getLeoCustomString(mTogeCarrierStrA);
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
        if (Values8.equals(getTag()) || Values10.equals(getTag())) {
            setSingleLine(true);
        }if (Values9.equals(getTag())) {
            if(mTogeCarrierSingleLine==1){
                setSingleLine(false);
            }else{
                setSingleLine(true);
            }
        }

    }

    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        if (Values8.equals(getTag()) || Values9.equals(getTag())) {
            mNonAdaptedColor = DarkIconDispatcher.getTint(area, this, tint);
            if (mTogeCarrierColorEnabled==1) {
                setTextColor(mTogeCarrierTextColor);
            } else {
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
