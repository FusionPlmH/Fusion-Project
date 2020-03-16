package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager;
import com.android.fusionleo.leoglobalactions.presentation.features.FeatureFactory;
import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionInteractionStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.SecureConfirmStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.WindowManagerFunctionStrategy;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper;
import com.android.fusionleo.leoglobalactions.util.ResourcesWrapper;
import com.android.fusionleo.leoglobalactions.util.SecGlobalActionsAnalytics;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;
import com.android.fusionleo.leoglobalactions.util.ToastController;

public class PowerActionViewModel implements ActionViewModel {
    private final ConditionChecker mConditionChecker;
    private final FeatureFactory mFeatureFactory;
    private final SecGlobalActions mGlobalActions;
    ActionInfo mInfo;
    private final KeyGuardManagerWrapper mKeyguardManagerWrapper;
    private final ResourcesWrapper mResourcesWrapper;
    private final SecGlobalActionsAnalytics mSAnalytics;
    private final ToastController mToastController;
    private final SecGlobalActionsManager mWindowManagerFuncs;

    public PowerActionViewModel(SecGlobalActions secGlobalActions, ConditionChecker conditionChecker, SecGlobalActionsAnalytics secGlobalActionsAnalytics, SecGlobalActionsManager secGlobalActionsManager, FeatureFactory featureFactory, ToastController toastController, KeyGuardManagerWrapper keyGuardManagerWrapper, ResourcesWrapper resourcesWrapper) {
        this.mGlobalActions = secGlobalActions;
        this.mConditionChecker = conditionChecker;
        this.mSAnalytics = secGlobalActionsAnalytics;
        this.mWindowManagerFuncs = secGlobalActionsManager;
        this.mFeatureFactory = featureFactory;
        this.mToastController = toastController;
        this.mKeyguardManagerWrapper = keyGuardManagerWrapper;
        this.mResourcesWrapper = resourcesWrapper;
    }

    private boolean isNeedSecureConfirm() {
        return !this.mConditionChecker.isEnabled(SystemConditions.IS_RMM_LOCKED) && !this.mConditionChecker.isEnabled(SystemConditions.IS_SIM_LOCK) && this.mConditionChecker.isEnabled(SystemConditions.IS_SECURE_KEYGUARD) && this.mConditionChecker.isEnabled(SystemConditions.IS_LOCK_NETWORK_AND_SECURITY);
    }

    private void shutdown() {
        for (WindowManagerFunctionStrategy onShutdown : this.mFeatureFactory.createWindowManagerFunctionStrategy(this.mGlobalActions, WindowManagerFunctionStrategy.SHUTDOWN)) {
            onShutdown.onShutdown();
        }
        this.mSAnalytics.sendEventLog(SecGlobalActionsAnalytics.SID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.EID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.DID_POWER_OFF, 1);
        this.mWindowManagerFuncs.shutdown();
    }

    public ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public void onLongPress() {
        for (ActionInteractionStrategy onLongPressPowerAction : this.mFeatureFactory.createActionInteractionStrategies(this.mInfo.getName())) {
            if (onLongPressPowerAction.onLongPressPowerAction()) {
                return;
            }
        }
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_ALLOWED_SAFE_BOOT)) {
            this.mGlobalActions.confirmSafeMode(getActionInfo().getViewIndex());
        }
    }

    public void onPress() {
        for (ActionInteractionStrategy onPressPowerAction : this.mFeatureFactory.createActionInteractionStrategies(this.mInfo.getName())) {
            if (onPressPowerAction.onPressPowerAction()) {
                return;
            }
        }
        if (!this.mGlobalActions.isActionConfirming()) {
            this.mGlobalActions.confirmAction(this);
        } else if (this.mConditionChecker.isEnabled(SystemConditions.IS_FMM_LOCKED)) {
            this.mToastController.showToast(this.mResourcesWrapper.getString(17040346), 1);
        } else if (isNeedSecureConfirm()) {
            for (SecureConfirmStrategy doActionBeforeSecureConfirm : this.mFeatureFactory.createSecureConfirmStrategy(this.mInfo.getName())) {
                doActionBeforeSecureConfirm.doActionBeforeSecureConfirm();
            }
            this.mGlobalActions.registerSecureConfirmAction(this);
            this.mKeyguardManagerWrapper.setPendingIntentAfterUnlock("shutdown");
            this.mGlobalActions.hideDialogOnSecureConfirm();
        } else {
            shutdown();
        }
    }

    public void onPressSecureConfirm() {
        shutdown();
    }

    public void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
    }

    public boolean showBeforeProvisioning() {
        return true;
    }
}
