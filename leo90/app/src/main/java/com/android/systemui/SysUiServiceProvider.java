package com.android.systemui;

import android.content.Context;

public interface SysUiServiceProvider {
    static <T> T getComponent(Context context, Class<T> cls) {
        return ((SysUiServiceProvider) context.getApplicationContext()).getComponent(cls);
    }

    <T> T getComponent(Class<T> cls);
}
