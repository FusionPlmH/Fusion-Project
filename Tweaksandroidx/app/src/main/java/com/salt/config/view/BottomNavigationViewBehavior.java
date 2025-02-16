package com.salt.config.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
public class BottomNavigationViewBehavior extends CoordinatorLayout.Behavior<View> {
    private ObjectAnimator outAnimator, inAnimator;
    public BottomNavigationViewBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);

    }

    @Override

    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View child, View directTargetChild, View target, int nestedScrollAxes) {

        return nestedScrollAxes == ViewCompat.SCROLL_AXIS_VERTICAL;
    }

    @Override

    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View child, View target, int dx, int dy, int[] consumed) {

        if (dy > 0) {// 上滑隐藏

            if (outAnimator == null) {

                outAnimator = ObjectAnimator.ofFloat(child, "translationY", 0, child.getHeight());

                outAnimator.setDuration(200);

            }

            if (!outAnimator.isRunning() && child.getTranslationY() <= 0) {

                outAnimator.start();

            }

        } else if (dy < 0) {// 下滑显示

            if (inAnimator == null) {

                inAnimator = ObjectAnimator.ofFloat(child, "translationY", child.getHeight(), 0);

                inAnimator.setDuration(200);

            }

            if (!inAnimator.isRunning() && child.getTranslationY() >= child.getHeight()) {

                inAnimator.start();

            }

        }

    }

}

