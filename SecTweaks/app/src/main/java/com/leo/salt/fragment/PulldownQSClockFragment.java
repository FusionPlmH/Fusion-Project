package com.leo.salt.fragment;


import android.content.ComponentName;
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


import com.leo.salt.R;
import com.leo.salt.activity.SubActivity;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.MyListPreference;
import com.leo.salt.preference.MyPreferenceCategory;


public class PulldownQSClockFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {

    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "pulldown_qsclock_prefs");
  //      addPreferencesFromResource(R.xml.pulldown_qsclock_prefs);

        mContext = getActivity();


    }



    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());


        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }


    public boolean onPreferenceChange(Preference preference,  Object newValue) {

        return true;
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
