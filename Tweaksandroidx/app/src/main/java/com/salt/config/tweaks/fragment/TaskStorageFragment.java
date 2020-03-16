package com.salt.config.tweaks.fragment;


import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;

public class TaskStorageFragment  extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {
    public SaltListPreference mSaltSettingListPreference;
    public static final String KEY="leo_salt_task_info_symbol_style";

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mSaltSettingListPreference) {
            String key=KEY ;
            if(newValue.equals("12")){
                EditTextDialog(String.valueOf(mSaltSettingListPreference.getTitle()),"leo_salt_task_info_symbol_str","SALT_UPDATE_TASKBAR_SETTINGS");
            }
            int location = Integer.valueOf((String) newValue);
            int index = mSaltSettingListPreference.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mSaltSettingListPreference.setSummary(mSaltSettingListPreference.getEntries()[index]);
            return true;
        }
        return true;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.task_storage_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mSaltSettingListPreference = (SaltListPreference) findPreference(KEY);
        int BixbyOnKeyguardLongPress = Settings.System.getInt(getContentResolver(),
                KEY, 0);
        mSaltSettingListPreference.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mSaltSettingListPreference.setSummary(mSaltSettingListPreference.getEntry());
        mSaltSettingListPreference.setOnPreferenceChangeListener(this);
    }



    @Override
    protected void getSaltPreferenceEnabled() {

    }

    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
}
