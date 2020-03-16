package com.leo.salt.fragment;


import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;


import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;


public class LockScreenOthersFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
       // addPreferencesFromResource(R.xml.lockscreen_other_prefs);
        BasePreferenceFragment( mContext , this, "lockscreen_other_prefs");
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
