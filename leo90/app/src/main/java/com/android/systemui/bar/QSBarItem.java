package com.android.systemui.bar;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;


public abstract class QSBarItem extends BarItem {
   // private static final Interpolator SineInOut33 = new PathInterpolator(0.33f, 0.0f, 0.67f, 1.0f);
    protected ViewGroup mBarRootView;
    protected float mFraction = 0.0f;
    protected int mOrientation;
    protected QSCallback mQSCallback;

    protected int mStatusBarState;

    interface QSCallback {
        void onBarSpecChanged();

        void onQSHeightChanged();
    }

    public QSBarItem(Context context) {
    }


    public abstract int getBarHeight();

    public View getView() {
        return this.mBarRootView;
    }

    /* access modifiers changed from: protected */
    public void hideShowingExpandedBar(boolean z) {
        if (!isShowingWhenExpanded()) {
            if (z) {
                if (this.mBarRootView != null) {
                    this.mBarRootView.setVisibility(8);
                }
            } else if (this.mBarRootView != null) {
                this.mBarRootView.setVisibility(0);
            }
            this.mQSCallback.onQSHeightChanged();
        }
    }

    /* access modifiers changed from: protected */
    public boolean isKeyguardShowing() {
        return this.mStatusBarState == 1;
    }

    /* access modifiers changed from: protected */
    public boolean isLandscape() {
        return this.mOrientation == 2;
    }

    public boolean isOnTop() {
        return true;
    }

    public boolean isShowingWhenExpanded() {
        return false;
    }

    public void onOrientationChanged(int i) {
        this.mOrientation = i;
    }

    public void setListening(boolean z) {
    }

    public void setPosition(float f) {
        this.mFraction = f;

    }

    public void setQSCallback(QSCallback qSCallback) {
        this.mQSCallback = qSCallback;
    }

    public void setStatusBarState(int i) {
        this.mStatusBarState = i;

    }

    public void updateAnimator() {
        if (getView() != null) {
          //  this.mShowingExpandedBarAlphaAnimator = new Builder().addFloat(getView(), "alpha", 1.0f, 0.0f).setStartDelay(0.75f).setInterpolator(SineInOut33).setEndDelay(0.1f).build();
        }
    }
}
