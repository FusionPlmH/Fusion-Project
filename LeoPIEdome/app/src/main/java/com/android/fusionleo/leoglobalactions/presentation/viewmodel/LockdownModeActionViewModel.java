package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;

import com.android.fusionleo.leoglobalactions.util.SecGlobalActionsAnalytics;

public class LockdownModeActionViewModel implements ActionViewModel {
    private final SecGlobalActions mGlobalActions;
    private ActionInfo mInfo;
   // private final LockPatternUtilsWrapper mLockPatternUtilsWrapper;
    private final SecGlobalActionsAnalytics mSAnalytics;

    public LockdownModeActionViewModel(SecGlobalActionsAnalytics secGlobalActionsAnalytics,  SecGlobalActions secGlobalActions) {
        this.mSAnalytics = secGlobalActionsAnalytics;
      //  this.mLockPatternUtilsWrapper = lockPatternUtilsWrapper;
        this.mGlobalActions = secGlobalActions;
    }

    public ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public void onLongPress() {
    }

    public void onPress() {
        this.mSAnalytics.sendEventLog(SecGlobalActionsAnalytics.SID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.EID_DEVICE_OPTIONS, SecGlobalActionsAnalytics.DID_LOCK_DOWN, 4);
        this.mGlobalActions.dismissDialog(true);
       // this.mLockPatternUtilsWrapper.lockDownDelayed(500);
    }

    public void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
    }
}
