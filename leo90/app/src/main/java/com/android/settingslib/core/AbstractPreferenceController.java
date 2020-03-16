package com.android.settingslib.core;

import android.content.Context;
import android.support.v7.preference.Preference;
import android.support.v7.preference.Preference.OnPreferenceChangeListener;
import android.support.v7.preference.PreferenceGroup;
import android.support.v7.preference.PreferenceScreen;

public abstract class AbstractPreferenceController {
    protected final Context mContext;

    public AbstractPreferenceController(Context context) {
        this.mContext = context;
    }

    private boolean findAndRemovePreference(PreferenceGroup preferenceGroup, String str) {
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            Preference preference = preferenceGroup.getPreference(i);
            String key = preference.getKey();
            if (key != null && key.equals(str)) {
                return preferenceGroup.removePreference(preference);
            }
            if ((preference instanceof PreferenceGroup) && findAndRemovePreference((PreferenceGroup) preference, str)) {
                return true;
            }
        }
        return false;
    }

    public void displayPreference(PreferenceScreen preferenceScreen) {
        String preferenceKey = getPreferenceKey();
        if (isAvailable()) {
            setVisible(preferenceScreen, preferenceKey, true);
            if (this instanceof OnPreferenceChangeListener) {
                Preference findPreference = preferenceScreen.findPreference(preferenceKey);
                if (findPreference != null) {
                    findPreference.setOnPreferenceChangeListener((OnPreferenceChangeListener) this);
                    return;
                }
                return;
            }
            return;
        }
        setVisible(preferenceScreen, preferenceKey, false);
    }

    public abstract String getPreferenceKey();

    public CharSequence getSummary() {
        return null;
    }

    public boolean handlePreferenceTreeClick(Preference preference) {
        return false;
    }

    public abstract boolean isAvailable();

    /* access modifiers changed from: protected */
    public void refreshSummary(Preference preference) {
        if (preference != null) {
            CharSequence summary = getSummary();
            if (summary != null) {
                preference.setSummary(summary);
            }
        }
    }

    /* access modifiers changed from: protected|final */
    public final void removePreference(PreferenceScreen preferenceScreen, String str) {
        findAndRemovePreference(preferenceScreen, str);
    }

    /* access modifiers changed from: protected|final */
    public final void setVisible(PreferenceGroup preferenceGroup, String str, boolean z) {
        Preference findPreference = preferenceGroup.findPreference(str);
        if (findPreference != null) {
            findPreference.setVisible(z);
        }
    }

    public void updateState(Preference preference) {
        refreshSummary(preference);
    }
}
