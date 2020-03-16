package com.android.launcher3.framework.view.features.pagetransition;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.framework.support.context.appstate.LauncherAppState;

public abstract class PageTransitionEffects {
    private static final float OVERSCROLL_DAMP_FACTOR = 0.14f;
    protected static final float PAGE_ROTATION = 15.0f;
    protected static final boolean PERFORM_OVERSCROLL_ROTATION = true;
    private static final String TAG = "PageTransitionEffects";
    protected static float TRANSITION_PIVOT = 0.5f;
    static final float sPageZoomScaleLimit = 0.7f;
    public static float transition_rotation_max;
    private int mDragBarSize;
    protected float mDragScrollDrawInward = sPageZoomScaleLimit;
    private int mEditModePanel_left_Adjust = 0;
    private int mEditModePanel_top_Adjust = 0;
    protected boolean mEndPage = false;
    protected float mFastScrollDrawInward = 0.45f;
    protected float mNormalScrollDrawInward = 0.2f;
    protected float mShrinkTranslateX;
    protected float mShrinkTranslateY;

    public PageTransitionEffects() {
        Resources resources = LauncherAppState.getInstance().getContext().getResources();
        this.mNormalScrollDrawInward = resources.getFraction(2131755150, 1, 1);
        this.mDragScrollDrawInward = resources.getFraction(2131755149, 1, 1);
        transition_rotation_max = (float) resources.getInteger(2131820684);
        this.mDragBarSize = resources.getDimensionPixelSize(2131558749);
        this.mEditModePanel_left_Adjust = resources.getDimensionPixelSize(2131559221);
        this.mEditModePanel_top_Adjust = resources.getDimensionPixelSize(2131559222);
    }

    public PageTransitionEffects(Context context) {
    }

    static float mix(float f, float f2, float f3) {
        return (f * (1.0f - f3)) + (f2 * f3);
    }

    private float overScrollInfluenceCurve(float f) {
        f -= 1.0f;
        return ((f * f) * f) + 1.0f;
    }

    public abstract void applyTransform(View view, float f, int i, float f2, float f3, float f4, int i2, boolean z);

    protected float backgroundAlphaThreshold(float f) {
        return f < 0.0f ? 0.0f : f > 0.3f ? 1.0f : (f - 0.0f) / 0.3f;
    }

    protected boolean isLoopingEnabled() {
        return false;
    }

    protected float maxOverScroll() {
        return ((1.0f / Math.abs(1.0f)) * overScrollInfluenceCurve(Math.abs(1.0f))) * OVERSCROLL_DAMP_FACTOR;
    }

    public void onLayout(ViewGroup viewGroup, float f) {
        this.mShrinkTranslateX = 0.0f;
        this.mShrinkTranslateY = 0.0f;
        View childAt = viewGroup.getChildAt(0);
        if (childAt != null) {
            float f2 = 1.0f - f;
            float height = ((float) childAt.getHeight()) * f2;
            float f3 = height * 0.5f;
            if (height > ((float) this.mDragBarSize)) {
                f3 -= (height - ((float) this.mDragBarSize)) * 0.5f;
            }
            this.mShrinkTranslateY = f3 / f2;
        }
        this.mShrinkTranslateX += (float) this.mEditModePanel_left_Adjust;
        this.mShrinkTranslateY += (float) this.mEditModePanel_top_Adjust;
    }

    public void reset(View view) {
        view.setPivotX(((float) view.getWidth()) / 2.0f);
        view.setPivotY(((float) view.getHeight()) / 2.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setRotationX(0.0f);
        view.setRotationY(0.0f);
        view.setAlpha(1.0f);
        view.setRotation(0.0f);
    }

    protected void setCellLayoutTranslation(View view, float f) {
        if (f <= 1.0f && f >= -1.0f) {
            float min = Math.min(1.0f, 1.0f - Math.abs(f));
            view.invalidate();
            float width = ((float) view.getWidth()) * f;
            int measuredWidth = view.getMeasuredWidth();
            if (f <= 0.0f) {
                setTranslationWhenLessThanZero(view, min, width, measuredWidth);
            } else {
                setTranslationWhenMoreThanZero(view, min, width, measuredWidth);
            }
        }
    }

    protected void setTranslationWhenLessThanZero(View view, float f, float f2, int i) {
    }

    protected void setTranslationWhenMoreThanZero(View view, float f, float f2, int i) {
    }
}
