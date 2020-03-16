package com.fusionleo.salt.fragment;


import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;


import com.fusionleo.salt.base.BasePreferenceFragment;


public class MultiTouchFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
 
        BasePreferenceFragment( mContext , this, "multi_touch_prefs");
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
