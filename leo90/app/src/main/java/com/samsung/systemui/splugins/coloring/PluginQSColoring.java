package com.samsung.systemui.splugins.coloring;


import com.samsung.systemui.splugins.SPlugin;

import java.util.ArrayList;

public interface PluginQSColoring extends SPlugin {
    public static final String ACTION = "com.samsung.systemui.coloring.PLUGIN_QSCOLORING";
    public static final int COLORING_BACKGROUND = 0;
    public static final int COLORING_BRIGHTNESS_BAR_ACTIVATED = 5;
    public static final int COLORING_BRIGHTNESS_BAR_BACKGROUND = 6;
    public static final int COLORING_INDEX_NSSL_BACKGROUND = 101;
    public static final int COLORING_INDEX_PANEL_SYSTEM_ICON = 31;
    public static final int COLORING_INDEX_PANEL_SYSTEM_ICON_BROTHER = 32;
    public static final int COLORING_INDEX_QSTILE_OFF_ICON = 22;
    public static final int COLORING_INDEX_QSTILE_OFF_ROUND_BG = 21;
    public static final int COLORING_INDEX_QSTILE_ON_ICON = 12;
    public static final int COLORING_INDEX_QSTILE_ON_ROUND_BG = 11;
    public static final int COLORING_INDEX_QS_DETAIL_HEADER_VIEW = 51;
    public static final int COLORING_INDEX_QS_HEADER_ICON_BADGE = 42;
    public static final int COLORING_INDEX_QS_HEADER_ICON_TINT = 41;
    public static final int COLORING_QSTILE_ICON_OFF = 3;
    public static final int COLORING_QSTILE_ICON_ON_DIM = 2;
    public static final int COLORING_QSTILE_LABEL = 1;
    public static final int COLORING_QS_HEADER_ICON = 4;
    public static final int MAJOR_VERSION = 2;
    public static final int MINOR_VERSION = 3;
    public static final int VERSION = 2003;

    public interface Callback {
        void applyColoring(boolean z);

        void applyColoringBlurEffect(boolean z, float f);

        void applyColoringButtonGrid(int i);

        void applyColoringDimEffect(boolean z, float f);

        void applyColoringResources();

        void applyNotificationColoring(boolean z);

        ArrayList<Integer> getQSPanelColors();
    }

    int getQSColoringBackgroundAlpha();

    float getQSColoringBlurEffectAmount();

    int getQSColoringColor(int i);

    float getQSColoringDimEffectAmount();

    boolean isNotificationColoringEnabled();

    boolean isQSColoringBlurEffectEnabled();

    boolean isQSColoringDimEffectEnabled();

    boolean isQSColoringEnabled();

    boolean isUserPreferOpenTheme();

    void onPluginConfigurationChanged();

    void onPluginConnected();

    void onPluginDisconnected();

    void setCallback(Callback callback);
}
