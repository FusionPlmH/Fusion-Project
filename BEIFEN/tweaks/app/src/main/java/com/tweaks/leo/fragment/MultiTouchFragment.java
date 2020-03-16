package com.tweaks.leo.fragment;


import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

import android.preference.PreferenceFragment;
import android.provider.Settings;


import com.tweaks.leo.R;




public class MultiTouchFragment extends PreferenceFragment{
   // SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.multi_touch_prefs);
     //   hpf = new SettingsPreferenceFragment(getActivity(), this, "multi_touch_prefs");

    }

    @Override
    public void onResume() {
        super.onResume();
      //  hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
        //hpf.onPauseFragment();
    }



    }
