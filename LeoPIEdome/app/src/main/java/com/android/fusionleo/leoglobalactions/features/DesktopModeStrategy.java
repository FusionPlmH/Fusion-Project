package com.android.fusionleo.leoglobalactions.features;

import android.content.Context;
import com.android.fusionleo.leoglobalactions.presentation.strategies.DefaultActionsCreationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.DisposingStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.InitializationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.view.ExtendableGlobalActionsView;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;

import com.android.fusionleo.leoglobalactions.util.SystemConditions;

public class DesktopModeStrategy implements InitializationStrategy, DisposingStrategy, DefaultActionsCreationStrategy {
    private final ConditionChecker mConditionChecker;
    Context mContext;

    ExtendableGlobalActionsView mView;

    public DesktopModeStrategy(Context context, ExtendableGlobalActionsView extendableGlobalActionsView, ConditionChecker conditionChecker) {
        this.mContext = context;
        this.mView = extendableGlobalActionsView;

        this.mConditionChecker = conditionChecker;
    }

    @Override
    public boolean onCreateBugReportAction() {
        return false;
    }

    public boolean onCreateEmergencyAction() {
       // return this.mConditionChecker.isEnabled(SystemConditions.IS_DESKTOP_MODE_DUAL_VIEW) ^ 1;
        return false;
    }

    public void onDispose() {
      //  this.mDesktopModeManager.dispose();
    }

    public void onInitialize(boolean z) {

    }
}
