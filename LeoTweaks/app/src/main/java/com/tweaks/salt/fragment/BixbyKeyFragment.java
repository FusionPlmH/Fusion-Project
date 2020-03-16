package com.tweaks.salt.fragment;


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


import com.tweaks.salt.R;
import com.tweaks.salt.base.BasePreferenceFragment;
import com.tweaks.salt.preference.IntentDialogPreference;
import com.tweaks.salt.preference.MyListPreference;
import com.tweaks.salt.preference.MyPreferenceAlerts;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.tweaks.salt.utils.Utils.killPackage;


public class BixbyKeyFragment extends BasePreferenceFragment  {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.keys_bixby_prefs);
       // hpf = new SettingsPreferenceFragment(getActivity(), this, "keys_back_prefs");


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
