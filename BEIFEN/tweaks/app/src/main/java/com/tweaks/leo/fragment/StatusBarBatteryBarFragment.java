package com.tweaks.leo.fragment;


import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;
import android.widget.EditText;

import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.CustomBatteryPreference;
import com.tweaks.leo.preference.MyListPreference;


import static com.tweaks.leo.widget.DialogUtil.BatteryTips;


public class StatusBarBatteryBarFragment extends BasePreferenceFragment  {

   

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        final ContentResolver resolver = getActivity().getContentResolver();
        addPreferencesFromResource(R.xml.statusbar_battery_bar_prefs);

        setHasOptionsMenu(true);

    }
   


    @Override
    public void onPause() {
        super.onPause();
       // hpf.onPauseFragment();
    }
    public void onResume() {
        super.onResume();

    }



    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_battery_text_standby_color", Color.parseColor("#F5FFFFFF"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_battery_standby_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_battery_bar_color", Color.parseColor("#ffffffff"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_battery_bar_battery_low_color", Color.parseColor("#ffffffff"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_battery_bar_charging_color", Color.parseColor("#ffffff00"));


    }

}
