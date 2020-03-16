package com.salt.widget;

import android.content.Intent;
import android.graphics.drawable.Drawable;

public class Appinfo {
    public CharSequence appName = "";
    public CharSequence packageName = "";
    public Drawable icon = null;
    public CharSequence enabledState = "";
    public Boolean selectState = false;
    public CharSequence path = "";
    public CharSequence dir = "";
    public Boolean enabled = false;
    public Boolean updated = false;
    public String versionName = "";
    public int versionCode = 0;
    public AppType appType = AppType.UNKNOW;
  //  public AppConfigInfo appConfigInfo;
    public CharSequence desc;

    public static Appinfo getItem() {
        return new Appinfo();
    }

    public enum AppType {
        UNKNOW,
        USER,
        SYSTEM,
        BACKUPFILE
    }
}
