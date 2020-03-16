package com.tweaks.leo.fragment;


import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;


import com.tweaks.leo.R;
import com.tweaks.leo.base.BasePreferenceFragment;


public class TaskOthersFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.task_other_prefs);

    }


    @Override
    public void onResume() {
        super.onResume();
     //   hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
        //hpf.onPauseFragment();
    }






}
