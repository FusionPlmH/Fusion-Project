package com.android.launcher3.framework.support.context.appstate;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public abstract class LauncherAppState {
    public static final String HOME_ONLY_MODE = "pref_home_screen_mode";
    private static final String TAG = "LauncherAppState";
    protected static Context sContext;

    private static class SingletonHolder {
        @SuppressLint({"StaticFieldLeak"})
        private static LauncherAppState sLauncherAppStateInstance;

        private SingletonHolder() {
        }
    }

    public static synchronized LauncherAppState getInstance() {
        LauncherAppState access$000;
        synchronized (LauncherAppState.class) {
            SingletonHolder.sLauncherAppStateInstance.init();
            access$000 = SingletonHolder.sLauncherAppStateInstance;
        }
        return access$000;
    }

    public static synchronized LauncherAppState getInstanceNoCreate() {
        LauncherAppState access$000;
        synchronized (LauncherAppState.class) {
            SingletonHolder.sLauncherAppStateInstance.init();
            access$000 = SingletonHolder.sLauncherAppStateInstance;
        }
        return access$000;
    }

    public static void setApplicationContext(Context context) {
        if (sContext != null) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("setApplicationContext called twice! old=");
            stringBuilder.append(sContext);
            stringBuilder.append(" new=");
            stringBuilder.append(context);
            Log.w(str, stringBuilder.toString());
        }
        sContext = context;
    }

    public static void setInstance(LauncherAppState launcherAppState) {
        SingletonHolder.sLauncherAppStateInstance = launcherAppState;
    }

    public abstract boolean canScreenRotate();

    public abstract void clearDeskTopModeListener();

    public abstract boolean getAppsButtonEnabled();

    public Context getContext() {
        return sContext;
    }


    public abstract void init();

    public abstract void initScreenGrid(boolean z);

    public abstract boolean isDefaultTheme();

    public abstract boolean isEasyModeEnabled();

    public abstract boolean isEditLockMode();

    public abstract boolean isHomeOnlyModeEnabled();

    public abstract boolean isHomeOnlyModeEnabled(boolean z);

    public abstract boolean isMultiWindowMode();

    public abstract boolean isOnlyPortraitMode();

    public abstract void makeDeviceProfile();


    public abstract void reloadWorkspace();

    public abstract void removeAppsButtonPref(boolean z);

    public abstract void setAppTrayCutoutSize(int i);

    public abstract void setAppsButtonEnabled(boolean z);

    public abstract void setAppsButtonEnabled(boolean z, boolean z2);

    public abstract void setDatabase(SQLiteOpenHelper sQLiteOpenHelper);


    public abstract void setLauncherActivity(Activity activity);

    public abstract void setMultiWindowMode(boolean z);

    public abstract void setNotificationPanelExpansionEnabled(boolean z, boolean z2);

    public abstract void setOnlyPortraitMode(boolean z);

    public abstract void setSettingsActivity(Activity activity);

    public abstract void updateInvariantDeviceProfile(Context context);

    public abstract void writeEasyModeEnabled(boolean z);

    public abstract void writeHomeOnlyModeEnabled(boolean z);
}
