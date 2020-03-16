package com.fusionleo.salt.fragment;


import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;


import com.fusionleo.salt.R;
import com.fusionleo.salt.base.BasePreferenceFragment;


public class LockScreenOthersFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

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
