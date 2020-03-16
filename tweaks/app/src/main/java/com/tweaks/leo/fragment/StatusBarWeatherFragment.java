package com.tweaks.leo.fragment;


import android.content.ContentResolver;
import android.content.DialogInterface;
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

import com.tweaks.leo.R;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.widget.HelpDialog;

import static com.tweaks.leo.utils.Constants.PPPS;


public class StatusBarWeatherFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
  //  SettingsPreferenceFragment hpf;
  public String BatterName="状态栏/锁屏天气";
    public String Batteryurl=PPPS+"/weather.html";
    public static final String DB_MAIN_BATTERY = "leo_weather_help";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.statusbar_weather_prefs);
       // hpf = new SettingsPreferenceFragment(getActivity(), this, "statusbar_carrier_prefs");
       // BatteryTips(getActivity(),DB_MAIN_BATTERY,BatterName,Batteryurl);
        new HelpDialog(mContext, BatterName, Batteryurl, DB_MAIN_BATTERY);
    }




    @Override
    public void onResume() {
        super.onResume();
       // hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
       // hpf.onPauseFragment();
    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object o) {
        return false;
    }
}
