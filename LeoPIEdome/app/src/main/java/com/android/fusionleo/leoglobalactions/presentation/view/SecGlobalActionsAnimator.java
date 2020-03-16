package com.android.fusionleo.leoglobalactions.presentation.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager.LayoutParams;
import android.view.animation.PathInterpolator;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;

import com.android.fusionleo.leoglobalactions.util.SystemConditions;

public class SecGlobalActionsAnimator implements GlobalActionsAnimator {
    private static final String TAG = "SecGlobalActionsAnimator";
    private final float ALPHA_HIDE = 0.0f;
    private final float ALPHA_SHOW = 1.0f;
    private final int CONFIRM_ANIMATION_DURATION_DESCRIPTION = 400;
    private final int CONFIRM_ANIMATION_DURATION_ICON = 300;
    private final int CONFIRM_ANIMATION_DURATION_LIST = 200;
    private final PathInterpolator CONFIRM_ANIMATION_INTERPOLATOR = new PathInterpolator(0.17f, 0.17f, 0.2f, 1.0f);
    private final float CONFIRM_ANIMATION_SCALE = 1.3f;
    private final float CONFIRM_ANIMATION_SCALE_ORIGIN = 1.0f;
    private final int DIM_OPACITY = 204;
    private final int DIM_OPACITY_CONFIRM = 255;
    private final int HIDE_DIALOG_WITHOUT_DISMISS_DURATION = 200;
    private final int SAFE_MODE_CONFIRM_ANIMATION_DURATION_ALPHA = 200;
    private final int SHOW_DISMISS_ANIMATION_DURATION = 300;
    private View mBottomView;
    private ViewUpdateCallback mCallback;
    private final ConditionChecker mConditionChecker;
    private View mConfirmDescriptionView;
    private ViewGroup mConfirmIconView;
    private ViewGroup mConfirmationView;
    private final Context mContext;
    private AnimatorSet mDismissConfirmAnimatorSet;
    private ViewGroup mLandListView;
    private ViewGroup mListView;

    private float mOriginalConfirmLocationX;
    private float mOriginalConfirmLocationY;
    private View mPowerOffIconView;
    private ViewGroup mRootView;
    private ViewGroup mSelectedActionView;
    private AnimatorSet mShowConfirmAnimatorSet;
    private ViewGroup mTargetListView;
    private ViewStateController mViewStateController;
    private OnGlobalLayoutListener mViewTreeObserverListener;

    public interface ViewUpdateCallback {
        GlobalActionItemView createConfirmView();

        View getBottomView();

        View getConfirmDescriptionView(ViewGroup viewGroup);

        ViewGroup getConfirmIconLabelView(ViewGroup viewGroup);

        ViewGroup getConfirmationView();

        Dialog getDialog();

        Runnable getDismissRunnable();

        ViewGroup getLandscapeListView();

        ViewGroup getListView();

        ViewGroup getPowerOffViewForSafeModeVI(GlobalActionItemView globalActionItemView);

        ViewGroup getRootView();

        ViewGroup getSelectedActionView(ViewGroup viewGroup);

        boolean isSafeModeConfirm();

        void requestFocusFor(ViewGroup viewGroup, ViewGroup viewGroup2);
    }

    public SecGlobalActionsAnimator(Context context, ConditionChecker conditionChecker,  ViewStateController viewStateController) {
        this.mContext = context;
        this.mConditionChecker = conditionChecker;

        this.mViewStateController = viewStateController;
    }

