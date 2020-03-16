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
public class StatusBarLogoFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    private SaltSettingSeekBarPreference mLogoSize,mStartPadding,mEndPadding;
    private SaltSettingIconListPreference mLOGOPreference;
    private static final String STATUSBAR_LOGO = "leo_salt_statusbar_logo";
    private static final String STATUSBAR_CLOCK_SIZE = STATUSBAR_LOGO+"_size";

    private static final String  STATUSBAR_CLOCK_START_PADDING = STATUSBAR_LOGO+"_start_padding";
    private static final String   STATUSBAR_CLOCK_END_PADDING = STATUSBAR_LOGO+"_end_padding";
    private static final String   STATUSBAR_LOGO_STYLE= "statusbar_logo_style";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "statusbar_logo_prefs");
        ContentResolver resolver = getActivity().getContentResolver();

        mLOGOPreference =(SaltSettingIconListPreference) findPreference(STATUSBAR_LOGO_STYLE);
        mLOGOPreference.setEntries(getCustomArray("logo_style_entries"));
        mLOGOPreference.setEntryValues(getCustomArray("logo_style_values"));
        mLOGOPreference.setDrawableArray(LogoIcon);
        mLOGOPreference.setSummary(getStringIdentifier(getContext(),"icon_select"));
        mLOGOPreference.setOnPreferenceChangeListener(this);
        mLogoSize= (SaltSettingSeekBarPreference) findPreference("logo_size");
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
        }
        return false;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
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

    public Drawable CustomDrawable(String str){
        return Resource.getCustomDrawable(getContext(), str);
    }
}
