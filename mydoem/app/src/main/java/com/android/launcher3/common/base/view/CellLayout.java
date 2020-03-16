package com.android.launcher3.common.base.view;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;


public abstract class CellLayout extends ViewGroup {
    protected CellLayoutChildren mChildren;
    public CellLayout(Context context) {
        super(context);
    }

    public CellLayoutChildren getCellLayoutChildren() {
        return this.mChildren;
    }

    public boolean animateChildToPosition(View view, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean[][] zArr, int i5, Runnable runnable) {
        CellLayoutChildren cellLayoutChildren = getCellLayoutChildren();

        return true;
    }

    public void setBackgroundAlpha(float f) {
       // if (this.mBackgroundAlpha != f) {
          //  this.mBackgroundAlpha = f;
          //  Drawable background = getBackground();
          //  if (background != null) {
         //       background.setAlpha((int) (this.mBackgroundAlpha * 255.0f));
         //   }
      //  }
    }
}
