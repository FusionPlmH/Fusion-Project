package com.android.fusionleo.leoglobalactions.features;

import android.provider.Settings.Secure;
import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionsCreationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModel;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModelFactory;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.DefaultActionNames;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;

public class BikeModeStrategy implements ActionsCreationStrategy {
    private final ConditionChecker mConditionChecker;
    private final ActionViewModelFactory mViewModelFactory;

    public BikeModeStrategy(ActionViewModelFactory actionViewModelFactory, ConditionChecker conditionChecker) {
        this.mViewModelFactory = actionViewModelFactory;
        this.mConditionChecker = conditionChecker;
    }

    public void onCreateActions(SecGlobalActions secGlobalActions) {
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_BIKE_MODE_INSTALLED) && !this.mConditionChecker.isEnabled(SystemConditions.IS_ULTRA_POWER_SAVING_MODE)) {
            ActionViewModel createActionViewModel = this.mViewModelFactory.createActionViewModel(secGlobalActions, DefaultActionNames.ACTION_BIKE_MODE);
            secGlobalActions.addAction(createActionViewModel);
         //   secGlobalActions.registerContentObserver(Secure.getUriFor("isBikeMode"), new -$$Lambda$BikeModeStrategy$PVgo2LEG-5GQHTRz_5eyRcagdSs(createActionViewModel));
        }
    }
}
