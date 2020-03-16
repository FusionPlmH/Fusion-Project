package com.android.systemui.qs;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.app.Fragment;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnPreDrawListener;
import com.android.systemui.Dependency;

import com.android.systemui.SysUiServiceProvider;
import com.android.systemui.bar.BarController;
import com.android.systemui.bar.BarController.QSBarCallback;

import com.android.systemui.plugins.qs.QS;

import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.CommandQueue.Callbacks;

import java.io.FileDescriptor;
import java.io.PrintWriter;

public class QSFragment extends Fragment implements QS, Callbacks {
    /* access modifiers changed from: private|final */
    public final AnimatorListener mAnimateHeaderSlidingInListener = new AnimatorListenerAdapter() {
        public void onAnimationEnd(Animator animator) {
            QSFragment.this.mHeaderAnimating = false;
            QSFragment.this.updateQsState();
        }
    };
    private BarController mBarController;
    /* access modifiers changed from: private */
    public QSContainerImpl mContainer;
    private int mCurrentOrientation;
    /* access modifiers changed from: private */
    public long mDelay;
    private View mExpandButtonContainer;

    protected SecQuickStatusBarHeader mHeader;
    /* access modifiers changed from: private */
    public boolean mHeaderAnimating;
    /* access modifiers changed from: private */
    public boolean mInitDraw = false;
    private final OnPreDrawListener mInitDrawListerner = new OnPreDrawListener() {
        public boolean onPreDraw() {
            if (QSFragment.this.mQSPanel != null) {
                QSFragment.this.mQSPanel.getViewTreeObserver().removeOnPreDrawListener(this);
                Log.d(QS.TAG, "mInitDrawListerner");
                QSFragment.this.mInitDraw = true;
            }
            return true;
        }
    };
    private boolean mKeyguardShowing;
    /* access modifiers changed from: private */
    public float mLastQSExpansion = -1.0f;
    private int mLayoutDirection;
    private boolean mListening;
    private HeightListener mPanelView;


    protected QSPanel mQSPanel;

    private final Rect mQsBounds = new Rect();
    private boolean mQsDisabled;
    private boolean mQsExpanded;

    private QSServiceBox mServiceBox;
    private boolean mStackScrollerOverscrolling;

    private final OnPreDrawListener mStartHeaderSlidingIn = new OnPreDrawListener() {
        public boolean onPreDraw() {
            QSFragment.this.getView().getViewTreeObserver().removeOnPreDrawListener(this);
           // QSFragment.this.getView().animate().translationY(0.0f).setStartDelay(QSFragment.this.mDelay).setDuration(448).setInterpolator(Interpolators.FAST_OUT_SLOW_IN).setListener(QSFragment.this.mAnimateHeaderSlidingInListener).start();
            QSFragment.this.getView().setY((float) (-QSFragment.this.mHeader.getHeight()));
            return true;
        }
    };

    /* access modifiers changed from: private */
    public void updateQsState() {

    }

    public void animateHeaderSlidingIn(long j) {
        if (!this.mQsExpanded) {
            this.mHeaderAnimating = true;
            this.mDelay = j;
            getView().getViewTreeObserver().addOnPreDrawListener(this.mStartHeaderSlidingIn);
        }
    }

    public void animateHeaderSlidingOut() {

    }

    public void closeDetail() {

    }

    public void disable(int i, int i2, boolean z) {

    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {

    }

    public int getDesiredHeight() {
      //  int hiddenExpandedBarsHeight = this.mBarController != null ? this.mBarController.getHiddenExpandedBarsHeight() : 0;
        //return this.mQSCustomizer.isCustomizing() ? this.mQSCustomizer.getMeasuredHeight() : this.mQSDetail.isClosingDetail() ? getView().getMeasuredHeight() : this.mQSDetail.isShowingDetail() ? getView().getMeasuredHeight() + hiddenExpandedBarsHeight : getView().getMeasuredHeight() + hiddenExpandedBarsHeight;
        return 0;
    }
    public QSServiceBox getServiceBox() {
        return mServiceBox;
    }
    public View getHeader() {
        return this.mHeader;
    }

    public int getQsMinExpansionHeight() {
        return this.mHeader.getHeight() + (this.mBarController == null ? 0 : this.mBarController.getOnTopQSBarsHeight());
    }

    public QSPanel getQsPanel() {
        return this.mQSPanel;
    }

    public void hideImmediately() {
        getView().animate().cancel();
        getView().setY((float) (-this.mHeader.getHeight()));
    }

    public boolean isCustomizing() {

        return false;
    }

    /* access modifiers changed from: 0000 */
    @VisibleForTesting
    public boolean isExpanded() {
        return this.mQsExpanded;
    }

    /* access modifiers changed from: 0000 */
    @VisibleForTesting
    public boolean isListening() {
        return this.mListening;
    }

    public boolean isShowingDetail() {
        return false;
    }

    public void notifyCustomizeChanged() {

    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.getLayoutDirection() != this.mLayoutDirection) {
            this.mLayoutDirection = configuration.getLayoutDirection();

        }
        if (this.mCurrentOrientation != configuration.orientation) {
            this.mCurrentOrientation = configuration.orientation;
            this.mLastQSExpansion = -1.0f;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mListening) {
            setListening(false);
        }
    }

