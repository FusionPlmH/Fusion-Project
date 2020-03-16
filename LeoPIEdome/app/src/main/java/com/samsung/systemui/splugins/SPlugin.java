package com.samsung.systemui.splugins;

import android.content.Context;

public interface SPlugin {
    default int getVersion() {
        return -1;
    }

    default void onCreate(Context context, Context context2) {
    }

    default void onDestroy() {
    }
}
