package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.features.FeatureFactory;
import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionInteractionStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.SecureConfirmStrategy;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModel.ToggleState;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper;
import com.android.fusionleo.leoglobalactions.util.ResourcesWrapper;
import com.android.fusionleo.leoglobalactions.util.SecGlobalActionsAnalytics;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;
import com.android.fusionleo.leoglobalactions.util.SystemController;
import com.android.fusionleo.leoglobalactions.util.ToastController;

public class EmergencyActionViewModel implements ActionViewModel {
    private final ConditionChecker mConditionChecker;
    private final FeatureFactory mFeatureFactory;
    private final SecGlobalActions mGlobalActions;
    private ActionInfo mInfo;
    private final KeyGuardManagerWrapper mKeyguardManagerWrapper;
    private final ResourcesWrapper mResourcesWrapper;
    private final SecGlobalActionsAnalytics mSAnalytics;
    private final SystemController mSystemController;
    private final ToastController mToastController;
    private ToggleState mToggleState;

    public EmergencyActionViewModel(SecGlobalActions secGlobalActions, ConditionChecker conditionChecker, SecGlobalActionsAnalytics secGlobalActionsAnalytics, SystemController systemController, FeatureFactory featureFactory, KeyGuardManagerWrapper keyGuardManagerWrapper, ToastController toastController, ResourcesWrapper resourcesWrapper) {
        this.mSAnalytics = secGlobalActionsAnalytics;
        this.mSystemController = systemController;
        this.mConditionChecker = conditionChecker;
        this.mFeatureFactory = featureFactory;
        this.mKeyguardManagerWrapper = keyGuardManagerWrapper;
        this.mGlobalActions = secGlobalActions;
        this.mToastController = toastController;
        this.mResourcesWrapper = resourcesWrapper;
    }

    private boolean isNeedSecureConfirm() {
        return !this.mConditionChecker.isEnabled(SystemConditions.IS_RMM_LOCKED) && !this.mConditionChecker.isEnabled(SystemConditions.IS_SIM_LOCK) && this.mConditionChecker.isEnabled(SystemConditions.IS_SECURE_KEYGUARD) && this.mConditionChecker.isEnabled(SystemConditions.IS_LOCK_NETWORK_AND_SECURITY);
    }

    public ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public ToggleState getState() {
        return this.mToggleState;
    }

    public void onPress() {
        for (ActionInteractionStrategy onPressEmergencyModeAction : this.mFeatureFactory.createActionInteractionStrategies(this.mInfo.getName())) {
            if (onPressEmergencyModeAction.onPressEmergencyModeAction()) {
                return;
            }
        }
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_FMM_LOCKED)) {
            this.mToastController.showToast(this.mResourcesWrapper.getString(17040344), 1);
        } else if (isNeedSecureConfirm()) {
            for (SecureConfirmStrategy doActionBeforeSecureConfirm : this.mFeatureFactory.createSecureConfirmStrategy(this.mInfo.getName())) {
                doActionBeforeSecureConfirm.doActionBeforeSecureConfirm();
            }
            this.mGlobalActions.registerSecureConfirmAction(this);
            this.mKeyguardManagerWrapper.setPendingIntentAfterUnlock("emergencymode");
            this.mGlobalActions.hideDialogOnSecureConfirm();
        } else {
            this.mGlobalActions.dismissDialog(true);
            this.mSAnalytics.sendEventLog(SecGlobalActionsAnalytics.SID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.EID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.DID_EMERGENCY_MODE, 3);
            this.mSystemController.toggleEmergencyMode();
        }
    }

    public void onPressSecureConfirm() {
        this.mGlobalActions.dismissDialog(false);
        this.mSAnalytics.sendEventLog(SecGlobalActionsAnalytics.SID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.EID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.DID_EMERGENCY_MODE, 3);
        this.mSystemController.toggleEmergencyMode();
    }

    public void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
        setStateLabel();
    }

    public void setState(ToggleState toggleState) {
        this.mToggleState = toggleState;
    }

    public void setStateLabel() {
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_EMERGENCY_MODE)) {
            this.mToggleState = ToggleState.on;
            this.mInfo.setStateLabel(this.mResourcesWrapper.getString(17040293));
            return;
        }
        this.mToggleState = ToggleState.off;
        this.mInfo.setStateLabel(this.mResourcesWrapper.getString(17040292));
    }
}
