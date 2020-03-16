package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.util.ResourcesWrapper;
import com.android.fusionleo.leoglobalactions.util.SystemController;

public class BugReportActionViewModel implements ActionViewModel {
    private final SecGlobalActions mGlobalActions;
    private ActionInfo mInfo;
    private final ResourcesWrapper mResourcesWrapper;
    private final SystemController mSystemController;

    public BugReportActionViewModel(SecGlobalActions secGlobalActions, SystemController systemController, ResourcesWrapper resourcesWrapper) {
        this.mGlobalActions = secGlobalActions;
        this.mSystemController = systemController;
        this.mResourcesWrapper = resourcesWrapper;
    }

    public ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public void onLongPress() {
        this.mSystemController.doBugReport(true);
    }

    public void onPress() {
        this.mSystemController.doBugReport(false);
        this.mGlobalActions.dismissDialog(true);
    }

    public void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
    }
}
