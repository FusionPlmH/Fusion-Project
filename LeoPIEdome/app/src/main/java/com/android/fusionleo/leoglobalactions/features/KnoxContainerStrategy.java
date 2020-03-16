package com.android.fusionleo.leoglobalactions.features;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.strategies.InitializationStrategy;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;

public class KnoxContainerStrategy implements InitializationStrategy {
    private final ConditionChecker mConditionChecker;
    private final SecGlobalActions mGlobalActions;

    public KnoxContainerStrategy(SecGlobalActions secGlobalActions, ConditionChecker conditionChecker) {
        this.mGlobalActions = secGlobalActions;
        this.mConditionChecker = conditionChecker;
    }

    public void onInitialize(boolean z) {
        if (!z && this.mConditionChecker.isEnabled(SystemConditions.IS_VALID_VERSION)) {
            this.mGlobalActions.setKeyguardShowing(this.mConditionChecker.isEnabled(SystemConditions.GET_KEYGUARD_SHOW_STATE) | z);
        }
    }
}
