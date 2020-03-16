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
import com.leo.salt.preference.SaltSettingSwitchPreference;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;


@SuppressLint("ResourceAsColor")
public class KeyguardWeatherFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private SaltSettingSeekBarPreference mTop,mHeight;
    private SaltSettingSwitchPreference mDisplay;
    private SaltSettingDefaultListPreference mStyle;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "keyguard_weather_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mStyle = (SaltSettingDefaultListPreference) findPreference("weather_style");
        mStyle.setValue(Integer.toString(Settings.System.getInt(getActivity()
                        .getContentResolver(), "leo_salt_keyguard_weather_style",
                0)));
        mStyle.setSummary(mStyle.getEntry());
        mStyle.setOnPreferenceChangeListener(this);
        int clockDatePosition = Settings.System.getInt(resolver,
                "leo_salt_keyguard_weather_style", 0);
        mStyle.setValue(String.valueOf(clockDatePosition));
        mStyle.setSummary(mStyle.getEntry());
        mStyle.setOnPreferenceChangeListener(this);

        mTop = (SaltSettingSeekBarPreference) findPreference("weather_top");
        int clockEndPadding = Settings.System.getInt(resolver,
             "leo_salt_keyguard_weather_top", 5);
        mTop.setValue(clockEndPadding);

        mTop.setOnPreferenceChangeListener(this);

        mHeight = (SaltSettingSeekBarPreference) findPreference("weather_height");
        int Heighting = Settings.System.getInt(resolver,
                "leo_salt_keyguard_weather_height", 350);
        mHeight.setValue(Heighting);

        mHeight.setOnPreferenceChangeListener(this);

        mDisplay= (SaltSettingSwitchPreference) findPreference("weather_enabled");
        mDisplay.setChecked((Settings.System.getInt(resolver,
           "leo_salt_keyguard_weather_enabled", 0) == 1));
        mDisplay.setOnPreferenceChangeListener(this);
        setColopd();
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("weather_enabled").setEnabled(true);
           // getPreferenceManager().findPreference("keyguard_carrier_custom").setEnabled(true);

        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("weather_enabled").setEnabled(false);
           // getPreferenceManager().findPreference("keyguard_carrier_custom").setEnabled(false);
        }

    }
    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==  mStyle) {
            int val = Integer.parseInt((String) newValue);
            int index =  mStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_salt_keyguard_weather_style", val);
            mStyle.setSummary( mStyle.getEntries()[index]);

            return true;
        } else if (preference == mHeight) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                   "leo_salt_keyguard_weather_height", width);
            return true;
        } else if (preference == mTop) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    "leo_salt_keyguard_weather_top", width);
            return true;
        }else if (preference ==mDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                "leo_salt_keyguard_weather_enabled", value ? 1 : 0);
            setColopd();
            return true;
        }
        return false;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
    private void setColopd() {
        int mNavRingLong = Settings.System.getInt(mContext.getContentResolver(),
            "leo_salt_keyguard_weather_enabled", 0);
        if (mNavRingLong==1) {
            getPreferenceScreen().addPreference(mTop);
            getPreferenceScreen().addPreference(mHeight);
            getPreferenceScreen().addPreference(mStyle);
        }else {
            getPreferenceScreen().removePreference(mTop);
            getPreferenceScreen().removePreference(mHeight);
            getPreferenceScreen().removePreference(mStyle);
        }
    }
}
