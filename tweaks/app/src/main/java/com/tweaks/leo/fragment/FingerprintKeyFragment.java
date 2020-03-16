package com.tweaks.leo.fragment;


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


import com.tweaks.leo.R;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.IntentDialogPreference;
import com.tweaks.leo.preference.MyListPreference;
import com.tweaks.leo.preference.MyPreferenceAlerts;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.tweaks.leo.utils.Utils.killPackage;


public class FingerprintKeyFragment extends BasePreferenceFragment  {
    MyPreferenceAlerts USEFUL_FEATURE_MAIN_SETTINGS;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.keys_fingerprint_prefs);


        setHasOptionsMenu(false);

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





}
