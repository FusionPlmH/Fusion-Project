package com.leo.salt.fragment;


import android.graphics.Color;
import android.os.Bundle;

import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.MyPreferenceAlerts;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import static com.leo.salt.utils.Utils.killPackage;


public class PulldownNotificationOthersFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;
   MyPreferenceAlerts USEFUL_FEATURE_MAIN_SETTINGS;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
      //  addPreferencesFromResource(R.xml.pulldown_notificationothers_prefs);
        BasePreferenceFragment( mContext , this, "pulldown_notificationothers_prefs");
        USEFUL_FEATURE_MAIN_SETTINGS = ((MyPreferenceAlerts) findPreference("LEO_Double_sim"));
    }


    @Override
    public void onResume() {
        super.onResume();
    onResumeFragment();
    }


    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        //  Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());
        if (preference == USEFUL_FEATURE_MAIN_SETTINGS) {
            killPackage("com.android.systemui");

        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
}
