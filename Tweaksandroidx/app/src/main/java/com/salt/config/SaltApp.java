package com.salt.config;

import android.app.Application;
import android.content.Context;



public class SaltApp extends Application {
   public static SaltApp SaltApplication;

    public static Context getContext() {
        return SaltApplication;

    }
    @Override
    public void onCreate() {
        super.onCreate();
        SaltApplication=this;
        //InitService.Companion.start(this);
    }

    @Override
    public void onLowMemory() {
        Runtime.getRuntime().gc();
        super.onLowMemory();
    }
}
