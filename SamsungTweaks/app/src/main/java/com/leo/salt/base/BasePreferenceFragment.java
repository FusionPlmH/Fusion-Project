package com.fusionleo.salt.base;



import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;

import com.fusionleo.salt.fragment.CallBackgroundFragment;



public  class BasePreferenceFragment extends PreferenceFragment {
    protected static final String TAG = "LeoRom";
    protected   Intent intentFragment;
    PreferenceFragment mPreferenceFragment;
    protected     Context mContext;
    PreferenceManager mPreferenceManager;
    String spName;
   // SharedPreferences prefs;
  //  SharedPreferences.Editor mEditor;
    ContentResolver mResolver;



    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        //  addPreferencesFromResource(R.xml.call_background_prefs);
        mContext = getActivity();


    }

    public void  BasePreferenceFragment(Context context, PreferenceFragment pf, String spName) {
        this. mPreferenceFragment= pf;
        this. mContext= context;
        this.spName = spName;
        mPreferenceManager= pf.getPreferenceManager();
        mPreferenceManager.setSharedPreferencesName(spName);
        //prefs =mPreferenceManager.getSharedPreferences();
      //  mEditor= prefs.edit();
        mResolver= mContext.getContentResolver();
        int id =mContext.getResources().getIdentifier(spName, "xml", mContext.getPackageName());
        pf.addPreferencesFromResource(id);
    }
    public void onPauseFragment() {
        //prefs.unregisterOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener) this);
    }
    public void onResumeFragment() {
    //    prefs.registerOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener) this);

    }


}
