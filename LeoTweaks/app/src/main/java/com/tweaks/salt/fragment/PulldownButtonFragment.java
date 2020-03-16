package com.tweaks.salt.fragment;


import android.graphics.Color;
import android.os.Bundle;

import com.tweaks.salt.R;
import com.tweaks.salt.base.BasePreferenceFragment;

import android.preference.PreferenceFragment;
import android.provider.Settings;

public class PulldownButtonFragment extends BasePreferenceFragment {
 //
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.pulldown_button_prefs);

    }


    @Override
    public void onResume() {
        super.onResume();
      //  hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
      //  hpf.onPauseFragment();
    }





}
