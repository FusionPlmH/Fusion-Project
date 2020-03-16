package com.sec.android.daemonapp.appwidget.model;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;

public class WidgetViewDecorator {
   public void dfsdfsd(Context context){
       getSaltView(context);
   }
    public static void getSaltView(Context context){
        SaltWeather saltWeather=new SaltWeather(context);
        saltWeather.detWeather();
    }

}
