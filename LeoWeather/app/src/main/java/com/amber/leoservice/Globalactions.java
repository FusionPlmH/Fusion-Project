package com.amber.leoservice;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.amber.leoservice.weather.WeatherWidgetService;

public class Globalactions extends Activity  {
    public Context mContext;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext=this;
        Intent serIntent= new Intent(mContext, WeatherWidgetService.class);
        serIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        mContext.startService(serIntent);
    }




}
