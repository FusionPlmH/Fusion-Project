package com.android.launcher3.framework.view.features.pagetransition;

import android.view.View;

public class Accordian extends PageTransitionEffects {
    public void applyTransform(View view, float f, int i, float f2, float f3, float f4, int i2, boolean z) {
        setCellLayoutTranslation(view, f);
    }

    protected void setTranslationWhenLessThanZero(View view, float f, float f2, int i) {
        view.setTranslationX(f2 + (((1.0f - f) * ((float) i)) / 2.0f));
        view.setScaleX(f);
    }

    protected void setTranslationWhenMoreThanZero(View view, float f, float f2, int i) {
        view.setTranslationX(f2 - (((1.0f - f) * ((float) i)) / 2.0f));
        view.setScaleX(f);
    }
}
