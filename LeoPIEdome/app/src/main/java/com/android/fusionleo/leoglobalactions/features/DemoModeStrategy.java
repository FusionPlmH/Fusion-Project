package com.android.fusionleo.leoglobalactions.features;

import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionInteractionStrategy;
import com.android.fusionleo.leoglobalactions.util.ResourcesWrapper;
import com.android.fusionleo.leoglobalactions.util.ToastController;

public class DemoModeStrategy implements ActionInteractionStrategy {
    private final ResourcesWrapper mResourcesWrapper;
    private final ToastController mToastController;

    public DemoModeStrategy(ToastController toastController, ResourcesWrapper resourcesWrapper) {
        this.mToastController = toastController;
        this.mResourcesWrapper = resourcesWrapper;
    }

    @Override
    public boolean onLongPressPowerAction() {
        return false;
    }

    @Override
    public boolean onPressBikeModeAction() {
        return false;
    }

    @Override
    public boolean onPressDataModeAction() {
        return false;
    }

    public boolean onPressEmergencyModeAction() {
        this.mToastController.showToast(this.mResourcesWrapper.getString(17040343), 1);
        return true;
    }

    @Override
    public boolean onPressPowerAction() {
        return false;
    }

    @Override
    public boolean onPressRestartAction() {
        return false;
    }
}
