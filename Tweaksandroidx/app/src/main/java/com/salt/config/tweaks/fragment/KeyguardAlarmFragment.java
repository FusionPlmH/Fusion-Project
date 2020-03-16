package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSwitchPreference;

public class KeyguardAlarmFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    private SaltSeekBarPreference mTop;
    private SaltSwitchPreference mDisplay,mIcon,mInf,mColor;
    private static final String KEY= "leo_salt_";
    private static final String KEY1= KEY+"keyguard_alarm_enabled";
    private static final String KEY2= KEY+"keyguard_alarm_icon_enabled";
    private static final String KEY3= KEY+"keyguard_alarm_text_enabled";
    private static final String KEY4= KEY+"keyguard_alarm_color_enabled";
    private static final String KEY5= KEY+"keyguard_alarm_text_size";
    @Override
    protected void getSaltPreferenceEnabled() {

    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getString(R.string.broadcast_lock_alarm)));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference == mTop) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY5, width);
            return true;
        } else if (preference ==mInf) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY3, value ? 1 : 0);

            return true;
        }else if (preference ==mColor) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY4, value ? 1 : 0);
            return true;
        }else if (preference ==mDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY1, value ? 1 : 0);
            return true;
        }else if (preference ==mIcon) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY2, value ? 1 : 0);
            return true;
        }
        return false;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.keyguard_alarm_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();
        mDisplay= (SaltSwitchPreference) findPreference("alarm_enabled");
        mDisplay.setChecked((Settings.System.getInt(resolver,
                KEY1, 0) == 1));
        mDisplay.setOnPreferenceChangeListener(this);
        mIcon= (SaltSwitchPreference) findPreference("alarm_icon_enabled");
        mIcon.setChecked((Settings.System.getInt(resolver,
                KEY2, 0) == 1));
        mIcon.setOnPreferenceChangeListener(this);
        mInf= (SaltSwitchPreference) findPreference("alarm_text_enabled");
        mInf.setChecked((Settings.System.getInt(resolver,
                KEY3, 0) == 1));
        mInf.setOnPreferenceChangeListener(this);
        mColor= (SaltSwitchPreference) findPreference("alarm_color_enabled");
        mColor.setChecked((Settings.System.getInt(resolver,
                KEY4, 0) == 1));
        mColor.setOnPreferenceChangeListener(this);
        mTop = (SaltSeekBarPreference) findPreference("alarm_size");
        int clockEndPadding = Settings.System.getInt(resolver,
                KEY5, 14);
        mTop.setValue(clockEndPadding);
        mTop.setOnPreferenceChangeListener(this);
    }
}
