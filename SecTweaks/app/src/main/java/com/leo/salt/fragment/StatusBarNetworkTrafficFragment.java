package com.leo.salt.fragment;


import android.graphics.Color;
import android.os.Bundle;

import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;


public class StatusBarNetworkTrafficFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
    //    addPreferencesFromResource(R.xml.statusbar_network_traffic_prefs);
        BasePreferenceFragment(mContext, this, "statusbar_network_traffic_prefs");
    }



    @Override
    public void onResume() {
        super.onResume();
    onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
    onPauseFragment();
    }



}
