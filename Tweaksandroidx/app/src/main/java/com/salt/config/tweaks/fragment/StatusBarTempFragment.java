package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import android.provider.Settings;


import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;


import org.salt.preference.SaltSeekBarPreference;

import static com.salt.utils.SaltProper.getApksStringInt;


public class StatusBarTempFragment  extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {

    private SaltSeekBarPreference mStartPadding,mEndPadding,mMultiSize;

    private static final String STATUSBAR_LOGO = "leo_salt_statusbar_temp";
    private static final String STATUSBAR_CLOCK_MULTISIZE = STATUSBAR_LOGO+"_size";
    private static final String  STATUSBAR_CLOCK_START_PADDING = STATUSBAR_LOGO+"_start_padding";
    private static final String   STATUSBAR_CLOCK_END_PADDING = STATUSBAR_LOGO+"_end_padding";



    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.statusbar_temp_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();


        mMultiSize= (SaltSeekBarPreference) findPreference("MultiSize");
        int MultiSize = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_MULTISIZE, 10);
        mMultiSize.setValue(MultiSize);
        mMultiSize.setOnPreferenceChangeListener(this);

        mStartPadding = (SaltSeekBarPreference) findPreference("start_padding");
        int clockStartPadding = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_START_PADDING , 1);
        mStartPadding.setValue(clockStartPadding);
        mStartPadding.setOnPreferenceChangeListener( this);


        mEndPadding = (SaltSeekBarPreference) findPreference("end_padding");
        int clockEndPadding = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_END_PADDING, 1);
        mEndPadding.setValue(clockEndPadding);
        mEndPadding.setOnPreferenceChangeListener(this);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_stausbar)));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference == mMultiSize) {
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
        }else {
            return false;
        }
    }
    @Override
    protected void getSaltPreferenceEnabled() {

    }



    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
}
