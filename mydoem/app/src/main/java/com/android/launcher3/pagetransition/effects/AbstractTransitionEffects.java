package com.android.launcher3.pagetransition.effects;

import android.view.View;
import com.android.launcher3.common.base.view.CellLayout;
import com.android.launcher3.common.drag.DragView;
import com.android.launcher3.pagetransition.PageTransitionManager;
import com.android.launcher3.util.WallpaperUtils;

public abstract class AbstractTransitionEffects extends PageTransitionEffects {
    protected abstract float adjustScrollProgress(float f);

    public void applyTransform(View view, float f, int i) {
        if (f <= DragView.EXTRA_VIEW_SCALE_FACTOR && f >= -1.0f) {
            float mix = DragView.EXTRA_VIEW_SCALE_FACTOR * mix(DragView.EXTRA_VIEW_SCALE_FACTOR, 0.7f, adjustScrollProgress(f));
            int i2 = i;
            float backgroundAlphaThreshold = backgroundAlphaThreshold(Math.abs(f));
            CellLayout cellLayout = (CellLayout) view;
            cellLayout.invalidate();
            float f2 = 15.0f * f;
            float scrollDrawInward = (f * getScrollDrawInward()) * ((float) cellLayout.getWidth());
            int measuredWidth = cellLayout.getMeasuredWidth();
            int measuredHeight = cellLayout.getMeasuredHeight();
            this.mEndPage = false;
            if (isLoopingEnabled()) {
                cellLayout.setPivotX(getPivotValueX(f, measuredWidth));
                cellLayout.setPivotY(getPivotValueY(f, measuredHeight));
            } else {
                float f3 = transition_rotation_max;
                if (i2 == 0 && f < 0.0f) {
                    cellLayout.setPivotX(TRANSITION_PIVOT * ((float) measuredWidth));
                    f2 = ((-f3) * f) / maxOverScroll();
                    scrollDrawInward = PageTransitionManager.getScrollX();
                    mix = DragView.EXTRA_VIEW_SCALE_FACTOR;
                } else if (i2 != PageTransitionManager.getChildCount() - 1 || f <= 0.0f) {
                    cellLayout.setPivotX(getPivotValueX(f, measuredWidth));
                    cellLayout.setPivotY(getPivotValueY(f, measuredHeight));
                } else {
                    this.mEndPage = true;
                    cellLayout.setPivotX((float) measuredWidth);
                    cellLayout.setPivotY(((float) measuredHeight) / WallpaperUtils.WALLPAPER_SCREENS_SPAN);
                    f2 = ((-(f3 / WallpaperUtils.WALLPAPER_SCREENS_SPAN)) * f) / maxOverScroll();
                    scrollDrawInward = PageTransitionManager.getScrollX() - PageTransitionManager.getMaxScrollX();
                    mix = DragView.EXTRA_VIEW_SCALE_FACTOR;
                }
            }
            cellLayout.setScaleY(getZoomValueY(f, mix));
            cellLayout.setScaleX(getZoomValueX(f, mix));
            if (mix < DragView.EXTRA_VIEW_SCALE_FACTOR) {
                if (this.mShrinkTranslateX != 0.0f) {
                    scrollDrawInward += getTranslationValueDeltaX(f, mix);
                }
                if (this.mShrinkTranslateY != 0.0f) {
                    cellLayout.setTranslationY(getTranslationValueY(f, mix));
                }
            }
            cellLayout.setTranslationX(getTranslationValueX(f, scrollDrawInward));
            cellLayout.setRotationY(getRotationValue(f, f2));
            cellLayout.setBackgroundAlpha(mix(backgroundAlphaThreshold, DragView.EXTRA_VIEW_SCALE_FACTOR, 0.0f));
        }
    }

    protected abstract float getPivotValueX(float f, int i);

    protected abstract float getPivotValueY(float f, int i);

    protected abstract float getRotationValue(float f, float f2);

    protected abstract float getScrollDrawInward();

    protected abstract float getTranslationValueDeltaX(float f, float f2);

    protected abstract float getTranslationValueX(float f, float f2);

    protected abstract float getTranslationValueY(float f, float f2);

    protected abstract float getZoomValueX(float f, float f2);

    protected abstract float getZoomValueY(float f, float f2);
}
