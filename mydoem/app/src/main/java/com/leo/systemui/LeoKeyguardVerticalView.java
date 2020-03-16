package com.leo.systemui;



import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Display;
import android.widget.LinearLayout;

import com.android.systemui.widget.SystemUITextView;


import static com.android.systemui.UId.UID58;
import static com.leo.utils.Weather.*;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUtils.getLeoUri;


public class LeoKeyguardVerticalView extends LinearLayout {
    private final String TAG = "LeoKeyguardVerticalView";
    public Context mContext;
    private String mWeatherLocation;
    private String mWeatherCurrentTemp;
    private String mWeatherLowTemp;
    private String mWeatherHighTemp;
    private String mWeatherAQI;
    private String mWeatherState;
    private String mWeatherSunrise;
    private String mWeatherSunset;
    private LinearLayout mWeatherStyleView;
    private SystemUITextView mWeatherLocationView;
    private SystemUITextView mWeatherCurrentTempView;
    private SystemUITextView mWeatherLowTempView;
    private SystemUITextView mWeatherHighTempView;
    private SystemUITextView mWeatherAQIView;
    private SystemUITextView mWeatherStateView;
    private SystemUITextView mWeatherSunriseView;
    private SystemUITextView mWeatherSunsetView;
    private LinearLayout mWeatherLocationLayout;
    private LinearLayout mWeatherCurrentTempLayout;
    private LinearLayout mWeatherLowTempLayout;
    private LinearLayout mWeatherHighTempLayout;
    private LinearLayout mWeatherAQILayout;
    private LinearLayout mWeatherStateLayout;
    private LinearLayout mWeatherSunriseLayout;
    private LinearLayout mWeatherSunsetLayout;
    public LeoKeyguardVerticalView(Context context) {
        this(context, null);
        mContext=context;
    }

