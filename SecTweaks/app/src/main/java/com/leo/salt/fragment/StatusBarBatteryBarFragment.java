package com.leo.salt.fragment;


import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;
import android.widget.EditText;

import com.leo.salt.R;
import com.leo.salt.activity.SubActivity;
import com.leo.salt.base.BaseActivity;
import com.leo.salt.base.BasePreferenceFragment;



public class StatusBarBatteryBarFragment extends BasePreferenceFragment  {

   

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "statusbar_battery_bar_prefs");
      //  addPreferencesFromResource(R.xml.statusbar_battery_bar_prefs);
    }



    @Override
    public void onPause() {
        super.onPause();
     onPauseFragment();
    }
    public void onResume() {
        super.onResume();

    }




}
