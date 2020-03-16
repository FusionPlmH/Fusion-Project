package com.android.launcher3.framework.vendor;


import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;

import android.graphics.drawable.GradientDrawable;

import android.net.Uri;

import android.os.Build;
import android.os.Handler;

import android.util.AttributeSet;

import android.widget.FrameLayout;

import static com.fusionleo.LeoProvider.LeoLauncherManages.*;
import static com.fusionleo.LeoX.launcher.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.launcher.LeoConfig.getLeoWallpaperService;


public class LeoQIanBackgroundView extends FrameLayout {
    public LeoObserver mLeoObserver;
    private Context mContext;

    public LeoQIanBackgroundView(Context context, AttributeSet LeoAttributeSet) {
        super(context, LeoAttributeSet);
        mContext = context;

    }
    protected void onFinishInflate() {
        super.onFinishInflate();
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        setLeoRomRecentsBackground(mContext);
    }
    public void  setLeoRomRecentsBackground(Context context) {
        LeoLauncherManages(context);
        boolean of=setLeoUesrHomeBlurViewEnabled;
        setVisibility(of? VISIBLE : GONE);
        int  ColorEnable=setLeoUesrHomeBlurViewColorEnabled;
        int color=setLeoUesrHomeBlurViewColor;
        boolean AlphaEnable=setLeoUesrHomeBlurViewAlphaEnabled;
        int alpha=setLeoUesrHomeBlurViewAlpha;
        String str=setLeoUesrHomeBlurViewWallpaper;
        setBackground(getLeoWallpaperService(mContext,str,setLeoUesrHomeBlurViewStyle,ColorEnable,color,AlphaEnable,alpha,true));
    }

    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver contentResolver = getContext().getContentResolver();
            for (String uriFor :CustomLauncher) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false, this);
            }

        }

        @Override
        public void onChange(boolean selfChange) {
            setLeoRomRecentsBackground(mContext);
        }


    }

}
