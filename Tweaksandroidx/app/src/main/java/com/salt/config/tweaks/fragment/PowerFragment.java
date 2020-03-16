package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;

import static com.salt.utils.SaltProper.disableSnackn;


public class PowerFragment  extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    public SaltListPreference mPoweDouble,mPowerLongPress,mPowerKeyguardDouble,mPowerLongPressKeyguard;
    private static final String PoweDoubleKEY = LEO_PREFE+"global_power_double_action";
    private static final String PowerLongPressKEY = LEO_PREFE+"global_power_longpress_action";
    private static final String PowerKeyguardDoubleKEY = LEO_PREFE+"keyguard_global_power_double_action";
    private static final String BixbyLongPressKeyguardKEY = LEO_PREFE+"keyguard_global_power_longpress_action";

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.power_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        final ContentResolver resolver = getContentResolver();
        mPoweDouble = (SaltListPreference) findPreference("power_double_action");
        int BixbyOnClick = Settings.System.getInt(resolver,
                PoweDoubleKEY, 0);
        mPoweDouble.setValue(String.valueOf(BixbyOnClick));
        mPoweDouble.setSummary(mPoweDouble.getEntry());
        mPoweDouble.setOnPreferenceChangeListener(this);

        mPowerLongPress = (SaltListPreference) findPreference("power_longpress_action");
        int BixbyOnLongPress = Settings.System.getInt(resolver,
                PowerLongPressKEY, 0);
        mPowerLongPress.setValue(String.valueOf(BixbyOnLongPress));
        mPowerLongPress.setSummary(mPowerLongPress.getEntry());
        mPowerLongPress.setOnPreferenceChangeListener(this);

        mPowerKeyguardDouble = (SaltListPreference) findPreference("keyguard_power_double_action");
        int BixbyOnKeyguardClick = Settings.System.getInt(resolver,
                PowerKeyguardDoubleKEY, 0);
        mPowerKeyguardDouble.setValue(String.valueOf(BixbyOnKeyguardClick));
        mPowerKeyguardDouble.setSummary(mPowerKeyguardDouble.getEntry());
        mPowerKeyguardDouble.setOnPreferenceChangeListener(this);

        mPowerLongPressKeyguard = (SaltListPreference) findPreference("keyguard_power_longpress_action");
        int BixbyOnKeyguardLongPress = Settings.System.getInt(resolver,
                BixbyLongPressKeyguardKEY, 0);
        mPowerLongPressKeyguard.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mPowerLongPressKeyguard.setSummary(mPowerLongPressKeyguard.getEntry());
        mPowerLongPressKeyguard.setOnPreferenceChangeListener(this);
        setHasOptionsMenu(true);

    }

    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference("global_power_action_enable").setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mPoweDouble) {
            String STRT=PoweDoubleKEY ;
            Picker(mPoweDouble,newValue,STRT);
            return true;
        }else if (preference == mPowerLongPress) {
            String STRT=PowerLongPressKEY  ;
            Picker(mPowerLongPress,newValue,STRT);
            return true;
        }else if (preference ==mPowerKeyguardDouble) {

            int location = Integer.valueOf((String) newValue);
            int index = mPowerKeyguardDouble.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    PowerKeyguardDoubleKEY, location);
            mPowerKeyguardDouble.setSummary(mPowerKeyguardDouble.getEntries()[index]);
            return true;
        }else if (preference ==mPowerLongPressKeyguard) {

            int location = Integer.valueOf((String) newValue);
            int index =mPowerLongPressKeyguard.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    BixbyLongPressKeyguardKEY, location);
            mPowerLongPressKeyguard.setSummary(mPowerLongPressKeyguard.getEntries()[index]);
            return true;
        }
        return true;
    }

}
