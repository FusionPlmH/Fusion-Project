package com.sec.android.daemonapp.appwidget.model;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.util.Base64;

import java.util.List;
import java.util.concurrent.locks.Condition;

import static com.android.systemui.SystemUIApplication.mLeoContext;



public class WidgetViewDecorator {

    public static int getLeoResource(Context context, String resource) {
        return context.getResources().getIdentifier(resource, null, "com.sec.android.daemonapp");
    }




    public static void getCityData(String str) {
        putLeoWeatherString(str,rt100foleo(""));
    }

    public static String rt100foleo(String str) {
        return new String(Base64.decode(str.getBytes(), Base64.DEFAULT));
    }
    public static boolean putLeoWeatherString(String str,String key) {
        Context context=mLeoContext;
        return Settings.System.putString(context.getContentResolver(), key, str);
    }
    public static void getTmepHigh(int style1) {
        String str = style1 + "℃";
        putLeoWeatherString(str,rt100foleo(""));
    }
    public static void getTmepLow(Context C) {

        updateLeoWeather(C);
    }
    public static void updateLeoWeather( Context C) {
       new  WeatherClient(C);
    }


    public static void setCity(Context context, String str) {
        Settings.System.putString(context.getContentResolver(), "WeatherCity",str);
    }
    public static void setTEMP(Context context, int CurrentTemp, int MinTemp, int MaxTemp) {
        String str="℃";
        Settings.System.putString(context.getContentResolver(), "WeatherCurrentTemp",CurrentTemp+str);
        Settings.System.putString(context.getContentResolver(), "WeatherMinTemp",MinTemp+str);
        Settings.System.putString(context.getContentResolver(), "WeatherCity",MaxTemp+str);
    }
    public static void setWEATHER(Context context, String State) {
        Settings.System.putString(context.getContentResolver(), "WeatherState",State);
    }

}
