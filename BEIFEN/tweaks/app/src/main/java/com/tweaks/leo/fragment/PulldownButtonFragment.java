package com.tweaks.leo.fragment;


import android.graphics.Color;
import android.os.Bundle;

import com.tweaks.leo.R;
import com.tweaks.leo.base.BasePreferenceFragment;

import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import static com.tweaks.leo.base.BasePreferenceFragment.MENU_RESET;


public class PulldownButtonFragment extends BasePreferenceFragment {
 //
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.pulldown_button_prefs);
        //hpf = new SettingsPreferenceFragment(getActivity(), this, "pulldown_button_prefs");
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
                "leo_tweaks_pulldown_image_color", Color.parseColor("#ff252525"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_pulldown_button_color", Color.parseColor("#ff252525"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_qs_icon_label_color", Color.parseColor("#ff252525"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_qs_label_divider_color", Color.parseColor("#ff252525"));
    }

}
