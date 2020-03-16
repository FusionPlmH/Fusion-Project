package com.leo.global.tweaks;

import android.app.Application;
import android.content.Context;
import android.os.Environment;

import com.facebook.drawee.backends.pipeline.Fresco;

import java.io.File;

public class LeoAmberApplication extends Application {
    public static Context mContext;
    public static String mSDCardPath;
    public static final String APP_FOLDER_NAME = "LeoTweaks";
    public static Context getContext() {
        return mContext;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        mContext = this;
        initDirs();
        Fresco.initialize(this);
    }

    @Override
    public void onLowMemory() {
        super.onLowMemory();
    }

    private boolean initDirs() {
        mSDCardPath = Environment.getExternalStorageDirectory().toString();
        if (mSDCardPath == null) {
            return false;
        }
        File f = new File(mSDCardPath, APP_FOLDER_NAME);
        if (!f.exists()) {
            try {
                f.mkdirs();
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return true;
    }
}
