package com.android.settings.core;

import android.content.Context;
import android.os.Bundle;
import android.support.v14.preference.PreferenceFragment;
import android.support.v7.preference.PreferenceScreen;
import android.text.TextUtils;
import android.util.Log;

import com.android.settings.SettingsPreferenceFragment;


public abstract class InstrumentedPreferenceFragment extends PreferenceFragment {
    protected final int PLACEHOLDER_METRIC = 10000;


    private void updateActivityTitleWithScreenTitle(PreferenceScreen preferenceScreen) {
        if (preferenceScreen != null) {

        }
    }

    public void addPreferencesFromResource(int i) {

    }


    public final Context getPrefContext() {

        return null;
    }

    /* access modifiers changed from: protected */
    public int getPreferenceScreenResId() {
        return -1;
    }



    public void onAttach(Context context) {
        super.onAttach(context);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void onCreatePreferences(Bundle bundle, String str) {

    }

    public void onResume() {
        super.onResume();
    }
}