    public LeoKeyguardVerticalView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        mContext=context;
    }

    public LeoKeyguardVerticalView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mContext=context;

    }
   public String mWeatherFormat="HH:mm";
    private void WeatherData(){
        mWeatherLocation=(getLocation(mContext));
        mWeatherCurrentTemp=getCurrentTemperature(mContext,getTempScale(mContext))+getTempScaleText(mContext);
        mWeatherLowTemp=getLowTemp(mContext,getTempScale(mContext))+getTempScaleText(mContext);
        mWeatherHighTemp=getHighTemp(mContext,getTempScale(mContext))+getTempScaleText(mContext);
        mWeatherState=getWeatherInfoTextWCN(mContext);
        mWeatherAQI=getChinaAQI(mContext);
        mWeatherSunrise=getSunRiseTime(mContext,mWeatherFormat);
        mWeatherSunset=getSunSetTime(mContext,mWeatherFormat);
    }

    public void  updateWeather(){
        mWeatherLocationLayout =(LinearLayout)findViewWithTag("weather_location");
        mWeatherCurrentTempLayout=(LinearLayout)findViewWithTag("weather_current_temp");
        mWeatherLowTempLayout=(LinearLayout)findViewWithTag("weather_low_temp");
        mWeatherHighTempLayout=(LinearLayout)findViewWithTag("weather_high_temp");
        mWeatherAQILayout=(LinearLayout)findViewWithTag("weather_aqi");
        mWeatherStateLayout=(LinearLayout)findViewWithTag("weather_state");
        mWeatherSunriseLayout=(LinearLayout)findViewWithTag("weather_sunrise");
        mWeatherSunsetLayout=(LinearLayout)findViewWithTag("weather_sunset");
        mWeatherStyleView=  (LinearLayout) findViewById(UID58);
        mWeatherLocationView=  (SystemUITextView)findViewWithTag("weather_style_location");
        mWeatherCurrentTempView= (SystemUITextView) findViewWithTag("weather_style_current_temp");
        mWeatherLowTempView= (SystemUITextView) findViewWithTag("weather_style_low_temp");
        mWeatherHighTempView= (SystemUITextView)findViewWithTag("weather_style_high_temp");
        mWeatherAQIView= (SystemUITextView) findViewWithTag("weather_style_aqi");
        mWeatherStateView= (SystemUITextView) findViewWithTag("weather_style_state");
        mWeatherSunriseView= (SystemUITextView) findViewWithTag("weather_style_sunrise");
        mWeatherSunsetView= (SystemUITextView) findViewWithTag("weather_style_sunset");
    }
    public void updateWeatherset() {
        if (isWeatherTrue(mContext)) {
            mWeatherLocationView.setText(mWeatherLocation);
            mWeatherCurrentTempView.setText(mWeatherCurrentTemp);
            mWeatherLowTempView.setText(mWeatherLowTemp);
            mWeatherHighTempView.setText(mWeatherHighTemp);
            mWeatherAQIView.setText(mWeatherAQI);
            mWeatherStateView.setText(mWeatherState);
            mWeatherSunriseView.setText(mWeatherSunrise);
            mWeatherSunsetView.setText(mWeatherSunset);
            setVisibility(VISIBLE);
        }
    }
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (isWeatherTrue(mContext)) {
            updateWeather();
            setVisibility(VISIBLE);
        }

    }

  public LeoObserver mLeoObserver ;
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        updateWeather();
        updateWeatherSetting();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mHandler != null) {
            getContext().unregisterReceiver(mLeoLockWeatherReceiver);
            mHandler.removeCallbacks(mTemperatureTick);
            mHandler = null;
            updateWeatherSetting();
        }
    }
   int  mDisplay;
   private void updateWeatherSetting(){
        LeoSettings(mContext);
        mDisplay=setLeoUesrKeyguardWeatherEnabled;
        mWeatherLocationColor=setLeoUesrKeyguardWeatherLocationColor;
        mWeatherCurrentTempColor=setLeoUesrKeyguardWeatherCurrentTempColor;
        mWeatherLowTempColor=setLeoUesrKeyguardWeatherLowTempColor;
        mWeatherHighTempColor=setLeoUesrKeyguardWeatherHighTempColor;
        mWeatherAQIColor=setLeoUesrKeyguardWeatherHighTempColor;
        mWeatherStateColor=setLeoUesrKeyguardWeatherStateColor;
        mWeatherSunriseColor=setLeoUesrKeyguardWeatherSunriseColor;
        mWeatherSunsetColor=setLeoUesrKeyguardWeatherSunsetColor;
        ///
        mWeatherLocationVISIBLE=setLeoUesrKeyguardWeatherLocationEnabled;
        mWeatherCurrentTempVISIBLE=setLeoUesrKeyguardWeatherCurrentTempEnabled;
        mWeatherLowTempVISIBLE=setLeoUesrKeyguardWeatherLowTempEnabled;
        mWeatherHighTempVISIBLE=setLeoUesrKeyguardWeatherHighTempEnabled;
        mWeatherAQIVISIBLE=setLeoUesrKeyguardWeatherAQIEnabled;
        mWeatherStateVISIBLE=setLeoUesrKeyguardWeatherStateEnabled;
         mWeatherSunriseVISIBLE= setLeoUesrKeyguardWeatherSunriseEnabled;
          mWeatherSunsetVISIBLE=  setLeoUesrKeyguardWeatherSunsetEnabled;
        ////
        mWeatherLocationFont=  setLeoUesrKeyguardWeatherLocationFont;
        mWeatherCurrentTempFont=setLeoUesrKeyguardWeatherCurrentTempFont;
        mWeatherLowTempFont=setLeoUesrKeyguardWeatherLowTempFont;
        mWeatherHighTempFont=setLeoUesrKeyguardWeatherHighTempFont;
        mWeatherAQIFont=setLeoUesrKeyguardWeatherAQIFont;
        mWeatherStateFont=setLeoUesrKeyguardWeatherStateFont;
       mWeatherSunriseFont=setLeoUesrKeyguardWeatherSunriseFont;
       mWeatherSunsetFont= setLeoUesrKeyguardWeatherSunsetFont;
        ///
       mWeatherSunriseView.setLeoCustomFont(mWeatherSunriseFont);
       mWeatherSunsetView.setLeoCustomFont(mWeatherSunsetFont);
        mWeatherLocationView.setLeoCustomFont(mWeatherLocationFont);
        mWeatherCurrentTempView.setLeoCustomFont(mWeatherCurrentTempFont);
        mWeatherLowTempView.setLeoCustomFont(mWeatherLowTempFont);
        mWeatherHighTempView.setLeoCustomFont(mWeatherHighTempFont);
        mWeatherAQIView.setLeoCustomFont(mWeatherAQIFont);
        mWeatherStateView.setLeoCustomFont(mWeatherStateFont);
        //

       //
        boolean weather= setLeoUesrKeyguardWeatherColorEnabled;
        if(weather) {
            int weatherallcolor= setLeoUesrKeyguardWeatherAllColor;
            int weatherall=setLeoUesrKeyguardWeatherAllColorEnabled;
            if (weatherall==0) {
                mWeatherLocationView.setLeoCustomColor(mWeatherLocationColor);
                mWeatherCurrentTempView.setLeoCustomColor(mWeatherCurrentTempColor);
                mWeatherLowTempView.setLeoCustomColor(mWeatherLowTempColor);
                mWeatherHighTempView.setLeoCustomColor(mWeatherHighTempColor);
                mWeatherAQIView.setLeoCustomColor(mWeatherAQIColor);
                mWeatherStateView.setLeoCustomColor(mWeatherStateColor);
                mWeatherSunriseView.setLeoCustomFont(mWeatherSunriseColor);
                mWeatherSunsetView.setLeoCustomFont(mWeatherSunsetColor);
            }else if ( weatherall == 1) {
                mWeatherLocationView.setLeoCustomColor(weatherallcolor);
                mWeatherCurrentTempView.setLeoCustomColor( weatherallcolor);
                mWeatherLowTempView.setLeoCustomColor(weatherallcolor);
                mWeatherHighTempView.setLeoCustomColor(weatherallcolor);
                mWeatherAQIView.setLeoCustomColor(weatherallcolor);
                mWeatherStateView.setLeoCustomColor(weatherallcolor);
                mWeatherSunriseView.setLeoCustomColor(weatherallcolor);
                mWeatherSunsetView.setLeoCustomColor(weatherallcolor);
            }
        }else {
            mWeatherLocationView.setLeoRemoveCustomColor();
            mWeatherCurrentTempView.setLeoRemoveCustomColor();
            mWeatherLowTempView.setLeoRemoveCustomColor();
            mWeatherHighTempView.setLeoRemoveCustomColor();
            mWeatherAQIView.setLeoRemoveCustomColor();
            mWeatherStateView.setLeoRemoveCustomColor();
            mWeatherSunriseView.setLeoRemoveCustomColor();
            mWeatherSunsetView.setLeoRemoveCustomColor();
        }
        //

        if( mDisplay==1){
            if(mWeatherLocationVISIBLE==1){
                mWeatherLocationLayout. setVisibility(VISIBLE);
            }else if(mWeatherLocationVISIBLE==0){
                mWeatherLocationLayout. setVisibility(GONE);
            }
            if(mWeatherCurrentTempVISIBLE==1){
                mWeatherCurrentTempLayout. setVisibility(VISIBLE);
            }else if(mWeatherCurrentTempVISIBLE==0){
                mWeatherCurrentTempLayout. setVisibility(GONE);
            }
            if(mWeatherLowTempVISIBLE==1){
                mWeatherLowTempLayout. setVisibility(VISIBLE);
            }else if(mWeatherLowTempVISIBLE==0){
                mWeatherLowTempLayout. setVisibility(GONE);
            }
            if(mWeatherHighTempVISIBLE==1){
                mWeatherHighTempLayout. setVisibility(VISIBLE);
            }else if(mWeatherHighTempVISIBLE==0){
                mWeatherHighTempLayout. setVisibility(GONE);
            }
            if(mWeatherAQIVISIBLE==1){
                mWeatherAQILayout. setVisibility(VISIBLE);
            }else if(mWeatherAQIVISIBLE==0){
                mWeatherAQILayout. setVisibility(GONE);
            }
            if(mWeatherStateVISIBLE==1){
                mWeatherStateLayout. setVisibility(VISIBLE);
            }else if(mWeatherStateVISIBLE==0){
                mWeatherStateLayout. setVisibility(GONE);
            }
            if(mWeatherSunriseVISIBLE==1){
                mWeatherSunriseLayout. setVisibility(VISIBLE);
            }else if(mWeatherSunriseVISIBLE==0){
                mWeatherSunriseLayout. setVisibility(GONE);
            }
            if(mWeatherSunsetVISIBLE==1){
                mWeatherSunsetLayout. setVisibility(VISIBLE);
            }else if(mWeatherSunsetVISIBLE==0){
                mWeatherSunsetLayout. setVisibility(GONE);
            }
            mWeatherStyleView.setVisibility(VISIBLE);

        }else {
            mWeatherStyleView.setVisibility(GONE);
        }
        if (mDisplay==1){
            if (mHandler == null && getDisplay() != null) {
                mHandler = new Handler();
                if (getDisplay().getState() == Display.STATE_ON) {
                    mHandler.postAtTime(mTemperatureTick,
                            SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                }
                IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
                filter.addAction(Intent.ACTION_SCREEN_ON);
                getContext().registerReceiver(mLeoLockWeatherReceiver, filter);
            }
        }
    }

    private Handler mHandler;
    private final BroadcastReceiver mLeoLockWeatherReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                if (mHandler != null) {
                    mHandler.removeCallbacks(mTemperatureTick);
                }
            } else if (Intent.ACTION_SCREEN_ON.equals(action)) {
                if (mHandler != null) {
                    mHandler.postAtTime(mTemperatureTick,
                            SystemClock.uptimeMillis() / 5000 * 5000 + 5000);
                }
            }
        }
    };

    private final Runnable mTemperatureTick = new Runnable() {
        @Override
        public void run() {
            if (isWeatherTrue(mContext)) {
                WeatherData();
                updateWeatherset();
                setVisibility(VISIBLE);
            }
            mHandler.postAtTime(this, SystemClock.uptimeMillis() / 5000 * 5000 + 5000);
        }
    };
    private int mWeatherSunriseColor;
    private int mWeatherSunsetColor;

    private int mWeatherSunriseFont;
    private int mWeatherSunsetFont;

    private int mWeatherLocationFont;
    private int mWeatherCurrentTempFont;
    private int mWeatherLowTempFont;
    private int mWeatherHighTempFont;
    private int mWeatherAQIFont;
    private int mWeatherStateFont;
    private int mWeatherLocationColor;
    private int mWeatherCurrentTempColor;
    private int mWeatherLowTempColor;
    private int mWeatherHighTempColor;
    private int mWeatherAQIColor;
    private int mWeatherStateColor;
    private int mWeatherLocationVISIBLE;
    private int mWeatherCurrentTempVISIBLE;
    private int mWeatherLowTempVISIBLE;
    private int mWeatherHighTempVISIBLE;
    private int mWeatherAQIVISIBLE;
    private int mWeatherStateVISIBLE;
    private int mWeatherSunriseVISIBLE;
    private int mWeatherSunsetVISIBLE;

    class LeoObserver extends ContentObserver {
        LeoObserver (Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver resolver = mContext.getContentResolver();
            resolver.registerContentObserver(getLeoUri( getLeoKeyguardWeatherEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLocationEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherCurrentTempEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLowTempEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherHighTempEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherAQIEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherStateEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunriseEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunsetEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLocationFont()), false, this);
            resolver.registerContentObserver(getLeoUri( getLeoKeyguardWeatherCurrentTempFont()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLowTempFont()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherHighTempFont()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherAQIFont()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherStateFont()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunriseFont()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunsetFont()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherAllColorEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherAllColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherColorEnabled()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLocationColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherCurrentTempColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherLowTempColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherHighTempColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherAQIColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherStateColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunriseColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoKeyguardWeatherSunsetColor()), false, this);
        }

        @Override
        public void onChange(boolean selfChange) {
            updateWeatherSetting();
        }
    }


}
