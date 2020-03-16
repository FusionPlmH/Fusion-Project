package com.android.fusionleo.leoglobalactions.presentation;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import com.android.fusionleo.leoglobalactions.presentation.features.FeatureFactory;
import com.android.fusionleo.leoglobalactions.presentation.strategies.ActionsCreationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.strategies.DefaultActionsCreationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.view.ExtendableGlobalActionsView;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModel;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModelFactory;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.DefaultActionNames;

import com.android.fusionleo.leoglobalactions.util.ConditionChecker;

import com.android.fusionleo.leoglobalactions.util.SystemConditions;
import com.android.fusionleo.leoglobalactions.util.SystemController;
import com.android.fusionleo.statusbar.LeoStatusbarSettings;
import com.android.systemui.SystemUIApplication;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;


import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;

import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.systemui.SystemUIApplication.getContext;

public class SecGlobalActionsPresenter implements SecGlobalActions {
    private static final String TAG = "SecGlobalActionsPresenter";
    public static Comparator<ActionViewModel> sViewPositionComparator ;
    ActionViewModel mActionConfirming;

    FeatureFactory mFactory;

    boolean mIsDeviceProvisioned;
    boolean mIsDisabled;
    boolean mIsKeyguardShowing;
    boolean mIsOverrideDefaultActions;
    boolean mIsShowing;
    List<ActionViewModel> mActions = new ArrayList();

    ConditionChecker mSystemCondition;
    SystemController mSystemController;

    ExtendableGlobalActionsView mView;
    ActionViewModelFactory mViewModelFactory;
    SecGlobalActionsManager mWindowManagerFuncs;

    public SecGlobalActionsPresenter(ExtendableGlobalActionsView extendableGlobalActionsView, FeatureFactory featureFactory, ActionViewModelFactory actionViewModelFactory, SecGlobalActionsManager secGlobalActionsManager,  SystemController systemController, ConditionChecker conditionChecker) {
        this.mView = extendableGlobalActionsView;

        this.mViewModelFactory = actionViewModelFactory;
        this.mWindowManagerFuncs = secGlobalActionsManager;

        this.mSystemController = systemController;
        this.mSystemCondition = conditionChecker;

    }

    static /* synthetic */ int lambda$static$4(ActionViewModel actionViewModel, ActionViewModel actionViewModel2) {
        return actionViewModel.getActionInfo().getViewType().getValue() < actionViewModel2.getActionInfo().getViewType().getValue() ? -1 : 1;
    }

    public void addAction(ActionViewModel actionViewModel) {
        if (actionViewModel != null) {
            //this.mActions.add(actionViewModel);

            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("addAction (");
            stringBuilder.append(actionViewModel.getActionInfo().getName());
            stringBuilder.append(")");
            //logWrapper.i(str, stringBuilder.toString());
        }
    }

    public void clearActions(String str) {

    }

    public void clearCoverStateChange() {

        this.mSystemController.clearCoverStateChange();
    }

    public void confirmAction(ActionViewModel actionViewModel) {
        this.mView.showActionConfirming(actionViewModel);
        this.mActionConfirming = actionViewModel;
        hideQuickPanel("GlobalActions$ConfirmDialog");
    }

    public void confirmSafeMode(int i) {
        ActionViewModel createActionViewModel = this.mViewModelFactory.createActionViewModel(this, DefaultActionNames.ACTION_SAFE_MODE);
        createActionViewModel.getActionInfo().setViewIndex(i);
        confirmAction(createActionViewModel);
    }


    void createActions() {
        for (ActionsCreationStrategy onCreateActions : this.mFactory.createActionsCreationStrategies(this)) {
            onCreateActions.onCreateActions(this);
        }
        if (!this.mIsOverrideDefaultActions) {
            createDefaultActions();
        }
    }

