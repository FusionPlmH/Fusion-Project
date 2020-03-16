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

package com.android.systemui.qs;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.provider.Settings12;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;

import com.android.systemui.Dependency;

import com.android.systemui.coloring.QSColoringServiceManager;
import com.leo.utils.Constants;


import java.io.File;


import static com.leo.utils.Constants.getLeoResource;


import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUtils.*;
import static com.os.leo.utils.LeoUtils.getLeoUri;


public class QSContainerImpl extends FrameLayout {

    private final Point mSizePoint = new Point();
    private final Context mContext;

    private int mHeightOverride = -1;
    protected View mQSPanel;
    private View mQSDetail;
    protected View mHeader;
    protected float mQsExpansion;

    private View mQSFooter;
    private float mFullElevation;
    private Drawable mQsBackGround;
    private int mQsBackGroundAlpha;

    public QSContainerImpl(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext = context;

    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();


        setLeoQSBackground();

    }
    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoQSBackground();
    }

    public void setLeoQSBackground() {

        boolean StrokeEnabled=setLeoUesrQSPanelStrokeEnabled;
        int StrokeThickness=setLeoUesrQSPanelStrokeThickness;
        int DashWidth= setLeoUesrQSPanelStrokeDashWidth;
        int DashGap= setLeoUesrQSPanelStrokeDashGap;
        int DashColor= setLeoUesrQSPanelStrokeDashColor;
        int CornerRadius=setLeoUesrQSPanelGradientBackGroundCornerRadius;
        int WallpaperColor=setLeoUesrQSPanelWallpaperColor;
        int Alpha=setLeoUesrQSPanelBgWallpaperAlpha;
        String str=setLeoUesrQSPanelBgWallpaper;
        int circular=setLeoUesrNotificationItemCircularLevel;
        int trans=setLeoUesrNotificationTransparencyLevel;
        boolean transparency= setLeoUesrNotificationEnabledBG;
        boolean on=true;
        int  parse=0;
        int  parsecolor= Color.parseColor("#fffafafa");
        if (transparency) {
            if(setLeoUesrNotificationItemEnabledCircular) {
                if(trans==0){
                    setBackground( getLeoBasicColor(
                            on,
                            parse,
                            parse,
                            parse,
                            parse,
                            19,
                            Color.parseColor("#8Effffff") ));
                }else if (trans==1) {
                    setBackground( getLeoBasicColor(
                            on,
                            parse,
                            parse,
                            parse,
                            parse,
                            19,
                            Color.parseColor("#53FFFFFF") ));
                }else if (trans==2) {
                    setBackground( getLeoBasicColor(
                            on,
                            parse,
                            parse,
                            parse,
                            parse,
                            19,
                            Color.parseColor("#2affffff") ));
                }else if (trans==3) {
                    setBackground(new ColorDrawable(Transparency));
                    //全透明不含圆角
                }
            }else {
                if(circular==0){
                    setBackground( getLeoBasicColor(
                            on,
                            parse,
                            parse,
                            parse,
                            parse,
                            15,
                            parsecolor));
                }else if (circular==1) {
                    setBackground( getLeoBasicColor(
                            on,
                            parse,
                            parse,
                            parse,
                            parse,
                            30,
                            parsecolor ));
                }else if (circular==2) {
                    setBackground( getLeoBasicColor(
                            on,
                            parse,
                            parse,
                            parse,
                            parse,
                            45,
                            parsecolor ));
                }else if (circular==3) {
                    setBackground( getLeoBasicColor(
                            on,
                            parse,
                            parse,
                            parse,
                            parse,
                            60,
                            parsecolor ));
                }
            }
        }else {
        if (setLeoUesrQSPanelShowBG) {

            int SPanelBGStyle=setLeoUesrQSPanelBGStyle;
            if (SPanelBGStyle == 0) {
                int colorStyle=setLeoUesrQSPanelGradientColorEnabled;
                if(colorStyle==0){
                    setBackground( getLeoBasicColor(
                            StrokeEnabled,
                            StrokeThickness,
                            DashWidth,
                            DashGap,
                            DashColor,
                            CornerRadius,
                            setLeoUesrQSPanelBgBasicColor
                    ));
                } else if (colorStyle==1) {
                    setBackground(LeoGradientDrawable(setLeoUesrQSPanelGradientBgStartColor,
                            setLeoUesrQSPanelGradientBgCenterColor,
                            setLeoUesrQSPanelGradientBgEndColor,
                            setLeoUesrQSPanelGradientColorFour,
                            setLeoUesrQSPanelGradientColorFive,
                            setLeoUesrQSPanelGradientColorSix,
                            setLeoUesrQSPanelGradientEnableCenterColor,
                            setLeoUesrQSPanelBgGradientBgStyle,StrokeEnabled,StrokeThickness, DashWidth,DashGap, DashColor,CornerRadius
                            ,setLeoUesrQSPanelGradientBgType,setLeoUesrQSPanelGradientBackGroundColorRadius));
                }
            }  else if (SPanelBGStyle == 999 &&  str != null) {
                int wallpaperstyle=setLeoUesrQSPanelBgWallpaperBlurEnabled;
                if(wallpaperstyle==0){
                    setBackground(getLeoWallpaper(getContext(),str,setLeoUesrQSPanelWallpaperColorEnable,WallpaperColor,setLeoUesrQSPanelBgWallpaperAlphaEnable,Alpha));
                }else if (wallpaperstyle==1) {
                    setBackground(getLeoBlurWallpaper(getContext(),str,setLeoUesrQSPanelBlurBgDegree,setLeoUesrQSPanelBlurWallpaperColorEnabled,WallpaperColor,setLeoUesrQSPanelBlurWallpaperAlphaEnabled,Alpha));
                }
            }
        } else {
            setBackgroundResource(Constants.getLeoResource("drawable/qs_background_primary"));

        }
        }
    }


    @Override
    public boolean performClick() {
        // Want to receive clicks so missing QQS tiles doesn't cause collapse, but
        // don't want to do anything with them.
        return true;
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        // Since we control our own bottom, be whatever size we want.
        // Otherwise the QSPanel ends up with 0 height when the window is only the
        // size of the status bar.
        mQSPanel.measure(widthMeasureSpec, MeasureSpec.makeMeasureSpec(
                MeasureSpec.getSize(heightMeasureSpec), MeasureSpec.UNSPECIFIED));
        int width = mQSPanel.getMeasuredWidth();
        LayoutParams layoutParams = (LayoutParams) mQSPanel.getLayoutParams();
        int height = layoutParams.topMargin + layoutParams.bottomMargin
                + mQSPanel.getMeasuredHeight();
        super.onMeasure(MeasureSpec.makeMeasureSpec(width, MeasureSpec.EXACTLY),
                MeasureSpec.makeMeasureSpec(height, MeasureSpec.EXACTLY));

        // QSCustomizer will always be the height of the screen, but do this after
        // other measuring to avoid changing the height of the QS.
        getDisplay().getRealSize(mSizePoint);

    }

}
