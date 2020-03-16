package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltColorPickerPreference;
import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getColorInt;
import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;

public class PulldownDataUsageBarFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener{
    private SaltSwitchPreference mDataUsgeEnabled,mMultiSimEnabled,mDataUsgeColorEnabled;
    private SaltListPreference mDataUsgeLocation,mDataUsgeFont;
    private SaltSeekBarPreference mDataUsgeSize;
    private SaltColorPickerPreference mDataUsgeColor;
    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.pulldown_datausage_prefs;
    }
    private static final String KEYdefault=defaultKey;
    private static final String KEY1="leo_salt_qs_datausage_enabled";
    private static final String KEY2=KEYdefault+"qs_datausage_multisim_enabled";
    private static final String KEY3=KEYdefault+"qs_datausage_orientation";
    private static final String KEY4=KEYdefault+"qs_datausage_size";
    private static final String KEY5=KEYdefault+"qs_datausage_font";
    private static final String KEY6=KEYdefault+"qs_datausage_color";
    private static final String KEY7=KEYdefault+"qs_datausage_color_enabled";
    @Override
    protected void getSaltCreatePreferences() {
        mDataUsgeEnabled = (SaltSwitchPreference) findPreference("DataUsgeEnabled");
        mDataUsgeEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                KEY1, 1) == 1));
        mDataUsgeEnabled.setOnPreferenceChangeListener(this);
        mMultiSimEnabled = (SaltSwitchPreference) findPreference("MultiSimEnabled");
        mMultiSimEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                KEY2, 1) == 1));
        mMultiSimEnabled.setOnPreferenceChangeListener(this);
        mDataUsgeSize= (SaltSeekBarPreference) findPreference("DataUsgeSize");
        int clockEndPadding = Settings.System.getInt(getContentResolver(),
                KEY4, 13);
        mDataUsgeSize.setValue(clockEndPadding);
        mDataUsgeSize.setOnPreferenceChangeListener(this);
        mDataUsgeLocation= (SaltListPreference) findPreference("DataUsgeLocation");
        int One = Settings.System.getInt(getContentResolver(),
                KEY3, 0);
        mDataUsgeLocation.setValue(String.valueOf(One ));
        mDataUsgeLocation.setSummary(mDataUsgeLocation.getEntry());
        mDataUsgeLocation.setOnPreferenceChangeListener(this);
        mDataUsgeFont= (SaltListPreference) findPreference("DataUsgeFont");
        int Font = Settings.System.getInt(getContentResolver(),
                KEY5, 0);
        mDataUsgeFont.setValue(String.valueOf(Font));
        mDataUsgeFont.setSummary(mDataUsgeFont.getEntry());
        mDataUsgeFont.setOnPreferenceChangeListener(this);
        mDataUsgeColor = (SaltColorPickerPreference) findPreference("DataUsgeColor");
        mDataUsgeColor.setValue(Settings.System.getInt(getContentResolver(),
                KEY6, getColorInt(R.color.qsbar_color)));
        mDataUsgeColor.setOnPreferenceChangeListener(this);
        mDataUsgeColor = (SaltColorPickerPreference) findPreference("DataUsgeColor");
        mDataUsgeColor.setValue(Settings.System.getInt(getContentResolver(),
                KEY6, getColorInt(R.color.qsbar_color)));
        mDataUsgeColor.setOnPreferenceChangeListener(this);
        mDataUsgeColorEnabled = (SaltSwitchPreference) findPreference("DataUsgeColorEnabled");
        mDataUsgeColorEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                KEY7, 0) == 1));
        mDataUsgeColorEnabled.setOnPreferenceChangeListener(this);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_qs_bar_salt)));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mDataUsgeEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY1, value ? 1 : 0);
            return true;
        }else if (preference ==mMultiSimEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY2, value ? 1 : 0);
            return true;
        }else if (preference ==mDataUsgeSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY4, width);
            return true;
        }else if (preference ==mDataUsgeLocation) {
            int val = Integer.parseInt((String) newValue);
            int index = mDataUsgeLocation.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY3, val);
            mDataUsgeLocation.setSummary(mDataUsgeLocation.getEntries()[index]);
            return true;
        }else if (preference ==mDataUsgeFont) {
            int val = Integer.parseInt((String) newValue);
            int index = mDataUsgeFont.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY5, val);
            mDataUsgeFont.setSummary(mDataUsgeFont.getEntries()[index]);
            return true;
        }else if (preference ==mDataUsgeColor) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY6, width);
            return true;
        }else if (preference ==mDataUsgeColorEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY7, value ? 1 : 0);
            return true;
        }else{
            return false;
        }

    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
    @Override
    protected void getSaltPreferenceEnabled() {

    }


}
