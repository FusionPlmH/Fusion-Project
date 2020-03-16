package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public final class NavigationBarTransitions {

    private boolean mLightsOut;
    private final OnTouchListener mLightsOutListener = new OnTouchListener() {
        public boolean onTouch(View v, MotionEvent ev) {
            if (ev.getAction() == 0) {
                NavigationBarTransitions.this.applyLightsOut(false, false, false);
                // NavigationBarTransitions.this.mBarService.setSystemUiVisibility(0, 1, "LightsOutListener");
            }
            return false;
        }
    };
 //   private NavBarRemoteViewManager mNavBarRemoteViewManager;
 //   private final NavigationBarView mView;

    private static class NavigationBarBackgroundDrawable {
        public NavigationBarBackgroundDrawable(Context context, int gradientResourceId) {

        }

        public void updateOpaqueColor(int color) {

        }
    }

    public NavigationBarTransitions(NavigationBarView view) {

    }

    public void init() {

    }

    public int getMode() {

        return 0;
    }

    public void transitionTo(int mode, boolean animate) {

    }

    public LightBarTransitionsController getLightTransitionsController() {
       // return this.mLightTransitionsController;
        return null;
    }

    protected void onTransition(int oldMode, int newMode, boolean animate) {

    }

    private void applyMode(int mode, boolean animate, boolean force) {

    }

    private void applyLightsOut(boolean lightsOut, boolean animate, boolean force) {

    }

    public void reapplyDarkIntensity() {

    }


    private void applyRemoteViewDarkIntensity(float darkIntensity) {

    }

    public void saveState(Bundle outState) {

    }

    public void restoreState(Bundle savedInstanceState) {

    }

    public void updateModeBackgroundColor(int mode, int color) {
        switch (mode) {
            case 0:
               // this.mBarBackground.updateOpaqueColor(color);
                return;
            default:
                return;
        }
    }
}
