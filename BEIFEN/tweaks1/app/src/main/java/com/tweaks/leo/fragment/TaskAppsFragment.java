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

import static com.tweaks.leo.base.BasePreferenceFragment.MENU_RESET;


public class TaskAppsFragment extends BasePreferenceFragment {
    //SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.task_apps_prefs);
       // hpf = new SettingsPreferenceFragment(getActivity(), this, "task_apps_prefs");
        setHasOptionsMenu(true);
    }

    @Override
    public void onResume() {
        super.onResume();
      //  hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
      //  hpf.onPauseFragment();
    }



    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_launch_apps_text_color", Color.parseColor("#FFFFFFFF"));
    }



}
