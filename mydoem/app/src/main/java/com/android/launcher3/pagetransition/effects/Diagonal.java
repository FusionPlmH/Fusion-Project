package com.android.launcher3.pagetransition.effects;

import android.view.View;
import com.android.launcher3.common.base.view.CellLayout;
import com.android.launcher3.common.drag.DragView;

public class Diagonal extends PageTransitionEffects {
    public void applyTransform(View view, float f, int i) {
        if (f <= DragView.EXTRA_VIEW_SCALE_FACTOR && f >= -1.0f) {
            CellLayout cellLayout = (CellLayout) view;
            float min = Math.min(DragView.EXTRA_VIEW_SCALE_FACTOR, DragView.EXTRA_VIEW_SCALE_FACTOR - Math.abs(f));
            cellLayout.invalidate();
            float width = f * ((float) cellLayout.getWidth());
            int measuredWidth = cellLayout.getMeasuredWidth();
            cellLayout.setTranslationY(width);
            if (f <= 0.0f) {
                float f2 = (float) measuredWidth;
                cellLayout.setAlpha(min);
                return;
            }
            cellLayout.setAlpha(min);
        }
    }
}