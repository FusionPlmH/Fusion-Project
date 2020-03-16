package com.fusionleo.salt.fragment;

import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.util.Log;

import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.preference.MySwitchPreference;

import java.io.File;

import static com.fusionleo.salt.utils.AndroidUtils.clearmemory;
import static com.fusionleo.salt.utils.Utils.killPackage;
import static com.fusionleo.salt.utils.Utils.showKillPackageDialog;
import static com.fusionleo.salt.utils.Utils.swapSounds;

public class SystemSoundFragment extends BasePreferenceFragment implements OnPreferenceChangeListener {
    private  String systemui= "com.android.systemui";
    private static final String volume= "leo_tweaks_volume_sounds_control";
    private static final String lowbattery= "leo_tweaks_lowbattery_sounds_control";
    private static final String lock= "leo_tweaks_lock_sounds_control";
    private static final String unlock= "leo_tweaks_unlock_sounds_control";
    private static final String USB= "leo_tweaks_usb_sounds_control";
    private  boolean mEnableListener = false;
    private  String[] mPreferences = new String[]{USB,volume,lowbattery,lock,unlock};
    private  SwitchPreference[] mSystemSounds = new SwitchPreference[5];
    private  SwitchPreference VolumeSounds;
    private  SwitchPreference LowBatterySounds;
    private  SwitchPreference LockSounds;
    private  SwitchPreference UnlockSounds;
    private static boolean fileExists(CharSequence charSequence) {
        return new File("/system/media/audio/ui/" + charSequence).exists();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getPreferenceManager() != null) {
            BasePreferenceFragment( mContext , this, "system_sounds_prefs");
            for (int i = 0; i < mSystemSounds.length; i++) {
                mSystemSounds[i] = (SwitchPreference) getPreferenceScreen().findPreference(mPreferences[i]);
                mSystemSounds[i].setOnPreferenceChangeListener(this);
                mSystemSounds[i].setChecked(fileExists(mSystemSounds[i].getSummary()));
            }
            mEnableListener = true;
        }
        VolumeSounds = (SwitchPreference) findPreference(volume);
        LowBatterySounds = (SwitchPreference) findPreference(lowbattery);
        LockSounds = (SwitchPreference) findPreference(lock);
        UnlockSounds= (SwitchPreference) findPreference(unlock);
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
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference ==   VolumeSounds ) {
            RestartDialog(0);
        }  else if (preference ==   LowBatterySounds ) {
            RestartDialog(0);
        }else if (preference == LockSounds) {
            RestartDialog(0);
        }else if (preference == UnlockSounds) {
            RestartDialog(0);
        }else {
            Log.v(TAG, "onPreferenceTreeClick preference invalid");
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
    private void RestartDialog(int style){
        if(style==0){
            showKillPackageDialog(systemui,mContext);
        }
    }
}
