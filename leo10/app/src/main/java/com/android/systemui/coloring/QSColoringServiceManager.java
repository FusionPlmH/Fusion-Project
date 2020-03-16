package com.android.systemui.coloring;

import android.annotation.Nullable;
import android.content.Context;
import android.os.Debug;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

import com.android.systemui.Dependency;

import java.util.ArrayList;

public class QSColoringServiceManager  {
    /* access modifiers changed from: private */
    public Context mContext;
    private float mIndicatorAlpha = 1.0f;
    /* access modifiers changed from: private */



    public QSColoringServiceManager(Context context) {

    }

    /* access modifiers changed from: private */
    public void refreshAllQSColoringFunctions() {

    }

    public int getQSColoringBackgroundAlpha() {
        return 0;
    }

    public int getQSColoringBackgroundColor() {

        return 0;
    }

    public float getQSColoringBlurEffectAmount() {

        return 0;
    }

    public int getQSColoringColor(int i) {
        return 0;
    }



    public boolean isNotificationColoringEnabled() {
        return false;
    }

    public boolean isPluginConnected() {
        return false;
    }

    public boolean isQSColoringBlurEffectEnabled() {
        return false;
    }

    public boolean isQSColoringEnabled() {
        return false;
    }

    public void updateQSColoringResources(@Nullable View view) {
        if (isQSColoringEnabled() && view != null && (view instanceof ViewGroup)) {

        }
    }


}
