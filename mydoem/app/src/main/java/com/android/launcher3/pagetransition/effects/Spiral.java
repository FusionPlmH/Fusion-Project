package com.android.launcher3.pagetransition.effects;

import com.android.launcher3.common.drag.DragView;
import com.android.launcher3.pagetransition.PageTransitionManager;
import com.android.launcher3.util.WallpaperUtils;

public class Spiral extends AbstractTransitionEffects {
    protected float adjustScrollProgress(float f) {
        return Math.abs(f);
    }

    protected float getPivotValueX(float f, int i) {
        return ((float) i) / WallpaperUtils.WALLPAPER_SCREENS_SPAN;
    }

    protected float getPivotValueY(float f, int i) {
        return ((float) i) / WallpaperUtils.WALLPAPER_SCREENS_SPAN;
    }

    protected float getRotationValue(float f, float f2) {
        return f2;
    }

    protected float getScrollDrawInward() {
        return this.mNormalScrollDrawInward;
    }

    protected float getTranslationValueDeltaX(float f, float f2) {
        return (DragView.EXTRA_VIEW_SCALE_FACTOR - f2) * this.mShrinkTranslateX;
    }

    protected float getTranslationValueX(float f, float f2) {
        return this.mEndPage ? PageTransitionManager.getScrollX() - PageTransitionManager.getMaxScrollX() : f2;
    }

    protected float getTranslationValueY(float f, float f2) {
        return (DragView.EXTRA_VIEW_SCALE_FACTOR - f2) * this.mShrinkTranslateY;
    }

    protected float getZoomValueX(float f, float f2) {
        return f2;
    }

    protected float getZoomValueY(float f, float f2) {
        return f2;
    }
}
