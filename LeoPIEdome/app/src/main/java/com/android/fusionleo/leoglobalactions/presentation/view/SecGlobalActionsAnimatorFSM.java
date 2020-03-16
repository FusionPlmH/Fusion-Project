package com.android.fusionleo.leoglobalactions.presentation.view;

import com.android.fusionleo.leoglobalactions.util.SecGlobalActionsAnalytics;

public class SecGlobalActionsAnimatorFSM {
    private static final String TAG = "SecGlobalActionsAnimatorFSM";
    private final GlobalActionsAnimator mAnimator;
    private boolean mIsPortrait;

    State mState;
    private ViewStateController mViewStateController;

    /* renamed from: com.android.fusionleo.leoglobalactions.presentation.view.SecGlobalActionsAnimatorFSM$1 */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State = new int[State.values().length];

        static {
            try {
                $SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State[State.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State[State.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State[State.CONFIRM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State[State.SAFE_MODE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public enum Event {
        SHOW,
        HIDE,
        SHOW_CONFIRM,
        HIDE_CONFIRM,
        CONFIGURATION_CHANGED,
        SECURE_CONFIRM
    }

    enum State {
        IDLE,
        MAIN,
        CONFIRM,
        SAFE_MODE
    }

    public SecGlobalActionsAnimatorFSM(GlobalActionsAnimator globalActionsAnimator, ViewStateController viewStateController) {
        this.mAnimator = globalActionsAnimator;
        this.mViewStateController = viewStateController;

        setState(State.IDLE);
    }

    public void handleAnimationEvent(Event event) {
        if (this.mViewStateController.getState() == ViewAnimationState.IDLE) {
            switch (AnonymousClass1.$SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State[this.mState.ordinal()]) {
                case SecGlobalActionsAnalytics.VID_POWER_OFF /*1*/:
                    if (event == Event.SHOW) {
                        if (this.mIsPortrait) {
                            this.mAnimator.showMainViewPort();
                        } else {
                            this.mAnimator.showMainViewLand();
                        }
                        this.mAnimator.startShowAnimation();
                        setState(State.MAIN);
                        break;
                    }
                    break;
                case SecGlobalActionsAnalytics.VID_RESTART /*2*/:
                    if (event != Event.CONFIGURATION_CHANGED) {
                        if (event != Event.SHOW_CONFIRM) {
                            if (event != Event.HIDE) {
                                if (event == Event.SECURE_CONFIRM) {
                                    this.mAnimator.startDismissAnimation(true);
                                    setState(State.IDLE);
                                    break;
                                }
                            }
                            this.mAnimator.startDismissAnimation(false);
                            setState(State.IDLE);
                            break;
                        }
                        if (this.mAnimator.isHideConfirmAnimationRunning()) {
                            this.mAnimator.cancelHideConfirmAnimation();
                        }
                        if (!this.mAnimator.isSafeModeConfirm()) {
                            this.mAnimator.startShowConfirmAnimation();
                            setState(State.CONFIRM);
                            break;
                        }
                        this.mAnimator.startShowSafeModeAnimation();
                        setState(State.SAFE_MODE);
                        break;
                    } else if (!this.mIsPortrait) {
                        this.mAnimator.showMainViewLand();
                        break;
                    } else {
                        this.mAnimator.showMainViewPort();
                        break;
                    }
                case SecGlobalActionsAnalytics.VID_EMERGENCY_MODE /*3*/:
                    if (event != Event.CONFIGURATION_CHANGED) {
                        if (event != Event.HIDE_CONFIRM) {
                            if (event != Event.SHOW_CONFIRM) {
                                if (event != Event.HIDE) {
                                    if (event == Event.SECURE_CONFIRM) {
                                        this.mAnimator.startDismissAnimation(true);
                                        setState(State.IDLE);
                                        break;
                                    }
                                }
                                this.mAnimator.startDismissAnimation(false);
                                setState(State.IDLE);
                                break;
                            }
                            this.mAnimator.startSetSafeModeAnimation();
                            setState(State.SAFE_MODE);
                            break;
                        }
                        if (this.mAnimator.isShowConfirmAnimationRunning()) {
                            this.mAnimator.cancelShowConfirmAnimation();
                        }
                        this.mAnimator.startDismissConfirmAnimation();
                        setState(State.MAIN);
                        break;
                    }
                    if (this.mIsPortrait) {
                        this.mAnimator.setListViewPort();
                    } else {
                        this.mAnimator.setListViewLand();
                    }
                    this.mAnimator.initializeSelectedActionView();
                    break;
                case SecGlobalActionsAnalytics.VID_LOCK_DOWN /*4*/:
                    if (event != Event.CONFIGURATION_CHANGED) {
                        if (event != Event.HIDE_CONFIRM) {
                            if (event == Event.HIDE) {
                                this.mAnimator.startDismissAnimation(false);
                                setState(State.IDLE);
                                break;
                            }
                        }
                        if (this.mAnimator.isShowConfirmAnimationRunning()) {
                            this.mAnimator.cancelShowConfirmAnimation();
                        }
                        this.mAnimator.startDismissSafeModeAnimation();
                        setState(State.MAIN);
                        break;
                    }
                    if (this.mIsPortrait) {
                        this.mAnimator.setListViewPort();
                    } else {
                        this.mAnimator.setListViewLand();
                    }
                    this.mAnimator.initializeSelectedActionView();
                    break;
            }
        }
    }

    public void setOrientation(boolean z) {
        this.mIsPortrait = z;
    }

    public void setState(State state) {

        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("ViewState = ");
        stringBuilder.append(state.name());

        this.mState = state;
    }
}
