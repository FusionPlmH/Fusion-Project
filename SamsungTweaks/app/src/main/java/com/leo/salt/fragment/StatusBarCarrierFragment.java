package com.fusionleo.salt.fragment;


import android.content.ContentResolver;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.MenuItem;
import android.widget.EditText;

import com.fusionleo.salt.R;
import com.fusionleo.salt.base.BasePreferenceFragment;



public class StatusBarCarrierFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener  {
  //  SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "statusbar_carrier_prefs");
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



    @Override
    public boolean onPreferenceChange(Preference preference, Object o) {
        return false;
    }
}