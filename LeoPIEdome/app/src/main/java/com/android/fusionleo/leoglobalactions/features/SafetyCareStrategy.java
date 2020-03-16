package com.android.fusionleo.leoglobalactions.features;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.strategies.DefaultActionsCreationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.InitializationStrategy;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;

import com.android.fusionleo.leoglobalactions.util.SystemConditions;

public class SafetyCareStrategy implements InitializationStrategy, DefaultActionsCreationStrategy {
    private static final String TAG = "SafetyCareStrategy";
    private final ConditionChecker mConditionChecker;
    private final SecGlobalActions mGlobalActions;
    boolean mIsFirstEmergencyActionCheck = true;
    boolean mLastEmergencyActionResult = false;


    public SafetyCareStrategy(SecGlobalActions secGlobalActions, ConditionChecker conditionChecker) {
        this.mGlobalActions = secGlobalActions;
        this.mConditionChecker = conditionChecker;


    }

    @Override
    public boolean onCreateBugReportAction() {
        return false;
    }

    public boolean onCreateEmergencyAction() {
        if (this.mIsFirstEmergencyActionCheck) {
            this.mIsFirstEmergencyActionCheck = false;
            if (this.mConditionChecker.isEnabled(SystemConditions.IS_DOMESTIC_OTA_MODE)) {

                this.mLastEmergencyActionResult = false;
                return this.mLastEmergencyActionResult;
            } else if (this.mConditionChecker.isEnabled(SystemConditions.IS_MISSING_PHONE_LOCK) || !this.mConditionChecker.isEnabled(SystemConditions.CAN_SET_MODE) || this.mConditionChecker.isEnabled(SystemConditions.IS_UPSM_ENABLED) || this.mConditionChecker.isEnabled(SystemConditions.IS_KIDS_HOME_MODE) || this.mConditionChecker.isEnabled(SystemConditions.IS_COM_CONTAINER_MODE)) {
                this.mLastEmergencyActionResult = false;
            } else {
                this.mLastEmergencyActionResult = true;
            }
        }
        return this.mLastEmergencyActionResult;
    }

    public void onInitialize(boolean z) {
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_MODIFYING)) {

            this.mGlobalActions.setDisabled();
        }
    }
}
