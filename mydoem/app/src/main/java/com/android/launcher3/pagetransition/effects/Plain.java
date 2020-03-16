package com.android.launcher3.pagetransition.effects;

import android.view.View;
import com.android.launcher3.common.base.view.CellLayout;
import com.android.launcher3.common.drag.DragView;
import com.android.launcher3.pagetransition.PageTransitionManager;

public class Plain extends PageTransitionEffects {
    public void applyTransform(View view, float f, int i) {
        CellLayout cellLayout = (CellLayout) view;
        if (f <= DragView.EXTRA_VIEW_SCALE_FACTOR && f >= -1.0f) {
            float backgroundAlphaThreshold = backgroundAlphaThreshold(Math.abs(f));
            cellLayout.invalidate();
            if (cellLayout.getCellLayoutChildren().getChildCount() >= 0) {
                cellLayout.setBackgroundAlpha(mix(backgroundAlphaThreshold, DragView.EXTRA_VIEW_SCALE_FACTOR, PageTransitionManager.getPageBackgroundAlpha()));
            }
        }
    }
}
