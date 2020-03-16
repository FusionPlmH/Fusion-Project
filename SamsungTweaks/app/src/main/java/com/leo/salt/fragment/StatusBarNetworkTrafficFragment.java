package com.fusionleo.salt.fragment;


import android.graphics.Color;
import android.os.Bundle;

import com.fusionleo.salt.R;
import com.fusionleo.salt.base.BasePreferenceFragment;

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
