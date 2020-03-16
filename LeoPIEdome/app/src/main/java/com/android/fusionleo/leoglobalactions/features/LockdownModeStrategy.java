package com.android.fusionleo.leoglobalactions.features;



import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionsCreationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModelFactory;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.DefaultActionNames;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;

public class LockdownModeStrategy implements ActionsCreationStrategy {
    private final ConditionChecker mConditionChecker;
    private final ActionViewModelFactory mViewModelFactory;

    public LockdownModeStrategy(ActionViewModelFactory actionViewModelFactory, ConditionChecker conditionChecker) {
        this.mViewModelFactory = actionViewModelFactory;
        this.mConditionChecker = conditionChecker;
    }

    public void onCreateActions(SecGlobalActions secGlobalActions) {
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_LOCK_DOWN_IN_POWER_MENU) && this.mConditionChecker.isEnabled(SystemConditions.IS_CURRENT_USER_SECURE) && this.mConditionChecker.isEnabled(SystemConditions.IS_STRONG_AUTH_FOR_LOCK_DOWN)) {
            secGlobalActions.addAction(this.mViewModelFactory.createActionViewModel(secGlobalActions, DefaultActionNames.ACTION_LOCKDOWN_MODE));
        }
    }
}
