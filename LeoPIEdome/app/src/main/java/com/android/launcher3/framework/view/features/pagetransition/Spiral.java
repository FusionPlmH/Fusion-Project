package com.android.launcher3.framework.view.features.pagetransition;

public class Spiral extends AbstractTransitionEffects {
    protected float adjustScrollProgress(float f) {
        return Math.abs(f);
    }

    protected float getPivotValueX(float f, int i, boolean z) {
        return ((float) i) / 2.0f;
    }

    protected float getPivotValueY(float f, int i) {
        return ((float) i) / 2.0f;
    }

    protected float getRotationValue(float f, float f2, boolean z) {
        return f2;
    }

    protected float getScrollDrawInward() {
        return this.mNormalScrollDrawInward;
    }

    protected float getTranslationValueDeltaX(float f, float f2) {
        return (1.0f - f2) * this.mShrinkTranslateX;
    }

    protected float getTranslationValueX(float f, float f2, float f3, float f4, boolean z) {
        return this.mEndPage ? f3 - f4 : f2;
    }

    protected float getTranslationValueY(float f, float f2) {
        return (1.0f - f2) * this.mShrinkTranslateY;
    }

    protected float getZoomValueX(float f, float f2) {
        return f2;
    }

    protected float getZoomValueY(float f, float f2) {
        return f2;
    }
}
