package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;

import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSwitchPreference;

public class VolumeFragment  extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {
    private SaltSwitchPreference mMusicSwitch,mMusicDoubleSwitch,mMusicVibrationSwitch;
    private SaltSeekBarPreference mMusicSeek,mMusicDoubleSeek,mMusicVibrationSeek;
    public static final String mMusicSwitchkey="skip_tracks";
    public static final String mMusicDoubleSwitchkey="doble_click_skip_tracks";
    public static final String mMusicVibrationSwitchkey="skip_tracks_vibrate";
    public static final String mMusicSeekkey="timeout_skip_tracks";
    public static final String mMusicDoubleSeekkey="timeout_dc_skip_tracks";
    public static final String mMusicVibrationSeekkey="skip_tracks_vibrate_level";

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mMusicSwitch) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    mMusicSwitchkey, value ? 1 : 0);
            hideUX(value);
            return true;
        } else if (preference == mMusicDoubleSwitch) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    mMusicDoubleSwitchkey, value ? 1 : 0);
            return true;
        }else if (preference ==mMusicVibrationSwitch) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    mMusicVibrationSwitchkey, value ? 1 : 0);
            return true;
        }else if (preference ==mMusicSeek) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    mMusicSeekkey, width);
            return true;
        }else if (preference ==mMusicDoubleSeek) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    mMusicDoubleSeekkey, width);
            return true;
        }else if (preference == mMusicVibrationSeek) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    mMusicVibrationSeekkey, width);
            return true;
        }
        return false;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return 0;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mMusicSwitch=(SaltSwitchPreference) findPreference("MusicSwitch");
        int MusicSwitch = Settings.System.getInt(getActivity().getContentResolver(),mMusicSwitchkey, 0);
        mMusicSwitch.setChecked(MusicSwitch != 0);
        mMusicSwitch.setOnPreferenceChangeListener(this);
        mMusicDoubleSwitch=(SaltSwitchPreference) findPreference("MusicDoubleSwitch");
        int MusicDoubleSwitch = Settings.System.getInt(getActivity().getContentResolver(),mMusicDoubleSwitchkey, 0);
        mMusicDoubleSwitch.setChecked(MusicDoubleSwitch != 0);
        mMusicDoubleSwitch.setOnPreferenceChangeListener(this);
        mMusicVibrationSwitch=(SaltSwitchPreference) findPreference("MusicVibrationSwitch");
        int MusicVibrationSwitch = Settings.System.getInt(getActivity().getContentResolver(),mMusicVibrationSwitchkey, 0);
        mMusicVibrationSwitch.setChecked(MusicVibrationSwitch != 0);
        mMusicVibrationSwitch.setOnPreferenceChangeListener(this);

        mMusicSeek= (SaltSeekBarPreference) findPreference("MusicSeek");
        int MusicSeek = Settings.System.getInt(getContentResolver(),
                mMusicSeekkey, 500);
        mMusicSeek.setValue(MusicSeek / 1);
        mMusicSeek.setOnPreferenceChangeListener(this);
        mMusicDoubleSeek= (SaltSeekBarPreference) findPreference("MusicDoubleSeek");
        int MusicDoubleSeek = Settings.System.getInt(getContentResolver(),
                mMusicDoubleSeekkey, 500);
        mMusicDoubleSeek.setValue(MusicDoubleSeek / 1);
        mMusicDoubleSeek.setOnPreferenceChangeListener(this);
        mMusicVibrationSeek= (SaltSeekBarPreference) findPreference("MusicVibrationSeek");
        int MusicVibrationSeek = Settings.System.getInt(getContentResolver(),
                mMusicVibrationSeekkey, 15);
        mMusicVibrationSeek.setValue(MusicVibrationSeek / 1);
        mMusicVibrationSeek.setOnPreferenceChangeListener(this);
        hideUX(MusicSwitch != 0);
    }

    @Override
    protected void getSaltPreferenceEnabled() {

    }

    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }




    private void hideUX(boolean vvcx){
        if (vvcx) {
            getPreferenceScreen().addPreference(mMusicDoubleSwitch);
            getPreferenceScreen().addPreference(mMusicVibrationSwitch);
            getPreferenceScreen().addPreference(mMusicSeek);
            getPreferenceScreen().addPreference(mMusicDoubleSeek);
            getPreferenceScreen().addPreference(mMusicVibrationSeek);
        }else {
            getPreferenceScreen().removePreference(mMusicDoubleSwitch);
            getPreferenceScreen().removePreference(mMusicVibrationSwitch);
            getPreferenceScreen().removePreference(mMusicSeek);
            getPreferenceScreen().removePreference(mMusicDoubleSeek);
            getPreferenceScreen().removePreference(mMusicVibrationSeek);
        }
    }
}
