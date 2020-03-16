package com.leo.salt.fragment;


import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.utils.AndroidUtils;

import static com.leo.salt.utils.Constants.safety;


public class PulldownDeviceInfoFragment extends BasePreferenceFragment {
    //SettingsPreferenceFragment hpf;
   

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
      //  addPreferencesFromResource(R.xml.pulldown_device_info_prefs);
        BasePreferenceFragment( mContext , this, "pulldown_device_info_prefs");
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
            getPreferenceManager().findPreference("leo_tweaks_pulldown_device_array").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_pulldown_device_info_style_two").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_pulldown_device_info_style_three").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_pulldown_device_info_style_four").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_pulldown_device_info_style_five").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_device").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_device1").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_device2").setEnabled(true);
        }else {
            getPreferenceManager().findPreference("leo_tweaks_pulldown_device_array").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_pulldown_device_info_style_two").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_pulldown_device_info_style_three").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_pulldown_device_info_style_four").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_pulldown_device_info_style_five").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_device").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_device1").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_device2").setEnabled(false);
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


}
