package com.tweaks.salt.fragment;


import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;


import com.tweaks.salt.R;



public class LockScreenOthersFragment extends PreferenceFragment{
   // SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.lockscreen_other_prefs);
       // hpf = new SettingsPreferenceFragment(getActivity(), this, "lockscreen_other_prefs");

    }

    @Override
    public void onResume() {
        super.onResume();
       // hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
      //  hpf.onPauseFragment();
    }



}
