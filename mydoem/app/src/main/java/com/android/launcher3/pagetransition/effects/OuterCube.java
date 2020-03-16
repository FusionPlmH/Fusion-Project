package com.android.launcher3.pagetransition.effects;

import com.android.launcher3.common.drag.DragView;
import com.android.launcher3.pagetransition.PageTransitionManager;
import com.android.launcher3.util.WallpaperUtils;

public class OuterCube extends AbstractTransitionEffects {
    protected float adjustScrollProgress(float f) {
        return Math.abs(f);
    }

    protected float getPivotValueX(float f, int i) {
        return f <= 0.0f ? 0.0f : (float) i;
    }

    protected float getPivotValueY(float f, int i) {
        return ((float) i) / WallpaperUtils.WALLPAPER_SCREENS_SPAN;
    }

    protected float getRotationValue(float f, float f2) {
        return this.mEndPage ? ((-(transition_rotation_max / WallpaperUtils.WALLPAPER_SCREENS_SPAN)) * f) / maxOverScroll() : -f2;
    }

    protected float getScrollDrawInward() {
        return 0.025f;
    }

    protected float getTranslationValueDeltaX(float f, float f2) {
        return 0.0f;
    }

    protected float getTranslationValueX(float f, float f2) {
        return this.mEndPage ? PageTransitionManager.getScrollX() - PageTransitionManager.getMaxScrollX() : f2;
    }

    protected float getTranslationValueY(float f, float f2) {
        return 0.0f;
    }

    protected float getZoomValueX(float f, float f2) {
        return DragView.EXTRA_VIEW_SCALE_FACTOR;
    }

    protected float getZoomValueY(float f, float f2) {
        return DragView.EXTRA_VIEW_SCALE_FACTOR;
    }
}
