package com.android.launcher3.framework.view.features.pagetransition;

import android.view.View;

public class Fan extends PageTransitionEffects {
    private static final float FAST_ROTATION = 15.0f;
    private static final float SLOW_ROTATION = 20.0f;
    private static final float WORKSPACE_ROTATION = 20.0f;

    public void applyTransform(View view, float f, int i, float f2, float f3, float f4, int i2, boolean z) {
        if (f <= 1.0f && f >= -1.0f) {
            view.invalidate();
            float mix = PageTransitionEffects.mix(20.0f, FAST_ROTATION, 0.0f) * f;
            float mix2 = (PageTransitionEffects.mix(0.025f, this.mFastScrollDrawInward, 0.0f) * f) * ((float) view.getWidth());
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            if (f > 0.0f) {
                measuredWidth = 0;
            }
            view.setPivotX((float) measuredWidth);
            view.setPivotY((float) measuredHeight);
            view.setTranslationX(mix2);
            view.setRotation(-mix);
        }
    }
}
