package com.leo.systemui;


import android.content.ContentResolver;
import android.content.Context;

import android.content.IntentFilter;
import android.database.ContentObserver;

import android.graphics.PorterDuff;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;

import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;


import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.*;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserValues.mLightModeColor;
import static com.os.leo.utils.LeoUtils.getLeoUri;
import static com.android.systemui.UId.LeoLogoStyle;


public class LeoStatusBarLogoView extends ImageView implements DarkIconDispatcher.DarkReceiver {
    private Context mContext;
    private int mLogoColor,mLogoTint;
    public LeoStatusBarLogoView(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext = context;
    }
    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver  contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarLogoColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarLogoStyle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarLogoSize()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusBarLogoColorEnabled()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusBarLogoRandomColor()), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            showmCustomlogo( );
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        showmCustomlogo( );
       Dependency.get(DarkIconDispatcher.class).addDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Dependency.get(DarkIconDispatcher.class).removeDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
    }

    public void showmCustomlogo( ) {
        LeoSettings(mContext);
        int style=setLeoUesrStatusBarLogoStyle;
        float size=setLeoUesrStatusBarLogoSize;
        setScaleX(size);
        setScaleY(size);
        Drawable d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_"+LeoLogoStyle(style)));
        setImageDrawable(d);
        int defaultcolor=getContext().getColor(getLeoResource("color/status_bar_clock_color"));
        int iconcolor=defaultcolor;
        int colorstyle=setLeoUesrStatusBarLogoRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
        int color=setLeoUesrStatusBarLogoColorEnabled;
        if(color==1){
            if(colorstyle==0){
                iconcolor=setLeoUesrStatusBarLogoColor;
            }else if(colorstyle==1){
                iconcolor=colorrandom;
            }
        }else if (color==0) {
            iconcolor=defaultcolor;
        }
        mLogoColor=iconcolor;
        mLogoTint =mLightModeColor;
        setColorFilter(mLogoColor, PorterDuff.Mode.SRC_ATOP);
    }
    @Override
    public void onDarkChanged(Rect rect, float darkIntensity, int n) {
        mLogoTint = getTint(darkIntensity,  mLogoColor);
        setColorFilter(mLogoTint, PorterDuff.Mode.SRC_ATOP);
    }
}
