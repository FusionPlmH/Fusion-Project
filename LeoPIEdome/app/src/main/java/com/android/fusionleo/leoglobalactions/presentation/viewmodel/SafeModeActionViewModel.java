package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper;
import com.android.fusionleo.leoglobalactions.util.ResourcesWrapper;
import com.android.fusionleo.leoglobalactions.util.SecGlobalActionsAnalytics;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;
import com.android.fusionleo.leoglobalactions.util.ToastController;

public class SafeModeActionViewModel implements ActionViewModel {
    private final ConditionChecker mConditionChecker;
    private final SecGlobalActions mGlobalActions;
    private ActionInfo mInfo;
    private final KeyGuardManagerWrapper mKeyguardManagerWrapper;
    private final ResourcesWrapper mResourcesWrapper;
    private final SecGlobalActionsAnalytics mSAnalytics;
    private final ToastController mToastController;
    private final SecGlobalActionsManager mWindowManagerFuncs;

    public SafeModeActionViewModel(SecGlobalActions secGlobalActions, SecGlobalActionsManager secGlobalActionsManager, ConditionChecker conditionChecker, KeyGuardManagerWrapper keyGuardManagerWrapper, ResourcesWrapper resourcesWrapper, ToastController toastController, SecGlobalActionsAnalytics secGlobalActionsAnalytics) {
        this.mGlobalActions = secGlobalActions;
        this.mWindowManagerFuncs = secGlobalActionsManager;
        this.mConditionChecker = conditionChecker;
        this.mKeyguardManagerWrapper = keyGuardManagerWrapper;
        this.mResourcesWrapper = resourcesWrapper;
        this.mToastController = toastController;
        this.mSAnalytics = secGlobalActionsAnalytics;
    }

    private boolean isNeedSecureConfirm() {
        return !this.mConditionChecker.isEnabled(SystemConditions.IS_RMM_LOCKED) && !this.mConditionChecker.isEnabled(SystemConditions.IS_SIM_LOCK) && this.mConditionChecker.isEnabled(SystemConditions.IS_SECURE_KEYGUARD) && this.mConditionChecker.isEnabled(SystemConditions.IS_LOCK_NETWORK_AND_SECURITY) && this.mConditionChecker.isEnabled(SystemConditions.IS_ENCRYPTION_STATUS_ACTIVE);
    }

    public ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public void onPress() {
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_FMM_LOCKED)) {
            this.mToastController.showToast(this.mResourcesWrapper.getString(17040348), 1);
        } else if (isNeedSecureConfirm()) {
            this.mGlobalActions.registerSecureConfirmAction(this);
            this.mKeyguardManagerWrapper.setPendingIntentAfterUnlock("shutdown");
            this.mGlobalActions.hideDialogOnSecureConfirm();
        } else {
            safeMode();
        }
    }

    public void onPressSecureConfirm() {
        safeMode();
    }

    public void safeMode() {
        this.mSAnalytics.sendEventLog(SecGlobalActionsAnalytics.SID_SAFE_MODE, SecGlobalActionsAnalytics.EID_SAFE_MODE);
        this.mWindowManagerFuncs.reboot(true);
    }

    public void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
    }

    public boolean showBeforeProvisioning() {
        return true;
    }
}
