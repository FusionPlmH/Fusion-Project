package com.android.launcher3.framework.view.base;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.widget.FrameLayout;


public class InsettableFrameLayout extends FrameLayout implements OnHierarchyChangeListener {
    protected Rect mInsets;

    public static class LayoutParams extends android.widget.FrameLayout.LayoutParams {
        boolean ignoreInsets = false;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);

        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public void setIgnoreInsets(boolean z) {
            this.ignoreInsets = z;
        }
    }

    public InsettableFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InsettableFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInsets = new Rect();
        setOnHierarchyChangeListener(this);
    }

    public static void dispatchInsets(ViewGroup viewGroup, Rect rect) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);

        }
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void dispatchInsets() {
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public Rect getInsets() {
        return this.mInsets;
    }

    public void onChildViewAdded(View view, View view2) {
        setFrameLayoutChildInsets(view2, this.mInsets, new Rect());
    }

    public void onChildViewRemoved(View view, View view2) {
    }

    public void onViewAdded(View view) {
        super.onViewAdded(view);
        setFrameLayoutChildInsets(view, this.mInsets, new Rect());
    }

    public void setFrameLayoutChildInsets(View view, Rect rect, Rect rect2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.ignoreInsets) {
            layoutParams.topMargin += rect.top - rect2.top;
            layoutParams.leftMargin += rect.left - rect2.left;
            layoutParams.rightMargin += rect.right - rect2.right;
            layoutParams.bottomMargin += rect.bottom - rect2.bottom;
        }
        view.setLayoutParams(layoutParams);
    }

    public void setInsets(Rect rect) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            setFrameLayoutChildInsets(getChildAt(i), rect, this.mInsets);
        }
        this.mInsets.set(rect);
    }
}
