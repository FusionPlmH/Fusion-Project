package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;


import android.os.UserHandle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;


@SuppressLint("ResourceAsColor")
public class StatusBarNetworkTrafficFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    private SaltSettingSeekBarPreference mLogoSize,mStartPadding,mEndPadding,mIconPadding,mThreshold;
    private SaltSettingIconListPreference mLOGOPreference;
    private static final String STATUSBAR_LOGO = "leo_salt_statusbar_traffic";
    private static final String STATUSBAR_CLOCK_SIZE = STATUSBAR_LOGO+"_size";

    private static final String  STATUSBAR_CLOCK_START_PADDING = STATUSBAR_LOGO+"_start_padding";
    private static final String   STATUSBAR_CLOCK_END_PADDING = STATUSBAR_LOGO+"_end_padding";
    private static final String   STATUSBAR_LOGO_STYLE= "statusbar_traffic_icon_style";
    private static final String NETWORK_TRAFFIC_AUTOHIDE_THRESHOLD = STATUSBAR_LOGO+"_threshold";
    private static final String   STATUSBAR_NETWORK_TRAFFIC_ICON_PADDING = STATUSBAR_LOGO+"_icon_padding";

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "statusbar_networktraffic_prefs");
        ContentResolver resolver = getActivity().getContentResolver();

        mLOGOPreference =(SaltSettingIconListPreference) findPreference(STATUSBAR_LOGO_STYLE);
        mLOGOPreference.setEntries(getCustomArray("traffic_style_entries"));
        mLOGOPreference.setEntryValues(getCustomArray("traffic_style_values"));
        mLOGOPreference.setDrawableArray(LogoIcon);
        mLOGOPreference.setSummary(getStringIdentifier(getContext(),"icon_select"));
        mLOGOPreference.setOnPreferenceChangeListener(this);
        mLogoSize= (SaltSettingSeekBarPreference) findPreference("traffic_size");
        int clockSize = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_SIZE, 8);
        mLogoSize.setValue(clockSize);
        mLogoSize.setOnPreferenceChangeListener(this);


        mStartPadding = (SaltSettingSeekBarPreference) findPreference("start_padding");
        int clockStartPadding = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_START_PADDING , 1);
        mStartPadding.setValue(clockStartPadding);
        mStartPadding.setOnPreferenceChangeListener(this);


        mEndPadding = (SaltSettingSeekBarPreference) findPreference("end_padding");
        int clockEndPadding = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_END_PADDING, 1);
        mEndPadding.setValue(clockEndPadding);
        mEndPadding.setOnPreferenceChangeListener(this);

        mThreshold = (SaltSettingSeekBarPreference) findPreference("threshold");
        int threshold = Settings.System.getInt(resolver,
                NETWORK_TRAFFIC_AUTOHIDE_THRESHOLD, 1);
        mThreshold.setValue(threshold);
        mThreshold.setOnPreferenceChangeListener(this);

        mIconPadding = (SaltSettingSeekBarPreference) findPreference("icon_padding");
        int icon = Settings.System.getInt(resolver,
                STATUSBAR_NETWORK_TRAFFIC_ICON_PADDING, 1);
        mIconPadding.setValue(icon);
        mIconPadding.setOnPreferenceChangeListener(this);


    }


    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

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
        }else if (preference == mThreshold) {
             int width = ((Integer)newValue).intValue();
             Settings.System.putInt(resolver,
                     NETWORK_TRAFFIC_AUTOHIDE_THRESHOLD, width);
             return true;
         }else if (preference == mIconPadding) {
             int width = ((Integer)newValue).intValue();
             Settings.System.putInt(resolver,
                     STATUSBAR_NETWORK_TRAFFIC_ICON_PADDING, width);
             return true;
         }
        return false;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
    Drawable[] LogoIcon = {CustomDrawable("stat_sys_network_traffic_a_updown") ,
            CustomDrawable("stat_sys_network_traffic_b_updown"),
            CustomDrawable("stat_sys_network_traffic_c_updown"),
            CustomDrawable("stat_sys_network_traffic_d_updown"),
            CustomDrawable("stat_sys_network_traffic_e_updown"),
            CustomDrawable("stat_sys_network_traffic_f_updown"),
            CustomDrawable("stat_sys_network_traffic_g_updown"),
            CustomDrawable("stat_sys_network_traffic_h_updown")
    };

    public Drawable CustomDrawable(String str){
        return Resource.getCustomDrawable(getContext(), str);
    }


}
