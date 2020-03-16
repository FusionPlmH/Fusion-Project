package com.android.systemui.globalactions.presentation.view;

import android.content.Context;

import com.android.systemui.plugins.GlobalActions;


public class SecGlobalActionsDialog  {
    public static boolean GLOBALACTION_FORCE_SHOW;

    public SecGlobalActionsDialog(Context context, GlobalActions.GlobalActionsManager globalActionsManager) {
        super();

        initDependencies(globalActionsManager);
    }

    public static void globalactionForceShow() {

    }

    private void initDependencies(GlobalActions.GlobalActionsManager globalActionsManager) {

    }
}
