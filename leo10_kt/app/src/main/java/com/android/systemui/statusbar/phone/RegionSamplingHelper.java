package com.android.systemui.statusbar.phone;

import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.IBinder;

import android.view.SurfaceControl;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver.OnDrawListener;

import com.android.systemui.Rune;

public class RegionSamplingHelper implements OnAttachStateChangeListener, OnLayoutChangeListener {
    /* access modifiers changed from: private */
    public SamplingCallback mCallback;
    private float mCurrentMedianLuma;
    private boolean mFirstSamplingAfterStart;
    /* access modifiers changed from: private|final */
    public final Handler mHandler = new Handler();

    private final Rect mRegisteredSamplingBounds = new Rect();
    private SurfaceControl mRegisteredStopLayer = null;
    /* access modifiers changed from: private */
    public Runnable mRemoveDrawRunnable = new Runnable() {
        public void run() {
            if (RegionSamplingHelper.this.mSampledView != null) {
                RegionSamplingHelper.this.mSampledView.getViewTreeObserver().removeOnDrawListener(RegionSamplingHelper.this.mUpdateOnDraw);
            }
        }
    };
    /* access modifiers changed from: private */
    public View mSampledView;
    /* access modifiers changed from: private */
    public boolean mSamplingEnabled = false;

    private boolean mSamplingListenerRegistered = false;
    private final Rect mSamplingRequestBounds = new Rect();
    /* access modifiers changed from: private */
    public OnDrawListener mUpdateOnDraw = new OnDrawListener() {
        public void onDraw() {
            RegionSamplingHelper.this.mHandler.post(RegionSamplingHelper.this.mRemoveDrawRunnable);
            RegionSamplingHelper.this.onDraw();
        }
    };

    private boolean mWaitingOnDraw;

    public interface SamplingCallback {
        Rect getSampledRegion(View view);



        void onRegionDarknessChanged(boolean z);
    }

    public RegionSamplingHelper(View view, SamplingCallback samplingCallback) {

        this.mSampledView = view;
        this.mSampledView.addOnAttachStateChangeListener(this);
        this.mSampledView.addOnLayoutChangeListener(this);
        Resources resources = view.getResources();

        this.mCallback = samplingCallback;
    }

    /* access modifiers changed from: private */
    public void onDraw() {
        if (this.mWaitingOnDraw) {
            this.mWaitingOnDraw = false;
            updateSamplingListener();
        }
    }

    private void postUpdateSamplingListener() {

    }

    private void unregisterSamplingListener() {
        if (this.mSamplingListenerRegistered) {
            this.mSamplingListenerRegistered = false;
            this.mRegisteredStopLayer = null;
            this.mRegisteredSamplingBounds.setEmpty();

        }
    }

    /* access modifiers changed from: private */
    public void updateMediaLuma(float f) {

    }

    /* access modifiers changed from: private */
    public void updateSamplingListener() {


    }

    public void onDestroy() {
        this.mSampledView.getViewTreeObserver().removeOnDrawListener(this.mUpdateOnDraw);
        this.mCallback = null;
        this.mSampledView = null;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {

    }

    public void onViewAttachedToWindow(View view) {
        updateSamplingListener();
    }

    public void onViewDetachedFromWindow(View view) {
        postUpdateSamplingListener();
    }

    /* access modifiers changed from: 0000 */
    public void start(Rect rect) {

    }

    /* access modifiers changed from: 0000 */
    public void stop() {
        this.mSamplingEnabled = false;
        updateSamplingListener();
    }

    public void updateSamplingRect() {
        Rect sampledRegion = this.mCallback.getSampledRegion(this.mSampledView);
        if (!this.mSamplingRequestBounds.equals(sampledRegion)) {
            this.mSamplingRequestBounds.set(sampledRegion);
            updateSamplingListener();
        }
    }
}
