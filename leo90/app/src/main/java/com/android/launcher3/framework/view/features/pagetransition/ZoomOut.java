package com.android.launcher3.framework.view.features.pagetransition;

import android.view.View;

public class ZoomOut extends PageTransitionEffects {
    public void applyTransform(View view, float f, int i, float f2, float f3, float f4, int i2, boolean z) {
        if (f <= 1.0f && f >= -1.0f) {
            float min = Math.min(1.0f, 1.0f - Math.abs(f));
            view.invalidate();
            float width = ((float) view.getWidth()) * f;
            int measuredWidth = view.getMeasuredWidth();
            view.setScaleX(min);
            view.setScaleY(min);
            view.setTranslationX(width);
            if (f <= 0.0f) {
                view.setPivotX((float) measuredWidth);
            } else {
                view.setPivotX(0.0f);
            }
        }
    }
}
