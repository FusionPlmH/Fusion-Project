package com.tweaks.leo.fragment;


import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.MenuItem;
import android.widget.EditText;


import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyListPreference;
import com.tweaks.leo.preference.MyPreferenceAlerts;

import java.util.Date;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.tweaks.leo.base.BasePreferenceFragment.MENU_RESET;
import static com.tweaks.leo.fragment.StatusBarBatteryFragment.DB_MAIN_BATTERY;
import static com.tweaks.leo.widget.DialogUtil.BatteryTips;
import static com.tweaks.leo.widget.DialogUtil.CustomEdit;


public class LauncherFragment extends BasePreferenceFragment {
   // SettingsPreferenceFragment hpf;
   private static final String DATE_FORMAT = "leo_launcher_weather_date_format";
    private static final String STATUS_BAR_CLOCK_DATE_FORMAT = "leo_launcher_weather_date_format_string";
    private ContentResolver mResolver;
    private static final String TAG = "LeoRom";
    private MyListPreference mDateFormat;
    MyPreferenceAlerts LaunchDisplay;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        mResolver = getActivity().getContentResolver();
        addPreferencesFromResource(R.xml.launcher_prefs);
       //hpf = new SettingsPreferenceFragment(getActivity(), this, "launcher_prefs");

        LaunchDisplay = ((MyPreferenceAlerts) findPreference("LaunchDisplay"));
    }

    @Override
    public void ResetColor() {

    }


    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference ==LaunchDisplay) {
            Intent intent;
            intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.putExtra("StartEdit", true);
            intent.addCategory("android.intent.category.HOME");
            intent.putExtra("PackageName", getActivity().getComponentName().getPackageName());
            intent.putExtra("ClassName", "com.android.settings.Settings$LaunchDisplaySettingsActivity");
            mContext.startActivity(intent);

        }

        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }



    @Override
    public void onResume() {
        super.onResume();
        //hpf.onResumeFragment();

    }

    @Override
    public void onPause() {
        super.onPause();
        //  hpf.onPauseFragment();

    }


}
