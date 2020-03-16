package com.android.launcher3.pagetransition.effects;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.common.drag.DragView;
import com.android.launcher3.util.BlurUtils;
import com.android.launcher3.util.WallpaperUtils;

public abstract class PageTransitionEffects {
    private static final float OVERSCROLL_DAMP_FACTOR = 0.14f;
    protected static final float PAGE_ROTATION = 15.0f;
    protected static final boolean PERFORM_OVERSCROLL_ROTATION = true;
    private static final String TAG = "PageTransitionEffects";
    protected static float TRANSITION_PIVOT = 0.5f;
    static final float sPageZoomScaleLimit = 0.7f;
    public static float transition_rotation_max = 0.0f;
    private int mDragBarSize;
    protected float mDragScrollDrawInward = sPageZoomScaleLimit;
    private int mEditModePanel_left_Adjust = 0;
    private int mEditModePanel_top_Adjust = 0;
    protected float mEditModeShrinkFactor;
    protected boolean mEndPage = false;
    protected float mFastScrollDrawInward = 0.45f;
    protected float mNormalScrollDrawInward = 0.2f;
    protected float mShrinkTranslateX;
    protected float mShrinkTranslateY;

    public PageTransitionEffects() {
        Resources resources = LauncherAppState.getInstance().getContext().getResources();
        this.mEditModeShrinkFactor = ((float) resources.getInteger(2131361793)) / 100.0f;
        this.mNormalScrollDrawInward = resources.getFraction(2131558412, 1, 1);
        this.mDragScrollDrawInward = resources.getFraction(2131558411, 1, 1);
        transition_rotation_max = (float) resources.getInteger(2131361858);
        this.mDragBarSize = resources.getDimensionPixelSize(2131230923);
        this.mEditModePanel_left_Adjust = resources.getDimensionPixelSize(2131231054);
        this.mEditModePanel_top_Adjust = resources.getDimensionPixelSize(2131231055);
    }

    public PageTransitionEffects(Context context) {
    }

    static float mix(float f, float f2, float f3) {
        return ((DragView.EXTRA_VIEW_SCALE_FACTOR - f3) * f) + (f2 * f3);
    }

    private float overScrollInfluenceCurve(float f) {
        f -= DragView.EXTRA_VIEW_SCALE_FACTOR;
        return ((f * f) * f) + DragView.EXTRA_VIEW_SCALE_FACTOR;
    }

    public abstract void applyTransform(View view, float f, int i);

    protected float backgroundAlphaThreshold(float f) {
        return f < 0.0f ? 0.0f : f > BlurUtils.BLUR_MAX_AMOUNT ? DragView.EXTRA_VIEW_SCALE_FACTOR : (f - 0.0f) / (BlurUtils.BLUR_MAX_AMOUNT - 0.0f);
    }

    protected boolean isLoopingEnabled() {
        return false;
    }

    protected float maxOverScroll() {
        return OVERSCROLL_DAMP_FACTOR * ((DragView.EXTRA_VIEW_SCALE_FACTOR / Math.abs(DragView.EXTRA_VIEW_SCALE_FACTOR)) * overScrollInfluenceCurve(Math.abs(DragView.EXTRA_VIEW_SCALE_FACTOR)));
    }

    public void onLayout(ViewGroup viewGroup, boolean z, int i, int i2, int i3, int i4) {
        this.mShrinkTranslateX = 0.0f;
        this.mShrinkTranslateY = 0.0f;
        View childAt = viewGroup.getChildAt(0);
        if (childAt != null) {
            float height = ((float) childAt.getHeight()) * (DragView.EXTRA_VIEW_SCALE_FACTOR - this.mEditModeShrinkFactor);
            float f = height * 0.5f;
            if (height > ((float) this.mDragBarSize)) {
                f -= (height - ((float) this.mDragBarSize)) * 0.5f;
            }
            this.mShrinkTranslateY = f / (DragView.EXTRA_VIEW_SCALE_FACTOR - this.mEditModeShrinkFactor);
        }
        this.mShrinkTranslateX += (float) this.mEditModePanel_left_Adjust;
        this.mShrinkTranslateY += (float) this.mEditModePanel_top_Adjust;
    }

    public void reset(View view) {
        view.setPivotX(((float) view.getWidth()) / WallpaperUtils.WALLPAPER_SCREENS_SPAN);
        view.setPivotY(((float) view.getHeight()) / WallpaperUtils.WALLPAPER_SCREENS_SPAN);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        view.setScaleX(DragView.EXTRA_VIEW_SCALE_FACTOR);
        view.setScaleY(DragView.EXTRA_VIEW_SCALE_FACTOR);
        view.setRotationX(0.0f);
        view.setRotationY(0.0f);
        view.setAlpha(DragView.EXTRA_VIEW_SCALE_FACTOR);
        view.setRotation(0.0f);
    }
}
