package com.tweaks.salt.fragment;


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

import com.tweaks.salt.R;
import com.tweaks.salt.base.BasePreferenceFragment;


import static com.tweaks.salt.utils.Constants.PPPS;


public class StatusBarWeatherFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
  //  SettingsPreferenceFragment hpf;
  public String BatterName="状态栏/锁屏天气";
    public String Batteryurl=PPPS+"/weather.html";
    public static final String DB_MAIN_BATTERY = "leo_weather_help";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.statusbar_weather_prefs);
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
