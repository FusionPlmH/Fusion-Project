package com.tweaks.leo.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.widget.Toast;


import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyListPreference;
import com.tweaks.leo.preference.MyPreference;
import com.tweaks.leo.preference.MyPreferenceAlerts;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.tweaks.leo.utils.Utils.killPackage;


public class PowerMeunItemsFragment extends BasePreferenceFragment{

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.pulldown_brightness_prefs);
      //  hpf = new SettingsPreferenceFragment(getActivity(), this, "power_meun_prefs");
       ;
    }



    @Override
    public void onResume() {
        super.onResume();
      //  hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
     //   hpf.onPauseFragment();
    }



}