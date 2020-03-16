package com.android.systemui.tuner;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.UserManager;
import android.provider.Settings.Global;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import android.util.ArrayMap;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class TunerServiceImpl extends TunerService {
    private ContentResolver mContentResolver;

    private int mCurrentUser;
    private final ArrayMap<Uri, String> mListeningUris = new ArrayMap();
    private final Observer mObserver = new Observer();
    private final HashMap<String, Set<Tunable>> mTunableLookup = new HashMap();



    private class Observer extends ContentObserver {
        public Observer() {
            super(new Handler(Looper.getMainLooper()));
        }

        public void onChange(boolean selfChange, Uri uri, int userId) {

        }
    }

    public TunerServiceImpl(Context context) {

    }

    private void upgradeTuner(int oldVersion, int newVersion) {

    }

    public String getValue(String setting) {

        return setting;
    }

    public void setValue(String setting, String value) {

    }

    public int getValue(String setting, int def) {

        return def;
    }

    public String getValue(String setting, String def) {

        return setting;
    }

    public void setValue(String setting, int value) {

    }

    public void addTunable(Tunable tunable, String... keys) {
        for (String key : keys) {
            addTunable(tunable, key);
        }
    }


    public void removeTunable(Tunable tunable) {
        for (Set<Tunable> list : this.mTunableLookup.values()) {
            list.remove(tunable);
        }

    }




    public void clearAll() {
        Global.putString(this.mContentResolver, "sysui_demo_allowed", null);
        Intent intent = new Intent("com.android.systemui.demo");
        intent.putExtra("command", "exit");

        for (String key : this.mTunableLookup.keySet()) {
            Secure.putString(this.mContentResolver, key, null);
        }
    }
}
