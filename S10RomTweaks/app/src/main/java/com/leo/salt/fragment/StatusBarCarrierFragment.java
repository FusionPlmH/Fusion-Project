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


import com.leo.salt.preference.SaltSettingCategoryPreference;
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

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;


@SuppressLint("ResourceAsColor")
public class StatusBarCarrierFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    private SaltSettingSeekBarPreference mSize,mStartPadding,mEndPadding,mMultiSize;
    private SaltSettingCategoryPreference mSaltSettingCategoryPreference;
    private static final String STATUSBAR_LOGO = "leo_salt_statusbar_carrier";
    private static final String STATUSBAR_CLOCK_SIZE = STATUSBAR_LOGO+"_single_size";
    private static final String STATUSBAR_CLOCK_MULTISIZE = STATUSBAR_LOGO+"_multi_size";
    private static final String  STATUSBAR_CLOCK_START_PADDING = STATUSBAR_LOGO+"_start_padding";
    private static final String   STATUSBAR_CLOCK_END_PADDING = STATUSBAR_LOGO+"_end_padding";
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("statusbar_carrier_custom").setEnabled(true);
            getPreferenceManager().findPreference("start_padding").setEnabled(true);
            getPreferenceManager().findPreference("end_padding").setEnabled(true);
        }else {
            getPreferenceManager().findPreference("statusbar_carrier_custom").setEnabled(false);
            getPreferenceManager().findPreference("start_padding").setEnabled(false);
            getPreferenceManager().findPreference("end_padding").setEnabled(false);
        }

    }
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "statusbar_carrier_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
        mSaltSettingCategoryPreference=( SaltSettingCategoryPreference) findPreference("statusbar_carrier");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt("grid_network_carrier"));
        mSize= (SaltSettingSeekBarPreference) findPreference("size");
        int clockSize = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_SIZE, 14);
        mSize.setValue(clockSize);
        mSize.setOnPreferenceChangeListener(this);

        mMultiSize= (SaltSettingSeekBarPreference) findPreference("MultiSize");
        int MultiSize = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_MULTISIZE, 10);
        mMultiSize.setValue(MultiSize);
        mMultiSize.setOnPreferenceChangeListener(this);

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
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

}
