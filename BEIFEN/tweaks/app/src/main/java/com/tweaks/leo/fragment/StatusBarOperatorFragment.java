package com.tweaks.leo.fragment;



import android.content.ContentResolver;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;

import android.provider.Settings;


import com.tweaks.leo.R;
import com.tweaks.leo.base.BasePreferenceFragment;

import static com.tweaks.leo.widget.DialogUtil.CustomEdit;


public class StatusBarOperatorFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener  {


    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.statusbar_operator_prefs);
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
                "leo_tweaks_statusbar_info_color", Color.parseColor("#AEFFFFFF"));
    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object o) {
        return false;
    }
}
