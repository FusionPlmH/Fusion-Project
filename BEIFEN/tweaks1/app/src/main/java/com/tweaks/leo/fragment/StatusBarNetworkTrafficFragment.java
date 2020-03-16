package com.tweaks.leo.fragment;


import android.graphics.Color;
import android.os.Bundle;

import com.tweaks.leo.R;
import com.tweaks.leo.base.BasePreferenceFragment;

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
        addPreferencesFromResource(R.xml.statusbar_network_traffic_prefs);
      //  hpf = new SettingsPreferenceFragment(getActivity(), this, "statusbar_network_traffic_prefs");
        setHasOptionsMenu(true);
    }

    @Override
    public void onResume() {
        super.onResume();
      //  hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
       // hpf.onPauseFragment();
    }



    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_network_traffic_color", Color.parseColor("#AEFFFFFF"));
    }


}
