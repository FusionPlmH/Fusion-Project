package com.android.launcher3;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.util.Log;

import com.android.internal.util.Preconditions;

import java.lang.ref.WeakReference;

public class LauncherAppState {
    public static final String ACTION_FORCE_ROLOAD = "force-reload-launcher";




    private LauncherAppState(Context context) {

    }


    public Context getContext() {
        return null;
    }


    public boolean isEditLockEnabled() {
        return false;
    }

    public boolean isQuickOpenPanelEnabled() {
        return false;
    }


}
