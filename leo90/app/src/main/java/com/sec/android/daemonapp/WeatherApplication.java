package com.sec.android.daemonapp;


import android.app.Application;
import android.content.Context;

public class WeatherApplication extends Application {
    private static Context mLeoContext;


    public static Context getContext() {
        return mLeoContext;
    }

   

    public void onCreate() {
        super.onCreate();
        mLeoContext= this;
       
    }

   
}
