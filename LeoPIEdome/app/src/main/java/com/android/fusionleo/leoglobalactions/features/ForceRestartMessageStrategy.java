package com.android.fusionleo.leoglobalactions.features;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionsCreationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModelFactory;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.DefaultActionNames;

public class ForceRestartMessageStrategy implements ActionsCreationStrategy {
    private final ActionViewModelFactory mViewModelFactory;

    public ForceRestartMessageStrategy(ActionViewModelFactory actionViewModelFactory) {
        this.mViewModelFactory = actionViewModelFactory;
    }

    public void onCreateActions(SecGlobalActions secGlobalActions) {
        secGlobalActions.addAction(this.mViewModelFactory.createActionViewModel(secGlobalActions, DefaultActionNames.ACTION_FORCE_RESTART_MESSAGE));
    }
}
