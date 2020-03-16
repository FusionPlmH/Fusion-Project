package com.samsung.systemui.splugins.lockstar;

import android.view.View;

public interface PluginLockStarFaceWidgetManager {
    public static final String TYPE_CLOCK = "clock";
    public static final String TYPE_MUSIC = "music";

    public interface Callback {
        View getContactInfoView();

        View getFaceWidgetView(String str);
    }

    void setCallback(Callback callback);
}
