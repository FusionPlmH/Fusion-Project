package com.fusionleo.salt.fragment;



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

import com.fusionleo.salt.R;
import com.fusionleo.salt.activity.SubActivity;
import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.preference.MyPreference;




public class PulldownNotificationFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener{
;


    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "pulldown_notification_prefs");
        setHasOptionsMenu(true);

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
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        //  Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());


        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }




    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        return false;
    }
}
