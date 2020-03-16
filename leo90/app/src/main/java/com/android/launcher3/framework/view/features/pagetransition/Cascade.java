package com.android.launcher3.framework.view.features.pagetransition;

public class Cascade extends AbstractTransitionEffects {
    protected float adjustScrollProgress(float f) {
        return Math.abs(f);
    }

    protected float getPivotValueX(float f, int i, boolean z) {
        return !z ? 0.0f : (float) i;
    }

    protected float getPivotValueY(float f, int i) {
        return ((float) i) / 2.0f;
    }

    protected float getRotationValue(float f, float f2, boolean z) {
        return z ? Math.abs(f2) : -Math.abs(f2);
    }

    protected float getScrollDrawInward() {
        return 0.7f;
    }

    protected float getTranslationValueDeltaX(float f, float f2) {
        return ((1.0f - f2) - ((Math.abs(f) * 0.1f) * 3.0f)) * this.mShrinkTranslateX;
    }

    protected float getTranslationValueX(float f, float f2, float f3, float f4, boolean z) {
        return ((!z || f >= 0.0f) && (z || f < 0.0f)) ? 0.0f : f2;
    }

    protected float getTranslationValueY(float f, float f2) {
        return ((1.0f - f2) - ((Math.abs(f) * 0.1f) * 3.0f)) * this.mShrinkTranslateY;
    }

    protected float getZoomValueX(float f, float f2) {
        return f2 - ((Math.abs(f) * 0.1f) * 4.0f);
    }

    protected float getZoomValueY(float f, float f2) {
        return f2 - ((Math.abs(f) * 0.1f) * 0.5f);
    }
}