    private void addAnimatorListenerAdapter(AnimatorSet animatorSet, boolean z) {
        if (z) {
            animatorSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {

                    SecGlobalActionsAnimator.this.mSelectedActionView.setVisibility(0);
                    SecGlobalActionsAnimator.this.mTargetListView.setVisibility(4);
                    SecGlobalActionsAnimator.this.mBottomView.setVisibility(8);
                    SecGlobalActionsAnimator.this.mShowConfirmAnimatorSet = null;
                    SecGlobalActionsAnimator.this.mViewStateController.setState(ViewAnimationState.IDLE);
                }

                public void onAnimationStart(Animator animator) {

                    SecGlobalActionsAnimator.this.mCallback.requestFocusFor(SecGlobalActionsAnimator.this.mConfirmIconView, SecGlobalActionsAnimator.this.mSelectedActionView);
                    SecGlobalActionsAnimator.this.mConfirmIconView.setAlpha(1.0f);
                    SecGlobalActionsAnimator.this.mConfirmDescriptionView.setAlpha(0.0f);
                    SecGlobalActionsAnimator.this.mConfirmIconView.setScaleX(1.0f);
                    SecGlobalActionsAnimator.this.mConfirmIconView.setScaleY(1.0f);
                    SecGlobalActionsAnimator.this.mSelectedActionView.setVisibility(4);
                    SecGlobalActionsAnimator.this.mTargetListView.animate().alpha(0.0f).setDuration(200).start();
                    SecGlobalActionsAnimator.this.mBottomView.animate().alpha(0.0f).setDuration(200).start();
                }
            });
        } else {
            animatorSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {

                    SecGlobalActionsAnimator.this.mCallback.requestFocusFor(SecGlobalActionsAnimator.this.mSelectedActionView, SecGlobalActionsAnimator.this.mConfirmationView);
                    SecGlobalActionsAnimator.this.mSelectedActionView.setVisibility(0);
                    SecGlobalActionsAnimator.this.mConfirmationView.removeAllViews();
                    SecGlobalActionsAnimator.this.mConfirmationView.setVisibility(8);
                    SecGlobalActionsAnimator.this.mRootView.setDescendantFocusability(262144);
                    SecGlobalActionsAnimator.this.mDismissConfirmAnimatorSet = null;
                    SecGlobalActionsAnimator.this.mPowerOffIconView = null;
                    SecGlobalActionsAnimator.this.mViewStateController.setState(ViewAnimationState.IDLE);
                }

                public void onAnimationStart(Animator animator) {

                    SecGlobalActionsAnimator.this.mTargetListView.setVisibility(0);
                    SecGlobalActionsAnimator.this.mBottomView.setVisibility(0);
                    SecGlobalActionsAnimator.this.mSelectedActionView.setVisibility(4);
                    SecGlobalActionsAnimator.this.mTargetListView.animate().alpha(1.0f).setDuration(200).start();
                    SecGlobalActionsAnimator.this.mBottomView.animate().alpha(1.0f).setDuration(200).start();
                }
            });
        }
    }

    private AnimatorSet getDefaultConfirmAnimatorSet(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ViewGroup viewGroup = this.mConfirmIconView;
        String str = "scaleX";
        float[] fArr = new float[2];
        fArr[0] = this.mConfirmIconView.getScaleX();
        float f = 1.3f;
        float f2 = 1.0f;
        fArr[1] = z ? 1.3f : 1.0f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(viewGroup, str, fArr);
        ViewGroup viewGroup2 = this.mConfirmIconView;
        String str2 = "scaleY";
        float[] fArr2 = new float[2];
        fArr2[0] = this.mConfirmIconView.getScaleY();
        if (!z) {
            f = 1.0f;
        }
        fArr2[1] = f;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(viewGroup2, str2, fArr2);
        ViewGroup viewGroup3 = this.mConfirmIconView;
        String str3 = "y";
        fArr2 = new float[2];
        fArr2[0] = this.mConfirmIconView.getY();
        fArr2[1] = z ? this.mOriginalConfirmLocationY : (float) getOriginalLocationY(this.mSelectedActionView);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(viewGroup3, str3, fArr2);
        ViewGroup viewGroup4 = this.mConfirmIconView;
        String str4 = "x";
        float[] fArr3 = new float[2];
        fArr3[0] = this.mConfirmIconView.getX();
        fArr3[1] = z ? this.mOriginalConfirmLocationX - ((float) this.mRootView.getPaddingLeft()) : (float) (getOriginalLocationX(this.mCallback.getConfirmIconLabelView(this.mSelectedActionView)) - this.mRootView.getPaddingLeft());
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(viewGroup4, str4, fArr3);
        View view = this.mConfirmDescriptionView;
        String str5 = "alpha";
        float[] fArr4 = new float[2];
        fArr4[0] = this.mConfirmDescriptionView.getAlpha();
        if (!z) {
            f2 = 0.0f;
        }
        fArr4[1] = f2;
        ObjectAnimator.ofFloat(view, str5, fArr4).setDuration(400);
        Drawable mutate = this.mRootView.getBackground().mutate();
        str5 = "alpha";
        int[] iArr = new int[2];
        iArr[0] = this.mRootView.getBackground().mutate().getAlpha();
        iArr[1] = z ? 255 : 204;
        ObjectAnimator ofInt = ObjectAnimator.ofInt(mutate, str5, iArr);

        animatorSet.setDuration(300);
        addAnimatorListenerAdapter(animatorSet, z);
        return animatorSet;
    }

    private int getOriginalLocationX(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[0];
    }

    private int getOriginalLocationY(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[1];
    }

    private AnimatorSet getSafeModeConfirmAnimation(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        View view = this.mPowerOffIconView;
        String str = "scaleX";
        float[] fArr = new float[2];
        fArr[0] = this.mPowerOffIconView.getScaleX();
        float f = 1.3f;
        fArr[1] = z ? 1.3f : 1.0f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, str, fArr);
        View view2 = this.mPowerOffIconView;
        String str2 = "scaleY";
        float[] fArr2 = new float[2];
        fArr2[0] = this.mPowerOffIconView.getScaleY();
        if (!z) {
            f = 1.0f;
        }
        fArr2[1] = f;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view2, str2, fArr2);
        View view3 = this.mPowerOffIconView;
        String str3 = "y";
        fArr2 = new float[2];
        fArr2[0] = this.mPowerOffIconView.getY();
        fArr2[1] = z ? this.mOriginalConfirmLocationY : (float) getOriginalLocationY(this.mSelectedActionView);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view3, str3, fArr2);
        int width = (this.mConfirmIconView.getWidth() - this.mPowerOffIconView.getWidth()) / 2;
        View view4 = this.mPowerOffIconView;
        String str4 = "x";
        float[] fArr3 = new float[2];
        fArr3[0] = this.mPowerOffIconView.getX();
        fArr3[1] = z ? (this.mOriginalConfirmLocationX + ((float) width)) - ((float) this.mRootView.getPaddingLeft()) : (float) (getOriginalLocationX(this.mCallback.getConfirmIconLabelView(this.mSelectedActionView)) - this.mRootView.getPaddingLeft());
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view4, str4, fArr3);
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3, ofFloat4});
        AnimatorSet animatorSet2 = new AnimatorSet();
        float[] fArr4;
        if (z) {
            fArr4 = new float[]{this.mConfirmIconView.getAlpha(), 1.0f};
            animatorSet2.playTogether(new Animator[]{ObjectAnimator.ofFloat(this.mConfirmIconView, "alpha", fArr4)});
            this.mPowerOffIconView.setAlpha(0.0f);
        } else {
            fArr4 = new float[]{this.mPowerOffIconView.getAlpha(), 1.0f};
            animatorSet2.playTogether(new Animator[]{ObjectAnimator.ofFloat(this.mPowerOffIconView, "alpha", fArr4)});
            this.mConfirmIconView.setAlpha(0.0f);
        }
        animatorSet2.setDuration(200);
        animatorSet.playTogether(new Animator[]{animatorSet2});
        return animatorSet;
    }

    private void initViews() {
        this.mRootView = this.mCallback.getRootView();
        this.mListView = this.mCallback.getListView();
        this.mLandListView = this.mCallback.getLandscapeListView();
        this.mBottomView = this.mCallback.getBottomView();
        this.mConfirmationView = this.mCallback.getConfirmationView();
    }

    private GlobalActionItemView initializeConfirmView() {
        GlobalActionItemView createConfirmView = this.mCallback.createConfirmView();
        this.mConfirmationView = this.mCallback.getConfirmationView();
        this.mConfirmIconView = this.mCallback.getConfirmIconLabelView(this.mConfirmationView);
        this.mConfirmDescriptionView = this.mCallback.getConfirmDescriptionView(this.mConfirmationView);
        return createConfirmView;
    }

    private void initializeConfirmViewForSafeMode() {
        this.mPowerOffIconView = this.mCallback.getPowerOffViewForSafeModeVI(initializeConfirmView());
    }

    public static /* synthetic */ void lambda$startSetSafeModeAnimation$2(SecGlobalActionsAnimator secGlobalActionsAnimator) {
        secGlobalActionsAnimator.mConfirmationView.getViewTreeObserver().removeOnGlobalLayoutListener(secGlobalActionsAnimator.mViewTreeObserverListener);
        secGlobalActionsAnimator.startAnimationForSafeModeOnConfirm((((float) secGlobalActionsAnimator.mConfirmIconView.getHeight()) * 0.3f) / 2.0f);
    }

    public static /* synthetic */ void lambda$startShowConfirmAnimation$0(SecGlobalActionsAnimator secGlobalActionsAnimator) {
        secGlobalActionsAnimator.mConfirmationView.getViewTreeObserver().removeOnGlobalLayoutListener(secGlobalActionsAnimator.mViewTreeObserverListener);
        secGlobalActionsAnimator.saveOriginalConfirmViewLocation();
        secGlobalActionsAnimator.setLocationForDescriptionView((((float) secGlobalActionsAnimator.mConfirmIconView.getHeight()) * 0.3f) / 2.0f);
        secGlobalActionsAnimator.mConfirmIconView.setY((float) secGlobalActionsAnimator.getOriginalLocationY(secGlobalActionsAnimator.mSelectedActionView));
        secGlobalActionsAnimator.mConfirmIconView.setX((float) (secGlobalActionsAnimator.getOriginalLocationX(secGlobalActionsAnimator.mCallback.getConfirmIconLabelView(secGlobalActionsAnimator.mSelectedActionView)) - secGlobalActionsAnimator.mRootView.getPaddingLeft()));
        secGlobalActionsAnimator.mShowConfirmAnimatorSet = secGlobalActionsAnimator.getDefaultConfirmAnimatorSet(true);
        secGlobalActionsAnimator.mShowConfirmAnimatorSet.start();
    }

    public static /* synthetic */ void lambda$startShowSafeModeAnimation$1(SecGlobalActionsAnimator secGlobalActionsAnimator) {
        secGlobalActionsAnimator.mConfirmationView.getViewTreeObserver().removeOnGlobalLayoutListener(secGlobalActionsAnimator.mViewTreeObserverListener);
        secGlobalActionsAnimator.saveOriginalConfirmViewLocation();
        secGlobalActionsAnimator.setLocationForDescriptionView((((float) secGlobalActionsAnimator.mConfirmIconView.getHeight()) * 0.3f) / 2.0f);
        secGlobalActionsAnimator.mConfirmIconView.setY((float) secGlobalActionsAnimator.getOriginalLocationY(secGlobalActionsAnimator.mSelectedActionView));
        secGlobalActionsAnimator.mPowerOffIconView.setY((float) secGlobalActionsAnimator.getOriginalLocationY(secGlobalActionsAnimator.mSelectedActionView));
        secGlobalActionsAnimator.mConfirmIconView.setX((float) (secGlobalActionsAnimator.getOriginalLocationX(secGlobalActionsAnimator.mCallback.getConfirmIconLabelView(secGlobalActionsAnimator.mSelectedActionView)) - secGlobalActionsAnimator.mRootView.getPaddingLeft()));
        secGlobalActionsAnimator.mPowerOffIconView.setX((float) (secGlobalActionsAnimator.getOriginalLocationX(secGlobalActionsAnimator.mCallback.getConfirmIconLabelView(secGlobalActionsAnimator.mSelectedActionView)) - secGlobalActionsAnimator.mRootView.getPaddingLeft()));
        secGlobalActionsAnimator.mShowConfirmAnimatorSet = secGlobalActionsAnimator.getDefaultConfirmAnimatorSet(true);
        secGlobalActionsAnimator.mShowConfirmAnimatorSet.playTogether(new Animator[]{secGlobalActionsAnimator.getSafeModeConfirmAnimation(true)});
        secGlobalActionsAnimator.mShowConfirmAnimatorSet.start();
    }

    private void saveOriginalConfirmViewLocation() {
        this.mOriginalConfirmLocationX = (float) getOriginalLocationX(this.mConfirmIconView);
        this.mOriginalConfirmLocationY = (float) getOriginalLocationY(this.mConfirmIconView);
    }

    private void setLocationForDescriptionView(float f) {
        this.mConfirmDescriptionView.setY((float) ((int) ((this.mOriginalConfirmLocationY - f) + (((float) this.mConfirmIconView.getHeight()) * 1.3f))));
    }

    private void startAnimationForSafeModeOnConfirm(float f) {
        this.mPowerOffIconView.setScaleX(1.3f);
        this.mPowerOffIconView.setScaleY(1.3f);
        this.mPowerOffIconView.setY(this.mOriginalConfirmLocationY + f);
        this.mConfirmIconView.setScaleX(1.3f);
        this.mConfirmIconView.setScaleY(1.3f);
        this.mConfirmIconView.setY(this.mOriginalConfirmLocationY + f);
        this.mConfirmDescriptionView.setY((float) ((int) (this.mOriginalConfirmLocationY + (((float) this.mConfirmIconView.getHeight()) * 1.3f))));
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mConfirmIconView, "alpha", new float[]{0.0f, 1.0f});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mPowerOffIconView, "alpha", new float[]{1.0f, 0.0f});
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(200);
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
        animatorSet.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                SecGlobalActionsAnimator.this.mViewStateController.setState(ViewAnimationState.IDLE);
            }
        });
        this.mViewStateController.setState(ViewAnimationState.SHOW_ANIMATE);
        animatorSet.start();
    }

    public void cancelHideConfirmAnimation() {
        this.mDismissConfirmAnimatorSet.cancel();
    }

    public void cancelShowConfirmAnimation() {
        this.mShowConfirmAnimatorSet.cancel();
    }

    public void initializeSelectedActionView() {
        this.mSelectedActionView = this.mCallback.getSelectedActionView(this.mTargetListView);
    }

    public boolean isHideConfirmAnimationRunning() {
        return this.mDismissConfirmAnimatorSet != null && this.mDismissConfirmAnimatorSet.isRunning();
    }

    public boolean isSafeModeConfirm() {
        return this.mCallback.isSafeModeConfirm();
    }

    public boolean isShowConfirmAnimationRunning() {
        return this.mShowConfirmAnimatorSet != null && this.mShowConfirmAnimatorSet.isRunning();
    }

    public void setCallback(ViewUpdateCallback viewUpdateCallback) {
        this.mCallback = viewUpdateCallback;
        initViews();
    }

    public void setListViewLand() {
        this.mTargetListView = this.mLandListView;
    }

    public void setListViewPort() {
        this.mTargetListView = this.mListView;
    }

    public void showMainViewLand() {
        setListViewLand();
        this.mListView.setVisibility(4);
        this.mLandListView.setVisibility(0);
        this.mLandListView.setAlpha(1.0f);
    }

    public void showMainViewPort() {
        setListViewPort();
        this.mListView.setVisibility(0);
        this.mListView.setAlpha(1.0f);
        this.mLandListView.setVisibility(4);
    }

    public void startDismissAnimation(final boolean z) {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this.mRootView.getBackground().mutate(), "alpha", new int[]{this.mRootView.getBackground().mutate().getAlpha(), 0});
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mRootView, "alpha", new float[]{this.mRootView.getAlpha(), 0.0f});
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ofInt, ofFloat});
        animatorSet.setDuration(z ? 200 : 300);
        animatorSet.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                Dialog dialog = SecGlobalActionsAnimator.this.mCallback.getDialog();
                if (dialog != null) {
                    dialog.getWindow().getDecorView().setVisibility(8);
                }
                if (!z) {
                    SecGlobalActionsAnimator.this.mCallback.getDismissRunnable().run();
                }
                SecGlobalActionsAnimator.this.mViewStateController.setState(ViewAnimationState.IDLE);
            }
        });
        LayoutParams attributes = this.mCallback.getDialog().getWindow().getAttributes();
        attributes.dimAmount = 0.0f;
        this.mCallback.getDialog().getWindow().setAttributes(attributes);
        this.mViewStateController.setState(ViewAnimationState.DISMISS_ANIMATE);
        animatorSet.start();
    }

    public void startDismissConfirmAnimation() {
        this.mDismissConfirmAnimatorSet = getDefaultConfirmAnimatorSet(false);
        this.mViewStateController.setState(ViewAnimationState.DISMISS_ANIMATE);
        this.mDismissConfirmAnimatorSet.start();
    }

    public void startDismissSafeModeAnimation() {
        this.mDismissConfirmAnimatorSet = getDefaultConfirmAnimatorSet(false);
        this.mDismissConfirmAnimatorSet.playTogether(new Animator[]{getSafeModeConfirmAnimation(false)});
        this.mViewStateController.setState(ViewAnimationState.DISMISS_ANIMATE);
        this.mDismissConfirmAnimatorSet.start();
    }

    public void startSetSafeModeAnimation() {
        saveOriginalConfirmViewLocation();
        initializeConfirmViewForSafeMode();

        this.mConfirmationView.getViewTreeObserver().addOnGlobalLayoutListener(this.mViewTreeObserverListener);
    }

    public void startShowAnimation() {
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_WHITE_THEME)) {
            this.mRootView.setBackgroundColor(Color.parseColor("#fafafa"));
        } else {
            this.mRootView.setBackgroundColor(Color.parseColor("#0A0A0A"));
        }
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this.mRootView.getBackground().mutate(), "alpha", new int[]{0, 204});
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mRootView, "alpha", new float[]{0.0f, 1.0f});
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ofInt, ofFloat});
        animatorSet.setDuration(300);
        animatorSet.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                SecGlobalActionsAnimator.this.mViewStateController.setState(ViewAnimationState.IDLE);
            }
        });
        this.mViewStateController.setState(ViewAnimationState.SHOW_ANIMATE);
        animatorSet.start();
    }

    public void startShowConfirmAnimation() {
        initializeConfirmView();
        initializeSelectedActionView();
        this.mViewStateController.setState(ViewAnimationState.SHOW_ANIMATE);

        this.mConfirmationView.getViewTreeObserver().addOnGlobalLayoutListener(this.mViewTreeObserverListener);
    }

    public void startShowSafeModeAnimation() {
        initializeConfirmViewForSafeMode();
        initializeSelectedActionView();
        this.mViewStateController.setState(ViewAnimationState.SHOW_ANIMATE);

        this.mConfirmationView.getViewTreeObserver().addOnGlobalLayoutListener(this.mViewTreeObserverListener);
    }
}
