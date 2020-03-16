package com.salt.config.tweaks.fragment;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSettingCategoryPreference;

import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;

public class KeyguardCarrierFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {

    private SaltListPreference mClockDateWeekSymbol;
    private static final String KEY= "leo_salt_keyguard_carrier";
    private static final String KEY1= KEY+"_symbol";
    private static final String KEY2= KEY+"_size";
    private SaltSeekBarPreference mSize;

    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference("keyguard_carrier_custom_single_enabled").setEnabled(findPreferenceEnabled);
    getPreferenceManager().findPreference("keyguard_carrier_custom_single_enabled").setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }

    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent("SALT_UPDATE_LOCKCARRIER_SETTINGS"));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mClockDateWeekSymbol) {
            String key=KEY1;
            if(newValue.equals("14")){
                EditTextDialog(KEY1+"_string", String.valueOf(mClockDateWeekSymbol.getTitle()),"SALT_UPDATE_LOCKCARRIER_SETTINGS");
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
                    KEY2, width);
            return true;
        }
        return false;
    }


    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.keyguard_carrier_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();
        mClockDateWeekSymbol = (SaltListPreference) findPreference("keyguard_carrier_symbol");
        int clockDateWEEKsymbol = Settings.System.getInt(resolver,
                KEY1, 0);
        SaltSettingCategoryPreference   mSaltSettingCategoryPreference=(SaltSettingCategoryPreference) findPreference("keyguard_carrier");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt("grid_keyguard_carrier"));
        mClockDateWeekSymbol.setValue(String.valueOf(clockDateWEEKsymbol));
        mClockDateWeekSymbol.setSummary( mClockDateWeekSymbol.getEntry());
        mClockDateWeekSymbol.setOnPreferenceChangeListener(this);
        mSize= (SaltSeekBarPreference) findPreference("keyguardcarriersize");
        int clockEndPadding = Settings.System.getInt(resolver,
                KEY2, 14);
        mSize.setValue(clockEndPadding);

        mSize.setOnPreferenceChangeListener(this);
    }
}
