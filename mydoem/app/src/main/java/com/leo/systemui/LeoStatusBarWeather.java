package com.leo.systemui;

import android.content.BroadcastReceiver;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

import android.database.ContentObserver;

import android.graphics.Rect;

import android.os.Handler;
import android.os.SystemClock;

import android.util.AttributeSet;

import android.view.Display;
import android.widget.TextView;


import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoResource;

import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.leo.utils.Constants.getTint;
import static com.leo.utils.Weather.getCurrentTemperature;
import static com.leo.utils.Weather.getLocation;
import static com.leo.utils.Weather.getTempScale;
import static com.leo.utils.Weather.getTempScaleText;
import static com.leo.utils.Weather.getWeatherInfoTextWCN;
import static com.leo.utils.Weather.isWeatherTrue;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserValues.mNewline;
import static com.os.leo.utils.LeoUtils.getLeoUri;


public class LeoStatusBarWeather extends TextView implements DarkIconDispatcher.DarkReceiver {
    public int mWeatherColor;
    public int mWeatherTint;
    private LeoObserver mLeoObserver;
    private String  mWeatheCurrentTemp;
    private String  mWeatherLocation;
    private String  mWeatherState;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver resolver = mContext.getContentResolver();
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarWeatherColorEnabled()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarWeatherRandomColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri( getLeoWeatherSingleStatusBar()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoWeatherSingleTextSizeStatusBar()), false,
                    this);
            resolver.registerContentObserver(getLeoUri( getLeoWeatherMultiTextSizeStatusBar()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoWeatherFontStatusBar()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoWeatherColorStatusBar()), false,
                    this);
        }

        public void onChange(boolean selfChange) {
            updateSettings();
        }
    }

    public LeoStatusBarWeather(Context context) {
        this(context, null);
    }

    public LeoStatusBarWeather(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext=context;
    }
    public Context mContext;
    public void updateWeatherData() {

       mWeatheCurrentTemp=getCurrentTemperature(mContext,getTempScale(mContext))+getTempScaleText(mContext);
       mWeatherLocation=getLocation(mContext);
       mWeatherState=getWeatherInfoTextWCN(mContext);
    }
    public int mWeatherSingle;

   public  void setWeather(){
        if (isWeatherTrue(mContext)) {
            if(mWeatherSingle==0){

                setSingleLine(false);
                setText(mWeatherState+" "+ mWeatheCurrentTemp+mNewline+mWeatherLocation);
            }else if (mWeatherSingle== 1) {
                setText(mWeatherLocation+" "+ mWeatherState+" "+mWeatheCurrentTemp);
                setSingleLine(true);
            }
            setVisibility(VISIBLE);
        }
    }
    public boolean  mDisplay=true;
    public void updateSettings() {
        LeoSettings(mContext);
        mWeatherSingle=setLeoUesrStatusBarWeatherSingle;
        if(mWeatherSingle==0){
            setSingleLine(false);
            setTextSize(setLeoUesrStatusBarWeatherMultiTextSize);
        }else if (mWeatherSingle== 1) {
            setTextSize(setLeoUesrStatusBarWeatherSingleTextSize);
            setSingleLine(true);
        }
        setWeatherColor();
        mRefreshClock=5000;
       setTypeface(setLeoRomFonts(0,setLeoUesrStatusBarWeatherFont));
        if (mDisplay){
            if (mHandler == null && getDisplay() != null) {
                mHandler = new Handler();
                if (getDisplay().getState() == Display.STATE_ON) {
                    mHandler.postAtTime(mStatusBarWeatherTick,
                            SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                }
                IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
                filter.addAction(Intent.ACTION_SCREEN_ON);
                getContext().registerReceiver(mLeoStatusBarWeatherReceiver, filter);
            }
        }
    }

    public void setWeatherColor(){
        LeoSettings( mContext);
        int mDefaultColor=getContext().getColor(getLeoResource("color/status_bar_clock_color"));
        int RandomColor =setLeoUesrStatusBarWeatherRandomColor;
        int leoRandomColor =getLeoRandomColor(mContext);
        int color=setLeoUesrStatusBarWeatherColorEnabled;
        if (color== 1) {
            if (RandomColor== 0) {
                mWeatherColor=setLeoUesrStatusBarWeatherColor;//自定义颜色
            } else if (RandomColor == 1) {
                mWeatherColor = leoRandomColor;
            }
        } else if (color == 0) {
            mWeatherColor= mDefaultColor;
            setAlpha(0.8f);
        }
        mWeatherTint= mWeatherColor;
        setLeoWeatherColor();
    }
    public void setLeoWeatherColor() {
        setTextColor(mWeatherTint);
    }
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        mWeatherTint=getTint(darkIntensity, mWeatherColor);
        setLeoWeatherColor();
    }
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
   ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class)).addDarkReceiver(this);
        mLeoObserver = new LeoObserver(new Handler());
        mLeoObserver.observe();
            updateSettings();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class)).removeDarkReceiver(this);
        if (mHandler != null) {
            getContext().unregisterReceiver(mLeoStatusBarWeatherReceiver);
            mHandler.removeCallbacks(mStatusBarWeatherTick);
            mHandler = null;
            updateSettings();
        }

    }
  protected   int mRefreshClock;
    private Handler mHandler;
    private final BroadcastReceiver mLeoStatusBarWeatherReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                if (mHandler != null) {
                    mHandler.removeCallbacks(mStatusBarWeatherTick);
                }
            } else if (Intent.ACTION_SCREEN_ON.equals(action)) {
                if (mHandler != null) {
                    mHandler.postAtTime(mStatusBarWeatherTick,
                            SystemClock.uptimeMillis() / mRefreshClock * mRefreshClock + mRefreshClock);
                }
            }
        }
    };

    private final Runnable mStatusBarWeatherTick = new Runnable() {
        @Override
        public void run() {
            if (isWeatherTrue(mContext)) {
                updateWeatherData();
                setWeather();
                setVisibility(VISIBLE);
            }
            mHandler.postAtTime(this, SystemClock.uptimeMillis() / mRefreshClock * mRefreshClock+ mRefreshClock);
        }
    };
}