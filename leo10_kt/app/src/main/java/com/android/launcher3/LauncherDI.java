package com.android.launcher3;

import android.app.Activity;
import android.appwidget.AppWidgetHost;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;

import androidx.preference.PreferenceDataStore;

import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
public abstract class LauncherDI {
    public static final int RECENTS_TASK_MENU_ASPECT_RATIO = 0;
    public static final int RECENTS_TASK_MENU_SNAP_WINDOW = 1;
    public static final int RECENTS_TASK_MENU_TASK_LOCK = 2;
    private static LauncherDI sLauncherDI;

    public static LauncherDI getInstance() {
        return sLauncherDI;
    }

    protected static void setInstance(LauncherDI launcherDI) {
        sLauncherDI = launcherDI;
    }

    public abstract PreferenceDataStore getSettingsPreferenceDataStore();

}
