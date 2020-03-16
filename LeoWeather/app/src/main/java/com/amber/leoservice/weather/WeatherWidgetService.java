package com.amber.leoservice.weather;



import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;

import com.amber.leoservice.R;
import com.amber.leoservice.ScreenListener;

import static com.amber.leoservice.deviceinfo.DeviceInfo.setAlarmInfo;

import static com.amber.leoservice.deviceinfo.DeviceInfo.setAlarmInfoDate;
import static com.amber.leoservice.weather.Weather.*;

public class  WeatherWidgetService extends Service {

    private String mWeatherLocation;
    private String mWeatherCurrentTemp;
    private String mWeatherLowTemp;
    private String mWeatherHighTemp;
    private String mWeatherAQI;
    private String mWeatherState;
    private String mWeatherSunrise;
    private String mWeatherSunset;
    private String mWeatherRealFeel;
    private String mDeviceAlarm;
    private String mDeviceDate;
    private String mWeatherDetailedLocation;
    private String mWeatherDetail;
    public Context mContext;
    private ScreenListener screenListener;
    public String mWeatherFormat = "aHH:mm";
    private String LEO_ACTION_WEATHER = "com.leo.weather.service";
    public void onCreate() {
        super.onCreate();
        mContext = getApplicationContext();
        screenListener = new ScreenListener(mContext ) ;
        screenListener.begin(new ScreenListener.ScreenStateListener() {
            @Override
            public void onScreenOn() {
                final Handler handler = new Handler();
                handler.post(new Runnable() {
                    public void run() {
                        Intent intent = new Intent(LEO_ACTION_WEATHER);
                        if (isWeatherTrue(mContext)) {
                            WeatherData();
                            intent.putExtra("WEATHERCURRENTTEMP", mWeatherCurrentTemp);
                            intent.putExtra("WEATHERREALFEEL", mWeatherRealFeel);
                            intent.putExtra("WEATHERLOW", mWeatherLowTemp);
                            intent.putExtra("WEATHERHIGH", mWeatherHighTemp);
                            intent.putExtra("WEATHERLOCATION", mWeatherLocation);
                            intent.putExtra("WEATHERAQI", mWeatherAQI);
                            intent.putExtra("WEATHERSTATE", mWeatherState);
                            intent.putExtra("WEATHERSUNRISE", mWeatherSunrise);
                            intent.putExtra("WEATHERSUNSET", mWeatherSunset);
                            intent.putExtra("INFOALARM",mDeviceAlarm);
                            intent.putExtra("INFOALARMDATA",mDeviceDate);
                            intent.putExtra("WEATHERLOCATIONDATAILED",mWeatherDetailedLocation);
                            intent.putExtra("WEATHERDATAIL",mWeatherDetail);
                        }
                        mContext.sendBroadcast(intent);
                        handler.postDelayed(this, 50000);
                    }
                });
            }

            @Override
            public void onScreenOff() {
                Log.e("Weather", "ScreenOff");
            }

            @Override
            public void onUserPresent() {
                Log.e("Weather", "Present");
            }
        });

    }


    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

  public void WeatherData() {
        mWeatherRealFeel = mContext.getResources().getString(R.string.real_feel_temp) + " " + getRealFeelTemperature(mContext, getTempScale(mContext)) + getTempScaleText(mContext);
        mWeatherLocation =getLocation(mContext);
        mWeatherCurrentTemp = getCurrentTemperature(mContext, getTempScale(mContext)) + getTempScaleText(mContext);
        mWeatherLowTemp = getLowTemp(mContext, getTempScale(mContext)) + getTempScaleText(mContext);
        mWeatherHighTemp = getHighTemp(mContext, getTempScale(mContext)) + getTempScaleText(mContext);
        mWeatherState = getWeatherInfoTextWCN(mContext);
        mWeatherAQI = getChinaAQI(mContext);
        mWeatherSunrise = getSunRiseTime(mContext, mWeatherFormat);
        mWeatherSunset = getSunSetTime(mContext, mWeatherFormat);
        mDeviceAlarm=setAlarmInfo(mContext);
        mDeviceDate=setAlarmInfoDate(mContext);
        mWeatherDetailedLocation=getDetailedLocation(mContext)+" "+getLocation(mContext);
        mWeatherDetail=updateLeoWeatherDetail(mContext);
    }


    public int onStartCommand(Intent intent, int i, int i2) {
        this.mContext = getApplicationContext();
        return super.onStartCommand(intent, i, i2);
    }


}