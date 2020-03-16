package com.leo.salt.fragment;


import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.support.v7.preference.PreferenceFragmentCompat;
import android.view.MenuItem;


import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;


public class TaskOthersFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
       BasePreferenceFragment(mContext, this, "task_other_prefs");

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
