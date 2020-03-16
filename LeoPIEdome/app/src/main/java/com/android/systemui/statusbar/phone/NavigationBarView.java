package com.android.systemui.statusbar.phone;

import android.animation.LayoutTransition;
import android.animation.LayoutTransition.TransitionListener;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.support.annotation.ColorInt;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.RemoteViews;

import com.android.systemui.Dependency;

import com.android.systemui.Rune;

import com.android.systemui.plugins.statusbar.phone.NavGesture;
import com.android.systemui.plugins.statusbar.phone.NavGesture.GestureHelper;

import com.android.systemui.statusbar.policy.KeyButtonDrawable;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.function.Consumer;



public class NavigationBarView extends FrameLayout  {
    protected KeyButtonDrawable mAccessibilityIcon;
    protected KeyButtonDrawable mBackAltCarModeIcon;
    protected KeyButtonDrawable mBackAltLandCarModeIcon;
    protected Rect mBackButtonBounds = new Rect();
    protected KeyButtonDrawable mBackCarModeIcon;
    protected KeyButtonDrawable mBackIcon;
    protected KeyButtonDrawable mBackLandCarModeIcon;

    protected Configuration mConfiguration;
    protected int mCurrentRotation = -1;
    View mCurrentView = null;

    private boolean mDeadZoneConsuming = false;
    int mDisabledFlags = 0;
    final Display mDisplay;

    protected KeyButtonDrawable mDockedIcon;

    private boolean mDockedStackExists;
    protected int mDownHitTarget = 0;
    private Consumer<GestureHelper> mGestureConsumer;
    private GestureHelper mGestureHelper;


    protected Rect mHomeButtonBounds = new Rect();
    protected KeyButtonDrawable mHomeCarModeIcon;
    protected KeyButtonDrawable mHomeDefaultIcon;
    protected KeyButtonDrawable mImeIcon;
    private final OnClickListener mImeSwitcherClickListener = new OnClickListener() {
        public void onClick(View view) {

        }
    };
    private boolean mInCarMode = false;
    private boolean mLayoutTransitionsEnabled = true;
    boolean mLongClickableAccessibilityButton;
    protected KeyButtonDrawable mMenuIcon;
    int mNavigationIconHints = 0;


    private NotificationPanelView mPanelView;
    private final AccessibilityDelegate mQuickStepAccessibilityDelegate = new AccessibilityDelegate() {
        private AccessibilityAction mToggleOverviewAction;

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {

        }

        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i != 2131361848) {
                return super.performAccessibilityAction(view, i, bundle);
            }

            return true;
        }
    };
    protected KeyButtonDrawable mRecentIcon;
    protected Rect mRecentsButtonBounds = new Rect();

    protected KeyButtonDrawable mRestartIcon;
    private int mRotateBtnStyle = 2131951924;

    View[] mRotatedViews = new View[4];
    protected Rect mRotationButtonBounds = new Rect();
    boolean mShowAccessibilityButton;
    boolean mShowMenu;
    boolean mShowRestartButton;
    boolean mShowRotateButton;
    private int[] mTmpPosition = new int[2];
    private Rect mTmpRect = new Rect();

    private boolean mUseCarModeUi = false;
    boolean mVertical;
    private boolean mWakeAndUnlocking;

    public interface OnVerticalChangedListener {
        void onVerticalChanged(boolean z);
    }

    private class H extends Handler {
        private H() {
        }



        public void handleMessage(Message message) {
            if (message.what == 8686) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("");
                stringBuilder.append(message.obj);
                String stringBuilder2 = stringBuilder.toString();
                int width = NavigationBarView.this.getWidth();
                int height = NavigationBarView.this.getHeight();

            }
        }
    }

    private class NavTransitionListener implements TransitionListener {
        private boolean mBackTransitioning;
        private long mDuration;
        private boolean mHomeAppearing;
        private TimeInterpolator mInterpolator;
        private long mStartDelay;

        private NavTransitionListener() {
        }


        public void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i) {

        }

        public void onBackAltCleared() {

        }

        public void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i) {

        }
    }

    public NavigationBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        this.mVertical = false;
        this.mShowMenu = false;
        this.mShowAccessibilityButton = false;
        this.mLongClickableAccessibilityButton = false;

    }


    private KeyButtonDrawable getBackIcon(boolean z, boolean z2) {
        return z2 ? z ? this.mBackLandCarModeIcon : this.mBackIcon : z ? this.mBackCarModeIcon : this.mBackIcon;
    }
    public ButtonDispatcher getRecentsButton() {
        return (ButtonDispatcher) this.mButtonDispatchers.get(2131362866);
    }
    protected NavigationBarTransitions mBarTransitions;
    protected final SparseArray<ButtonDispatcher> mButtonDispatchers = new SparseArray();



}
