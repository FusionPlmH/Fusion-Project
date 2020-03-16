package com.android.fusionleo.statusbar;


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
import android.util.Log;
import android.view.Display;
import android.widget.TextView;
import android.widget.Toast;


import static com.android.fusionleo.global.LeoGlobalUtils.ReadFile;

import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;
import static com.android.fusionleo.global.LeoGlobalUtils.getSymbol;
import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.global.LeoGlobalValues.AUTHOR;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getKernel;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusBarTemperatureColorEnabled;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusBarTemperatureRandomColor;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarTemperature;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarTemperatureColor;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarTemperatureFont;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarTemperatureMultiSize;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarTemperatureSingle;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarTemperatureSingleSzie;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.android.fusionleo.global.LeoGlobalValues.getProperty;
import static com.android.fusionleo.global.LeoGlobalValues.mNewline;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarTemperatureColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarTemperatureColorEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarTemperatureDisplay;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarTemperatureFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarTemperatureMultiSize;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarTemperatureRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarTemperatureSingle;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarTemperatureSingleSize;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.LeoCopyrightToast;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoGradient;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mStatusBarClockColor;


import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;


public class LeoStatusbarTemp extends TextView implements DarkIconDispatcher.DarkReceiver{




    private Context mContext;


    public LeoStatusbarTemp(Context context) {
        this(context, null);
    }

    public LeoStatusbarTemp(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);

        mContext = context;


    }


    class LeoRomObserver extends ContentObserver {
        LeoStatusbarTemp mLeoTemperatur;

        public LeoRomObserver(LeoStatusbarTemp Logo, Handler handler) {
            super(handler);
            mLeoTemperatur= Logo;
        }

        public void onChange(boolean z) {
            onChange(z, null);
        }

        public void onChange(boolean z, Uri uri) {
            LeoStatusbarTemp.updatesettings(mLeoTemperatur);
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

    private  static void updatesettings(LeoStatusbarTemp Temperatur) {;
        Temperatur.setTemperatureDisplay();
    }
    enum TemperatureType {
        Battery,
        CPU
    }
    public  int   mTemperatureColor,mTemperatureTint;
    private void  setTemperatureDisplay(){
        LeoStatusSettings(mContext);
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
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
                    int defaultcolor=mStatusBarClockColor;
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
                        setAlpha(0.8f);
                    }
                    mTemperatureColor=TemperatureColor;
                    mTemperatureTint=TemperatureColor;
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
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {

        mTemperatureTint = getLeoGradient(darkIntensity, mTemperatureColor);
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
               str=mContext.getResources().getString(getLeoResource("string/leo_battery_info")) + getBatteryTemperature(TemperatureType.Battery) + getSymbol(3,Single)+ "CPU: " + getTemperature();
           }else {
               setTextSize( mDisplayMultiSize);
               str=mContext.getResources().getString(getLeoResource("string/leo_battery_info")) + getBatteryTemperature(TemperatureType.Battery) + mNewline+ "CPU: " + getTemperature();
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
