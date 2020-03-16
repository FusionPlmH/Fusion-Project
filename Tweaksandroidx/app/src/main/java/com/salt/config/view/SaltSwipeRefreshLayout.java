package com.salt.config.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

import androidx.core.widget.NestedScrollView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import java.lang.reflect.Field;

public class SaltSwipeRefreshLayout extends SwipeRefreshLayout {
    private boolean mHasScrollingChild = false;
    private NestedScrollView mScrollingChild = null;
    private boolean mIsDragMode = false;

    public SaltSwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public SaltSwipeRefreshLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();

        if(getChildCount() > 1 && getChildAt(1) instanceof NestedScrollView) {
            mHasScrollingChild = true;
            mScrollingChild = (NestedScrollView) getChildAt(1);
        }
    }

    private float mDownPostion;

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        if(mHasScrollingChild) {
            switch (ev.getAction()) {
                case MotionEvent.ACTION_DOWN:
                    setEnabled(true);
                    mDownPostion = ev.getY();
                    if(mScrollingChild.computeVerticalScrollOffset() != 0) {
                        setEnabled(false);
                    }
                    break;
                case MotionEvent.ACTION_MOVE:
                    if(isEnabled()) {
                        if (ev.getY() < mDownPostion) setEnabled(false);
                        else mIsDragMode = true;
                    }
                    break;
                case MotionEvent.ACTION_UP:
                    mIsDragMode = false;
            }
            return super.dispatchTouchEvent(ev);
        } else {
            return super.dispatchTouchEvent(ev);
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return mIsDragMode || super.onInterceptTouchEvent(ev);
    }


    @Override
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed,
                               int dxUnconsumed, int dyUnconsumed) {
        if(isEnabled()) {
            super.onNestedScroll(target, dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed);
        } else {
            try {
                Field mParentOffsetInWindowField =
                        SwipeRefreshLayout.class.getDeclaredField("mParentOffsetInWindow");
                mParentOffsetInWindowField.setAccessible(true);
                int[] mParentOffsetInWindow = (int[]) mParentOffsetInWindowField.get(this);
                // Dispatch up to the nested parent first
                dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed,
                        mParentOffsetInWindow);
            } catch (NoSuchFieldException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
    }
}