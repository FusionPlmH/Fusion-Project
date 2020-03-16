package com.leo.salt.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.MenuItem;
import android.widget.EditText;

import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.utils.AndroidUtils;

import static com.leo.salt.utils.Constants.safety;


public class StatusBarCarrierFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener  {
  //  SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "statusbar_carrier_prefs");
       // addPreferencesFromResource(R.xml.statusbar_carrier_prefs);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }


    public boolean isProKeyInstalled(Context context){
        boolean isInstalled;
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo pInfo1 = packageManager.getPackageInfo("", PackageManager.GET_SIGNATURES);
            PackageInfo pInfo2 = packageManager.getPackageInfo(context.getPackageName(), PackageManager.GET_SIGNATURES);

            isInstalled = pInfo1.signatures[0].toCharsString().equals(pInfo2.signatures[0].toCharsString());
        } catch (PackageManager.NameNotFoundException e) {
            isInstalled = false;
            e.printStackTrace();
        }
        return isInstalled;
    }
    public void disablePreferences(){
        if (AndroidUtils.getCustomOTA().equals(safety)) {
            getPreferenceManager().findPreference("leo_tweaks_temperature").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_temperature2").setEnabled(true);
        }else {
            getPreferenceManager().findPreference("leo_tweaks_temperature").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_temperature2").setEnabled(false);
        }

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
    public boolean onPreferenceChange(Preference preference, Object o) {
        return false;
    }
}
