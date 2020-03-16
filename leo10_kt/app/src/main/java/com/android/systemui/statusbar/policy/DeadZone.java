package com.android.systemui.statusbar.policy;

import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.SystemClock;
import android.util.Slog;
import android.view.MotionEvent;
import com.android.systemui.Dependency;

import com.android.systemui.statusbar.phone.NavigationBarView;


public class DeadZone {
    private final Runnable mDebugFlash = new Runnable() {
        public void run() {
            ObjectAnimator.ofFloat(DeadZone.this, "flash", new float[]{1.0f, 0.0f}).setDuration(150).start();
        }
    };
    private int mDecay;
    private final int mDisplayId=0;
    private int mDisplayRotation;
    private float mFlashFrac = 0.0f;
    private int mHold;
    private long mLastPokeTime;

    private final NavigationBarView mNavigationBarView;
    private boolean mShouldFlash;
    private int mSizeMax;
    private int mSizeMin;

    private boolean mVertical;

    public DeadZone(NavigationBarView navigationBarView) {
        this.mNavigationBarView = navigationBarView;

        onConfigurationChanged(0);
    }

    private float getSize(long j) {
        int i = this.mSizeMax;
        if (i == 0) {
            return 0.0f;
        }
        int i2;
        j -= this.mLastPokeTime;
        int i3 = this.mHold;
        int i4 = this.mDecay;
        if (j > ((long) (i3 + i4))) {
            i2 = this.mSizeMin;
        } else if (j < ((long) i3)) {
            return (float) i;
        } else {
            i2 = (int) lerp((float) i, (float) this.mSizeMin, ((float) (j - ((long) i3))) / ((float) i4));
        }
        return (float) i2;
    }

    static float lerp(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    private void poke(MotionEvent motionEvent) {
        this.mLastPokeTime = motionEvent.getEventTime();
        if (this.mShouldFlash) {
            this.mNavigationBarView.postInvalidate();
        }
    }

    public void onConfigurationChanged(int i) {
        this.mDisplayRotation = i;
        Resources resources = this.mNavigationBarView.getResources();

    }

    public void onDraw(Canvas canvas) {
        if (this.mShouldFlash && this.mFlashFrac > 0.0f) {
            int size = (int) getSize(SystemClock.uptimeMillis());
            if (!this.mVertical) {
                canvas.clipRect(0, 0, canvas.getWidth(), size);
            } else if (this.mDisplayRotation == 3) {
                canvas.clipRect(canvas.getWidth() - size, 0, canvas.getWidth(), canvas.getHeight());
            } else {
                canvas.clipRect(0, 0, size, canvas.getHeight());
            }
            canvas.drawARGB((int) (this.mFlashFrac * 255.0f), 221, 238, 170);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getToolType(0) == 3) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 4) {
            poke(motionEvent);
            return true;
        }
        if (action == 0) {

            action = (int) getSize(motionEvent.getEventTime());

            if (action != 0) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("consuming errant click: (");
                stringBuilder.append(motionEvent.getX());
                stringBuilder.append(",");
                stringBuilder.append(motionEvent.getY());
                stringBuilder.append(")");
                Slog.v("DeadZone", stringBuilder.toString());
                if (this.mShouldFlash) {
                    this.mNavigationBarView.post(this.mDebugFlash);
                    this.mNavigationBarView.postInvalidate();
                }
                return true;
            }
        }
        return false;
    }

    public void setFlashOnTouchCapture(boolean z) {
        this.mShouldFlash = z;
        this.mFlashFrac = 0.0f;
        this.mNavigationBarView.postInvalidate();
    }
}
