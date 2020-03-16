package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import android.content.Context;
import android.hardware.input.InputManager;
import android.os.SystemClock;
import android.util.Log;
import android.view.InputEvent;
import android.view.KeyEvent;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActions;
import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager;
import com.android.fusionleo.leoglobalactions.presentation.features.FeatureFactory;
import com.android.fusionleo.leoglobalactions.presentation.strategies.WindowManagerFunctionStrategy;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.KeyGuardManagerWrapper;
import com.android.fusionleo.leoglobalactions.util.ResourcesWrapper;
import com.android.fusionleo.leoglobalactions.util.SecGlobalActionsAnalytics;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;
import com.android.fusionleo.leoglobalactions.util.ToastController;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;


public class ScreenShotActionViewModel implements ActionViewModel {
    private final ConditionChecker mConditionChecker;
    private final FeatureFactory mFeatureFactory;
    private final SecGlobalActions mGlobalActions;
    private ActionInfo mInfo;
    private final KeyGuardManagerWrapper mKeyguardManagerWrapper;
    private final ResourcesWrapper mResourcesWrapper;
    private final SecGlobalActionsAnalytics mSAnalytics;
    private final ToastController mToastController;
    private final SecGlobalActionsManager mWindowManagerFuncs;

    public ScreenShotActionViewModel(SecGlobalActions secGlobalActions, ConditionChecker conditionChecker, SecGlobalActionsAnalytics secGlobalActionsAnalytics, SecGlobalActionsManager secGlobalActionsManager, FeatureFactory featureFactory, ToastController toastController, KeyGuardManagerWrapper keyGuardManagerWrapper, ResourcesWrapper resourcesWrapper) {
       mGlobalActions = secGlobalActions;
       mSAnalytics = secGlobalActionsAnalytics;
      mWindowManagerFuncs = secGlobalActionsManager;
       mConditionChecker = conditionChecker;
       mFeatureFactory = featureFactory;
       mToastController = toastController;
     mKeyguardManagerWrapper = keyGuardManagerWrapper;
      mResourcesWrapper = resourcesWrapper;
    }

    private boolean isNeedSecureConfirm() {
        return !this.mConditionChecker.isEnabled(SystemConditions.IS_RMM_LOCKED) && !this.mConditionChecker.isEnabled(SystemConditions.IS_SIM_LOCK) && this.mConditionChecker.isEnabled(SystemConditions.IS_SECURE_KEYGUARD) && this.mConditionChecker.isEnabled(SystemConditions.IS_LOCK_NETWORK_AND_SECURITY) && this.mConditionChecker.isEnabled(SystemConditions.IS_ENCRYPTION_STATUS_ACTIVE);
    }

    public ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public void onPress() {
        this.mGlobalActions.dismissDialog(false);
        ScreenShot();
    }

    public void onPressSecureConfirm() {
        reboot();
    }

    void reboot() {
        for (WindowManagerFunctionStrategy onReboot : this.mFeatureFactory.createWindowManagerFunctionStrategy(this.mGlobalActions, "REBOOT")) {
            onReboot.onReboot();
        }
        this.mSAnalytics.sendEventLog("611", "6111", "Restart", 2);
        this.mWindowManagerFuncs.reboot(false);
    }
   void ScreenShot(){
       if (getLeoOS().equals(getOnema())) {
           Log.w(new String(new char[]{'S', 'C', 'E', 'E','N','S','H','O','T'}), new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}));
           if (getCode() .equals(getOCodeN())) {
               Context context = mKeyguardManagerWrapper.getContext();
               LeoGlobalActiong(context,112,null);
               return;
           }
           return;
       }

   }
    public void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
    }

    public boolean showBeforeProvisioning() {
        return true;
    }


}
