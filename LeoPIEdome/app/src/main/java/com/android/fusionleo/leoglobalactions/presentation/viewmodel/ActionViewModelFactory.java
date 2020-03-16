package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;

public interface ActionViewModelFactory {
    ActionViewModel createActionViewModel(SecGlobalActions secGlobalActions, String str);
}
