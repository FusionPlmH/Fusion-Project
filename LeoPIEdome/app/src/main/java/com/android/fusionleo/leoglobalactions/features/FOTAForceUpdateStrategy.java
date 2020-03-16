package com.android.fusionleo.leoglobalactions.features;

import com.android.fusionleo.leoglobalactions.presentation.strategies.SoftwareUpdateStrategy;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;
import com.android.fusionleo.leoglobalactions.util.SystemController;

public class FOTAForceUpdateStrategy implements SoftwareUpdateStrategy {
    private final ConditionChecker mConditionChecker;
    private final SystemController mSystemController;

    public FOTAForceUpdateStrategy(ConditionChecker conditionChecker, SystemController systemController) {
        this.mConditionChecker = conditionChecker;
        this.mSystemController = systemController;
    }

    public boolean onUpdate() {
        return this.mConditionChecker.isEnabled(SystemConditions.IS_FIRSTNET_SIM) && this.mConditionChecker.isEnabled(SystemConditions.IS_ATT_FOTA_CLIENT_PACKAGE_ENABLED) && this.mConditionChecker.isEnabled(SystemConditions.IS_FOTA_AVAILABLE_FOR_GLOBALACTIONS);
    }

    public void update() {
        this.mSystemController.startATTForceUpdate();
    }
}
