package com.android.fusionleo.leoglobalactions.presentation;

import android.net.Uri;
import com.android.fusionleo.leoglobalactions.presentation.view.ExtendableGlobalActionsView;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModel;

public interface SecGlobalActions {
    void addAction(ActionViewModel actionViewModel);

    void clearActions(String str);

    void confirmAction(ActionViewModel actionViewModel);

    void confirmSafeMode(int i);

    void dismissDialog(boolean z);

    ExtendableGlobalActionsView getGlobalActionsView();

    void hideDialogOnSecureConfirm();

    boolean isActionConfirming();

    boolean isDeviceProvisioned();

    void onCancelDialog();

    void onShowDialog();

    void registerContentObserver(Uri uri, Runnable runnable);

    void registerSecureConfirmAction(ActionViewModel actionViewModel);

    void setDisabled();

    void setKeyguardShowing(boolean z);

    void setOverrideDefaultActions(boolean z);
}
