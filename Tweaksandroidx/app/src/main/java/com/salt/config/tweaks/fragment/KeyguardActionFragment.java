package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;


public class KeyguardActionFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    private SaltListPreference mGesture;
    private SaltSwitchPreference mDisplay,mDisplay2;
    private static final String KEY= "leo_salt_";
    private static final String KEY1= KEY+"keyguard_action_enabled";
    private static final String KEY2= KEY+"keyguard_action_doubleTap_enabled";
    private static final String KEY3= KEY+"keyguard_action_style";

    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mDisplay.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mDisplay2.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mGesture.getKey()).setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }

    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_lock_gesture)));
        if (preference ==mDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    KEY1, value ? 1 : 0);
            return true;
        }else if (preference ==mDisplay2) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    KEY2, value ? 1 : 0);
            return true;
        }else if (preference == mGesture) {
            int location = Integer.valueOf((String) newValue);
            int index =  mGesture.findIndexOfValue((String) newValue);
            Settings.System.putInt(getContentResolver(),
                    KEY3 , location);
            mGesture.setSummary( mGesture.getEntries()[index]);
            return true;
        }
        return false;
    }



    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.keyguard_gesture_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();

        mDisplay= (SaltSwitchPreference) findPreference("keyguard_action_enabled");
        mDisplay.setChecked((Settings.System.getInt(resolver,
                KEY1, 0) == 1));
        mDisplay.setOnPreferenceChangeListener(this);
        mDisplay2= (SaltSwitchPreference) findPreference("keyguard_action_doubleTap_enabled");
        mDisplay2.setChecked((Settings.System.getInt(resolver,
                KEY2, 0) == 1));
        mDisplay2.setOnPreferenceChangeListener(this);
        mGesture= (SaltListPreference) findPreference("keyguard_action_style");
        int BixbyOnClick = Settings.System.getInt(resolver,
                KEY3, 0);
        mGesture.setValue(String.valueOf(BixbyOnClick));
        mGesture.setSummary( mGesture.getEntry());
        mGesture.setOnPreferenceChangeListener(this);
    }
}
