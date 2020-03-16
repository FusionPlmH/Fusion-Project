package com.tweaks.salt.fragment;



import android.content.ContentResolver;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;

import android.provider.Settings;


import com.tweaks.salt.R;
import com.tweaks.salt.base.BasePreferenceFragment;

import static com.tweaks.salt.widget.DialogUtil.CustomEdit;


public class StatusBarOperatorFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener  {


    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.statusbar_operator_prefs);

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
    public boolean onPreferenceChange(Preference preference, Object o) {
        return false;
    }
}
