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

public class DataModeActionViewModel implements ActionViewModel {
  //  private final AlertDialogFactory mAlertDialogFactory;
    private ConditionChecker mConditionChecker;
    private final FeatureFactory mFeatureFactory;
    private final SecGlobalActions mGlobalActions;
    private ActionInfo mInfo;
    private final ResourcesWrapper mResourcesWrapper;
    private final SecGlobalActionsAnalytics mSAnalytics;
    private final SystemController mSystemController;
    private ToggleState mToggleState;

    public DataModeActionViewModel(SecGlobalActions secGlobalActions, ConditionChecker conditionChecker, SecGlobalActionsAnalytics secGlobalActionsAnalytics, SystemController systemController,  FeatureFactory featureFactory, ResourcesWrapper resourcesWrapper) {
        this.mGlobalActions = secGlobalActions;
        this.mConditionChecker = conditionChecker;
        this.mSAnalytics = secGlobalActionsAnalytics;
        this.mSystemController = systemController;
      //  this.mAlertDialogFactory = alertDialogFactory;
        this.mFeatureFactory = featureFactory;
        this.mResourcesWrapper = resourcesWrapper;
    }

    public ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public ToggleState getState() {
        return this.mToggleState;
    }

    public void onPress() {
        for (ActionInteractionStrategy onPressDataModeAction : this.mFeatureFactory.createActionInteractionStrategies(this.mInfo.getName())) {
            if (onPressDataModeAction.onPressDataModeAction()) {
                return;
            }
        }
        if (!this.mConditionChecker.isEnabled(SystemConditions.IS_AIRPLANE_MODE) && !this.mConditionChecker.isEnabled(SystemConditions.IS_FMM_LOCKED)) {
            if (this.mConditionChecker.isEnabled(SystemConditions.HAS_ANY_SIM)) {
                if (this.mToggleState == ToggleState.on) {
                    this.mToggleState = ToggleState.off;
                } else {
                    this.mToggleState = ToggleState.on;
                }
                this.mSAnalytics.sendEventLog(SecGlobalActionsAnalytics.SID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.EID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.DID_MOBILE_DATA, 5);
                this.mSystemController.setDataEnabled(this.mToggleState == ToggleState.on);
                this.mGlobalActions.dismissDialog(true);
                return;
            }
          //  this.mAlertDialogFactory.getInsertSimCardDialog().show();
        }
    }

    public void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
        setStateLabel();
    }

    public void setState(ToggleState toggleState) {
        this.mToggleState = toggleState;
    }

    public void setStateLabel() {
        if (!this.mConditionChecker.isEnabled(SystemConditions.GET_MOBILE_DATA_ENABLED) || this.mConditionChecker.isEnabled(SystemConditions.IS_SIM_STATE_ABSENT) || this.mConditionChecker.isEnabled(SystemConditions.IS_AIRPLANE_MODE)) {
            this.mToggleState = ToggleState.off;
            this.mInfo.setStateLabel(this.mResourcesWrapper.getString(17040289));
            return;
        }
        this.mToggleState = ToggleState.on;
        this.mInfo.setStateLabel(this.mResourcesWrapper.getString(17040290));
    }

    public boolean showBeforeProvisioning() {
        return false;
    }
}
