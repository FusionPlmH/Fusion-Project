package com.samsung.systemui.splugins;

import android.content.Context;

public interface SPluginListener<T extends SPlugin> {
    default void onPluginConfigurationChanged(T t) {
    }

    void onPluginConnected(T t, Context context);

    default void onPluginDisconnected(T t) {
    }
}
