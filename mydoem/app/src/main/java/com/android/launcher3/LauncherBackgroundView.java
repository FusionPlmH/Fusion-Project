package com.android.launcher3;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

import android.net.Uri;
import android.os.Handler;

import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;


import com.os.leo.utils.LeoUserSettings;

import java.io.File;

import static com.os.leo.utils.LeoUtils.*;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;



public class LauncherBackgroundView
        extends FrameLayout
{
    private Context mContext;
    private final String[] mLeoSettings;

    public LauncherBackgroundView(Context context, AttributeSet LeoAttributeSet)
    {
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

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        setBackgroundView();
    }

    public void setBackgroundView() {
       LeoSettings(mContext);
        int enablebackground=setLeoUesrLauncherBlurView;
        if (enablebackground== 0) {
            setVisibility(FrameLayout.GONE);
        } else if (enablebackground == 999 && setLeoUesrLauncherBlurViewString != null) {
            setBackground(getLeoBlurWallpaper(mContext,setLeoUesrLauncherBlurViewString,setLeoUesrLauncherBlurDegree,setLeoUesrLauncherBlurColorEnabled,setLeoUesrLauncherBlurColor, setLeoUesrLauncherBlurAlphaEnabled,setLeoUesrLauncherBlurColorAlpha));
            setVisibility(FrameLayout.VISIBLE);
        }
    }
}