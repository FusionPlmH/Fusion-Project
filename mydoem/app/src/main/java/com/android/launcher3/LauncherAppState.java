package com.android.launcher3;

import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Point;
import android.os.Handler;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;

import java.lang.ref.WeakReference;

public class LauncherAppState {
    private static final int EASY_GRID_CELLX = 3;
    private static final int EASY_GRID_CELLY = 4;
    public static final String EASY_MODE = "easy_mode";
    public static final int HOMESCREEN_BADGE_ALL_APPS_DISABLE = 0;
    public static final int HOMESCREEN_BADGE_ALL_APPS_ENABLE = 2;
    public static final int HOMESCREEN_BADGE_SINGLE_APP_DISABLE = 1;
    public static final String HOME_APPS_MODE = "home_apps_mode";
    public static final String HOME_ONLY_MODE = "home_only_mode";
    private static final String PREFERENCES_APPS_BUTTON_SETTINGS = "apps_button_settings";
    private static final String PREFERENCES_APPS_BUTTON_SETTINGS_EASY = "apps_button_settings_easy";
    private static final String PREFERENCES_BADGE_SETTINGS = "badge_settings";
    private static Context sContext;
    public Context getContext() {
        return sContext;
    }
    private boolean mCloneItemEnabled;

    private static class SingletonHolder {
        private static final LauncherAppState sLauncherAppStateInstance = new LauncherAppState();

        private SingletonHolder() {
        }
    }
    public static LauncherAppState getInstance() {
        return SingletonHolder.sLauncherAppStateInstance;
    }


}
