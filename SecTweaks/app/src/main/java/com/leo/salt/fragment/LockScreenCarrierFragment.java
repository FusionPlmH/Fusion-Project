package com.leo.salt.fragment;


import android.graphics.Color;
import android.os.Bundle;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;


public class LockScreenCarrierFragment extends BasePreferenceFragment {
  //  SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "lockscreen_carrier_prefs");
     //   addPreferencesFromResource(R.xml.lockscreen_carrier_prefs);
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
