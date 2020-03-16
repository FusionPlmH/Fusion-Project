package com.tweaks.leo.fragment;


import android.graphics.Color;
import android.os.Bundle;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import com.tweaks.leo.R;
import com.tweaks.leo.base.BasePreferenceFragment;


public class PulldownNotificationCarrierFragment extends BasePreferenceFragment {
    //SettingsPreferenceFragment hpf;
   

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.pulldown_notification_carrier_prefs);
       // hpf = new SettingsPreferenceFragment(getActivity(), this, "pulldown_notification_carrier_prefs");
        setHasOptionsMenu(true);
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



    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_notification_carrier_label_color", Color.parseColor("#FFFFFFFF"));
    }

}
