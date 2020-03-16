package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Color;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltColorPickerPreference;
import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSwitchPreference;

public class KeyguardWeatherFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    private SaltSeekBarPreference mWeatherSize;
    private SaltSwitchPreference mDisplay,mWeatherSingleLine,mWeatherColorEnabled;
    private SaltListPreference mWeatherStyle,mWeatherFont;
    @Override
    protected void getSaltPreferenceEnabled() {

    }


    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getString(R.string.broadcast_lock_weather)));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mWeatherStyle) {
            int val = Integer.parseInt((String) newValue);
            int index = mWeatherStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_salt_keyguard_weather_style", val);
            mWeatherStyle.setSummary( mWeatherStyle.getEntries()[index]);

            return true;
        } else if (preference == mWeatherFont) {
            int val = Integer.parseInt((String) newValue);
            int index = mWeatherFont.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_salt_keyguard_weather_font", val);
            mWeatherFont.setSummary(mWeatherFont.getEntries()[index]);
            return true;
        } else if (preference ==mWeatherSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    "leo_salt_keyguard_weather_size", width);
            return true;
        }else if (preference ==mDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                "leo_salt_keyguard_weather_enabled", value ? 1 : 0);

            return true;
        }else if (preference ==mWeatherSingleLine) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_salt_keyguard_weather_singleline_enabled", value ? 1 : 0);

            return true;
        }else if (preference ==mWeatherColorEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_salt_keyguard_weather_color_enabled", value ? 1 : 0);

            return true;
        }
        return false;
    }



    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.keyguard_weather_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();
        mWeatherStyle = (SaltListPreference) findPreference("weather_style");
        mWeatherStyle.setValue(Integer.toString(Settings.System.getInt(getActivity()
                        .getContentResolver(), "leo_salt_keyguard_weather_style",
                0)));
        mWeatherStyle.setSummary(mWeatherStyle.getEntry());
        mWeatherStyle.setOnPreferenceChangeListener(this);

        mWeatherFont = (SaltListPreference) findPreference("weatherfont");
        mWeatherFont.setValue(Integer.toString(Settings.System.getInt(getContentResolver(), "leo_salt_keyguard_weather_font",
                0)));
        mWeatherFont.setSummary(mWeatherFont.getEntry());
        mWeatherFont.setOnPreferenceChangeListener(this);
        mWeatherSize= (SaltSeekBarPreference) findPreference("weathersize");
        int clockEndPadding = Settings.System.getInt(resolver,
                "leo_salt_keyguard_weather_size", 14);
        mWeatherSize.setValue(clockEndPadding);

        mWeatherSize.setOnPreferenceChangeListener(this);

        mDisplay= (SaltSwitchPreference) findPreference("weather_enabled");
        mDisplay.setChecked((Settings.System.getInt(resolver,
                "leo_salt_keyguard_weather_enabled", 0) == 1));
        mDisplay.setOnPreferenceChangeListener(this);

        mWeatherSingleLine= (SaltSwitchPreference) findPreference("weathersingleline");
        mWeatherSingleLine.setChecked((Settings.System.getInt(resolver,
                "leo_salt_keyguard_weather_singleline_enabled", 0) == 1));
        mWeatherSingleLine.setOnPreferenceChangeListener(this);
        mWeatherColorEnabled= (SaltSwitchPreference) findPreference("WeatherColorEnabled");
        mWeatherColorEnabled.setChecked((Settings.System.getInt(resolver,
                "leo_salt_keyguard_weather_color_enabled", 0) == 1));
        mWeatherColorEnabled.setOnPreferenceChangeListener(this);
    }

}
