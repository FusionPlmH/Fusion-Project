package com.leo.salt.fragment;


import android.graphics.Color;
import android.os.Bundle;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;


public class PulldownNotificationCarrierFragment extends BasePreferenceFragment {
    //SettingsPreferenceFragment hpf;
   

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
       // addPreferencesFromResource(R.xml.pulldown_notification_carrier_prefs);
        BasePreferenceFragment( mContext , this, "pulldown_notification_carrier_prefs");
        setHasOptionsMenu(true);
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
