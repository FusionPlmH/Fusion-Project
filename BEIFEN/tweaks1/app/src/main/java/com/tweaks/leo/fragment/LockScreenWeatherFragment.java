package com.tweaks.leo.fragment;


import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import com.tweaks.leo.R;
import com.tweaks.leo.base.BasePreferenceFragment;

import static com.tweaks.leo.widget.DialogUtil.BatteryTips;


public class LockScreenWeatherFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;
   public String BatterName="状态栏/锁屏天气";
    public String Batteryurl="file:///android_asset/weather.html";
    public static final String DB_MAIN_BATTERY = "leo_weather_help";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.lockscreen_weather_prefs);
      //  hpf = new SettingsPreferenceFragment(getActivity(), this, "lockscreen_weather_prefs");
        setHasOptionsMenu(true);
        BatteryTips(getActivity(),DB_MAIN_BATTERY,BatterName,Batteryurl);
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

    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_keyguard_weather_city_texticon_color", Color.parseColor("#fffafafa"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_keyguard_weather_city_icon_color", Color.parseColor("#fffafafa"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_keyguard_weather_city_color", Color.parseColor("#fffafafa"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_keyguard_weather_highlow_text_color", Color.parseColor("#fffafafa"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_keyguard_weather_high_color", Color.parseColor("#fffafafa"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_keyguard_weather_low_color", Color.parseColor("#fffafafa"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_keyguard_weather_aqi_text_color", Color.parseColor("#fffafafa"));
    }



}
