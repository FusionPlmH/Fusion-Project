package com.salt.config.tweaks.fragment;


import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import static com.salt.utils.SaltProper.disableSnackn;

public class PowerMenuFragment extends SaltPreferenceFragmentCompat {

    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference("global_power_globala_ctionsStyle").setEnabled(findPreferenceEnabled);
          getPreferenceManager().findPreference("leo_salt_power_menu_blur").setEnabled(findPreferenceEnabled);
        //  getPreferenceManager().findPreference(mSaltBarEnabled.getKey()).setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.power_menu_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {

    }
}
