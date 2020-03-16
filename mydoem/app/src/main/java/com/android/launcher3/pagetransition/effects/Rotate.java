package com.android.launcher3.pagetransition.effects;

import android.view.View;
import com.android.launcher3.common.base.view.CellLayout;
import com.android.launcher3.common.drag.DragView;

public class Rotate extends PageTransitionEffects {
    public void applyTransform(View view, float f, int i) {
        if (f <= DragView.EXTRA_VIEW_SCALE_FACTOR && f >= -1.0f) {
            float min = Math.min(DragView.EXTRA_VIEW_SCALE_FACTOR, DragView.EXTRA_VIEW_SCALE_FACTOR - Math.abs(f));
            CellLayout cellLayout = (CellLayout) view;
            cellLayout.invalidate();
            float width = f * ((float) cellLayout.getWidth());
            int measuredWidth = cellLayout.getMeasuredWidth();
            if (f <= 0.0f) {
                cellLayout.setTranslationX(width);
                cellLayout.setTranslationX(((DragView.EXTRA_VIEW_SCALE_FACTOR - min) * ((float) measuredWidth)) + width);
                cellLayout.setPivotX(0.0f);
                cellLayout.setRotationY((DragView.EXTRA_VIEW_SCALE_FACTOR - min) * 90.0f);
                return;
            }
            cellLayout.setTranslationX(width - ((DragView.EXTRA_VIEW_SCALE_FACTOR - min) * ((float) measuredWidth)));
            cellLayout.setPivotX((float) measuredWidth);
            cellLayout.setRotationY((-(DragView.EXTRA_VIEW_SCALE_FACTOR - min)) * 90.0f);
        }
    }
}
