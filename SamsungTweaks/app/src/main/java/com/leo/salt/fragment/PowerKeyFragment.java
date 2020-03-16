package com.fusionleo.salt.fragment;


import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.widget.Toast;


import com.fusionleo.salt.R;
import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.preference.IntentDialogPreference;
import com.fusionleo.salt.preference.MyListPreference;
import com.fusionleo.salt.preference.MyPreferenceAlerts;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.fusionleo.salt.utils.Utils.killPackage;


public class PowerKeyFragment extends BasePreferenceFragment  {
    MyPreferenceAlerts USEFUL_FEATURE_MAIN_SETTINGS;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

        BasePreferenceFragment( mContext , this, "keys_power_prefs");
        USEFUL_FEATURE_MAIN_SETTINGS = ((MyPreferenceAlerts) findPreference("USEFUL_FEATURE_MAIN_SETTINGS"));


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
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        //  Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());
        if (preference == USEFUL_FEATURE_MAIN_SETTINGS) {
            Intent intentDevelopment = new Intent();
            intentDevelopment.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intentDevelopment.setAction("com.samsung.settings.USEFUL_FEATURE_MAIN_SETTINGS");
            mContext.startActivity(intentDevelopment);

        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }




}
