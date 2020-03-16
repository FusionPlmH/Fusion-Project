package com.tweaks.salt.fragment;


import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import com.tweaks.salt.R;
import com.tweaks.salt.base.BasePreferenceFragment;
import com.tweaks.salt.widget.HelpDialog;

import static com.tweaks.salt.utils.Constants.PPPS;


public class LockScreenWeatherFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;
   public String BatterName="状态栏/锁屏天气";
    public String Batteryurl=PPPS+"weather.html";
    public static final String DB_MAIN_BATTERY = "leo_weather_help";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.lockscreen_weather_prefs);
    //    BatteryTips(getActivity(),DB_MAIN_BATTERY,BatterName,Batteryurl);
        new HelpDialog(mContext, BatterName, Batteryurl, DB_MAIN_BATTERY);
    }



    @Override
    public void onResume() {
        super.onResume();
        //hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
       // hpf.onPauseFragment();
    }




}
