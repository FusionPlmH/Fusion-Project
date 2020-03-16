package com.android.launcher3.common.base.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.animation.LayoutTransition.TransitionListener;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

import java.util.ArrayList;

public abstract class PagedView extends ViewGroup {
    private static final int ANIM_TAG_KEY = 100;
    private static final boolean DEBUG = false;
    public static final long EXTRA_EMPTY_SCREEN_ID = -201;
    protected static final float EXTRA_TOUCH_SLOP_SCALE_RATIO = 2.5f;
    private static final int FLING_THRESHOLD_VELOCITY = 500;
    private static int HINT_PAGE_ANIMATION_DURATION = 200;
    protected static final int INVALID_PAGE = -1;
    protected static final int INVALID_POINTER = -1;
    public static final int INVALID_RESTORE_PAGE = -1001;
    private static final float MAX_SCROLL_PROGRESS = 1.0f;
    private static final int MIN_FLING_VELOCITY = 250;
    private static final int MIN_LENGTH_FOR_FLING = 25;
    private static final int MIN_SNAP_VELOCITY = 1500;
    private static final int NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT = 2;
    private static final float OVERSCROLL_DAMP_FACTOR = 0.32f;
   // public static final int PAGE_SNAP_ANIMATION_DURATION = (Utilities.sIsRtl ? 400 : 750);
    private static final int REORDERING_DROP_REPOSITION_DURATION = 200;
    private static final int REORDERING_REORDER_REPOSITION_DURATION = 300;
    private static final int REORDERING_SIDE_PAGE_HOVER_TIMEOUT = 80;
    private static final float RETURN_TO_ORIGINAL_PAGE_THRESHOLD = 0.33f;
    private static final float SIGNIFICANT_MOVE_THRESHOLD = 0.4f;
    public static final int SLOW_PAGE_SNAP_ANIMATION_DURATION = 950;
    private static final String TAG = "PagedView";
    protected static final int TOUCH_STATE_PINCH_ZOOM = 3;
    protected static final int TOUCH_STATE_REORDERING = 2;
    protected static final int TOUCH_STATE_REST = 0;
    protected static final int TOUCH_STATE_SCROLLING = 1;
    private static final float TRANSITION_BOUNCE_MIN_ALPHA = 0.7f;
    private static final float TRANSITION_BOUNCE_MIN_SCALE = 0.96f;
    private static final int[] sTmpIntPoint = new int[2];
    private static final Matrix sTmpInvMatrix = new Matrix();
    private static final float[] sTmpPoint = new float[2];
    private static final Rect sTmpRect = new Rect();

    private ArrayList<Integer> mActivePages;
    protected int mActivePointerId;
    private boolean mCancelTap;
    protected boolean mCenterPagesVertically;
    protected int mChildCountOnLastLayout;
    private boolean mContinuallyScroll;
    private boolean mControlaBlurZona;
    protected int mCurrentPage;
    private Interpolator mDefaultInterpolator;
    private boolean mDeferLoadAssociatedPagesUntilScrollCompletes;
    private ArrayList<Boolean> mDirtyPageContent;
    private float mDownMotionX;
    private float mDownMotionY;
    private float mDownScrollX;
    protected View mDragView;
    private float mDragViewBaselineLeft;
    private boolean mEnablePageIndicatorAnim;
    protected boolean mFadeInAdjacentScreens;
    protected boolean mFirstLayout;
    protected int mFlingThresholdVelocity;
    protected boolean mForceDrawAllChildrenNextFrame;
    protected boolean mForceScreenScrolled;
    protected int mHintPageLeftZone;
    protected int mHintPageRightZone;
    protected int mHintPageWidth;

    private boolean mIsDataReady;
    public boolean mIsPageMoving;
    private boolean mIsReordering;
    private boolean mIsShowingHintPages;
    protected float mLastMotionX;
    protected float mLastMotionY;
    private int mLastScreenCenter;
    protected OnLongClickListener mLongClickListener;
    protected int mMaxScrollX;
    private int mMaximumVelocity;
    protected int mMinFlingVelocity;
    private float mMinScale;
    protected int mMinSnapVelocity;
    protected int mNextPage;
    private int mNormalChildHeight;
    protected float mPageBackgroundAlpha;

    private int mPageIndicatorViewId;
    protected int mPageLayoutHeightGap;
    protected int mPageLayoutWidthGap;
    private PageScrollListener mPageScrollListener;
    private int[] mPageScrolls;
    protected int mPageSpacing;
    private PageSwitchListener mPageSwitchListener;
    private float mParentDownMotionX;
    private float mParentDownMotionY;
    private int mPostReorderingPreZoomInRemainingAnimationCount;
    private Runnable mPostReorderingPreZoomInRunnable;
    private ObjectAnimator mPullingPagesAnim;
    private boolean mReorderingStarted;
    protected int mRestorePage;
    private int mScrollState;

    private int mSidePageHoverIndex;
    private Runnable mSidePageHoverRunnable;
    protected int[] mTempVisiblePagesRange;
    protected float mTotalMotionX;
    protected int mTouchSlop;
    protected int mTouchState;
    private TransitionListener mTransitionListener;
    private float mTranslateAllPages;
    protected float mTranslatePagesOffset;
    protected int mUnboundedScrollX;
    private boolean mUseMinScale;
    private VelocityTracker mVelocityTracker;
    private Rect mViewport;

    public PagedView(Context context) {
        super(context);
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public interface PageScrollListener {
        void onPageChange(int i, int i2, int i3);

        void onPageScroll(int i, int i2, int i3, int i4, int i5);
    }

    public interface PageSwitchListener {
        void onPageSwitch(View view, int i);
    }

    public static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int currentPage;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.currentPage = -1;
            this.currentPage = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
            this.currentPage = -1;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentPage);
        }
    }

    public int getCurrentPage() {
        return this.mCurrentPage;
    }

    public static class ScrollInterpolator implements Interpolator {
        public float getInterpolation(float f) {
            f -= 1.0f;
            return ((((f * f) * f) * f) * f) + 1.0f;
        }
    }

    public int getMaxScrollX() {
        return this.mMaxScrollX;
    }
    public float getPageBackgroundAlpha() {
        return this.mPageBackgroundAlpha;
    }

}
