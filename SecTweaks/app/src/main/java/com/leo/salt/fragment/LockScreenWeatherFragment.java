package com.leo.salt.fragment;



import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;

import android.provider.Settings;


import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.utils.AndroidUtils;

import static com.leo.salt.utils.Constants.safety;
import static com.leo.salt.widget.DialogUtil.CustomEdit;


public class LockScreenWeatherFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener  {


    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
      //  addPreferencesFromResource(R.xml.lockscreen_alarm_prefs);
        BasePreferenceFragment(mContext, this, "lockscreen_weather_prefs");
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
            getPreferenceManager().findPreference("leo_tweaks_keyguard_weather_detail").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_keyguard_weather_text").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_keyguard_weather_color").setEnabled(true);

        }else {
            getPreferenceManager().findPreference("leo_tweaks_keyguard_weather_detail").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_keyguard_weather_text").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_keyguard_weather_color").setEnabled(false);

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
