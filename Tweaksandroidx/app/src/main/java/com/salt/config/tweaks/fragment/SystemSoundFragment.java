package com.salt.config.tweaks.fragment;

import android.os.Bundle;
import android.util.Log;

import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltSwitchPreference;

import java.io.File;

import static com.salt.module.shell.SuShell.swapSounds;


public  class SystemSoundFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {
    private  String systemui= "com.android.systemui";
    private static final String TAG = SystemSoundFragment.class.getSimpleName();
    private static final String volume= "leo_tweaks_volume_sounds_control";
    private static final String lowbattery= "leo_tweaks_lowbattery_sounds_control";
    private static final String lock= "leo_tweaks_lock_sounds_control";
    private static final String unlock= "leo_tweaks_unlock_sounds_control";
    private static final String USB= "leo_tweaks_usb_sounds_control";
    private static final String Capture= "leo_tweaks_capture_screen_control";
    private  boolean mEnableListener = false;
    private  String[] mPreferences = new String[]{USB,volume,lowbattery,lock,unlock,Capture};
    private SaltSwitchPreference[] mSystemSounds = new SaltSwitchPreference[6];
    private SaltSwitchPreference VolumeSounds;
    private  SaltSwitchPreference LowBatterySounds;
    private SaltSwitchPreference LockSounds;
    private  SaltSwitchPreference UnlockSounds;
    private  SaltSwitchPreference CaptureSounds;
    private boolean fileExists(CharSequence charSequence) {
        return new File("/system/media/audio/ui/" + charSequence).exists();
    }




    private void RestartDialog(String name){

        //    showKillPackageDialog(systemui,getActivity(),name);

    }

    @Override
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference ==   VolumeSounds ) {
            RestartDialog((String)VolumeSounds .getTitle());
        }  else if (preference ==   LowBatterySounds ) {
            RestartDialog((String)LowBatterySounds.getTitle());
        }else if (preference == LockSounds) {
            RestartDialog((String)LockSounds.getTitle());
        }else if (preference == UnlockSounds) {
            RestartDialog((String) UnlockSounds.getTitle());
        }else if (preference == CaptureSounds) {
            RestartDialog((String)CaptureSounds.getTitle());
        }else {
            Log.v(TAG, "onPreferenceTreeClick preference invalid");
        }
        return super.onPreferenceTreeClick(preference);
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        CharSequence key = preference.getKey();
        for (String equals : mPreferences) {
            if (equals.equals(key) && mEnableListener) {
                swapSounds("/system/media/audio/ui/", String.valueOf(getPreferenceScreen().findPreference(key).getSummary()));
            }
        }
        return true;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.system_sounds_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        if (getPreferenceManager() != null) {
            for (int i = 0; i < mSystemSounds.length; i++) {
                mSystemSounds[i] = (SaltSwitchPreference) getPreferenceScreen().findPreference(mPreferences[i]);
                mSystemSounds[i].setOnPreferenceChangeListener(this);
                mSystemSounds[i].setChecked(fileExists(mSystemSounds[i].getSummary()));
            }
            mEnableListener = true;
        }
        VolumeSounds = (SaltSwitchPreference) findPreference(volume);
        LowBatterySounds = (SaltSwitchPreference) findPreference(lowbattery);
        LockSounds = (SaltSwitchPreference) findPreference(lock);
        UnlockSounds= (SaltSwitchPreference) findPreference(unlock);
        CaptureSounds= (SaltSwitchPreference) findPreference(Capture);
    }

    @Override
    protected void getSaltPreferenceEnabled() {

    }



    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
}
