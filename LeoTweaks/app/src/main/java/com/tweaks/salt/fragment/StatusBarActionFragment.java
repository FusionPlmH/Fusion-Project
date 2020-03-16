package com.tweaks.salt.fragment;


import android.os.Bundle;
import android.preference.PreferenceFragment;

import com.tweaks.salt.R;



public class StatusBarActionFragment extends PreferenceFragment {
 //   SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.statusbar_action_prefs);
       // hpf = new SettingsPreferenceFragment(getActivity(), this, "statusbar_action_prefs");

    }

    @Override
    public void onResume() {
        super.onResume();
       // hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
    //    hpf.onPauseFragment();
    }



}
