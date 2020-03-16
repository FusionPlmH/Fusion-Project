package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.features.FeatureFactory;
import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionInteractionStrategy;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModel.ToggleState;

import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.ResourcesWrapper;
import com.android.fusionleo.leoglobalactions.util.SecGlobalActionsAnalytics;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;
import com.android.fusionleo.leoglobalactions.util.SystemController;
import com.android.fusionleo.leoglobalactions.util.ToastController;

public class BikeModeActionViewModel implements ActionViewModel {
    private ActionInfo mActionInfo;
  //  private final AlertDialogFactory mAlertDialogFactory;
    private final ConditionChecker mConditionChecker;
    private final FeatureFactory mFeatureFactory;
    private final SecGlobalActions mGlobalActions;
    private final ResourcesWrapper mResourcesWrapper;
    private final SecGlobalActionsAnalytics mSAnalytics;
    private final SystemController mSystemController;
    private final ToastController mToastController;
    private ToggleState mToggleState;

    public BikeModeActionViewModel(SecGlobalActions secGlobalActions, ConditionChecker conditionChecker, SecGlobalActionsAnalytics secGlobalActionsAnalytics,  SystemController systemController, FeatureFactory featureFactory, ToastController toastController, ResourcesWrapper resourcesWrapper) {
        this.mConditionChecker = conditionChecker;
        this.mSAnalytics = secGlobalActionsAnalytics;

        this.mSystemController = systemController;
        this.mFeatureFactory = featureFactory;
        this.mGlobalActions = secGlobalActions;
        this.mToastController = toastController;
        this.mResourcesWrapper = resourcesWrapper;
    }

    private void setStateLabel() {
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_BIKE_MODE)) {
            this.mToggleState = ToggleState.on;
            this.mActionInfo.setStateLabel(this.mResourcesWrapper.getString(17040275));
            return;
        }
        this.mToggleState = ToggleState.off;
        this.mActionInfo.setStateLabel(this.mResourcesWrapper.getString(17040274));
    }

    public ActionInfo getActionInfo() {
        return this.mActionInfo;
    }

    public ToggleState getState() {
        return this.mToggleState;
    }

    public void onPress() {
        for (ActionInteractionStrategy onPressBikeModeAction : this.mFeatureFactory.createActionInteractionStrategies(this.mActionInfo.getName())) {
            if (onPressBikeModeAction.onPressBikeModeAction()) {
                return;
            }
        }
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_FMM_LOCKED)) {
            this.mToastController.showToast(this.mResourcesWrapper.getString(17040349), 1);
            return;
        }
        this.mSAnalytics.sendEventLog(SecGlobalActionsAnalytics.SID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.EID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.DID_BIKE_MODE, 6);
        this.mGlobalActions.dismissDialog(true);
        boolean isEnabled = this.mConditionChecker.isEnabled(SystemConditions.IS_BIKE_MODE);

    }

    public void setActionInfo(ActionInfo actionInfo) {
        this.mActionInfo = actionInfo;
        setStateLabel();
    }

    public void setState(ToggleState toggleState) {
        this.mToggleState = toggleState;
    }

    public void updateState() {
        setStateLabel();
        this.mGlobalActions.getGlobalActionsView().notifyDataSetChanged();
    }
}
