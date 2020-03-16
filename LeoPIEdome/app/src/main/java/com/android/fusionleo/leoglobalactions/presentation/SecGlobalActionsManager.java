package com.android.fusionleo.leoglobalactions.presentation;

public interface SecGlobalActionsManager {
    boolean isFOTAAvailableForGlobalActions();

    void onGlobalActionsHidden();

    void onGlobalActionsShown();

    void reboot(boolean z);

    void shutdown();
}
