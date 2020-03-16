package com.android.fusionleo.statusbar;



import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.fusionleo.global.LeoGlobalUtils;
import com.android.keyguard.CarrierText;
import com.android.systemui.Dependency;

import com.android.systemui.simpleindicator.SimpleIndicatorCarrierText;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;
import com.android.systemui.widget.SystemUIImageView;
import com.android.systemui.widget.SystemUITextView;

import static com.android.fusionleo.global.LeoGlobalUtils.*;
import static com.android.fusionleo.global.LeoGlobalValues.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrKeyguardCarrierStyle;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.LeoCopyrightToast;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoGradient;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mStatusBarClockColor;


public class LeoKeyguardWeather extends LinearLayout {
    private String mWeatherLocation;
    private String mWeatherCurrentTemp;
    private String mWeatherRealFeel;
    private String mWeatherLowTemp;
    private String mWeatherHighTemp;
    private String mWeatherAQI;
    private String mWeatherState;
    private String mWeatherSunrise;
    private String mWeatherSunset;
    private SystemUITextView mState;
    private SystemUITextView mSunrise;
    private SystemUITextView mSunset;
    private SystemUITextView mCurrentTemp;
    private SystemUITextView mRealFeel;
    private SystemUITextView mHighTemp;
    private SystemUITextView mLocation;
    private SystemUITextView mAQI;
    private Drawable mLocationIcon;
    private boolean mLocationIconEnable=false;
    private Drawable mSunriseIcon;
    private Drawable mSunsetIcon;
    private boolean mSunriseIconEnable=false;
    private boolean mSunsetIconEnable=false;
    public Context mContext;
    public LeoKeyguardWeather(Context context) {
        this(context, null);
    }
    public final static String LEO_ACTION_WEATHER = "com.leo.weather.service";
    public final static String LEO_WEATHER_PACKAGE= "com.amber.leoservice";
    public final static String LEO_WEATHER_PACKAGE_NEME = "com.amber.leoservice.weather.WeatherWidgetService";
    public LeoKeyguardWeather(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext = context;
    }
    private final BroadcastReceiver mWeatherServiceReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(LEO_ACTION_WEATHER )) {
                mWeatherCurrentTemp = intent.getStringExtra("WEATHERCURRENTTEMP");
                mWeatherRealFeel = intent.getStringExtra("WEATHERREALFEEL");
                mWeatherHighTemp = intent.getStringExtra("WEATHERHIGH");
                mWeatherLowTemp = intent.getStringExtra("WEATHERLOW");
                mWeatherLowTemp = intent.getStringExtra("WEATHERLOW");
                mWeatherLocation = intent.getStringExtra("WEATHERLOCATION");
                mWeatherAQI = intent.getStringExtra("WEATHERAQI");
                mWeatherState = intent.getStringExtra("WEATHERSTATE");
                mWeatherSunrise = intent.getStringExtra("WEATHERSUNRISE");
                mWeatherSunset= intent.getStringExtra("WEATHERSUNSET");
            }
            setWeatherServiceView();
        }
    };

    private void setWeatherServiceView() {

        mCurrentTemp=(SystemUITextView)findViewWithTag("leo_amber_weather_current_temp");
        mCurrentTemp.setText( mWeatherCurrentTemp);
        mState=(SystemUITextView)findViewWithTag("leo_amber_weather_state");
        mState.setText(mWeatherState);

            mRealFeel=(SystemUITextView)findViewWithTag("leo_amber_weather_real_feel_temp");
            mRealFeel.setText(mWeatherRealFeel);//获取体感温度
            mHighTemp=(SystemUITextView)findViewWithTag("leo_amber_weather_high_temp");
            mHighTemp.setText(mWeatherHighTemp+"\n"+mWeatherLowTemp);//获取高低温度
            mLocation=(SystemUITextView)findViewWithTag("leo_amber_weather_location");
            mLocation.setText(mWeatherLocation+" ");//获取定位
            //在定位文本左边添加图标
            mLocationIcon=mContext.getResources().getDrawable(getLeoResource("drawable/leo_ic_location"));
            mLocationIcon.setBounds(0,0,mLocationIcon.getMinimumWidth(),mLocationIcon.getMinimumHeight());
            if (mLocationIconEnable) {
                mLocation.setCompoundDrawables(mLocationIcon, null, null, null);
            } else {
                mLocation.setCompoundDrawables(null, null, null, null);
            }
            mAQI=(SystemUITextView)findViewWithTag("leo_amber_weather_aqi");
            mAQI.setText(mWeatherAQI);
            mSunrise=(SystemUITextView)findViewWithTag("leo_amber_weather_sunrise");
            mSunrise.setText(mWeatherSunrise);
            mSunriseIcon=mContext.getResources().getDrawable(getLeoResource("drawable/leo_ic_sunrise"));
            mSunriseIcon.setBounds(0,0,mSunriseIcon.getMinimumWidth(),mSunriseIcon.getMinimumHeight());
            if (mSunriseIconEnable) {
                mSunrise.setCompoundDrawables(mSunriseIcon, null, null, null);
            } else {
                mSunrise.setCompoundDrawables(null, null, null, null);
            }
            mSunset=(SystemUITextView)findViewWithTag("leo_amber_weather_sunset");
            mSunset.setText(mWeatherSunset);
            mSunsetIcon=mContext.getResources().getDrawable(getLeoResource("drawable/leo_ic_sunset"));
            mSunsetIcon.setBounds(0,0,mSunsetIcon.getMinimumWidth(),mSunsetIcon.getMinimumHeight());
            if (mSunsetIconEnable) {
                mSunset.setCompoundDrawables(mSunsetIcon, null, null, null);
            } else {
                mSunset.setCompoundDrawables(null, null, null, null);
            }

        updateWeatherService();
    }
    public void updateWeatherService(){
        LeoStatusSettings(mContext);
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
                    setVisibility(setLeoUesrKeyguardWeatherDisplay ? GONE : VISIBLE);
                    mCurrentTemp.setVisibility(setLeoUesrKeyguardWeatherCurrentTempDisplay ? VISIBLE : GONE);
                    mRealFeel.setVisibility(setLeoUesrKeyguardWeatherRealFeelDisplay ? VISIBLE : GONE);
                    mHighTemp.setVisibility(setLeoUesrKeyguardWeatherLowHighTempDisplay ? VISIBLE : GONE);
                    if(setLeoUesrKeyguardWeatherLocationDisplay){
                        mLocation.setVisibility(VISIBLE);
                        mLocationIconEnable=setLeoUesrKeyguardWeatherLocationIconDisplay ;
                    }else {
                        mLocation.setVisibility(GONE);
                    }

                    mAQI.setVisibility(setLeoUesrKeyguardWeatherAQIDisplay ? VISIBLE : GONE);

                    if(setLeoUesrKeyguardWeatherSunriseDisplay){
                        mSunrise.setVisibility(VISIBLE);
                        mSunriseIconEnable=setLeoUesrKeyguardWeatherSunriseIconDisplay ;
                    }else {
                        mSunrise.setVisibility(GONE);
                    }
                    mState.setVisibility(setLeoUesrKeyguardWeatherStateDisplay ? VISIBLE : GONE);

                    if(setLeoUesrKeyguardWeatherSunsetDisplay){
                        mSunset.setVisibility(VISIBLE );
                        mSunsetIconEnable=setLeoUesrKeyguardWeatherSunsetIconDisplay;
                    }else {
                        mSunset.setVisibility(GONE);
                    }
                    mCurrentTemp.setLeoCustomFont(setLeoUesrKeyguardWeatherCurrentFont);
                    mRealFeel.setLeoCustomFont( setLeoUesrKeyguardWeatherRealFeelFont);
                    mHighTemp.setLeoCustomFont(setLeoUesrKeyguardWeatherLowHighTempFont);
                    mLocation.setLeoCustomFont(setLeoUesrKeyguardWeatherLocationFont);
                    mAQI.setLeoCustomFont(setLeoUesrKeyguardWeatherAQIFont);
                    mSunrise.setLeoCustomFont(setLeoUesrKeyguardWeatherSunriseFont);
                    mState.setLeoCustomFont( setLeoUesrKeyguardWeatherStateFont);
                    mSunset.setLeoCustomFont(setLeoUesrKeyguardWeatherSunsetFont);
                    boolean  weather=setLeoUesrKeyguardWeatherColorEnable;
                    int weatherall=setLeoUesrKeyguardWeatherAllColorEnable;
                    int weatherallcolor=setLeoUesrKeyguardWeatherAllColor;
                    if(weather) {
                        if (weatherall==0) {
                            mState.setLeoCustomColor(setLeoUesrKeyguardWeatherStateColor);
                            mCurrentTemp.setLeoCustomColor(setLeoUesrKeyguardWeatherCurrentTempColor);
                            mRealFeel.setLeoCustomColor(setLeoUesrKeyguardWeatherRealFeelColor);
                            mHighTemp.setLeoCustomColor(setLeoUesrKeyguardWeatherLowHighTempColor);
                            mLocation.setLeoCustomColor(setLeoUesrKeyguardWeatherLocationColor);
                            mAQI.setLeoCustomColor(setLeoUesrKeyguardWeatherAQIColor);
                            mSunrise.setLeoCustomColor(setLeoUesrKeyguardWeatherSunriseColor);
                            mSunset.setLeoCustomColor(setLeoUesrKeyguardWeatherSunsetColor);
                        }else if ( weatherall == 1) {
                            mState.setLeoCustomColor(weatherallcolor);
                            mCurrentTemp.setLeoCustomColor(weatherallcolor);
                            mRealFeel.setLeoCustomColor(weatherallcolor);
                            mHighTemp.setLeoCustomColor(weatherallcolor);
                            mLocation.setLeoCustomColor(weatherallcolor);
                            mAQI.setLeoCustomColor(weatherallcolor);
                            mSunrise.setLeoCustomColor(weatherallcolor);
                            mSunset.setLeoCustomColor(weatherallcolor);
                        }
                    }else {
                        mCurrentTemp.setLeoRemoveCustomColor();
                        mRealFeel.setLeoRemoveCustomColor();
                        mHighTemp.setLeoRemoveCustomColor();
                        mLocation.setLeoRemoveCustomColor();
                        mAQI.setLeoRemoveCustomColor();
                        mSunrise.setLeoRemoveCustomColor();
                        mState.setLeoRemoveCustomColor();
                        mSunset.setLeoRemoveCustomColor();
                    }
                } else{
                    Log.v(new String(new char[]{'作', '者', ':', '不', '咸', '的', '盐', '巴'}), AUTHOR);
                }
            } else{
                Log.w(new String(new char[]{'A', 'M', 'B', 'E', 'R'}), "LeoKeyguardWeather");
                LeoCopyrightToast(mContext);
            }
        }
    }
    private LeoObserver mLeoObserver;
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Intent intent = new Intent();
        ComponentName componentName = new ComponentName(LEO_WEATHER_PACKAGE,LEO_WEATHER_PACKAGE_NEME);
       intent.setComponent(componentName);
       mContext.startForegroundService(intent);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(LEO_ACTION_WEATHER );
        mContext.registerReceiver(mWeatherServiceReceiver, intentFilter);
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        setWeatherServiceView();
    }
    protected void onDetachedFromWindow() {
        mContext.unregisterReceiver(mWeatherServiceReceiver);
        super.onDetachedFromWindow();
    }
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver = getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLocationDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherCurrentTempDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherRealFeelDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLowHighTempDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherAQIDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherStateDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunriseDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunsetDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLocationIconDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunriseIconDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunsetIconDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLocationFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherCurrentFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherRealFeelFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLowHighTempFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherAQIFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherStateFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunriseFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunsetFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherColorEnable()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherAllColorEnable()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherAllColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLocationColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherCurrentTempColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherRealFeelColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLowHighTempColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherAQIColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherStateColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunriseColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunsetColor()), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            updateWeatherService();
        }


    }
}