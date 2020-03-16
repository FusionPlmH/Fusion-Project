package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

public class SimpleTextActionViewModel implements ActionViewModel {
    private ActionInfo mInfo;

    public ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public void onPress() {
    }

    public void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
    }
}
