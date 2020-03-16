package com.leo.systemui;


import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Display;
import android.widget.TextView;


import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.*;

import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarTemperatureColorEnabled;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarTemperatureRandomColor;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusbarTemperature;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusbarTemperatureColor;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusbarTemperatureFont;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusbarTemperatureMultiSize;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusbarTemperatureSingle;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusbarTemperatureSingleSzie;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLogoColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLogoColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLogoRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarTemperatureColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarTemperatureColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarTemperatureDisplay;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarTemperatureFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarTemperatureMultiSize;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarTemperatureRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarTemperatureSingle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarTemperatureSingleSize;
import static com.os.leo.utils.LeoUserString.ReadFile;

import static com.os.leo.utils.LeoUserString.getSymbol;
import static com.os.leo.utils.LeoUserValues.getProperty;
import static com.os.leo.utils.LeoUserValues.mLightModeColor;
import static com.os.leo.utils.LeoUserValues.mNewline;
import static com.os.leo.utils.LeoUserValues.ryid;
import static com.os.leo.utils.LeoUtils.getLeoUri;


public class LeoTemperaturInfo extends TextView implements DarkIconDispatcher.DarkReceiver{




    private Context mContext;


    public LeoTemperaturInfo(Context context) {
        this(context, null);
    }

    public LeoTemperaturInfo(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);

        mContext = context;


    }


    class LeoRomObserver extends ContentObserver {
        LeoTemperaturInfo mLeoTemperatur;

        public LeoRomObserver(LeoTemperaturInfo Logo, Handler handler) {
            super(handler);
            mLeoTemperatur= Logo;
        }

        public void onChange(boolean z) {
            onChange(z, null);
        }

        public void onChange(boolean z, Uri uri) {
            LeoTemperaturInfo.updatesettings(mLeoTemperatur);
        }
    }

    private void updateLeoObserver(ContentResolver contentResolver) {
        LeoRomObserver leo = new LeoRomObserver(this, new Handler());
        contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarTemperature()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarTemperatureSingle()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarTemperatureSingleSzie()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarTemperatureMultiSize()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarTemperatureFont()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarTemperatureColor()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoStatusBarTemperatureColorEnabled()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoStatusBarTemperatureRandomColor()), false, leo);
    }

    private  static void updatesettings(LeoTemperaturInfo Temperatur) {;
        Temperatur.setTemperatureDisplay();
    }
    enum TemperatureType {
        Battery,
        CPU

    }
    public  int   mTemperatureColor,mTemperatureTint;
    private void  setTemperatureDisplay(){
        LeoSettings(mContext);
        Single=setLeoUesrStatusBarTemperatureSingle;
        mDisplay=setLeoUesrStatusBarTemperatureDisplay;
        if (mDisplay){
            setVisibility(TextView.VISIBLE);

        }else {
            setVisibility(TextView.GONE);
        }
        mDisplaySingleSize=setLeoUesrStatusBarTemperatureSingleSize;
        mDisplayMultiSize= setLeoUesrStatusBarTemperatureMultiSize;

        setText(setTemperature());
        setSingleLine(Single);
        if (Single){
            setTextSize(mDisplaySingleSize);
        }else {
            setTextSize( mDisplayMultiSize);

        }
        int defaultcolor=getContext().getColor(getLeoResource("color/status_bar_clock_color"));
        int TemperatureColor=defaultcolor;
        int colorstyle=setLeoUesrStatusBarTemperatureRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
        int color=setLeoUesrStatusBarTemperatureColorEnabled;
        if(color==1){
            if(colorstyle==0){
                TemperatureColor=setLeoUesrStatusBarTemperatureColor;
            }else if(colorstyle==1){
                TemperatureColor=colorrandom;
            }
        }else if (color==0) {
            TemperatureColor=defaultcolor;
        }
        mTemperatureColor=TemperatureColor;
        mTemperatureTint=mLightModeColor;
        setTextColor(mTemperatureColor);
        setIncludeFontPadding(false);
        setTypeface(setLeoRomFonts(0,setLeoUesrStatusBarTemperatureFont));
        if (mDisplay){
            if (mHandler == null && getDisplay() != null) {
                mHandler = new Handler();
                if (getDisplay().getState() == Display.STATE_ON) {
                    mHandler.postAtTime(mTemperatureTick,
                            SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                }
                IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
                filter.addAction(Intent.ACTION_SCREEN_ON);
                getContext().registerReceiver(mTemperatureReceiver, filter);
            }
        }
    }

    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {

        mTemperatureTint = getTint(darkIntensity, mTemperatureColor);
        setTextColor(mTemperatureTint);
    }
    private float getBatteryTemperature() {
        return ((float) getContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra("temperature", 0)) / 10.0f;
    }

    private float getExynosTemperature() {

        return Float.valueOf(ReadFile("/sys/class/thermal/thermal_zone0/temp")).floatValue()/ 1000.0f;
    }
    private float getQualcommemperature() {

        return Float.valueOf(ReadFile("/sys/class/thermal/thermal_zone12/temp")).floatValue()/ 10.0f;
    }
    public static String getCustomDateSystemVersion() {
        return getProperty( "ro.hardware");
    }
    private String getQualcommTemperature(TemperatureType temperatureType) {
        float f = 0.0f;
        if (temperatureType == TemperatureType.CPU) {
                f = getQualcommemperature();
        }

        return Math.round(f) + " " + "℃";
    }
    private String getBatteryTemperature(TemperatureType temperatureType) {
        float f = 0.0f;
        if (temperatureType == TemperatureType.Battery) {
            f = getBatteryTemperature();
        }

        return Math.round(f) + " " + "℃";
    }
    private String getExynosTemperature(TemperatureType temperatureType) {
        float f = 0.0f;
       if (temperatureType == TemperatureType.CPU) {
            f = getExynosTemperature();
        }
        return Math.round(f) + " " + "℃";
    }
    private String getTemperature() {
        String S;
        if (getCustomDateSystemVersion() .equals("qcom")) {
            S=getQualcommTemperature(TemperatureType.CPU);;
            // return;
        } else{
       S=getExynosTemperature(TemperatureType.CPU);
        }

        return S;
    }
    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

    Dependency.get(DarkIconDispatcher.class).addDarkReceiver(this);
       setTemperatureDisplay();
     updateLeoObserver(mContext.getContentResolver());
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    Dependency.get(DarkIconDispatcher.class).removeDarkReceiver(this);
        if (mHandler != null) {
            getContext().unregisterReceiver(mTemperatureReceiver);
            mHandler.removeCallbacks(mTemperatureTick);
            mHandler = null;
            setText(setTemperature());
        }
    }
    public  boolean  mDisplay;
    public  int  mDisplaySingleSize;
    public  int   mDisplayMultiSize;
    public String setTemperature(){

        String str;
           if (Single){
               setTextSize(mDisplaySingleSize);
               str="电池: " + getBatteryTemperature(TemperatureType.Battery) + getSymbol(3,Single)+ "CPU: " + getTemperature();
           }else {
               setTextSize( mDisplayMultiSize);
               str="电池: " + getBatteryTemperature(TemperatureType.Battery) + mNewline+ "CPU: " + getTemperature();
           }


        return str;
    }
    boolean Single;


    private Handler mHandler;




    private final BroadcastReceiver mTemperatureReceiver = new BroadcastReceiver() {
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

            setText(setTemperature());;

            mHandler.postAtTime(this, SystemClock.uptimeMillis() / 5000 * 5000 + 5000);
        }
    };


}
