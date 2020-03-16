package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSettingCategoryPreference;

import static com.salt.utils.SaltProper.getApksStringInt;

public class PulldownCarrierFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {
    private SaltListPreference mClockDateWeekSymbol;
    private SaltSeekBarPreference mSize;


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
        getActivity().sendBroadcast(new Intent(getString(R.string.broadcast_panel)));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mClockDateWeekSymbol) {
            String key="leo_salt_panel_carrier_symbol";
            if(newValue.equals("14")){
                EditTextDialog("leo_salt_panel_carrier_symbol_string", String.valueOf(mClockDateWeekSymbol.getTitle()),getString(R.string.broadcast_panel));
            }
            int location = Integer.valueOf((String) newValue);
            int index =mClockDateWeekSymbol.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mClockDateWeekSymbol.setSummary(mClockDateWeekSymbol.getEntries()[index]);
            return true;
        }else if (preference == mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                 "leo_salt_panel_carrier_size", width);
            return true;
        }
        return false;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.pulldown_carrier_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mClockDateWeekSymbol = (SaltListPreference) findPreference("carrier_symbol");
        int clockDateWEEKsymbol = Settings.System.getInt(getContentResolver(),
                "leo_salt_panel_carrier_symbol", 0);
        mClockDateWeekSymbol.setValue(String.valueOf(clockDateWEEKsymbol));
        mClockDateWeekSymbol.setSummary( mClockDateWeekSymbol.getEntry());
        mClockDateWeekSymbol.setOnPreferenceChangeListener(this);
        mSize= (SaltSeekBarPreference) findPreference("QSpanelcarriersize");
        int clockEndPadding = Settings.System.getInt(getContentResolver(),
                "leo_salt_panel_carrier_size", 13);
        mSize.setValue(clockEndPadding);
        mSize.setOnPreferenceChangeListener(this);
        SaltSettingCategoryPreference mSaltSettingCategoryPreference=(SaltSettingCategoryPreference) findPreference("qs_carrier");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt("grid_carrier_title"));
    }
}
