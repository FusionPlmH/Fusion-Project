package com.salt.config.tweaks.fragment;




import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.provider.Settings;


import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;
import com.salt.config.SaltApp;

import org.salt.preference.SaltIconListPreference;
import org.salt.preference.SaltSeekBarPreference;

import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getCustomArray;


public class StatusBarLogoFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {

    private SaltSeekBarPreference mLogoSize,mStartPadding,mEndPadding;
    private SaltIconListPreference mLOGOPreference;
    private static final String STATUSBAR_LOGO = "leo_salt_statusbar_logo";
    private static final String STATUSBAR_CLOCK_SIZE = STATUSBAR_LOGO+"_size";

    private static final String  STATUSBAR_CLOCK_START_PADDING = STATUSBAR_LOGO+"_start_padding";
    private static final String   STATUSBAR_CLOCK_END_PADDING = STATUSBAR_LOGO+"_end_padding";
    private static final String   STATUSBAR_LOGO_STYLE= "statusbar_logo_style";
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
    @Override
    protected void getSaltPreferenceEnabled() {

    }



    public Drawable CustomDrawable(String str) {
        return getCustomDrawable(SaltApp.getContext(), str);
    }

    Drawable[] LogoIcon = {CustomDrawable("ic_leo"),
            CustomDrawable("ic_alibaba"),
            CustomDrawable("ic_apple_logo"),
            CustomDrawable("ic_baidu"),
            CustomDrawable("ic_cmcc"),
            CustomDrawable("ic_google"),
            CustomDrawable("ic_ios"),
            CustomDrawable("ic_linux"),
            CustomDrawable("ic_tencent"),
            CustomDrawable("ic_telecom"),
            CustomDrawable("ic_unicom"),
            CustomDrawable("ic_windows"),
            CustomDrawable("ic_ubuntu"),
            CustomDrawable("ic_ctc_go"),
            CustomDrawable("ic_alienware"),
            CustomDrawable("ic_bianfu"),
            CustomDrawable("ic_panda"),
            CustomDrawable("ic_love")
    };



    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.statusbar_logo_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();
        mLOGOPreference =(SaltIconListPreference) findPreference(STATUSBAR_LOGO_STYLE);
        mLOGOPreference.setEntries(getCustomArray("logo_style_entries"));
        mLOGOPreference.setEntryValues(getCustomArray("logo_style_values"));
        mLOGOPreference.setDrawableArray(LogoIcon);
        mLOGOPreference.setSummary(getStringIdentifier(getContext(),"icon_select"));
        mLOGOPreference.setOnPreferenceChangeListener(this);
        mLogoSize= (SaltSeekBarPreference) findPreference("logo_size");
        int clockSize = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_SIZE, 8);
        mLogoSize.setValue(clockSize);

        mLogoSize.setOnPreferenceChangeListener(this);


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

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_stausbar)));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference == mLogoSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    STATUSBAR_CLOCK_SIZE, width);
            return true;
        }else if (preference == mStartPadding) {
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
}
