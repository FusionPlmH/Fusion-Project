package com.leo.salt.tweaks;

import android.app.Application;
import android.content.Context;
import android.os.Environment;


import com.leo.salt.tools.service.InitService;


public class LeoAmberApplication extends Application {
   public static LeoAmberApplication App;
    public static Context getContext() {
        return App;
    }


    @Override
    public void onCreate() {
        super.onCreate();
        App=this;
        InitService.Companion.start(this);


    }

}
