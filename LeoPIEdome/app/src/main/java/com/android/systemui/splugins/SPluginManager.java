package com.android.systemui.splugins;

import android.text.TextUtils;
import com.samsung.systemui.splugins.SPlugin;
import com.samsung.systemui.splugins.SPluginListener;


public interface SPluginManager {
    static <P> String getAction(Class<P> cls) {


        return null;
    }

    <T extends SPlugin> void addPluginListener(SPluginListener<T> sPluginListener, Class<?> cls);

    <T extends SPlugin> void addPluginListener(SPluginListener<T> sPluginListener, Class<?> cls, boolean z);

    <T> boolean dependsOn(SPlugin sPlugin, Class<T> cls);

    void handlePluginConfigurationChanged(String str, String str2);

    void removePluginListener(SPluginListener<?> sPluginListener);
}
