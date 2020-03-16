package com.leo.salt.tweaks;

import android.app.Application;
import android.content.Context;
import android.os.Environment;


import com.leo.salt.tweaks.view.widget.WeatherView;

import java.io.File;

import static com.leo.salt.tweaks.view.widget.DialogView.AppPackage;
import static com.leo.salt.utils.PrefUtils.copyAssetFolder;

public class LeoAmberApplication extends Application {
    public static Context mContext;
    public static String mSDCardPath;
    public static final String APP_FOLDER_NAME = "LeoTweaks";
    public static Context getContext() {
        return mContext;
    }
    public WeatherView.WeatherClient mWeatherRec;
    @Override
    public void onCreate() {
        super.onCreate();
        mContext = this;
        initDirs();
        mWeatherRec=new WeatherView.WeatherClient();
        copyAssetFolder();
        createSDCardDirimg();
        AppPackage( mContext);
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
    public void createSDCardDirimg(){
        if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){

            File sdcardDir =Environment.getExternalStorageDirectory();

            String path=sdcardDir.getPath()+"/LeoTweaks/update";
            File path1 = new File(path);
            if (!path1.exists()) {
                path1.mkdirs();
            }
        }
        else{
            return;
        }

    }
}
