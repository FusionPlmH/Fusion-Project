package com.tweaks.salt.fragment;


import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;


import com.tweaks.salt.R;
import com.tweaks.salt.base.BasePreferenceFragment;


public class CityPositionFragment extends BasePreferenceFragment {


    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.city_position_prefs);

    }



    @Override
    public void onResume() {
        super.onResume();
       // hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
       // hpf.onPauseFragment();
    }





}