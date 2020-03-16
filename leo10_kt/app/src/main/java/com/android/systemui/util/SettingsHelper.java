package com.android.systemui.util;


import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.Log;

import com.android.systemui.Dependency;

import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class SettingsHelper {
    private static SettingsHelper sInstance;

    private Context mContext;
    /* access modifiers changed from: private */

    /* access modifiers changed from: private */
    public ContentResolver mResolver;
    /* access modifiers changed from: private */
    public ContentObserver mSettingsObserver = new ContentObserver((Handler) Dependency.get(Dependency.MAIN_HANDLER)) {
        public void onChange(boolean z, Uri uri) {
            super.onChange(z);
            if (uri != null) {

            }
        }
    };

    public void setGametoolsEnabled(boolean z) {
        //Settings.Secure.putInt(this.mResolver, "game_show_floating_icon", z);
    }
}
