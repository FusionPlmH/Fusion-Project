package com.leo.view;


import android.content.ContentResolver;
import android.content.Context;

import android.database.ContentObserver;

import android.os.Handler;


import android.util.AttributeSet;

import android.util.Log;
import android.widget.FrameLayout;

;
import com.os.leo.utils.LeoBlur;
import com.os.leo.utils.LeoUserSettings;
import com.os.leo.utils.LeoUtils;


import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;
import static com.os.leo.utils.LeoUtils.getLeoBlurWallpaper;

import static com.os.leo.utils.LeoUtils.*;
import static com.os.leo.utils.LeoUserSettings.*;

import static com.os.leo.utils.LeoUtils.getLeoUri;


public class LeoNavigationBarBackgroundView extends FrameLayout {
    private Context mContext;
    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver  resolver= getContext().getContentResolver();
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarBlurBgDegree()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarBgWallpaperAlphaEnable()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarBgWallpaperAlpha()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarBGStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarBgBasicColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientBgStartColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientBgCenterColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientBgEndColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientEnableCenterColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarShowBG()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarBgGradientBgStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientBgType()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientBackGroundCornerRadius()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientBackGroundColorRadius()), false,
                    this);
            resolver.registerContentObserver(getLeoUri( getLeoNavigationBarBgWallpaper()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarWallpaperColorEnable()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarWallpaperColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarStrokeDashGap()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarStrokeEnabled()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarStrokeDashWidth()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarStrokeThickness()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarStrokeDashColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarBlurWallpaperColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarBlurWallpaperAlpha()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientColorFour()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientColorFive()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientColorSix()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarGradientColorEnabled()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoNavigationBarBgWallpaperBlurEnabled()), false,
                    this);
        }

        @Override
        public void onChange(boolean selfChange) {
            setLeoBackgroundView(mContext);
        }



    }
    public LeoNavigationBarBackgroundView(Context context, AttributeSet LeoAttributeSet) {
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
          setLeoNavigationBarView(C,setLeoUesrNavigationBarShowBG);
    }
    public void setLeoNavigationBarView(Context C ,boolean IsEnabled){
        if (IsEnabled) {
            boolean z = LeoUserSettings.setLeoUesrNavigationBarStrokeEnabled;
            int i = LeoUserSettings.setLeoUesrNavigationBarStrokeThickness;
            int i2 = LeoUserSettings.setLeoUesrNavigationBarStrokeDashWidth;
            int i3 = LeoUserSettings.setLeoUesrNavigationBarStrokeDashGap;
            int i4 = LeoUserSettings.setLeoUesrNavigationBarStrokeDashColor;
            int i5 = LeoUserSettings.setLeoUesrNavigationBarGradientBackGroundCornerRadius;
            int i6 = LeoUserSettings.setLeoUesrNavigationBarWallpaperColor;
            int i7 = LeoUserSettings.setLeoUesrNavigationBarBgWallpaperAlpha;
            String str = LeoUserSettings.setLeoUesrNavigationBarBgWallpaper;
            if (LeoUserSettings.setLeoUesrNavigationBarBGStyle == 0) {
                if(setLeoUesrNavigationBarGradientColorEnabled==0){
                    Log.v(AUTHOR, CORYRIGHT+ China );
                   setBackground(getLeoBasicColor(z, i, i2, i3, i4, i5,setLeoUesrNavigationBarBgBasicColor));
                } else if (setLeoUesrNavigationBarGradientColorEnabled== 1) {
                    Log.v(AUTHOR, CORYRIGHT+ China );
                    setBackground(
                            LeoUtils.LeoGradientDrawable(
                                    setLeoUesrNavigationBarGradientBgStartColor,
                                    LeoUserSettings.setLeoUesrNavigationBarGradientBgCenterColor,
                                    LeoUserSettings.setLeoUesrNavigationBarGradientBgEndColor,
                                    setLeoUesrNavigationBarGradientColorFour,
                                    setLeoUesrNavigationBarGradientColorFive,
                                    setLeoUesrNavigationBarGradientColorSix,
                                    LeoUserSettings.setLeoUesrNavigationBarGradientEnableCenterColor,
                                    LeoUserSettings.setLeoUesrNavigationBarBgGradientBgStyle, z, i, i2, i3, i4, i5, LeoUserSettings.setLeoUesrNavigationBarGradientBgType, LeoUserSettings.setLeoUesrNavigationBarGradientBackGroundColorRadius));
                }
            } else if (LeoUserSettings.setLeoUesrNavigationBarBGStyle == 999 && str != null) {
                Log.v(AUTHOR, CORYRIGHT+ China );
                int blur=setLeoUesrNavigationBarBgWallpaperBlurEnabled;
                if(blur==0){
                    Log.v(AUTHOR, CORYRIGHT+ China );
                    setBackground(LeoUtils.getLeoWallpaper(C, str, LeoUserSettings.setLeoUesrNavigationBarWallpaperColorEnable, i6, LeoUserSettings.setLeoUesrNavigationBarBgWallpaperAlphaEnable, i7));
                }else if (blur==1) {
                   setBackground(getLeoBlurWallpaper(C,str,setLeoUesrNavigationBarBlurBgDegree,setLeoUesrNavigationBarBlurWallpaperColorEnabled,i6,LeoUserSettings.setLeoUesrNavigationBarBlurWallpaperAlphaEnabled,i7));
                }
            }
           setVisibility(VISIBLE);
        }else{
           setVisibility(GONE);
        }
    }

}

