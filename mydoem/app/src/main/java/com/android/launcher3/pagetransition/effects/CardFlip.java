package com.android.launcher3.pagetransition.effects;

import android.view.View;
import com.android.launcher3.common.base.view.CellLayout;
import com.android.launcher3.common.drag.DragView;
import com.android.launcher3.util.WallpaperUtils;


public class CardFlip extends PageTransitionEffects {
    public void applyTransform(View view, float f, int i) {
        if (f <= DragView.EXTRA_VIEW_SCALE_FACTOR && f >= -1.0f) {
            CellLayout cellLayout = (CellLayout) view;
            float min = Math.min(DragView.EXTRA_VIEW_SCALE_FACTOR, DragView.EXTRA_VIEW_SCALE_FACTOR - Math.abs(f));
            cellLayout.invalidate();
            float width = f * ((float) cellLayout.getWidth());
            int measuredWidth = cellLayout.getMeasuredWidth();
            if (f <= 0.0f) {
                cellLayout.setTranslationX(width);
                cellLayout.setScaleX(Math.max(0.5f, min));
                cellLayout.setScaleY(Math.max(0.5f, min));
                cellLayout.setAlpha(min);
                return;
            }
            cellLayout.setTranslationX(width - (((DragView.EXTRA_VIEW_SCALE_FACTOR - min) * ((float) measuredWidth)) * WallpaperUtils.WALLPAPER_SCREENS_SPAN));
            cellLayout.setPivotX((float) measuredWidth);
            cellLayout.setRotationY((-(DragView.EXTRA_VIEW_SCALE_FACTOR - min)) * 50.0f);
        }
    }
}
