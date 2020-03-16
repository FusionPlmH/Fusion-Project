package com.salt.config.tweaks.fragment;

import android.content.ContentResolver;

import android.content.Intent;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltSeekBarPreference;


public class StatusBarBatterybarFragment  extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {

    private SaltSeekBarPreference mSize;

    private static final String BATTERY_BAR_THICKNESS="leo_salt_statusbar_battery_bar_thickness";

    @Override
    protected void getSaltPreferenceEnabled() {

    }


    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getString(R.string.broadcast_battery)));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    BATTERY_BAR_THICKNESS, width);
            return true;
        }
        return false;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.statusbar_battery_bar_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mSize= (SaltSeekBarPreference) findPreference("battery_bar_thickness");
        ContentResolver resolver = getActivity().getContentResolver();
        int clockSize = Settings.System.getInt(resolver,
                BATTERY_BAR_THICKNESS, 1);
        mSize.setValue(clockSize);

        mSize.setOnPreferenceChangeListener(this);
    }
}
