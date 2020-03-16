package com.android.launcher3.pagetransition.effects;

import com.android.launcher3.common.drag.DragView;
import com.android.launcher3.pagetransition.PageTransitionManager;
import com.android.launcher3.util.WallpaperUtils;

public class InnerCube extends AbstractTransitionEffects {
    protected float adjustScrollProgress(float f) {
        return Math.abs(f) <= 0.5f ? Math.abs(f) : DragView.EXTRA_VIEW_SCALE_FACTOR - Math.abs(f);
    }

    protected float getPivotValueX(float f, int i) {
        return f <= 0.0f ? 0.0f : (float) i;
    }

    protected float getPivotValueY(float f, int i) {
        return ((float) i) / WallpaperUtils.WALLPAPER_SCREENS_SPAN;
    }

    protected float getRotationValue(float f, float f2) {
        return f2;
    }

    protected float getScrollDrawInward() {
        return 0.01f;
    }

    protected float getTranslationValueDeltaX(float f, float f2) {
        if (Math.abs(f) > 0.5f) {
            f2 -= 0.01f * Math.abs(f);
        }
        return (DragView.EXTRA_VIEW_SCALE_FACTOR - f2) * this.mShrinkTranslateX;
    }

    protected float getTranslationValueX(float f, float f2) {
        return this.mEndPage ? PageTransitionManager.getScrollX() - PageTransitionManager.getMaxScrollX() : f2;
    }

    protected float getTranslationValueY(float f, float f2) {
        return 0.0f;
    }

    protected float getZoomValueX(float f, float f2) {
        return Math.abs(f) > 0.5f ? f2 - (DragView.EXTRA_VIEW_SCALE_FACTOR * (0.01f * Math.abs(f))) : f2;
    }

    protected float getZoomValueY(float f, float f2) {
        return Math.abs(f) > 0.5f ? f2 - (DragView.EXTRA_VIEW_SCALE_FACTOR * (0.01f * Math.abs(f))) : f2;
    }
}
