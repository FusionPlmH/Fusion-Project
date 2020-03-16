package com.android.launcher3.quickstep.feature.search;

import android.view.View;


public class OverViewSearch {
    private final OverViewSearchWrapper mSearchView = null;

    public OverViewSearch(View view) {
       
    }

    public View getAppsSearchBarView() {
        return this.mSearchView.getAppsSearchBarView();
    }

    public View getContainerView() {
        return this.mSearchView.getContainerView();
    }



    public void onConfigurationChangedIfNeeded() {
        this.mSearchView.onConfigurationChangedIfNeeded();
    }

    public void onStageEnter() {
        this.mSearchView.onStageEnter();
    }

    public void onStageExit() {
        this.mSearchView.onStageExit();
    }

    public void refreshSearchLayout() {
        this.mSearchView.refreshSearchLayout();
    }

    public void setAlpha(float f) {
        this.mSearchView.setAlpha(f);
    }

    public void setVisibility(int i) {
        this.mSearchView.setVisibility(i);
    }

    public boolean showPopupMenu() {
        if (getContainerView().getVisibility() != 0) {
            return false;
        }
        this.mSearchView.showPopupMenu();
        return true;
    }

    public void updateLandscapeLayoutBottom(int i) {
        this.mSearchView.updateLandscapeLayoutBottom(i);
    }
}
