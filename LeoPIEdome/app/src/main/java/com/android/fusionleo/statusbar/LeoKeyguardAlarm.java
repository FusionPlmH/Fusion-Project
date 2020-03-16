package com.android.fusionleo.statusbar;



import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.icu.text.SimpleDateFormat;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.fusionleo.global.LeoGlobalUtils;
import com.android.leo.R;
import com.android.systemui.widget.SystemUITextView;

import java.util.Locale;

import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;
import static com.android.fusionleo.global.LeoGlobalValues.AUTHOR;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getKernel;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoKeyguardAlarmColor;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoKeyguardAlarmColorEnable;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoKeyguardAlarmDisplay;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoKeyguardAlarmFormat;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoKeyguardAlarmIconDisplay;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoKeyguardAlarmTextFont;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoKeyguardAlarmTextSize;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrKeyguardAlarmColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrKeyguardAlarmColorEnable;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrKeyguardAlarmDisplay;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrKeyguardAlarmFormat;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrKeyguardAlarmIconDisplay;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrKeyguardAlarmTextFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrKeyguardAlarmTextSize;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.LeoCopyrightToast;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;


public class LeoKeyguardAlarm extends SystemUITextView {
  private String mLeoAlarm;
    private String mLeoDataAlarm;
    private Drawable mLeoAlarmicon;
    private boolean mLeoAlarmFormat=false;
    private boolean mLeoAlarmIcon=true;
    public Context mContext;
    public LeoKeyguardAlarm(Context context) {
        this(context, null);
    }

    public LeoKeyguardAlarm(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
           mContext = context;
    }

    private final BroadcastReceiver mAlarmServiceReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(LEO_ACTION_WEATHER)) {
              mLeoAlarm = intent.getStringExtra("INFOALARM");
              mLeoDataAlarm = intent.getStringExtra("INFOALARMDATA");
            }
            setWeatherAlarmView();
        }
    };
    public void setWeatherAlarmView() {
        String info;
        if (mLeoAlarmFormat) {
            info= mLeoDataAlarm;
        } else {
            info=  mLeoAlarm;
        }
        setText( info);
        mLeoAlarmicon=mContext.getResources().getDrawable(getLeoResource("drawable/leo_ic_alarm"));
        mLeoAlarmicon.setBounds(0,0,mLeoAlarmicon.getMinimumWidth(),mLeoAlarmicon.getMinimumHeight());
       if (mLeoAlarmIcon) {
            setCompoundDrawables(mLeoAlarmicon, null, null, null);
        } else {
            setCompoundDrawables(null, null, null, null);
        }
    }

    public final static String LEO_ACTION_WEATHER = "com.leo.weather.service";
    public final static String LEO_WEATHER_PACKAGE= "com.amber.leoservice";
    public final static String LEO_WEATHER_PACKAGE_NEME = "com.amber.leoservice.weather.WeatherWidgetService";
    private LeoObserver mLeoObserver;
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Intent intent = new Intent();
        ComponentName componentName = new ComponentName(LEO_WEATHER_PACKAGE,LEO_WEATHER_PACKAGE_NEME);
        intent.setComponent(componentName);
        mContext.startForegroundService(intent);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(LEO_ACTION_WEATHER );
        mContext.registerReceiver(mAlarmServiceReceiver, intentFilter);
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        setWeatherAlarmView();
    }
    protected void onDetachedFromWindow() {
        mContext.unregisterReceiver(mAlarmServiceReceiver);
        super.onDetachedFromWindow();
    }
    public void updateAlarm(){
       LeoStatusSettings(mContext);
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
                    mLeoAlarmIcon=setLeoUesrKeyguardAlarmIconDisplay;
                    mLeoAlarmFormat=setLeoUesrKeyguardAlarmFormat;
                    setVisibility(setLeoUesrKeyguardAlarmDisplay ? VISIBLE : GONE);
                    setTextSize(setLeoUesrKeyguardAlarmTextSize);
                    setLeoCustomFont(setLeoUesrKeyguardAlarmTextFont);
                    if(setLeoUesrKeyguardAlarmColorEnable){
                        setLeoCustomColor(setLeoUesrKeyguardAlarmColor);
                    }else {
                        setLeoRemoveCustomColor();
                    }
                } else{
                    Log.v(new String(new char[]{'作', '者', ':', '不', '咸', '的', '盐', '巴'}), AUTHOR);
                }
            } else{
                Log.w(new String(new char[]{'A', 'M', 'B', 'E', 'R'}), "");
                LeoCopyrightToast(mContext);
            }
        }

    }
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver = getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardAlarmDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardAlarmIconDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardAlarmFormat()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardAlarmTextSize()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardAlarmTextFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardAlarmColorEnable()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoKeyguardAlarmColor()), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            updateAlarm();
        }


    }

}