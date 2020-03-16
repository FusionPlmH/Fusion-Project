package com.android.fusionleo.leoglobalactions.features;

import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionInteractionStrategy;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;

import com.android.fusionleo.leoglobalactions.util.ResourcesWrapper;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;
import com.android.fusionleo.leoglobalactions.util.ToastController;

public class SktStrategy implements ActionInteractionStrategy {
    private static final String TAG = "SktStrategy";
    private final ConditionChecker mConditionChecker;

    private final ResourcesWrapper mResourcesWrapper;
    private final ToastController mToastController;

    public SktStrategy(ConditionChecker conditionChecker, ToastController toastController, ResourcesWrapper resourcesWrapper) {
        this.mConditionChecker = conditionChecker;
        this.mToastController = toastController;
        this.mResourcesWrapper = resourcesWrapper;

    }

    @Override
    public boolean onLongPressPowerAction() {
        return false;
    }

    public boolean onPressBikeModeAction() {

        if (!this.mConditionChecker.isEnabled(SystemConditions.IS_CARRIRER_LOCK_PLUS_ENABLED)) {
            return false;
        }
        this.mToastController.showToast(this.mResourcesWrapper.getString(17040349), 1);
        return true;
    }

    @Override
    public boolean onPressDataModeAction() {
        return false;
    }

    public boolean onPressEmergencyModeAction() {

        if (!this.mConditionChecker.isEnabled(SystemConditions.IS_CARRIRER_LOCK_PLUS_ENABLED)) {
            return false;
        }
        this.mToastController.showToast(this.mResourcesWrapper.getString(17040344), 1);
        return true;
    }

    public boolean onPressPowerAction() {

        if (this.mConditionChecker.isEnabled(SystemConditions.IS_SECURE_KEYGUARD) && this.mConditionChecker.isEnabled(SystemConditions.IS_TSAFE_LOCK)) {
            this.mToastController.showToast(this.mResourcesWrapper.getString(17040345), 1);
            return true;
        } else if (!this.mConditionChecker.isEnabled(SystemConditions.IS_CARRIRER_LOCK_PLUS_ENABLED)) {
            return false;
        } else {
            this.mToastController.showToast(this.mResourcesWrapper.getString(17040346), 1);
            return true;
        }
    }

    public boolean onPressRestartAction() {

        if (!this.mConditionChecker.isEnabled(SystemConditions.IS_CARRIRER_LOCK_PLUS_ENABLED)) {
            return false;
        }
        this.mToastController.showToast(this.mResourcesWrapper.getString(17040348), 1);
        return true;
    }
}
