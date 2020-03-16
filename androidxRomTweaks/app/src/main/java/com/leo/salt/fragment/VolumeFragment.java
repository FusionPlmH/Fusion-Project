package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;


import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;


import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.Blacklist;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.tweaks.view.widget.DialogView.SafetyDonateDialogView;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;


@SuppressLint("ResourceAsColor")
public class VolumeFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{
    private SaltSettingSwitchPreference mMusicSwitch,mMusicDoubleSwitch,mMusicVibrationSwitch;
    private SaltSettingSeekBarPreference mMusicSeek,mMusicDoubleSeek,mMusicVibrationSeek;
    public static final String mMusicSwitchkey="skip_tracks";
    public static final String mMusicDoubleSwitchkey="doble_click_skip_tracks";
    public static final String mMusicVibrationSwitchkey="skip_tracks_vibrate";
    public static final String mMusicSeekkey="timeout_skip_tracks";
    public static final String mMusicDoubleSeekkey="timeout_dc_skip_tracks";
    public static final String mMusicVibrationSeekkey="skip_tracks_vibrate_level";

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        mContext = getActivity();
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "volume_prefs");
        mMusicSwitch=(SaltSettingSwitchPreference) findPreference("MusicSwitch");
        int MusicSwitch = Settings.System.getInt(getActivity().getContentResolver(),mMusicSwitchkey, 0);
        mMusicSwitch.setChecked(MusicSwitch != 0);
        mMusicSwitch.setOnPreferenceChangeListener(this);
        mMusicDoubleSwitch=(SaltSettingSwitchPreference) findPreference("MusicDoubleSwitch");
        int MusicDoubleSwitch = Settings.System.getInt(getActivity().getContentResolver(),mMusicDoubleSwitchkey, 0);
        mMusicDoubleSwitch.setChecked(MusicDoubleSwitch != 0);
        mMusicDoubleSwitch.setOnPreferenceChangeListener(this);
        mMusicVibrationSwitch=(SaltSettingSwitchPreference) findPreference("MusicVibrationSwitch");
        int MusicVibrationSwitch = Settings.System.getInt(getActivity().getContentResolver(),mMusicVibrationSwitchkey, 0);
        mMusicVibrationSwitch.setChecked(MusicVibrationSwitch != 0);
        mMusicVibrationSwitch.setOnPreferenceChangeListener(this);

        mMusicSeek= (SaltSettingSeekBarPreference) findPreference("MusicSeek");
        int MusicSeek = Settings.System.getInt(resolver,
                mMusicSeekkey, 500);
        mMusicSeek.setValue(MusicSeek / 1);
        mMusicSeek.setOnPreferenceChangeListener(this);
        mMusicDoubleSeek= (SaltSettingSeekBarPreference) findPreference("MusicDoubleSeek");
        int MusicDoubleSeek = Settings.System.getInt(resolver,
                mMusicDoubleSeekkey, 500);
        mMusicDoubleSeek.setValue(MusicDoubleSeek / 1);
        mMusicDoubleSeek.setOnPreferenceChangeListener(this);
        mMusicVibrationSeek= (SaltSettingSeekBarPreference) findPreference("MusicVibrationSeek");
        int MusicVibrationSeek = Settings.System.getInt(resolver,
                mMusicVibrationSeekkey, 15);
        mMusicVibrationSeek.setValue(MusicVibrationSeek / 1);
        mMusicVibrationSeek.setOnPreferenceChangeListener(this);
        hideUX(MusicSwitch != 0);
    }


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
