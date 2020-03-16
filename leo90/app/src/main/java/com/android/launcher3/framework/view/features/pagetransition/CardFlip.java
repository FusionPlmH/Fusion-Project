package com.android.launcher3.framework.view.features.pagetransition;

import android.view.View;

public class CardFlip extends PageTransitionEffects {
    public void applyTransform(View view, float f, int i, float f2, float f3, float f4, int i2, boolean z) {
        if (f <= 1.0f && f >= -1.0f) {
            float min = Math.min(1.0f, 1.0f - Math.abs(f));
            view.invalidate();
            f2 = ((float) view.getWidth()) * f;
            int measuredWidth = view.getMeasuredWidth();
            if (f <= 0.0f) {
                view.setTranslationX(f2);
                view.setScaleX(Math.max(0.5f, min));
                view.setScaleY(Math.max(0.5f, min));
                view.setAlpha(min);
            } else {
                float f5 = 1.0f - min;
                f = (float) measuredWidth;
                view.setTranslationX(f2 - ((f5 * f) * 2.0f));
                view.setPivotX(f);
                view.setRotationY((-f5) * 50.0f);
            }
        }
    }
}
