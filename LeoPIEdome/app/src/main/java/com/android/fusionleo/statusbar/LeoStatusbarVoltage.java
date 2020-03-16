package com.android.fusionleo.statusbar;


import android.content.BroadcastReceiver;
import android.content.ComponentName;
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


import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;
import static com.android.fusionleo.global.LeoGlobalUtils.readCurrentFile;
import static com.android.fusionleo.global.LeoGlobalUtils.readFile;
import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.global.LeoGlobalValues.AUTHOR;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getKernel;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarVoltageColor;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarVoltageColorEnabled;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarVoltageDisplay;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarVoltageFont;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarVoltageMultiSize;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarVoltageRandomColor;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarVoltageSingle;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarVoltageSingleSize;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoStatusbarVoltageStyle;

import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.android.fusionleo.statusbar.LeoPulldownDeviceInfo.CHARGER_CURRENT_NOW;
import static com.android.fusionleo.statusbar.LeoPulldownDeviceInfo.VOLTAGE_NOW;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.LeoCopyrightToast;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoGradient;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mStatusBarClockColor;


import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import java.io.File;


public class LeoStatusbarVoltage extends TextView implements DarkIconDispatcher.DarkReceiver{
    private Context mContext;
    private LeoObserver mLeoObserver;
    public final static String LEO_ACTION_DEVICE = "com.leo.deviceinfo.service";
    public final static String LEO_DEVICE_PACKAGE= "com.amber.leoservice";
    public final static String LEO_DEVICE_PACKAGE_NEME = "com.amber.leoservice.deviceinfo.DeviceInfoService";
    public LeoStatusbarVoltage(Context context) {
        this(context, null);
    }
    public LeoStatusbarVoltage(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext = context;
    }
    private  String mVoltage;
    private  String mCurrent;
    private final BroadcastReceiver mDeviceServiceReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(LEO_ACTION_DEVICE)) {
                mVoltage = intent.getStringExtra("INFOVOLTAGE");
                mCurrent= intent.getStringExtra("INFOCURRENT");
            }
            getCurrentVoltage();
        }
    };
    public  int mDisplayStyle;
    private String getVoltageCurrent(){
        String nVoltage="";
      if(mDisplayStyle==0){
          nVoltage=getVoltage();
      }else  if(mDisplayStyle==1){
          nVoltage=getCurrent();
      }else  if(mDisplayStyle==2){
          nVoltage=getVoltage()+"\n"+getCurrent();
      }
        return nVoltage;
    }

    public String getLeoCurrent(int i) {
        String TrafficDownload="";
        if(i==0){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_device_info_current"));
        }else if(i==1){
            TrafficDownload=mContext.getResources().getString(getLeoResource("string/leo_device_info_voltage"));
        }
        return TrafficDownload;
    }
    public  void getCurrentVoltage() {

    }
    public  String getVoltage() {
        String result = "";


            if(mDisplayStyle==0){
                result =mVoltage+"\n"+"mV";
            }else  if(mDisplayStyle==2){
                result =getLeoCurrent(1) +mVoltage+" mV";
            }

        return result;
    }
    public  String getCurrent() {
        String result = "";
        if(mDisplayStyle==0){
            result =mCurrent+"\n"+"mA";
        }else  if(mDisplayStyle==2){
            result =getLeoCurrent(0) +mCurrent+" mA";
        }


        return result;

    }
    public  int   mVoltageColor,mVoltageTint;
    private void  setVoltageDisplay(){
        LeoStatusSettings(mContext);
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
                    mDisplayStyle=setLeoUesrStatusbarVoltageStyle;
                    Single=setLeoUesrStatusbarVoltageSingle;
                    mDisplay=setLeoUesrStatusbarVoltageDisplay;
                    if (mDisplay){
                        setVisibility(TextView.VISIBLE);

                    }else {
                        setVisibility(TextView.GONE);
                    }
                    mDisplaySingleSize=setLeoUesrStatusbarVoltageSingleSize;
                    mDisplayMultiSize= setLeoUesrStatusbarVoltageMultiSize;

                    setText(getVoltageCurrent());
                    setSingleLine(Single);
                    if (Single){
                        setTextSize(mDisplaySingleSize);
                    }else {
                        setTextSize( mDisplayMultiSize);
                    }
                    int defaultcolor=mStatusBarClockColor;
                    int VoltageColor=defaultcolor;
                    int colorstyle=setLeoUesrStatusbarVoltageRandomColor;
                    int colorrandom=getLeoRandomColor(mContext);
                    int color=setLeoUesrStatusbarVoltageColorEnabled;
                    if(color==1){
                        if(colorstyle==0){
                            VoltageColor=setLeoUesrStatusbarVoltageColor;
                        }else if(colorstyle==1){
                            VoltageColor=colorrandom;
                        }
                    }else if (color==0) {
                        VoltageColor=defaultcolor;
                        setAlpha(0.8f);

                    }
                    mVoltageColor=VoltageColor;
                    mVoltageTint=VoltageColor;
                    setTextColor(mVoltageColor);
                    setIncludeFontPadding(false);
                    setTypeface(setLeoRomFonts(0,setLeoUesrStatusbarVoltageFont));
                    if (mDisplay){
                        if (mHandler == null && getDisplay() != null) {
                            mHandler = new Handler();
                            if (getDisplay().getState() == Display.STATE_ON) {
                                mHandler.postAtTime(mVoltageTick,
                                        SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                            }
                            IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
                            filter.addAction(Intent.ACTION_SCREEN_ON);
                            getContext().registerReceiver(mVoltageReceiver, filter);
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
        mVoltageTint = getLeoGradient(darkIntensity, mVoltageColor);
        setTextColor(mVoltageTint);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
       Dependency.get(DarkIconDispatcher.class).addDarkReceiver(this);
        Intent intent = new Intent();
        ComponentName componentName = new ComponentName(LEO_DEVICE_PACKAGE,LEO_DEVICE_PACKAGE_NEME);
        intent.setComponent(componentName);
        mContext.startForegroundService(intent);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(LEO_ACTION_DEVICE);
        mContext.registerReceiver(mDeviceServiceReceiver, intentFilter);
       setVoltageDisplay();
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Dependency.get(DarkIconDispatcher.class).removeDarkReceiver(this);
        if (mHandler != null) {
            getContext().unregisterReceiver(mVoltageReceiver);
            mHandler.removeCallbacks(mVoltageTick);
            mHandler = null;
            setText(getVoltageCurrent());
        }
    }
    public  boolean  mDisplay;
    public  int  mDisplaySingleSize;
    public  int   mDisplayMultiSize;
    boolean Single;
    private Handler mHandler;
    private final BroadcastReceiver mVoltageReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                if (mHandler != null) {
                    mHandler.removeCallbacks(mVoltageTick);
                }
            } else if (Intent.ACTION_SCREEN_ON.equals(action)) {
                if (mHandler != null) {
                    mHandler.postAtTime(mVoltageTick,
                            SystemClock.uptimeMillis() / 5000 * 5000 + 5000);
                }
            }
        }
    };
    private final Runnable mVoltageTick = new Runnable() {
        @Override
        public void run() {
            setText(getVoltageCurrent());
            mHandler.postAtTime(this, SystemClock.uptimeMillis() / 5000 * 5000 + 5000);
        }
    };

    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver  contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarVoltageStyle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarVoltageDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarVoltageSingle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarVoltageSingleSize()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarVoltageMultiSize()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarVoltageFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarVoltageColorEnabled()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarVoltageColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusbarVoltageRandomColor()), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            setVoltageDisplay();
        }
    }
}
