package com.leo.salt.fragment;



import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;

import com.leo.salt.R;
import com.leo.salt.activity.SubActivity;
import com.leo.salt.base.BaseActivity;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.MyPreference;
import com.leo.salt.preference.MyPreferenceAlerts;
import com.leo.salt.preference.MySwitchPreference;


import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;


public class StatusBarLogoFragment extends BasePreferenceFragment {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
      //  addPreferencesFromResource(R.xml.statusbar_icon_logo_prefs);
        BasePreferenceFragment(mContext, this, "statusbar_icon_logo_prefs");

       
    }




    @Override
    public void onResume() {
        super.onResume();
       
    }

    @Override
    public void onPause() {
        super.onPause();

    }
   
}
