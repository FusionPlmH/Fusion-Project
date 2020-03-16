package com.salt.config.tweaks.fragment;


import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltSeekBarPreference;

import static com.salt.utils.SaltProper.disableSnackn;

public class EdgeFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {

    private SaltSeekBarPreference mSize;
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference ==mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getContentResolver(),
                    "leo_salt_edge_text_size", width);
            return true;
        }
        return false;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.edge_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mSize = (SaltSeekBarPreference) findPreference("edge_text_size");
        int clockMultiSize = Settings.System.getInt(getContentResolver(),
                "leo_salt_edge_text_size", 13);
        mSize.setValue(clockMultiSize/ 1);
        mSize.setOnPreferenceChangeListener(this);
    }

    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference("edge_text_size").setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("edge_text_color").setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("edge_style").setEnabled(findPreferenceEnabled);
    }

    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }
}
