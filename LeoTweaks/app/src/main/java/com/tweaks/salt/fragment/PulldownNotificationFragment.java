package com.tweaks.salt.fragment;



import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.MenuItem;

import com.tweaks.salt.R;
import com.tweaks.salt.activity.SubActivity;
import com.tweaks.salt.base.BasePreferenceFragment;
import com.tweaks.salt.preference.MyPreference;




public class PulldownNotificationFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener{
;
    private static final String TAG ="LeoRom" ;

    MyPreference mMods3;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.pulldown_notification_prefs);

        setHasOptionsMenu(true);

    }



    @Override
    public void onResume() {
        super.onResume();
  //   hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
       // hpf.onPauseFragment();
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        //  Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());


        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }




    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        return false;
    }
}
