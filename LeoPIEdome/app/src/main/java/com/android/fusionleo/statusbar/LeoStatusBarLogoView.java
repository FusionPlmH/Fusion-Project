package com.android.fusionleo.statusbar;


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

import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;


import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;
import static com.android.fusionleo.global.LeoGlobalValues.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.*;


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
        LeoStatusSettings(mContext);
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
                    int style=setLeoUesrStatusBarLogoStyle;
                    float size=setLeoUesrStatusBarLogoSize;
                    setScaleX(size);
                    setScaleY(size);
                    Drawable d = mContext.getResources().getDrawable(LOGO(style));
                    setImageDrawable(d);
                    int defaultcolor=mStatusBarClockColor;
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
                        setAlpha(0.8f);
                    }
                    mLogoColor=iconcolor;
                    mLogoTint =iconcolor;
                    setColorFilter(mLogoColor, PorterDuff.Mode.SRC_ATOP);
                } else{
                    Log.v(new String(new char[]{'作', '者', ':', '不', '咸', '的', '盐', '巴'}), AUTHOR);
                }
            } else{
                Log.w(new String(new char[]{'A', 'M', 'B', 'E', 'R'}), "QQ：303834502");
                LeoCopyrightToast(mContext);
            }
        }
    }
    @Override
    public void onDarkChanged(Rect rect, float darkIntensity, int n) {
        mLogoTint =getLeoGradient(darkIntensity,  mLogoColor);
        setColorFilter(mLogoTint, PorterDuff.Mode.SRC_ATOP);
    }
}
