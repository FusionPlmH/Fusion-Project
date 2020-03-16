package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;

import static com.salt.utils.SaltProper.BuildSecuritycheck;
import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;
import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;


public class BixbyFragment  extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {


    public SaltListPreference mBixbyOnClick,mBixbyOnClickLongPress,mBixbyOnKeyguardClick,mBixbyOnClickLongPressKeyguard;


    private static final String BixbyOnClickKEY =defaultKey+"global_bixby_click_action";
    private static final String BixbyLongPresskKEY = defaultKey+"global_bixby_longpress_action";
    private static final String BixbyOnClickKeyguardKEY = defaultKey+"keyguard_global_bixby_click_action";

    private static final String BixbyLongPressKeyguardKEY = defaultKey+"keyguard_global_bixby_longpress_action";



    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.bixby_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        final ContentResolver resolver = getActivity().getContentResolver();

        mBixbyOnClick = (SaltListPreference) findPreference("bixby_click");
        int BixbyOnClick = Settings.System.getInt(resolver,
                BixbyOnClickKEY, 0);
        mBixbyOnClick.setValue(String.valueOf(BixbyOnClick));
        mBixbyOnClick.setSummary(mBixbyOnClick.getEntry());
        mBixbyOnClick.setOnPreferenceChangeListener(this);
        mBixbyOnClickLongPress = (SaltListPreference) findPreference("bixby_longpress");
        int BixbyOnLongPress = Settings.System.getInt(resolver,
                BixbyLongPresskKEY, 0);
        mBixbyOnClickLongPress.setValue(String.valueOf(BixbyOnLongPress));
        mBixbyOnClickLongPress.setSummary(mBixbyOnClickLongPress.getEntry());
        mBixbyOnClickLongPress.setOnPreferenceChangeListener(this);

        mBixbyOnKeyguardClick = (SaltListPreference) findPreference("keyguard_bixby_click");
        int BixbyOnKeyguardClick = Settings.System.getInt(resolver,
                BixbyOnClickKeyguardKEY, 0);
        mBixbyOnKeyguardClick.setValue(String.valueOf(BixbyOnKeyguardClick));
        mBixbyOnKeyguardClick.setSummary(mBixbyOnKeyguardClick.getEntry());
        mBixbyOnKeyguardClick.setOnPreferenceChangeListener(this);
        mBixbyOnClickLongPressKeyguard = (SaltListPreference) findPreference("keyguard_bixby_longpress");
        int BixbyOnKeyguardLongPress = Settings.System.getInt(resolver,
                BixbyLongPressKeyguardKEY, 0);
        mBixbyOnClickLongPressKeyguard.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mBixbyOnClickLongPressKeyguard.setSummary(mBixbyOnClickLongPressKeyguard.getEntry());
        mBixbyOnClickLongPressKeyguard.setOnPreferenceChangeListener(this);

    }

    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference("global_bixby_action_enable").setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }



    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mBixbyOnClick) {
            String key=BixbyOnClickKEY ;
            Picker(mBixbyOnClick,newValue,key);
            return true;
        }else if (preference == mBixbyOnClickLongPress) {
            String key2=BixbyLongPresskKEY  ;
            Picker( mBixbyOnClickLongPress,newValue,key2);
            return true;
        }else if (preference == mBixbyOnKeyguardClick) {

            int location = Integer.valueOf((String) newValue);
            int index = mBixbyOnKeyguardClick.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    BixbyOnClickKeyguardKEY , location);
            mBixbyOnKeyguardClick.setSummary(mBixbyOnKeyguardClick.getEntries()[index]);
            return true;
        }else if (preference == mBixbyOnClickLongPressKeyguard) {

            int location = Integer.valueOf((String) newValue);
            int index =mBixbyOnClickLongPressKeyguard.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    BixbyLongPressKeyguardKEY, location);
            mBixbyOnClickLongPressKeyguard.setSummary(mBixbyOnClickLongPressKeyguard.getEntries()[index]);
            return true;
        }
        return true;
    }
}
