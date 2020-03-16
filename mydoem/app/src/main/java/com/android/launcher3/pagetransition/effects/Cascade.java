package com.android.launcher3.pagetransition.effects;

import com.android.launcher3.common.drag.DragView;
import com.android.launcher3.pagetransition.PageTransitionManager;
import com.android.launcher3.util.WallpaperUtils;

public class Cascade extends AbstractTransitionEffects {
    protected float adjustScrollProgress(float f) {
        return Math.abs(f);
    }

    protected float getPivotValueX(float f, int i) {
        return !PageTransitionManager.mLeftMove ? 0.0f : (float) i;
    }

    protected float getPivotValueY(float f, int i) {
        return ((float) i) / WallpaperUtils.WALLPAPER_SCREENS_SPAN;
    }

    protected float getRotationValue(float f, float f2) {
        return PageTransitionManager.mLeftMove ? Math.abs(f2) : -Math.abs(f2);
    }

    protected float getScrollDrawInward() {
        return 0.7f;
    }

    protected float getTranslationValueDeltaX(float f, float f2) {
        return ((DragView.EXTRA_VIEW_SCALE_FACTOR - f2) - (3.0f * (0.1f * Math.abs(f)))) * this.mShrinkTranslateX;
    }

    protected float getTranslationValueX(float f, float f2) {
        return (!PageTransitionManager.mLeftMove || f >= 0.0f) ? (PageTransitionManager.mLeftMove || f < 0.0f) ? 0.0f : f2 : f2;
    }

    protected float getTranslationValueY(float f, float f2) {
        return ((DragView.EXTRA_VIEW_SCALE_FACTOR - f2) - (3.0f * (0.1f * Math.abs(f)))) * this.mShrinkTranslateY;
    }

    protected float getZoomValueX(float f, float f2) {
        return f2 - (4.0f * (0.1f * Math.abs(f)));
    }

    protected float getZoomValueY(float f, float f2) {
        return f2 - (0.5f * (0.1f * Math.abs(f)));
    }
}
