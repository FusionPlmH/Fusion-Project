package com.android.leo;
import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;

import com.android.fusionleo.salt.widget.MeterBack;
import com.android.fusionleo.salt.widget.MeterFlashlight;
import com.android.fusionleo.salt.widget.MeterHome;
import com.android.fusionleo.salt.widget.MeterRecent;
import com.android.fusionleo.salt.widget.Until;


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
        getLeoAmberMiPOP();

    }

    @Override
    public void onLowMemory() {
      
        super.onLowMemory();
    }

    public void getLeoAmberMiPOP() {
        Until.initialPop(this);
        new MeterFlashlight(this);
        new MeterRecent(this);
        new MeterBack(this);
        new MeterHome(this);
    }
}
