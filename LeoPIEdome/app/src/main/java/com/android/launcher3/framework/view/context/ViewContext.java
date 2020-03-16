package com.android.launcher3.framework.view.context;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;

import java.util.ArrayList;

public abstract class ViewContext extends Activity  {
    public static final int APPWIDGET_HOST_ID = 1024;
    public static final int APPWIDGET_HOST_ID_FRONT = 1025;
    protected static final String TAG = "ViewContext";

    public abstract void changeNavigationBarColor(boolean z);

    public abstract void changeStatusBarColor(boolean z);

    public abstract void clearSavedState();

    public abstract void finishSettingsActivity();

    public abstract ArrayList<Runnable> getBindOnResumeCallbacks();



    public abstract ViewGroup getDragLayer();



    public abstract Bundle getSavedState();


    public abstract boolean getVisible();



    public abstract boolean isDraggingEnabled();

    public abstract boolean isLandscape();

    public abstract boolean isMultiTouchState();

    public abstract boolean isPaused();

    public abstract boolean isPortrait();

    public abstract boolean isSkipAnim();

    public abstract void onChangeSelectMode(boolean z, boolean z2);

    public abstract void onWindowVisibilityChanged(int i);

    public abstract void recreateLauncher();

    public boolean resetMinusOnePage() {
        return false;
    }

    public abstract void setEnableHotWord(boolean z);

    public abstract void setHotWordDetection(boolean z);



    public void switchToMinusOnePage() {
    }

    public abstract boolean waitUntilResume(Runnable runnable, boolean z);

    public abstract boolean waitUntilResumeForHotseat(Runnable runnable);
}
