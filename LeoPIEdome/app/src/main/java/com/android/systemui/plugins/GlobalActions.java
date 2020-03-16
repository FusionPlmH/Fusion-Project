package com.android.systemui.plugins;


public interface GlobalActions extends Plugin {
    public static final String ACTION = "com.android.systemui.action.PLUGIN_GLOBAL_ACTIONS";
    public static final int VERSION = 1;


    public interface GlobalActionsManager {
        public static final int VERSION = 1;

        boolean isFOTAAvailableForGlobalActions();

        void onGlobalActionsHidden();

        void onGlobalActionsShown();

        void reboot(boolean z);

        void shutdown();
    }

    void destroy();

    void showGlobalActions(GlobalActionsManager globalActionsManager, boolean z);

    void showShutdownUi(boolean z, String str);
}
