package com.android.launcher3.framework.view.features.pagetransition;

public class Conveyor extends AbstractTransitionEffects {
    protected float adjustScrollProgress(float f) {
        return Math.abs(f);
    }

    protected float getPivotValueX(float f, int i, boolean z) {
        return f <= 0.0f ? 0.0f : (float) i;
    }

    protected float getPivotValueY(float f, int i) {
        return ((float) i) / 2.0f;
    }

    protected float getRotationValue(float f, float f2, boolean z) {
        float f3 = 0.0f;
        if ((z && f >= 0.0f) || (!z && f < 0.0f)) {
            f3 = -f2;
        }
        return this.mEndPage ? ((-(transition_rotation_max / 2.0f)) * f) / maxOverScroll() : f3;
    }

    protected float getScrollDrawInward() {
        return 0.025f;
    }

    protected float getTranslationValueDeltaX(float f, float f2) {
        return (1.0f - f2) * this.mShrinkTranslateX;
    }

    protected float getTranslationValueX(float f, float f2, float f3, float f4, boolean z) {
        return this.mEndPage ? f3 - f4 : f2;
    }

    protected float getTranslationValueY(float f, float f2) {
        return 0.0f;
    }

    protected float getZoomValueX(float f, float f2) {
        return 1.0f;
    }

    protected float getZoomValueY(float f, float f2) {
        return 1.0f;
    }
}
