package com.leo.salt.tools.constants;

import android.content.Intent;
import android.graphics.drawable.Drawable;

public class AppInfo {
    public static AppInfo getItem() {
        return new AppInfo();
    }

    public String mAppName;
    public String mPackageName;
    public Drawable mIcon;
    public Intent mIntent;


    public CharSequence appName = "";
    public CharSequence packageName = "";
    public Drawable icon = null;
    public CharSequence enabledState = "";
    public CharSequence wranState = "";
    public Boolean selectState = false;
    public CharSequence path = "";
    public CharSequence dir = "";
    public Boolean enabled = false;
    public String versionName = "";
    public int versionCode = 0;
    public AppType appType = AppType.UNKNOW;
   // public AppConfigStore.AppConfigInfo appConfigInfo;
    public CharSequence desc;

    public enum AppType {
        UNKNOW,
        USER,
        SYSTEM,
        BACKUPFILE
    }
}
