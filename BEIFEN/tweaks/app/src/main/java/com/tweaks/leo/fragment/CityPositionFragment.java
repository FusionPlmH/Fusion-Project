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


public class CityPositionFragment extends BasePreferenceFragment {


    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.city_position_prefs);
       // hpf = new SettingsPreferenceFragment(getActivity(), this, "city_position_prefs");
        setHasOptionsMenu(true);
    }

    @Override
    public void onResume() {
        super.onResume();
       // hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
       // hpf.onPauseFragment();
    }


    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_mms_position_color", Color.parseColor("#ff979797"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_mms_date_color", Color.parseColor("#ff979797"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_call_log_position_color", Color.parseColor("#ff979797"));

    }




}
