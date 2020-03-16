package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;

import static com.salt.utils.SaltProper.disableSnackn;
import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;

public class HwKyesFragment  extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {


    public SaltListPreference mLongPressOnRecent
            ,mLongPressOnBack,mLongPressOnHome;

    private static  final String LEO_PREFE=defaultKey;
    private static final String LongPressOnRecentKEY = LEO_PREFE+"global_longpress_recent_action";
    private static final String LongPressOnBACKKEY = LEO_PREFE+"global_longpress_back_action";
    private static final String LongPressOnHOMEKEY = LEO_PREFE+"global_longpress_home_action";




    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.hwkyes_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        final ContentResolver resolver =getContentResolver();

        mLongPressOnRecent = (SaltListPreference) findPreference("recent_longpress_action");
        int BixbyOnClick = Settings.System.getInt(resolver,
                LongPressOnRecentKEY, 0);
        mLongPressOnRecent.setValue(String.valueOf(BixbyOnClick));
        mLongPressOnRecent.setSummary(mLongPressOnRecent.getEntry());
        mLongPressOnRecent.setOnPreferenceChangeListener(this);

        mLongPressOnHome= (SaltListPreference) findPreference("home_longpress_action");
        int home = Settings.System.getInt(resolver,
                LongPressOnHOMEKEY, 0);
        mLongPressOnHome.setValue(String.valueOf(home));
        mLongPressOnHome.setSummary(mLongPressOnHome.getEntry());
        mLongPressOnHome.setOnPreferenceChangeListener(this);

        mLongPressOnBack = (SaltListPreference) findPreference("back_longpress_action");
        int back = Settings.System.getInt(resolver,
                LongPressOnBACKKEY, 0);
        mLongPressOnBack.setValue(String.valueOf(back));
        mLongPressOnBack.setSummary(mLongPressOnBack.getEntry());
        mLongPressOnBack.setOnPreferenceChangeListener(this);

    }
    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference("global_hwkeys_action_enable").setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mLongPressOnRecent) {
            String key=LongPressOnRecentKEY;
            Picker(mLongPressOnRecent,newValue,key);
            return true;
        }else if (preference == mLongPressOnBack) {
            String key=LongPressOnBACKKEY;
            Picker(mLongPressOnBack,newValue,key);
            return true;
        }else if (preference ==mLongPressOnHome) {
            String key=LongPressOnHOMEKEY;
            Picker(mLongPressOnHome,newValue,key);
            return true;
        }
        return true;
    }


}
