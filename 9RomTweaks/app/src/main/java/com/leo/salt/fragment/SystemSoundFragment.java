package com.leo.salt.fragment;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;


import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.support.v4.app.Fragment;
import android.util.Log;


import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.DialogView;

import java.io.File;

import static com.leo.salt.tweaks.resource.Resource.getLeoSafety;
import static com.leo.salt.tweaks.resource.Resource.safety;
import static com.leo.salt.tweaks.resource.SuShell.swapSounds;
import static com.leo.salt.utils.PrefUtils.showKillPackageDialog;


public  class SystemSoundFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener{
    private  String systemui= "com.android.systemui";
    private static final String volume= "leo_tweaks_volume_sounds_control";
    private static final String lowbattery= "leo_tweaks_lowbattery_sounds_control";
    private static final String lock= "leo_tweaks_lock_sounds_control";
    private static final String unlock= "leo_tweaks_unlock_sounds_control";
    private static final String USB= "leo_tweaks_usb_sounds_control";
    private static final String Capture= "leo_tweaks_capture_screen_control";
    private  boolean mEnableListener = false;
    private  String[] mPreferences = new String[]{USB,volume,lowbattery,lock,unlock,Capture};
    private  SwitchPreference[] mSystemSounds = new SwitchPreference[6];
    private  SwitchPreference VolumeSounds;
    private  SwitchPreference LowBatterySounds;
    private  SwitchPreference LockSounds;
    private  SwitchPreference UnlockSounds;
    private  SwitchPreference CaptureSounds;
    private boolean fileExists(CharSequence charSequence) {
        return new File("/system/media/audio/ui/" + charSequence).exists();
    }
    public String system_sounds_prefs="system_sounds_prefs";
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getPreferenceManager() != null) {

            BasePreferenceFragment( mContext , this, system_sounds_prefs);
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
        CaptureSounds= (SwitchPreference) findPreference(Capture);
        if (getLeoSafety().equals(safety)) {
            //showSnack(R.string.list_grid_sound);
        } else {
        //    DialogView.initSafetyDialogView(getActivity(),true);
        }
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
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
    private void RestartDialog(String name){

           showKillPackageDialog(systemui,getActivity(),name);

    }


}
