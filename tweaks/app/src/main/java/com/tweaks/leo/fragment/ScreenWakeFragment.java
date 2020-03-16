package com.tweaks.leo.fragment;


import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;


import com.tweaks.leo.R;




public class ScreenWakeFragment extends PreferenceFragment{
 //   SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.screen_wake_prefs);
    //    hpf = new SettingsPreferenceFragment(getActivity(), this, "screen_wake_prefs");

    }

    @Override
    public void onResume() {
        super.onResume();
     //   hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
   //     hpf.onPauseFragment();
    }



}
