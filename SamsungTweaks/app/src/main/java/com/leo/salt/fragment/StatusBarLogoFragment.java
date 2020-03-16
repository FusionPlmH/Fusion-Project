package com.fusionleo.salt.fragment;



import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;

import com.fusionleo.salt.R;
import com.fusionleo.salt.activity.SubActivity;
import com.fusionleo.salt.base.BaseActivity;
import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.preference.MyPreference;
import com.fusionleo.salt.preference.MyPreferenceAlerts;
import com.fusionleo.salt.preference.MySwitchPreference;


import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;


public class StatusBarLogoFragment extends BasePreferenceFragment {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

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
