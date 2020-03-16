package com.leo.leovip.feedback;

import android.app.Application;
import android.widget.Toast;

import com.meiqia.core.MQManager;
import com.meiqia.core.callback.OnInitCallback;
import com.meiqia.meiqiasdk.util.MQConfig;

public class App extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
        initMeiqiaSDK();
        MQManager.setDebugMode(true);
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
        MQConfig.ui.titleBackgroundResId=R.color.colorPrimary;
    }

}
