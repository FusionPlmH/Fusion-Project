package com.fusionleo.salt.fragment;


import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import com.fusionleo.salt.R;
import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.widget.WebDialog;


import static com.fusionleo.salt.utils.Constants.PPPS;


public class LockScreenWeatherFragment extends BasePreferenceFragment {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

        BasePreferenceFragment( mContext , this, "lockscreen_weather_prefs");
        //new WebDialog(mContext, BatterName, Batteryurl, DB_MAIN_BATTERY,false);
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
