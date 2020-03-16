package com.android.fusionleo.leoglobalactions.presentation.view;

import com.android.fusionleo.leoglobalactions.presentation.strategies.WindowDecorationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModel;

public interface ExtendableGlobalActionsView {
    void addWindowDecorator(WindowDecorationStrategy windowDecorationStrategy);

    void cancelConfirming();

    void dismiss();

    void dismissWithAnimation();

    void forceRequestLayout();

    void hideDialogOnSecureConfirm();

    void notifyDataSetChanged();

    void showActionConfirming(ActionViewModel actionViewModel);

    void updateViewList();
}
