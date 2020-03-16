package com.android.systemui.statusbar.salt;


import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Display;

import com.android.settingslib.salt.utils.LeoReceiver;
import com.android.systemui.widget.SystemUITextView;

import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoString;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardWeatherColor;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardWeatherColorEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardWeatherEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardWeatherFont;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardWeatherSingleLineEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardWeatherSize;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardWeatherStyle;

public class SaltKeyguardWeather  extends SystemUITextView implements LeoReceiver.BroadcastListener{
   private Context mContext;
    private String mWeatherLocation;
    private String mWeatherCurrentTemp;
    private String mWeatherLowTemp;
    private String mWeatherHighTemp;
    private String mWeatherAQI;
    private String mWeatherState;
    private String mWeatherRealFeel;

    public SaltKeyguardWeather(Context context) {
        super(context);
    }

    public SaltKeyguardWeather(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext=context;
    }

    public void getSaltKeyguardWeather(){
        Context context=mContext;
        mWeatherLocation= getLeoString(
                context, "SaltWeatherLocation");
        mWeatherCurrentTemp= getLeoString(
                context, "SaltWeatherCurrentTemp");
        mWeatherLowTemp= getLeoString(
                context, "SaltWeatherLowTemp");
        mWeatherHighTemp= getLeoString(
                context, "SaltWeatherHighTemp");
        mWeatherAQI= getLeoString(
                context, "SaltWeatherAQI");
        mWeatherState= getLeoString(
                context, "SaltWeatherState");
        mWeatherRealFeel= getLeoString(
                context, "SaltWeatherRealFeel");

    }

    private void setSaltKeyguardWeather(){
        LeoSysUiManages(mContext);
        String State=mWeatherState;
        String Location;
        if (State == null ||State.equals("")) {
            Location=mWeatherLocation+mWeatherCurrentTemp;
        }else{
            Location=mWeatherLocation+mWeatherCurrentTemp+"｜"+mWeatherState;
        }

        String Temp="【"+mWeatherLowTemp+"-"+mWeatherHighTemp+"】";
        String Real=mWeatherAQI+mWeatherRealFeel;
        String Weather;
        if(setLeoKeyguardWeatherColorEnabled){
            setLeoCustomColor(setLeoKeyguardWeatherColor);
        }else {
            setLeoRemoveCustomColor();
        }
        int  Style=setLeoKeyguardWeatherStyle;
        if (Style == 1){
            Weather=Location+Temp;
        }else if (Style == 2) {
            Weather = Location + Temp + "\n" + Real;
        }else{
            Weather=Location;
        }

        if(setLeoKeyguardWeatherEnabled){
            getSaltKeyguardWeather();
            refresh();
            setVisibility(VISIBLE);
            setText(Weather);
        }else {
            setVisibility(GONE);
        }
        setSingleLine(setLeoKeyguardWeatherSingleLineEnabled?true:false);
        setTextSize(setLeoKeyguardWeatherSize);
        setTypeface(setLeoTextFont(mContext,setLeoKeyguardWeatherFont,"roboto-regular", Typeface.NORMAL));

    }
    private void refresh(){
        if (mHandler == null && getDisplay() != null) {
            mHandler = new Handler();
            if (getDisplay().getState() == Display.STATE_ON) {
                mHandler.postAtTime(mSaltKeyguardWeatherTick,
                        SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
            }
            IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
            filter.addAction(Intent.ACTION_SCREEN_ON);
            getContext().registerReceiver(mRefreshSaltKeyguardWeatherReceiver, filter);
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setSaltKeyguardWeather();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(SALTWEATHER);
        mContext.registerReceiver(mBroadcastReceiver, intentFilter);
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mHandler != null) {
            getContext().unregisterReceiver(mRefreshSaltKeyguardWeatherReceiver);
            mHandler.removeCallbacks(mSaltKeyguardWeatherTick);
            mHandler = null;
            setSaltKeyguardWeather();

        }

    }
    private LeoReceiver mBroadcastReceiver = new LeoReceiver(this);
    private Handler mHandler;
    private final BroadcastReceiver mRefreshSaltKeyguardWeatherReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                if (mHandler != null) {
                    mHandler.removeCallbacks(mSaltKeyguardWeatherTick);
                }
            } else if (Intent.ACTION_SCREEN_ON.equals(action)) {
                if (mHandler != null) {
                    mHandler.postAtTime(mSaltKeyguardWeatherTick,
                            SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                }
            }
        }
    };
    private final Runnable mSaltKeyguardWeatherTick = new Runnable() {
        @Override
        public void run() {
            setSaltKeyguardWeather();
            mHandler.postAtTime(this, SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
        }
    };
    private static  final String SALTWEATHER=rt100foleo("U0FMVF9VUERBVEVfTE9DS1dFQVRIRVJfU0VUVElOR1M=");

    @Override
    public void onLeoChange(Intent intent) {
        String action = intent.getAction();
        if (action.equals(SALTWEATHER)) {
            setSaltKeyguardWeather();
        }
    }
}



