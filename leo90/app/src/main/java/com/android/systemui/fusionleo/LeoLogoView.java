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

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

import com.android.settingslib.Utils;
import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.fusionleo.LeoX.systemui.LeoConfigImageView;
import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;


import static com.fusionleo.LeoX.systemui.LeoConfig.getCustomDrawable;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;

import static com.fusionleo.LeoProvider.LeoManages.mDarkModeFillColor;
import static com.fusionleo.LeoProvider.LeoManages.*;


public class LeoLogoView extends LeoConfigImageView
        implements DarkIconDispatcher.DarkReceiver{




    private boolean mAttached;

    private int mLeoLogoStyle;



    public LeoLogoView(Context context) {
        this(context, null);

    }

    public LeoLogoView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LeoLogoView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
       setTag("leo_statusbar_logo_view");
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (mAttached) {
            return;
        }
        mAttached = true;
      Dependency.get(DarkIconDispatcher.class).addDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
        updateSettings();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (!mAttached) {
            return;
        }
        mAttached = false;
       Dependency.get(DarkIconDispatcher.class).removeDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
    }

    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        LeoSysUiManages(mContext);
        if ("leo_statusbar_logo_view".equals(getTag())) {
            mNonAdaptedColor =getColorForDarkIntensity(darkIntensity,setLogoLightColor(),setLogoDarkColor());
        } else  if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
            mNonAdaptedColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);
        } else {
            mNonAdaptedColor =mDarkModeFillColor;
        }
        if (!mUseWallpaperTextColor) {
            setColorFilter(mNonAdaptedColor,PorterDuff.Mode.SRC_IN);
        }
    }

    public void updateLeoLogo() {



        Drawable drawable  =LogoIcon[mLeoLogoStyle];
        setImageDrawable(drawable);
    }
    public void updateLogoColor() {
        LeoSysUiManages(mContext);
        if ("leo_statusbar_logo_view".equals(getTag())) {
            setColorFilter(mNonAdaptedColor == mDarkModeFillColor ? setLogoDarkColor()  : setLogoLightColor(),PorterDuff.Mode.SRC_IN);
        }
    }
    public int setLogoDarkColor() {
        int DarkColor;
        if(setLeoStatusBarLogoCustomDarkColorEnabled==1){
            DarkColor=setLeoStatusBarDarkLogoColor;
        }else {
            DarkColor=mDarkModeFillColor;
        }
        return DarkColor;
    }
    public int setLogoLightColor() {
        int DarkColor;
        if(setLeoStatusBarLogoCustomColorEnabled==1){
            DarkColor=setLeoStatusBarLogoColor;
        }else {
            DarkColor=mLightModeFillColor;
        }
        return DarkColor;
    }

    public void updateSettings() {
        LeoSysUiManages(mContext);
        mLeoLogoStyle=setLeoStatusBarLogoStyle;
        setLeoImagePadding( setLeoStatusBarLogoStartPadding, setLeoStatusBarLogoEndPadding);
        float size=setLeoStatusBarLogoSize;
        setLeoIconSize(size);
        updateLeoLogo();
        updateLogoColor();

    }

    public void useWallpaperTextColor(boolean z) {
        if (z != this.mUseWallpaperTextColor) {
            this.mUseWallpaperTextColor = z;
            if (this.mUseWallpaperTextColor) {
                setColorFilter(Utils.getColorAttr(mContext, getLeoUIResource("attr/wallpaperTextColor")),PorterDuff.Mode.SRC_IN);
            } else {
                setColorFilter(mNonAdaptedColor,PorterDuff.Mode.SRC_IN);
            }
        }
    }
}
