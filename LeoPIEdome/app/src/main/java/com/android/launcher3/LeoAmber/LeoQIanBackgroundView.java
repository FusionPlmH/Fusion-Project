package com.android.launcher3.LeoAmber;


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

import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoBlurWallpaper;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getCode;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoLauncherBlurAlphaEnabled;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoLauncherBlurColor;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoLauncherBlurColorAlpha;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoLauncherBlurColorEnabled;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoLauncherBlurDegree;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoLauncherBlurView;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoLauncherBlurViewString;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoOS;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getOCodeN;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getOnema;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.LeoGlobalSetting;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrLauncherBlurAlphaEnabled;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrLauncherBlurColor;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrLauncherBlurColorAlpha;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrLauncherBlurColorEnabled;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrLauncherBlurDegree;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrLauncherBlurView;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrLauncherBlurViewString;


public class LeoQIanBackgroundView extends FrameLayout {

    private Context mContext;
    private final String[] mLeoSettings;
    public LeoQIanBackgroundView(Context context, AttributeSet LeoAttributeSet) {
        super(context, LeoAttributeSet);
        mContext = context;
        mLeoSettings = new String[]{
                getLeoLauncherBlurView(),
                getLeoLauncherBlurViewString(),
                getLeoLauncherBlurDegree(),
                getLeoLauncherBlurColorEnabled(),
                getLeoLauncherBlurAlphaEnabled(),
                getLeoLauncherBlurColor(),
                getLeoLauncherBlurColorAlpha()
        };
        final ContentObserver  contentObserver= new ContentObserver(new Handler()) {
            public void onChange(boolean z) {
                setBackgroundView();
            }
        };
        new Thread(() -> {
            ContentResolver contentResolver = mContext.getContentResolver();
            for (String uriFor : mLeoSettings) {
                contentResolver.registerContentObserver(Settings.System.getUriFor(uriFor), false, contentObserver);
            }
        }).start();
    }
    protected void onFinishInflate() {
        super.onFinishInflate();
        setBackgroundView();
    }
    public void setBackgroundView() {
        LeoGlobalSetting(mContext);
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                int enablebackground=setLeoUesrLauncherBlurView;
                if (enablebackground== 0) {
                    setVisibility(FrameLayout.GONE);
                } else if (enablebackground == 999 && setLeoUesrLauncherBlurViewString != null) {
                    setBackground(getLeoBlurWallpaper(mContext,setLeoUesrLauncherBlurViewString,setLeoUesrLauncherBlurDegree,setLeoUesrLauncherBlurColorEnabled,setLeoUesrLauncherBlurColor, setLeoUesrLauncherBlurAlphaEnabled,setLeoUesrLauncherBlurColorAlpha));
                    setVisibility(FrameLayout.VISIBLE);
                }
            }
            return;
        }
        return;
    }

}