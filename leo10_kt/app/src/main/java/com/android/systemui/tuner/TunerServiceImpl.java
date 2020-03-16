package com.android.systemui.tuner;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Global;
import android.provider.Settings.Secure;
import android.util.ArrayMap;


import com.android.internal.util.ArrayUtils;

import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class TunerServiceImpl extends TunerService {
    private static final String[] RESET_BLACKLIST = new String[]{"sysui_qs_tiles", "doze_always_on", "qs_tile_layout", "qs_tile_column", "qs_tile_row", "brightness_on_top", "sysui_qqs_count"};
    private ContentResolver mContentResolver;
    private final Context mContext;
    private int mCurrentUser;
    private final ArrayMap<Uri, String> mListeningUris = new ArrayMap();
    private final Observer mObserver = new Observer();
    private final ConcurrentHashMap<String, Set<Tunable>> mTunableLookup = new ConcurrentHashMap();
    private HashSet<Tunable> mTunables;
    //private CurrentUserTracker mUserTracker;

    private class Observer extends ContentObserver {
        public Observer() {
            super(new Handler(Looper.getMainLooper()));
        }

        public void onChange(boolean z, Uri uri, int i) {

        }
    }

    public TunerServiceImpl(Context context, ContentResolver mContentResolver, Context mContext) {

        this.mContentResolver = mContentResolver;
        this.mContext = mContext;
    }

    private void addTunable(Tunable tunable, String str) {

    }

    private void reloadAll() {

    }

    private void reloadSetting(Uri uri) {

    }

    private void upgradeTuner(int i, int i2) {

    }

    public void addTunable(Tunable tunable, String... strArr) {
        for (String addTunable : strArr) {
            addTunable(tunable, addTunable);
        }
    }

    @Override
    public void clearAll() {

    }

    /* renamed from: clearAll */
    public void lambda$upgradeTuner$0() {
        Global.putString(this.mContentResolver, "sysui_demo_allowed", null);
        Intent intent = new Intent("com.android.systemui.demo");
        intent.putExtra("command", "exit");
        this.mContext.sendBroadcast(intent);
        for (String str : this.mTunableLookup.keySet()) {
            if (!ArrayUtils.contains(RESET_BLACKLIST, str)) {
                Secure.putString(this.mContentResolver, str, null);
            }
        }
    }

    public int getValue(String str, int i) {
      //  return Secure.getIntForUser(this.mContentResolver, str, i, this.mCurrentUser);
        return i;
    }

    public String getValue(String str) {

        return str;
    }

    public String getValue(String str, String str2) {


        return str;
    }

    public void removeTunable(Tunable tunable) {
        for (Set remove : this.mTunableLookup.values()) {
            remove.remove(tunable);
        }

    }

    protected void reregisterAll() {
        if (this.mListeningUris.size() != 0) {
            this.mContentResolver.unregisterContentObserver(this.mObserver);
            for (Uri registerContentObserver : this.mListeningUris.keySet()) {

            }
        }
    }

    public void setValue(String str, int i) {

    }

    public void setValue(String str, String str2) {

    }
}
