package com.tweaks.leo;
import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;

import com.facebook.drawee.backends.pipeline.Fresco;


public class LeoApp extends Application {
    @SuppressLint("StaticFieldLeak")
    public static Context mContext;


    public static Context getContext() {
        return mContext;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        mContext = this;
        Fresco.initialize(this);
    }

    @Override
    public void onLowMemory() {
      
        super.onLowMemory();
    }

}
