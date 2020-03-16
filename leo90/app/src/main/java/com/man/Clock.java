/*
 * Copyright (C) 2006 The Android Open Source Project
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

package com.man;


import android.content.Context;
import android.graphics.Rect;
import android.support.graphics.drawable.ArgbEvaluator;
import android.widget.TextView;

import com.android.settingslib.Utils;
import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.fusionleo.LeoProvider.LeoManages.getLeoUIResource;

public class Clock extends TextView implements
        DarkIconDispatcher.DarkReceiver {
    public int mNonAdaptedColor;
    public  static int mLightModeFillColor =0xC3FFFFFF;
    public  static int  mDarkModeFillColor =0x99000000;
    public Clock(Context context) {
        super(context);
        updateClockColor();
    }

    public void updateClockColor() {
        if ("leo_clock_center".equals(getTag()) || "leo_clock_left".equals(getTag()) ||"leo_clock_right".equals(getTag()) ) {
            setTextColor(mNonAdaptedColor == mDarkModeFillColor ? mDarkModeFillColor  : mLightModeFillColor);
        }
    }
   



    public void onDarkChanged(Rect rect, float f, int i) {
        if ("leo_clock_center".equals(getTag()) || "leo_clock_left".equals(getTag()) ||"leo_clock_right".equals(getTag()) ) {
           mNonAdaptedColor =getColorForDarkIntensity(f,mLightModeFillColor,mDarkModeFillColor);
        } else if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
           mNonAdaptedColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);
        } else {
           mNonAdaptedColor =mDarkModeFillColor;
        }
        if (!mUseWallpaperTextColor) {
            setTextColor(mNonAdaptedColor);
        }
    }

    public int getColorForDarkIntensity(float DarkAmount, int Color, int tint) {
        return   ((Integer) ArgbEvaluator.getInstance().evaluate(DarkAmount, Integer.valueOf(Color), Integer.valueOf(tint))).intValue();

        //    return ((Integer) ArgbEvaluator.getInstance().evaluate(f, Integer.valueOf(i2), Integer.valueOf(mDarkModeFillColor))).intValue();
    }
 
    private boolean mUseWallpaperTextColor;
    public void useWallpaperTextColor(boolean z) {
        if (z != this.mUseWallpaperTextColor) {
            this.mUseWallpaperTextColor = z;
            if (this.mUseWallpaperTextColor) {
                setTextColor(Utils.getColorAttr(mContext,mContext.getResources().getIdentifier("attr/wallpaperTextColor", null,mContext.getPackageName())));
            } else {
                setTextColor(mNonAdaptedColor);
            }
        }
    }

    Context  mContext;
}
