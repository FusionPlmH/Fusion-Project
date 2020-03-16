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


public class FingerprintKeyFragment extends BasePreferenceFragment  {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "keys_fingerprint_prefs");


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
