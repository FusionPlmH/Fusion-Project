package com.android.launcher3.framework.view.features.pagetransition;

import android.view.View;

public class Rotate extends PageTransitionEffects {
    public void applyTransform(View view, float f, int i, float f2, float f3, float f4, int i2, boolean z) {
        setCellLayoutTranslation(view, f);
    }

    protected void setTranslationWhenLessThanZero(View view, float f, float f2, int i) {
        view.setTranslationX(f2);
        float f3 = 1.0f - f;
        view.setTranslationX(f2 + (((float) i) * f3));
        view.setPivotX(0.0f);
        view.setRotationY(f3 * 90.0f);
    }

    protected void setTranslationWhenMoreThanZero(View view, float f, float f2, int i) {
        float f3 = 1.0f - f;
        f = (float) i;
        view.setTranslationX(f2 - (f3 * f));
        view.setPivotX(f);
        view.setRotationY((-f3) * 90.0f);
    }
}
