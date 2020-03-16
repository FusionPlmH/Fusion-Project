package com.android.launcher3.quickstep.feature.search;

import android.view.View;

interface OverViewSearchWrapper {
    View getAppsSearchBarView();

    View getContainerView();

    void hidePopupMenu();

    void init();

    boolean launchSfinder(String str);

    void onConfigurationChangedIfNeeded();

    void onStageEnter();

    void onStageExit();

    void refreshSearchLayout();

    void setAlpha(float f);

    void setVisibility(int i);

    void showPopupMenu();

    void updateLandscapeLayoutBottom(int i);
}
