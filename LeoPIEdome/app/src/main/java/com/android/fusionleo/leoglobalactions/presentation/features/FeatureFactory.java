package com.android.fusionleo.leoglobalactions.presentation.features;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionInteractionStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionsCreationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.DefaultActionsCreationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.DisposingStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.InitializationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.OnKeyListenerStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.SecureConfirmStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.SoftwareUpdateStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.WindowDecorationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.WindowManagerFunctionStrategy;
import java.util.List;

public interface FeatureFactory {
    List<ActionInteractionStrategy> createActionInteractionStrategies(String str);

    List<ActionsCreationStrategy> createActionsCreationStrategies(SecGlobalActions secGlobalActions);

    List<DefaultActionsCreationStrategy> createDefaultActionsCreationStrategy(SecGlobalActions secGlobalActions, String str);

    List<DisposingStrategy> createDisposingStrategies(SecGlobalActions secGlobalActions);

    List<InitializationStrategy> createInitializationStrategies(SecGlobalActions secGlobalActions);

    List<OnKeyListenerStrategy> createOnKeyListenerStrategy(SecGlobalActions secGlobalActions);

    List<SecureConfirmStrategy> createSecureConfirmStrategy(String str);

    List<SoftwareUpdateStrategy> createSoftwareUpdateStrategy(SecGlobalActions secGlobalActions, String str);

    List<WindowDecorationStrategy> createWindowDecorationStrategies();

    List<WindowManagerFunctionStrategy> createWindowManagerFunctionStrategy(SecGlobalActions secGlobalActions, String str);
}
