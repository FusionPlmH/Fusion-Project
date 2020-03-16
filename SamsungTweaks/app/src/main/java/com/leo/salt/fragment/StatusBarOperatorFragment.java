package com.fusionleo.salt.fragment;



import android.content.ContentResolver;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;

import android.provider.Settings;


import com.fusionleo.salt.R;
import com.fusionleo.salt.base.BasePreferenceFragment;

import static com.fusionleo.salt.widget.DialogUtil.CustomEdit;


public class StatusBarOperatorFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener  {


    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment(mContext, this, "statusbar_operator_prefs");
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



    @Override
    public boolean onPreferenceChange(Preference preference, Object o) {
        return false;
    }
}
