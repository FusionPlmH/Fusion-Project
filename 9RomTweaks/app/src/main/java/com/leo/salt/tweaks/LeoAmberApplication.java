package com.leo.salt.tweaks;

import android.app.Application;
import android.content.Context;
import android.os.Environment;


import com.leo.salt.tweaks.view.widget.WeatherView;
import com.meiqia.core.MQManager;
import com.meiqia.core.callback.OnInitCallback;
import com.meiqia.meiqiasdk.util.MQConfig;

import java.io.File;

import static com.leo.salt.tweaks.view.widget.DialogView.AppPackage;
import static com.leo.salt.utils.PrefUtils.copyAssetFolder;

public class LeoAmberApplication extends Application {
    public static Context mContext;

    public static Context getContext() {
        return mContext;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        mContext = this;
        initMeiqiaSDK();

    }
    private void initMeiqiaSDK() {
        MQManager.setDebugMode(true);
        String meiqiaKey = "f93359a4cc9a09610f24a1d036132df9";
        MQConfig.init(this, meiqiaKey, new OnInitCallback() {
            @Override
            public void onSuccess(String clientId) {

            }
            @Override
            public void onFailure(int code, String message) {

            }
        });
        MQConfig.isLoadMessagesFromNativeOpen=true;
        MQConfig.ui.titleBackgroundResId=R.color.colorPrimaryMain;
    }
}
