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


public class PowerMeunFragment extends BasePreferenceFragment {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.power_meun_prefs);
      //  hpf = new SettingsPreferenceFragment(getActivity(), this, "power_meun_prefs");

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
     //   hpf.onPauseFragment();
    }



    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_power_text_color", Color.parseColor("#FFFFFFFF"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_power_bg_only_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_power_gradient_bg_one_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_power_gradient_bg_two_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_power_gradient_bg_three_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_power_bg_stroke_color", Color.parseColor("#FF00BCD4"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_power_bg_wallpaper_color", Color.parseColor("#FFFFFFFF"));
    }


}
