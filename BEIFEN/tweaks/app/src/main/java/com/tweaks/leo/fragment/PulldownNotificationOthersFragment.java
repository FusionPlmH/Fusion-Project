package com.tweaks.leo.fragment;


import android.graphics.Color;
import android.os.Bundle;

import com.tweaks.leo.R;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyPreferenceAlerts;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import static com.tweaks.leo.utils.Utils.killPackage;


public class PulldownNotificationOthersFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;
   MyPreferenceAlerts USEFUL_FEATURE_MAIN_SETTINGS;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.pulldown_notificationothers_prefs);
      //  hpf = new SettingsPreferenceFragment(getActivity(), this, "pulldown_notificationothers_prefs");
        setHasOptionsMenu(true);
        USEFUL_FEATURE_MAIN_SETTINGS = ((MyPreferenceAlerts) findPreference("LEO_Double_sim"));
    }

    @Override
    public void onResume() {
        super.onResume();
      //  hpf.onResumeFragment();
    }


    @Override
    public void ResetColor() {

        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_data_usage_text_color", Color.parseColor("#ff252525"));
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
