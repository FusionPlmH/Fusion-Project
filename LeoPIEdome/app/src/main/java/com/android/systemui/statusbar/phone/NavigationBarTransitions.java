package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.support.annotation.NonNull;
import android.util.SparseArray;

import android.view.IWindowManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.View.OnTouchListener;
import com.android.internal.statusbar.IStatusBarService;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;

public final class NavigationBarTransitions extends BarTransitions {

    private boolean mLightsOut;
    private boolean mLightsOutDisabled = false;
    private final OnTouchListener mLightsOutListener = new OnTouchListener() {
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                NavigationBarTransitions.this.applyLightsOut(false, false, false);

            }
            return false;
        }
    };


    private static class NavigationBarBackgroundDrawable extends BarBackgroundDrawable {
        public NavigationBarBackgroundDrawable(Context context, int i) {
            super(context, i);

        }

        public void updateOpaqueColor(int i) {
            this.mOpaque = i;
            invalidateSelf();
        }
    }

    public NavigationBarTransitions(NavigationBarView navigationBarView) {
        super(navigationBarView, 2131231850);

    }

    private void applyLightsOut(boolean z, boolean z2) {
        applyLightsOut(isLightsOut(getMode()), z, z2);
    }

    private void applyLightsOut(boolean z, boolean z2, boolean z3) {

    }

    public static /* synthetic */ void lambda$new$0(NavigationBarTransitions navigationBarTransitions, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {

    }

    public void applyDarkIntensity(float f) {

    }


    public int getMode() {
        return this.mMode == -1 ? 4 : this.mMode;
    }

    public void init() {
        applyModeBackground(-1, getMode(), false);
        applyLightsOut(false, true);
    }



    public void onDestroy() {

    }

    protected void onTransition(int i, int i2, boolean z) {
        super.onTransition(i, i2, z);
        applyLightsOut(z, false);
    }

    public void reapplyDarkIntensity() {

    }

    public void restoreState(Bundle bundle) {
        this.mMode = bundle.getInt("bar_mode", -1);
    }

    public void saveState(Bundle bundle) {
        bundle.putInt("bar_mode", this.mMode);
    }

    public void setAutoDim(boolean z) {

    }

    public void setAutoDimOff(boolean z) {

    }

    public void setLightsOutDisable(boolean z) {
        this.mLightsOutDisabled = z;
    }

    public void transitionTo(int i, boolean z) {
        if (this.mMode != -1 || i == 4) {
            super.transitionTo(i, z);
        }
    }

    public void updateModeBackgroundColor(int i, int i2) {
        if (i == 0) {
            this.mBarBackground.updateOpaqueColor(i2);
        }
    }
}
