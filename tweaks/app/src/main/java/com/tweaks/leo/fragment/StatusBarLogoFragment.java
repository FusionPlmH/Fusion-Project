package com.tweaks.leo.fragment;



import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;

import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyPreference;
import com.tweaks.leo.preference.MyPreferenceAlerts;
import com.tweaks.leo.preference.MySwitchPreference;


import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;


public class StatusBarLogoFragment extends BasePreferenceFragment {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.statusbar_icon_logo_prefs);
        setHasOptionsMenu(true);

       
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
