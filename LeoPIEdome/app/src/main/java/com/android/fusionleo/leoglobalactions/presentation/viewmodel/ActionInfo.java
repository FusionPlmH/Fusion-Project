package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

public class ActionInfo {
    private String mDescription = "";
    private int mIconResId = -1;
    private String mLabel = "";
    private String mName = "";
    private String mStateLabel = "";
    private int mViewIndex = -1;
    private ViewType mViewType = ViewType.CENTER_ICON_1P_VIEW;

    public String getDescription() {
        return this.mDescription;
    }

    public int getIcon() {
        return this.mIconResId;
    }

    public String getLabel() {
        return this.mLabel;
    }

    public String getName() {
        return this.mName;
    }

    public String getStateLabel() {
        return this.mStateLabel;
    }

    public int getViewIndex() {
        return this.mViewIndex;
    }

    public ViewType getViewType() {
        return this.mViewType;
    }

    public void setDescription(String str) {
        this.mDescription = str;
    }

    public void setIcon(int i) {
        this.mIconResId = i;
    }

    public void setLabel(String str) {
        this.mLabel = str;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setStateLabel(String str) {
        this.mStateLabel = str;
    }

    public void setViewIndex(int i) {
        this.mViewIndex = i;
    }

    public void setViewType(ViewType viewType) {
        this.mViewType = viewType;
    }
}
