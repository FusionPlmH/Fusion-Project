package com.leo.salt.fragment;


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


import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.IntentDialogPreference;
import com.leo.salt.preference.MyListPreference;
import com.leo.salt.preference.MyPreferenceAlerts;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.leo.salt.utils.Utils.killPackage;


public class BixbyKeyFragment extends BasePreferenceFragment  {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "keys_bixby_prefs");
        //addPreferencesFromResource(R.xml.keys_bixby_prefs);
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






}
