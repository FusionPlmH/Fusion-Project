package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.os.Bundle;


import android.os.Handler;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;


import com.leo.salt.preference.SaltSettingAppMultiSelectListPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.tweaks.view.widget.DialogView.SamsungGoodLock;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;
import static com.leo.salt.utils.PrefUtils.getLeoUri;
import static com.leo.salt.utils.PrefUtils.killPackage;


@SuppressLint("ResourceAsColor")
public class NavigationBarFragment  extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    public SaltSettingSwitchPreference mHome;
    SaltSettingSwitchPreference mExcluded;
    SaltSettingAppMultiSelectListPreference mExcludedAppsPref;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        ContentResolver resolver = getActivity().getContentResolver();

        BasePreferenceFragment( mContext , this, "navigationbar_prefs");
        PreferenceScreen prefSet = getPreferenceScreen();
        mHome= (SaltSettingSwitchPreference) findPreference("icon_text");
        mHome.setChecked(Settings.System.getInt(resolver,
                "leo_salt_launcher_icon_text_enabled", 0) == 1);

        mHome.setOnPreferenceChangeListener(this);
        mExcluded= (SaltSettingSwitchPreference) findPreference("hide_navigation");
        mExcluded.setChecked(Settings.System.getInt(resolver,
                "leo_salt_hide_nav", 0) == 1);

        mExcluded.setOnPreferenceChangeListener(this);
        mExcludedAppsPref = (SaltSettingAppMultiSelectListPreference) prefSet.findPreference("hidenavigation_whitelist");
        Set<String> excludedApps = getExcludedApps();
        if (excludedApps != null) {
            mExcludedAppsPref.setValues(excludedApps);
        }
        mExcludedAppsPref.setOnPreferenceChangeListener(this);

        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("nav_landscape_enable").setEnabled(true);
            getPreferenceManager().findPreference("leo_salt_nav_landscape_enable_style").setEnabled(true);
            getPreferenceManager().findPreference("nav_portrait_enable").setEnabled(true);
            getPreferenceManager().findPreference("leo_salt_nav_portrait_enable_style").setEnabled(true);

        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("nav_landscape_enable").setEnabled(false);
            getPreferenceManager().findPreference("leo_salt_nav_landscape_enable_style").setEnabled(false);
            getPreferenceManager().findPreference("nav_portrait_enable").setEnabled(false);
            getPreferenceManager().findPreference("leo_salt_nav_portrait_enable_style").setEnabled(false);
        }

    }

         @Override
         public boolean onPreferenceChange(Preference preference, Object newValue) {
             if (preference == mHome) {
                 boolean value = (Boolean) newValue;
                 Settings.System.putInt(getActivity().getContentResolver(),
                         "leo_salt_launcher_icon_text_enabled", value ? 1 : 0);
                 killPackage("com.sec.android.app.launcher",mContext);
                 return true;
             }else if (preference ==mExcluded) {
                 boolean value = (Boolean) newValue;
                 Settings.System.putInt(getActivity().getContentResolver(),
                         "leo_salt_hide_nav", value ? 1 : 0);
                 return true;

             }else if (preference == mExcludedAppsPref) {
                 storeExcludedApps((Set<String>) newValue);
                 return true;
             }
                 return false;
         }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
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
             "leo_salt_hide_nav_whitelist", builder.toString());
    }

    private Set<String> getExcludedApps() {
        String excluded = Settings.System.getString(mResolver,
               "leo_salt_hide_nav_whitelist");
        if (TextUtils.isEmpty(excluded)) {
            return null;
        }
        return new HashSet<String>(Arrays.asList(excluded.split(",-")));
    }


}
