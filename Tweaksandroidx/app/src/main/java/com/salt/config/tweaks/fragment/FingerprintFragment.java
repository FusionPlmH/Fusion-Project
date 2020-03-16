package com.salt.config.tweaks.fragment;


import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;

import static com.salt.utils.SaltProper.disableSnackn;

public class FingerprintFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference ==mFingerprintUP) {
            String key=FingerprintUPKEY;
            Picker(mFingerprintUP,newValue,key);
            return true;
        }else if (preference ==mFingerprintDown) {
            String key2=FingerprintDown;
            Picker(mFingerprintDown,newValue,key2);
            return true;
        }
        return true;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.fingerprint_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mFingerprintUP = (SaltListPreference) findPreference("fingerprint_up_action");
        int BixbyOnClick = Settings.System.getInt(getContentResolver(),
                FingerprintUPKEY, 0);
        mFingerprintUP.setValue(String.valueOf(BixbyOnClick));
        mFingerprintUP.setSummary(mFingerprintUP.getEntry());
        mFingerprintUP.setOnPreferenceChangeListener(this);
        mFingerprintDown = (SaltListPreference) findPreference("fingerprint_down_action");
        int BixbyOnLongPress = Settings.System.getInt(getContentResolver(),
                FingerprintDown, 0);
        mFingerprintDown.setValue(String.valueOf(BixbyOnLongPress));
        mFingerprintDown.setSummary(mFingerprintDown.getEntry());
        mFingerprintDown.setOnPreferenceChangeListener(this);
    }

    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference("fingerprint_gesture_quick").setEnabled(findPreferenceEnabled);
    }

    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }


    public SaltListPreference mFingerprintUP,mFingerprintDown;


    private static final String FingerprintUPKEY = LEO_PREFE+"global_fingerprint_up_action";
    private static final String FingerprintDown = LEO_PREFE+"global_fingerprint_down_action";



}
