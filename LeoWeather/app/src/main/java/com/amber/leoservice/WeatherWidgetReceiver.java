package com.amber.leoservice;


import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.amber.leoservice.weather.WeatherWidgetService;

public class WeatherWidgetReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        // TODO: This method is called when the BroadcastReceiver is receiving
        Intent serIntent= new Intent(context, WeatherWidgetService.class);
        serIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        context.startService(serIntent);
    }
}
