package com.fusionleo.salt.fragment;


import android.graphics.Color;
import android.os.Bundle;

import com.fusionleo.salt.R;
import com.fusionleo.salt.base.BasePreferenceFragment;

import android.preference.PreferenceFragment;
import android.provider.Settings;

public class PulldownButtonFragment extends BasePreferenceFragment {
 //
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "pulldown_button_prefs");
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
