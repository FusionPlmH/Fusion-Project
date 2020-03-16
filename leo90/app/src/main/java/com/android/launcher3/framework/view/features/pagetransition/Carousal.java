package com.android.launcher3.framework.view.features.pagetransition;

public class Carousal extends AbstractTransitionEffects {
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
        return 0.0f;
    }

    protected float getScrollDrawInward() {
        return this.mNormalScrollDrawInward;
    }

    protected float getTranslationValueDeltaX(float f, float f2) {
        return ((1.0f - f2) - ((Math.abs(f) * 0.1f) * 2.0f)) * this.mShrinkTranslateX;
    }

    protected float getTranslationValueX(float f, float f2, float f3, float f4, boolean z) {
        return this.mEndPage ? f3 - f4 : f2;
    }

    protected float getTranslationValueY(float f, float f2) {
        return ((1.0f - f2) - ((Math.abs(f) * 0.1f) * 2.0f)) * this.mShrinkTranslateY;
    }

    protected float getZoomValueX(float f, float f2) {
        return f2 - ((Math.abs(f) * 0.1f) * 2.0f);
    }

    protected float getZoomValueY(float f, float f2) {
        return f2 - ((Math.abs(f) * 0.1f) * 2.0f);
    }
}
