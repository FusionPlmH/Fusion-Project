package com.sec.android.daemonapp;


import android.app.Application;
import android.content.Context;

public class WeatherApplication extends Application {
    private static Context mLeoRomCon;


    public static Context getContext() {
        return mLeoRomCon;
    }

   

    public void onCreate() {
        super.onCreate();
        mLeoRomCon = this;
       
    }

   
}
