package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.BuildSecuritycheck;
import static com.salt.utils.SaltProper.getApksStringInt;

public class KeyguardLunarFragment  extends SaltPreferenceFragmentCompat implements
      Preference.OnPreferenceChangeListener {
    private SaltSeekBarPreference mSize;
    private SaltSwitchPreference mEnabled,mColorEnabled;
    private SaltListPreference mLunarMonth, mLunarStyle;
    private static final String KEY = "leo_salt_keyguard_lunar";
    private static final String KEY1 = KEY+"_enabled";
    private static final String KEY2 = KEY+"_color_enabled";
    private static final String KEY3 = KEY+"_month_style";
    private static final String KEY4 = KEY+"_style";
    private static final String KEY5= KEY+"_size";
    @Override
    protected void getSaltPreferenceEnabled() {
      //  getPreferenceManager().findPreference("LOCKLUNAR").setEnabled(true);
    }


    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getString(R.string.broadcast_lock_lunar)));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY5, width);
            return true;
        }else if (preference ==mLunarMonth) {
            int statusBarAmPm = Integer.valueOf((String) newValue);
            int index = mLunarMonth.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY3, statusBarAmPm);
            mLunarMonth.setSummary(mLunarMonth.getEntries()[index]);
            return true;
        }else if (preference == mLunarStyle) {
            int statusBarAmPm = Integer.valueOf((String) newValue);
            int index =  mLunarStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY4, statusBarAmPm);
            mLunarStyle.setSummary( mLunarStyle.getEntries()[index]);
            return true;
        }else if (preference == mColorEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY2, value ? 1 : 0);
            return true;
        } else if (preference ==mEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY1, value ? 1 : 0);
            return true;
        }
        return false;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.keyguard_lunar_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();
        mEnabled= (SaltSwitchPreference) findPreference("LOCKLUNAR");
        mEnabled.setChecked((Settings.System.getInt(resolver,
                KEY1, 1) == 1));
        mEnabled.setOnPreferenceChangeListener(this);

        mColorEnabled= (SaltSwitchPreference) findPreference("LOCKLUNARCOLOR");
        mColorEnabled.setChecked((Settings.System.getInt(resolver,
                KEY2, 0) == 1));
        mColorEnabled.setOnPreferenceChangeListener(this);

        mLunarMonth= (SaltListPreference) findPreference("LOCKLUNARMONTH");
        int clockLunarMonth = Settings.System.getInt(resolver,
                KEY3 , 0);
        mLunarMonth.setValue(String.valueOf(clockLunarMonth));
        mLunarMonth.setSummary(mLunarMonth.getEntry());
        mLunarMonth.setOnPreferenceChangeListener(this);

        mLunarStyle= (SaltListPreference) findPreference("LOCKLUNARSTYLE");
        int clockLunarStyle = Settings.System.getInt(resolver,
                KEY4, 5);
        mLunarStyle.setValue(String.valueOf(clockLunarStyle));
        mLunarStyle.setSummary( mLunarStyle.getEntry());
        mLunarStyle.setOnPreferenceChangeListener(this);

        mSize = (SaltSeekBarPreference) findPreference("LOCKLUNARSZIE");
        int clockSize = Settings.System.getInt(resolver,
                KEY5, 15);
        mSize.setValue(clockSize / 1);

        mSize.setOnPreferenceChangeListener(this);
    }



}