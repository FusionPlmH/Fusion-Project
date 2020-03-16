package com.leo.service.plug;
import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;




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

    }

    @Override
    public void onLowMemory() {
      
        super.onLowMemory();
    }


}