    public void createDefaultActions() {
        Integer num;
        LeoStatusbarSettings.LeoStatusSettings(SystemUIApplication.getContext());
        addAction(this.mViewModelFactory.createActionViewModel(this, DefaultActionNames.ACTION_POWER));
        if (LeoStatusbarSettings.setLeoUesrGlobalActionsRESTART == 1) {
            addAction(this.mViewModelFactory.createActionViewModel(this, DefaultActionNames.ACTION_RESTART));
        }
        List<DefaultActionsCreationStrategy> createDefaultActionsCreationStrategy = this.mFactory.createDefaultActionsCreationStrategy(this, DefaultActionNames.ACTION_BUG_REPORT);
        if (this.mSystemCondition.isEnabled(SystemConditions.IS_BUG_REPORT_MODE)) {
            num = null;
            for (DefaultActionsCreationStrategy onCreateBugReportAction : createDefaultActionsCreationStrategy) {
                if (!onCreateBugReportAction.onCreateBugReportAction()) {
                    num = Integer.valueOf(1);
                    break;
                }
            }
            if (num == null) {
                addAction(this.mViewModelFactory.createActionViewModel(this, DefaultActionNames.ACTION_BUG_REPORT));
            }
        }
        if (this.mSystemCondition.isEnabled(SystemConditions.IS_SUPPORT_EMERGENCY_MODE)) {
            num = null;
            for (DefaultActionsCreationStrategy onCreateBugReportAction2 : this.mFactory.createDefaultActionsCreationStrategy(this, DefaultActionNames.ACTION_EMERGENCY)) {
                if (!onCreateBugReportAction2.onCreateEmergencyAction()) {
                    num = Integer.valueOf(1);
                    break;
                }
            }
            if (num == null && LeoStatusbarSettings.setLeoUesrGlobalActionsEMERGENCY == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, DefaultActionNames.ACTION_EMERGENCY));
            }
        }
        createLeoActions();
    }

    public void createLeoActions() {

            if (LeoStatusbarSettings.setLeoUesrGlobalActionsSCREENSHOT == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_screenshot"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsQUICK_BOOT == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_quickboot"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsRECOBERY == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_recovery"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsDOWNLOAD == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_download"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsTORCH == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_flashlight"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsOUTDOOR == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_outdoor"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsMIPOP == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_mipop"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsSCREENRECORD == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_screenrecord"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsAIRPLANE == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_airplane"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsWIFI == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_wifi"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsLEO == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_tweaks"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsSOUND == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_sound"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsFLOATBLL == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_floating"));
            }
            if (LeoStatusbarSettings.setLeoUesrGlobalActionsSYSTEMUI == 1) {
                addAction(this.mViewModelFactory.createActionViewModel(this, "leo_SystemUI"));
            }

    }

    public List<ActionViewModel> getValidActions() {
        List<ActionViewModel> arrayList = new ArrayList();
        for (ActionViewModel actionViewModel : this.mActions) {
            if (this.mIsDeviceProvisioned || actionViewModel.showBeforeProvisioning()) {
                arrayList.add(actionViewModel);
            }
        }

        return arrayList;
    }




    public boolean createOnKeyListenerActions(KeyEvent keyEvent, int i) {
        boolean z = false;

        return z;
    }

    public void dismissDialog(boolean z) {
        if (z) {
            this.mView.dismissWithAnimation();
        } else {
            this.mView.dismiss();
        }
    }

    void dispose() {

    }

    public ExtendableGlobalActionsView getGlobalActionsView() {
        return this.mView;
    }


    public void hideDialogOnSecureConfirm() {
        this.mView.hideDialogOnSecureConfirm();
    }

    public void hideQuickPanel() {
        hideQuickPanel("GlobalActions");
    }

    public void hideQuickPanel(String str) {

        String str2 = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("hideQuickPanelBackground(");
        stringBuilder.append(str);
        stringBuilder.append(")");

        this.mSystemController.hideQuickPanel(str);
    }

    void initialize() {
        this.mIsShowing = false;
        this.mIsOverrideDefaultActions = false;
        this.mActionConfirming = null;


    }

    public boolean isActionConfirming() {
        return this.mActionConfirming != null;
    }

    public boolean isDeviceProvisioned() {
        return this.mIsDeviceProvisioned;
    }

    public boolean isDisabled() {
        return this.mIsDisabled;
    }

    public boolean isKeyguardShowing() {
        return this.mIsKeyguardShowing;
    }

    public void onCancelDialog() {

        dismissDialog(true);
        clearCoverStateChange();
    }

    public void onDismiss() {
        dispose();
        this.mWindowManagerFuncs.onGlobalActionsHidden();
        this.mIsShowing = false;

    }

    public void onPrepareWindow() {

    }

    public void onShowDialog() {

        this.mWindowManagerFuncs.onGlobalActionsShown();
        this.mIsShowing = true;
       // this.mBroadcastManager.registerDismissActions(new -$$Lambda$SecGlobalActionsPresenter$ur2L0RUYw8MOp-xKNoqwKkrg0CM(this), new -$$Lambda$SecGlobalActionsPresenter$sAcpSNDcmj3kIGDwBELGqd9RStw(this));
        hideQuickPanel();
    }

    public boolean onStart(boolean z, boolean z2, boolean z3) {

        if (this.mIsShowing) {
            this.mWindowManagerFuncs.onGlobalActionsHidden();
            this.mWindowManagerFuncs.onGlobalActionsShown();
            if (z3) {
                dismissDialog(false);
            } else {
                dismissDialog(true);
            }
            return false;
        }
        this.mIsKeyguardShowing = z;
        this.mIsDeviceProvisioned = z2;
        initialize();
        if (isDisabled()) {
            this.mIsDisabled = false;
            dispose();
            this.mWindowManagerFuncs.onGlobalActionsShown();
            this.mWindowManagerFuncs.onGlobalActionsHidden();
            return false;
        }
        createActions();
        return true;
    }




    public void registerContentObserver(Uri uri, Runnable runnable) {

    }

    public void registerSecureConfirmAction(ActionViewModel actionViewModel) {
      //  this.mBroadcastManager.registerSecureConfirmAction(new -$$Lambda$SecGlobalActionsPresenter$qcIKeoL6AgFcq3cCTvVzVfYUhKE(actionViewModel));
    }

    public void setDisabled() {
        this.mIsDisabled = true;
    }

    public void setKeyguardShowing(boolean z) {
        this.mIsKeyguardShowing = z;
    }

    public void setOverrideDefaultActions(boolean z) {
        this.mIsOverrideDefaultActions = z;
    }
}
