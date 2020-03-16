package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;

import android.os.Parcelable;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;


import com.leo.salt.preference.SaltSettingAppMultiSelectListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.AppPicker;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.io.File;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.utils.PrefUtils.killPackage;


public class StatusBarIconFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener{
    private SaltSettingSwitchPreference mExcluded;
    private  SaltSettingAppMultiSelectListPreference mExcludedAppsPref;
    private SaltSettingIconListPreference mWIFIPreference,mSignalPreference;
    private SwitchPreference m5GiconStyle;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        mContext = getActivity();
        addPreferencesFromResource(R.xml.statusbar_icon_prefs);
        ContentResolver resolver = getActivity().getContentResolver();
        PreferenceScreen prefSet = getPreferenceScreen();
        mWIFIPreference =(SaltSettingIconListPreference) findPreference("statusbar_signal_wifi_style");
        mWIFIPreference.setEntries(getCustomArray("wifi_style"));
        mWIFIPreference.setEntryValues(getCustomArray("wifi_style_values"));
        mWIFIPreference.setDrawableArray(WIFIIcon);
        mWIFIPreference.setSummary(getStringIdentifier(getContext(),"icon_select"));
        mWIFIPreference.setOnPreferenceChangeListener(this);

        mSignalPreference=(SaltSettingIconListPreference) findPreference("statusbar_signal_style");
        mSignalPreference.setEntries(getCustomArray("signal_style"));
        mSignalPreference.setEntryValues(getCustomArray("signal_style_values"));
        mSignalPreference.setDrawableArray(SignalIcon);
        mSignalPreference.setSummary(getStringIdentifier(getContext(),"icon_select"));
        mSignalPreference.setOnPreferenceChangeListener(this);
        mExcluded= (SaltSettingSwitchPreference) findPreference("hide_statusbar");
        mExcluded.setChecked(Settings.System.getInt(resolver,
                "leo_salt_hide_statusbar", 0) == 1);

        mExcluded.setOnPreferenceChangeListener(this);
        mExcludedAppsPref = (SaltSettingAppMultiSelectListPreference) prefSet.findPreference("hide_statusbar_whitelist");
        Set<String> excludedApps = getExcludedApps();
        if (excludedApps != null) {
            mExcludedAppsPref.setValues(excludedApps);
        }
        mExcludedAppsPref.setOnPreferenceChangeListener(this);

        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();

        m5GiconStyle=(SwitchPreference) findPreference("style_5g_icon");
        int SimSdBlock = Settings.System.getInt(getActivity().getContentResolver(),"leo_g5_icon_style", 0);
        m5GiconStyle.setChecked(SimSdBlock != 0);
        m5GiconStyle.setOnPreferenceChangeListener(this);
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("statusbar_signal_orientation").setEnabled(true);
            getPreferenceManager().findPreference("statusbar_signal_wifi_enabled").setEnabled(true);
            getPreferenceManager().findPreference("statusbar_signal_enabled").setEnabled(true);
            getPreferenceManager().findPreference("statusbar_icon_padding_enabled").setEnabled(true);
            getPreferenceManager().findPreference("hide_statusbar").setEnabled(true);
            getPreferenceManager().findPreference("style_5g_icon").setEnabled(true);
        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("style_5g_icon").setEnabled(false);
            getPreferenceManager().findPreference("statusbar_signal_orientation").setEnabled(false);
            getPreferenceManager().findPreference("statusbar_signal_wifi_enabled").setEnabled(false);
            getPreferenceManager().findPreference("statusbar_signal_enabled").setEnabled(false);
            getPreferenceManager().findPreference("statusbar_icon_padding_enabled").setEnabled(false);
            getPreferenceManager().findPreference("hide_statusbar").setEnabled(false);
        }

    }

    public Drawable CustomDrawable(String str){
        return Resource.getCustomDrawable(getContext(), str);
    }

    Drawable[] WIFIIcon = {CustomDrawable("stat_sys_wifi"),
            CustomDrawable("stat_sys_wifi_signal_a_4"),
            CustomDrawable("stat_sys_wifi_signal_b_4"),
            CustomDrawable("stat_sys_wifi_signal_c_4"),
            CustomDrawable("stat_sys_wifi_signal_d_4"),
            CustomDrawable("stat_sys_wifi_signal_e_4"),
            CustomDrawable("stat_sys_wifi_signal_f_4"),
            CustomDrawable("stat_sys_wifi_signal_g_4"),
            CustomDrawable("stat_sys_wifi_signal_h_4"),
            CustomDrawable("stat_sys_wifi_signal_i_4"),
            CustomDrawable("stat_sys_wifi_signal_j_4"),
            CustomDrawable("stat_sys_wifi_signal_k_4"),
            CustomDrawable("stat_sys_wifi_signal_l_4"),
            CustomDrawable("stat_sys_wifi_signal_m_4"),
            CustomDrawable("stat_sys_wifi_signal_n_4"),
            CustomDrawable("stat_sys_wifi_signal_o_4"),
    };


    Drawable[] SignalIcon = {CustomDrawable("stat_sys_signal"),
            CustomDrawable("stat_sys_signal_a_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_b_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_c_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_d_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_e_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_f_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_g_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_h_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_i_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_j_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_k_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_l_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_m_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_n_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_o_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_p_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_q_5_auto_rotate"),
            CustomDrawable("stat_sys_signal_r_5_auto_rotate")
    };


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
         if (preference ==mExcluded) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_salt_hide_statusbar", value ? 1 : 0);
            return true;

        }else if (preference == mExcludedAppsPref) {
            storeExcludedApps((Set<String>) newValue);
            return true;
        }else if(preference == m5GiconStyle) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                 "leo_g5_icon_style", value ? 1 : 0);
             killPackag(value,"com.android.systemui");
            return true;
        }
        return false;
    }

    private void storeExcludedApps(Set<String> values) {
        StringBuilder builder = new StringBuilder();
        String delimiter = "";
        for (String value : values) {
            builder.append(delimiter);
            builder.append(value);
            delimiter = ",-";
        }
        Settings.System.putString(mResolver,
                "leo_salt_hide_statusbar_whitelist", builder.toString());
    }

    private Set<String> getExcludedApps() {
        String excluded = Settings.System.getString(mResolver,
                "leo_salt_hide_statusbar_whitelist");
        if (TextUtils.isEmpty(excluded)) {
            return null;
        }
        return new HashSet<String>(Arrays.asList(excluded.split(",-")));
    }
public void killPackag(boolean on,String str){
        if(on){
            killPackage(str,getActivity());
        }else{
            killPackage(str,getActivity());
        }

}
}
