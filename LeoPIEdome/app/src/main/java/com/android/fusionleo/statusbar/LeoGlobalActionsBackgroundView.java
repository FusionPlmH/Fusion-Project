package com.android.fusionleo.statusbar;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;

import android.graphics.drawable.GradientDrawable;

import android.net.Uri;

import android.os.Build;
import android.os.Handler;
import android.provider.Settings;

import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.Log;

import android.widget.FrameLayout;


import java.io.File;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGradientDrawable;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoBasicColor;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoBlurWallpaper;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoWallpaper;
import static com.android.fusionleo.global.LeoGlobalValues.*;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoPowerMenuGradientBgCenterColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;


public class LeoGlobalActionsBackgroundView
        extends FrameLayout
{
    private Context mContext;
    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver  resolver= getContext().getContentResolver();
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuBlurBgDegree()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuBgWallpaperAlphaEnable()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuBgWallpaperAlpha()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuBGStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuBgBasicColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientBgStartColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientBgCenterColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientBgEndColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientEnableCenterColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuShowBG()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuBgGradientBgStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientBgType()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientBackGroundCornerRadius()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientBackGroundColorRadius()), false,
                    this);
            resolver.registerContentObserver(getLeoUri( getLeoPowerMenuBgWallpaper()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuWallpaperColorEnable()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuWallpaperColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuStrokeDashGap()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuStrokeEnabled()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuStrokeDashWidth()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuStrokeThickness()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuStrokeDashColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuBlurWallpaperColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuBlurWallpaperAlpha()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientColorFour()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientColorFive()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientColorSix()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuGradientColorEnabled()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoPowerMenuBgWallpaperBlurEnabled()), false,
                    this);


        }

        @Override
        public void onChange(boolean selfChange) {
            setLeoBackgroundView(mContext);
        }

        public void setLeoPowerMenuView(Context C , boolean IsEnabled ){
            if ( setLeoUesrPowerMenuStyle) {
                Log.v(AUTHOR, "Developers from China");
            }else{
                if (IsEnabled) {
                    boolean z = setLeoUesrPowerMenuStrokeEnabled;
                    int i = setLeoUesrPowerMenuStrokeThickness;
                    int i2 = setLeoUesrPowerMenuStrokeDashWidth;
                    int i3 =setLeoUesrPowerMenuStrokeDashGap;
                    int i4 =setLeoUesrPowerMenuStrokeDashColor;
                    int i5 = setLeoUesrPowerMenuGradientBackGroundCornerRadius;
                    int i6 = setLeoUesrPowerMenuWallpaperColor;
                    int i7 =setLeoUesrPowerMenuBgWallpaperAlpha;
                    String str = setLeoUesrPowerMenuBgWallpaper;
                    if (setLeoUesrPowerMenuBGStyle == 0) {
                        if(setLeoUesrPowerMenuGradientColorEnabled==0){
                            Log.v(AUTHOR, "Developers from China");
                            setBackground(getLeoBasicColor(z, i, i2, i3, i4, i5,setLeoUesrPowerMenuBgBasicColor));
                        } else if (setLeoUesrPowerMenuGradientColorEnabled== 1) {
                            Log.v(AUTHOR, "Developers from China" );
                            setBackground(
                                    LeoGradientDrawable(
                                            setLeoUesrPowerMenuGradientBgStartColor,
                                            setLeoUesrPowerMenuGradientBgCenterColor,
                                            setLeoUesrPowerMenuGradientBgEndColor,
                                            setLeoUesrPowerMenuGradientColorFour,
                                            setLeoUesrPowerMenuGradientColorFive,
                                            setLeoUesrPowerMenuGradientColorSix,
                                            setLeoUesrPowerMenuGradientEnableCenterColor,
                                            setLeoUesrPowerMenuBgGradientBgStyle, z, i, i2, i3, i4, i5,setLeoUesrPowerMenuGradientBgType, setLeoUesrPowerMenuGradientBackGroundColorRadius));
                        }
                    } else if (setLeoUesrPowerMenuBGStyle == 999 && str != null) {
                        Log.v(AUTHOR, "Developers from China" );
                        int blur=setLeoUesrPowerMenuBgWallpaperBlurEnabled;
                        if(blur==0){
                            Log.v(AUTHOR, "Developers from China" );
                            setBackground(getLeoWallpaper(C, str,setLeoUesrPowerMenuWallpaperColorEnable, i6,setLeoUesrPowerMenuBgWallpaperAlphaEnable, i7));
                        }else if (blur==1) {
                            setBackground(getLeoBlurWallpaper(C,str,setLeoUesrPowerMenuBlurBgDegree,setLeoUesrPowerMenuBlurWallpaperColorEnabled,i6,setLeoUesrPowerMenuBlurWallpaperAlphaEnabled,i7));
                        }
                    }
                }
            }
        }

    }
    public LeoGlobalActionsBackgroundView(Context context, AttributeSet LeoAttributeSet) {
        super(context, LeoAttributeSet);
        mContext = context;

    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        Log.v(AUTHOR, "Developers from China" );
        setLeoBackgroundView(mContext);
    }



    public void setLeoBackgroundView(Context C){
        LeoStatusSettings(C);
        Log.v(AUTHOR, "Developers from China"  );
        mLeoObserver.setLeoPowerMenuView(C,setLeoUesrPowerMenuShowBG);

    }

}
