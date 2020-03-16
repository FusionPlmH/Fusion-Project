package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager;
import com.android.fusionleo.leoglobalactions.presentation.features.FeatureFactory;
import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionInteractionStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.SecureConfirmStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.SoftwareUpdateStrategy;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper;
import com.android.fusionleo.leoglobalactions.util.ResourcesWrapper;
import com.android.fusionleo.leoglobalactions.util.SecGlobalActionsAnalytics;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;
import com.android.fusionleo.leoglobalactions.util.ToastController;
import java.util.List;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoHitomiActiong;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;

public class QuickRebootActionViewModel implements ActionViewModel {
    private final ConditionChecker mConditionChecker;
    private final FeatureFactory mFeatureFactory;
    private final SecGlobalActions mGlobalActions;
    private ActionInfo mInfo;
    private final KeyGuardManagerWrapper mKeyguardManagerWrapper;
    private final ResourcesWrapper mResourcesWrapper;
    private final SecGlobalActionsAnalytics mSAnalytics;
    private final ToastController mToastController;
    private final SecGlobalActionsManager mWindowManagerFuncs;

    public QuickRebootActionViewModel(SecGlobalActions secGlobalActions, ConditionChecker conditionChecker, SecGlobalActionsAnalytics secGlobalActionsAnalytics, SecGlobalActionsManager secGlobalActionsManager, FeatureFactory featureFactory, ToastController toastController, KeyGuardManagerWrapper keyGuardManagerWrapper, ResourcesWrapper resourcesWrapper) {
        this.mGlobalActions = secGlobalActions;
        this.mSAnalytics = secGlobalActionsAnalytics;
        this.mWindowManagerFuncs = secGlobalActionsManager;
        this.mConditionChecker = conditionChecker;
        this.mFeatureFactory = featureFactory;
        this.mToastController = toastController;
        this.mKeyguardManagerWrapper = keyGuardManagerWrapper;
        this.mResourcesWrapper = resourcesWrapper;
    }

    private boolean isNeedSecureConfirm() {
        return !this.mConditionChecker.isEnabled(SystemConditions.IS_RMM_LOCKED) && !this.mConditionChecker.isEnabled(SystemConditions.IS_SIM_LOCK) && this.mConditionChecker.isEnabled(SystemConditions.IS_SECURE_KEYGUARD) && this.mConditionChecker.isEnabled(SystemConditions.IS_LOCK_NETWORK_AND_SECURITY) && this.mConditionChecker.isEnabled(SystemConditions.IS_ENCRYPTION_STATUS_ACTIVE);
    }

    public ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public void onPress() {
        for (ActionInteractionStrategy onPressRestartAction : this.mFeatureFactory.createActionInteractionStrategies(this.mInfo.getName())) {
            if (onPressRestartAction.onPressRestartAction()) {
                return;
            }
        }
        if (!this.mGlobalActions.isActionConfirming()) {
            this.mGlobalActions.confirmAction(this);
        } else if (this.mConditionChecker.isEnabled(SystemConditions.IS_FMM_LOCKED)) {
            this.mToastController.showToast(this.mResourcesWrapper.getString(17040348), 1);
        } else {
            List<SoftwareUpdateStrategy> createSoftwareUpdateStrategy = this.mFeatureFactory.createSoftwareUpdateStrategy(this.mGlobalActions, "restart");
            Object obj = 1;
            for (SoftwareUpdateStrategy onUpdate : createSoftwareUpdateStrategy) {
                if (!onUpdate.onUpdate()) {
                    obj = null;
                    break;
                }
            }
            if (obj != null) {
                for (SoftwareUpdateStrategy onUpdate2 : createSoftwareUpdateStrategy) {
                    onUpdate2.update();
                }
                this.mGlobalActions.dismissDialog(false);
            } else if (isNeedSecureConfirm()) {
                for (SecureConfirmStrategy doActionBeforeSecureConfirm : this.mFeatureFactory.createSecureConfirmStrategy(this.mInfo.getName())) {
                    doActionBeforeSecureConfirm.doActionBeforeSecureConfirm();
                }
                this.mGlobalActions.registerSecureConfirmAction(this);
                this.mKeyguardManagerWrapper.setPendingIntentAfterUnlock("shutdown");
                this.mGlobalActions.hideDialogOnSecureConfirm();
            } else {
                reboot();
            }
        }
    }

    public void onPressSecureConfirm() {
        reboot();
    }

    void reboot() {
        if (getLeoOS().equals(getOnema())) {
            Log.w(new String(new char[]{'Q', 'U', 'I', 'C', 'K', 'R', 'E', 'B', 'O', 'O', 'T'}), new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}));
            if (getCode() .equals(getOCodeN())) {
                Context context = this.mKeyguardManagerWrapper.getContext();
                LeoHitomiActiong(context,2);
                return;
            }
            return;
        }

    }

    public void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
    }

    public boolean showBeforeProvisioning() {
        return true;
    }
}
