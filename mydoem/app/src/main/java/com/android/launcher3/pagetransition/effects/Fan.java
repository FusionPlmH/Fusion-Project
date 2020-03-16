package com.android.launcher3.pagetransition.effects;

import android.view.View;
import com.android.launcher3.common.drag.DragView;

public class Fan extends PageTransitionEffects {
    private static final float FAST_ROTATION = 15.0f;
    private static final float SLOW_ROTATION = 20.0f;
    private static final float WORKSPACE_ROTATION = 20.0f;

    public void applyTransform(View view, float f, int i) {
        if (f <= DragView.EXTRA_VIEW_SCALE_FACTOR && f >= -1.0f) {
            float min = Math.min(DragView.EXTRA_VIEW_SCALE_FACTOR, DragView.EXTRA_VIEW_SCALE_FACTOR - Math.abs(f));
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
            view.setAlpha(min);
        }
    }
}
