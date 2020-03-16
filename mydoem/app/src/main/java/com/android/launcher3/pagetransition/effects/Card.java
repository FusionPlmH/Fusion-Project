package com.android.launcher3.pagetransition.effects;

import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.common.base.view.CellLayout;
import com.android.launcher3.common.drag.DragView;
import com.android.launcher3.pagetransition.PageTransitionManager;
import com.android.launcher3.util.ViInterpolator;
import com.android.launcher3.util.WallpaperUtils;

public class Card extends PageTransitionEffects {
    private final boolean PERFORM_OVERSCROLL_ROTATION = true;
    private Interpolator mSineIO70Interpolator = ViInterpolator.getInterploator(33);
    private Interpolator mSineIO80Interpolator = ViInterpolator.getInterploator(34);

    public void applyTransform(View view, float f, int i) {
        Object obj = f < 0.0f ? 1 : null;
        CellLayout cellLayout = (CellLayout) view;
        int i2 = i;
        float abs = Math.abs(f);
        if (f <= DragView.EXTRA_VIEW_SCALE_FACTOR && f >= -1.0f) {
            cellLayout.invalidate();
            float f2 = 0.0f;
            float f3 = 0.0f;
            float backgroundAlphaThreshold = backgroundAlphaThreshold(abs);
            float f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
            if (obj != null) {
                f3 = f * ((float) cellLayout.getWidth());
                f4 = abs < 0.67f ? this.mSineIO80Interpolator.getInterpolation((0.67f - abs) / (DragView.EXTRA_VIEW_SCALE_FACTOR - 0.33f)) : 0.0f;
            }
            cellLayout.setBackgroundAlpha(mix(backgroundAlphaThreshold, DragView.EXTRA_VIEW_SCALE_FACTOR, PageTransitionManager.getPageBackgroundAlpha()));
            float interpolation = DragView.EXTRA_VIEW_SCALE_FACTOR - (0.1f * this.mSineIO80Interpolator.getInterpolation(abs));
            if (!isLoopingEnabled()) {
                int measuredWidth = cellLayout.getMeasuredWidth();
                int measuredHeight = cellLayout.getMeasuredHeight();
                float f5 = transition_rotation_max;
                if (i2 == 0 && f < 0.0f) {
                    cellLayout.setPivotX(TRANSITION_PIVOT * ((float) measuredWidth));
                    f2 = ((-f5) * f) / maxOverScroll();
                    interpolation = DragView.EXTRA_VIEW_SCALE_FACTOR;
                    f3 = PageTransitionManager.getScrollX();
                    f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                } else if (i2 != PageTransitionManager.getChildCount() - 1 || f <= 0.0f) {
                    cellLayout.setPivotY(((float) measuredHeight) / WallpaperUtils.WALLPAPER_SCREENS_SPAN);
                    cellLayout.setPivotX(((float) measuredWidth) / WallpaperUtils.WALLPAPER_SCREENS_SPAN);
                } else {
                    f3 = PageTransitionManager.getScrollX() - PageTransitionManager.getMaxScrollX();
                    interpolation = DragView.EXTRA_VIEW_SCALE_FACTOR - ((0.1f * this.mSineIO70Interpolator.getInterpolation(abs)) / maxOverScroll());
                    cellLayout.setScaleX(interpolation);
                    cellLayout.setScaleY(interpolation);
                    f4 = DragView.EXTRA_VIEW_SCALE_FACTOR;
                }
            }
            cellLayout.setAlpha(f4);
            if (obj != null) {
                cellLayout.setScaleX(interpolation);
                cellLayout.setScaleY(interpolation);
            }
            cellLayout.setTranslationX(f3);
            cellLayout.setRotationY(f2);
        }
    }

    public void reset(View view) {
        super.reset(view);
        ((CellLayout) view).setBackgroundAlpha(0.0f);
    }
}
