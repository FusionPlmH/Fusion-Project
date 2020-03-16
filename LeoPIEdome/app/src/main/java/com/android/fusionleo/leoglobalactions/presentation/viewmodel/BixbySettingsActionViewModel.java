package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import android.content.ActivityNotFoundException;
import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;


public class BixbySettingsActionViewModel implements ActionViewModel {
    private final String TAG = "BixbySettingsActionViewModel";
    //private final BixbyHandler mBixbyHandler;
    private final SecGlobalActions mGlobalActions;
    private ActionInfo mInfo;
   // private final LogWrapper mLogWrapper;
    //private final SettingsWrapper mSettingsWrapper;
  //  private final ThemeChecker mThemeChecker;

    public BixbySettingsActionViewModel(SecGlobalActions secGlobalActions) {
        this.mGlobalActions = secGlobalActions;

    }

    public ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public void onPress() {
        try {
            //this.mBixbyHandler.startBixbyGlobalSettingsActivity(this.mThemeChecker.getState(), this.mSettingsWrapper.getCurrentBixbySettings());
        } catch (ActivityNotFoundException e) {
          //  this.mLogWrapper.logDebug("BixbySettingsActionViewModel", "Activity not found exception!");
        }
        this.mGlobalActions.dismissDialog(true);
    }

    public void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
    }

    public boolean showBeforeProvisioning() {
        return false;
    }
}
