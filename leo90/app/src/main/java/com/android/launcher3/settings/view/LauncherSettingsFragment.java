package com.android.launcher3.settings.view;

import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v7.preference.LeoPreference;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceCategory;
import android.support.v7.preference.PreferenceFragmentCompat;
import android.widget.Toast;


import com.android.launcher3.framework.support.context.appstate.LauncherAppState;
import com.android.launcher3.framework.view.util.ActivityHelper;

import static com.fusionleo.LeoX.launcher.LeoConfig.setLeoAction;

public class LauncherSettingsFragment extends PreferenceFragmentCompat {

    private Preference mLeoROMSetting2 ;
    private LeoPreference mLeoROMSetting ;
    @Override
    public void onCreatePreferences(Bundle bundle, String s) {

    }
    private void createPreferences() {

        mLeoROMSetting2=  findPreference("pref_apps_leorom");

    }
    private void setupPreferences(Bundle bundle) {
        setupLeoROMTweaks();
    }

    private void setupLeoROMTweaks() {
        String str2="com.leo.salt.tweaks";
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = getContext().getPackageManager().getApplicationInfo(str2, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        String appLabel = applicationInfo.loadLabel(getContext().getPackageManager()).toString();
        mLeoROMSetting.setTitle(appLabel);
        mLeoROMSetting.seslSetSummaryColor(getResources().getColor(ActivityHelper.getResourceIdFromAttribute(getActivity(), 16843828), getActivity().getTheme()));
        mLeoROMSetting.setSummary("LeoROM Tweaks");
        mLeoROMSetting.setOnPreferenceClickListener(preference -> {
            setLeoAction(getContext(),null,211);
            return false;
        });


    }

}



