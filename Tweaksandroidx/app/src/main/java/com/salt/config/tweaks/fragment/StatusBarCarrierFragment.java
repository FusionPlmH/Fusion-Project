package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSettingCategoryPreference;

import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;

public class StatusBarCarrierFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {

    private SaltSeekBarPreference mSize,mStartPadding,mEndPadding,mMultiSize;
    private SaltSettingCategoryPreference mSaltSettingCategoryPreference;
    private static final String STATUSBAR_LOGO = "leo_salt_statusbar_carrier";
    private static final String STATUSBAR_CLOCK_SIZE = STATUSBAR_LOGO+"_single_size";
    private static final String STATUSBAR_CLOCK_MULTISIZE = STATUSBAR_LOGO+"_multi_size";
    private static final String  STATUSBAR_CLOCK_START_PADDING = STATUSBAR_LOGO+"_start_padding";
    private static final String   STATUSBAR_CLOCK_END_PADDING = STATUSBAR_LOGO+"_end_padding";
    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference("statusbar_carrier_custom").setEnabled(findPreferenceEnabled);

      //  getPreferenceManager().findPreference(mStatusBarGestureLongPress.getKey()).setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_stausbar)));
        ContentResolver resolver = getActivity().getContentResolver();
         if (preference == mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    STATUSBAR_CLOCK_SIZE, width);
            return true;
        }else if (preference == mMultiSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    STATUSBAR_CLOCK_MULTISIZE, width);
            return true;
        } if (preference == mStartPadding) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    STATUSBAR_CLOCK_START_PADDING, width);
            return true;
        }
        else if (preference == mEndPadding) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    STATUSBAR_CLOCK_END_PADDING, width);
            return true;
        }
        return false;
    }


    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.statusbar_carrier_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();
        mSaltSettingCategoryPreference=( SaltSettingCategoryPreference) findPreference("statusbar_carrier");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt("grid_network_carrier"));
        mSize= (SaltSeekBarPreference) findPreference("size");
        int clockSize = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_SIZE, 14);
        mSize.setValue(clockSize);
        mSize.setOnPreferenceChangeListener(this);

        mMultiSize= (SaltSeekBarPreference) findPreference("MultiSize");
        int MultiSize = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_MULTISIZE, 10);
        mMultiSize.setValue(MultiSize);
        mMultiSize.setOnPreferenceChangeListener(this);

        mStartPadding = (SaltSeekBarPreference) findPreference("start_padding");
        int clockStartPadding = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_START_PADDING , 1);
        mStartPadding.setValue(clockStartPadding);
        mStartPadding.setOnPreferenceChangeListener(this);


        mEndPadding = (SaltSeekBarPreference) findPreference("end_padding");
        int clockEndPadding = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_END_PADDING, 1);
        mEndPadding.setValue(clockEndPadding);
        mEndPadding.setOnPreferenceChangeListener(this);
    }
}
