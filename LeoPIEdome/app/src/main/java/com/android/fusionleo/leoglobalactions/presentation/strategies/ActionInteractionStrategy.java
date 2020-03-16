package com.android.fusionleo.leoglobalactions.presentation.strategies;

public interface ActionInteractionStrategy {
    boolean onLongPressPowerAction();

    boolean onPressBikeModeAction();

    boolean onPressDataModeAction();
    boolean onPressEmergencyModeAction();
    boolean onPressPowerAction();
    boolean onPressRestartAction() ;
}