    public void onDestroyView() {
      //  ((CommandQueue) SysUiServiceProvider.getComponent(getContext(), CommandQueue.class)).removeCallbacks(this);
        super.onDestroyView();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return isShowingDetail() || isCustomizing();
    }

    public void onPanelHeightUpdated(float f) {
      //  this.mQSAnimator.onPanelHeightUpdated(f);
        this.mBarController.onPanelHeightUpdated(f, getQsMinExpansionHeight());
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("expanded", this.mQsExpanded);
        bundle.putBoolean("listening", this.mListening);
    }

    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);

    }

    public void setBarController(BarController barController) {
        this.mBarController = barController;
        this.mBarController.setQSPanel(this.mQSPanel);
        this.mBarController.setHeader(this.mHeader);
        this.mBarController.setQSBarCallback(new QSBarCallback() {
            public void onQSBarHeightChanged() {
                QSFragment.this.mLastQSExpansion = -1.0f;
            }

            public void onQSBarLayoutChanged() {
                if (QSFragment.this.mContainer != null) {
                    QSFragment.this.mContainer.updateResources();
                }
            }
        });
        if (this.mContainer != null) {
            this.mContainer.setBarController(this.mBarController);
        }

    }

    public void setContainer(ViewGroup viewGroup) {

    }

    public void setExpandClickListener(OnClickListener onClickListener) {
    }

    public void setExpanded(boolean z) {
        this.mQsExpanded = z;
        QSPanel qSPanel = this.mQSPanel;
        boolean z2 = this.mListening && this.mQsExpanded;

        updateQsState();
    }

    public void setHasNotifications(boolean z) {
    }

    public void setHeaderClickable(boolean z) {
    }

    public void setHeaderListening(boolean z) {

    }

    public void setHeightOverride(int i) {
        this.mContainer.setHeightOverride(i);
    }



    public void setKeyguardShowing(boolean z) {

        updateQsState();
    }

    public void setListening(boolean z) {

    }

    public void setOverscrolling(boolean z) {
        this.mStackScrollerOverscrolling = z;
        updateQsState();
    }

    public void setPanelView(HeightListener heightListener) {
        this.mPanelView = heightListener;
    }
    public QSContainerImpl getContainer() {
        return this.mContainer;
    }
    public void setQsExpansion(float f, float f2) {
        if (getView() != null) {
            this.mContainer.setExpansion(f);
            float f3 = 1.0f;
            float f4 = f - 1.0f;
            if (!this.mHeaderAnimating) {
                getView().setTranslationY(this.mKeyguardShowing ? ((float) this.mHeader.getHeight()) * f4 : f2);
            }
            int bottom = this.mQSPanel.getBottom() + ((int) this.mQSPanel.getTranslationY());
            int bottom2 = getView().getBottom();
            if (f != this.mLastQSExpansion || !this.mInitDraw || bottom != bottom2) {
                this.mLastQSExpansion = f;
                boolean z = true;
                boolean z2 = f == 1.0f;
                int bottom3 = ((this.mQSPanel.getBottom() - this.mHeader.getBottom()) + this.mHeader.getPaddingBottom()) + 0;
                if (this.mBarController != null) {
                    bottom3 -= this.mBarController.getQSBarsTranslation();
                    BarController barController = this.mBarController;
                    if (!this.mKeyguardShowing || this.mHeaderAnimating) {
                        f3 = f;
                    }
                    barController.setPosition(f3);
                }

            }
        }
    }
}
