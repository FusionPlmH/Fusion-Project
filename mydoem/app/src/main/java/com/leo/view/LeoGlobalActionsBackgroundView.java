package com.leo.view;


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

import android.os.Handler;
import android.provider.Settings;

import android.util.AttributeSet;
import android.util.Log;

import android.widget.FrameLayout;
import android.widget.ImageView;


import com.os.leo.utils.LeoUserSettings;
import com.os.leo.utils.LeoUtils;

import java.io.File;

import static com.os.leo.utils.LeoUtils.*;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;


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
        public void setLeoPowerMenuView(Context C ,boolean IsEnabled ){
            if (IsEnabled) {
                boolean z = LeoUserSettings.setLeoUesrPowerMenuStrokeEnabled;
                int i = LeoUserSettings.setLeoUesrPowerMenuStrokeThickness;
                int i2 = LeoUserSettings.setLeoUesrPowerMenuStrokeDashWidth;
                int i3 = LeoUserSettings.setLeoUesrPowerMenuStrokeDashGap;
                int i4 = LeoUserSettings.setLeoUesrPowerMenuStrokeDashColor;
                int i5 = LeoUserSettings.setLeoUesrPowerMenuGradientBackGroundCornerRadius;
                int i6 = LeoUserSettings.setLeoUesrPowerMenuWallpaperColor;
                int i7 = LeoUserSettings.setLeoUesrPowerMenuBgWallpaperAlpha;
                String str = LeoUserSettings.setLeoUesrPowerMenuBgWallpaper;
                if (LeoUserSettings.setLeoUesrPowerMenuBGStyle == 0) {
                    if(setLeoUesrPowerMenuGradientColorEnabled==0){
                        Log.v(AUTHOR, CORYRIGHT+ China );
                        setBackground(getLeoBasicColor(z, i, i2, i3, i4, i5,setLeoUesrPowerMenuBgBasicColor));
                    } else if (setLeoUesrPowerMenuGradientColorEnabled== 1) {
                        Log.v(AUTHOR, CORYRIGHT+ China );
                        setBackground(
                                LeoUtils.LeoGradientDrawable(
                                        setLeoUesrPowerMenuGradientBgStartColor,
                                        LeoUserSettings.setLeoUesrPowerMenuGradientBgCenterColor,
                                        LeoUserSettings.setLeoUesrPowerMenuGradientBgEndColor,
                                        setLeoUesrPowerMenuGradientColorFour,
                                        setLeoUesrPowerMenuGradientColorFive,
                                        setLeoUesrPowerMenuGradientColorSix,
                                        LeoUserSettings.setLeoUesrPowerMenuGradientEnableCenterColor,
                                        LeoUserSettings.setLeoUesrPowerMenuBgGradientBgStyle, z, i, i2, i3, i4, i5, LeoUserSettings.setLeoUesrPowerMenuGradientBgType, LeoUserSettings.setLeoUesrPowerMenuGradientBackGroundColorRadius));
                    }
                } else if (LeoUserSettings.setLeoUesrPowerMenuBGStyle == 999 && str != null) {
                    Log.v(AUTHOR, CORYRIGHT+ China );
                    int blur=setLeoUesrPowerMenuBgWallpaperBlurEnabled;
                    if(blur==0){
                        Log.v(AUTHOR, CORYRIGHT+ China );
                        setBackground(LeoUtils.getLeoWallpaper(C, str, LeoUserSettings.setLeoUesrPowerMenuWallpaperColorEnable, i6, LeoUserSettings.setLeoUesrPowerMenuBgWallpaperAlphaEnable, i7));
                    }else if (blur==1) {
                        setBackground(getLeoBlurWallpaper(C,str,setLeoUesrPowerMenuBlurBgDegree,setLeoUesrPowerMenuBlurWallpaperColorEnabled,i6,LeoUserSettings.setLeoUesrPowerMenuBlurWallpaperAlphaEnabled,i7));
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
        Log.v(AUTHOR, CORYRIGHT+ China );
        setLeoBackgroundView(mContext);
    }


    public void setLeoBackgroundView(Context C){
        LeoSettings(C);
        Log.v(AUTHOR, CORYRIGHT+ China );
        mLeoObserver.setLeoPowerMenuView(C,setLeoUesrPowerMenuShowBG);

    }

}
