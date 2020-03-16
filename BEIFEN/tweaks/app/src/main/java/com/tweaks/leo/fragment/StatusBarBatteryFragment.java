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


public class StatusBarBatteryFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {

    CustomBatteryPreference mCustomBatteryPreference;
    public static final String DB_MAIN_BATTERY_MODE = "leo_tweaks_battery_custom";
    MyListPreference mMainBatteryMode;
    Preference mCheckCustomBattery;
    public String BatterName="Leo电池模组";
    public String Batteryurl="file:///android_asset/LeoRom_battery.html";
    public static final String DB_MAIN_BATTERY = "leo_battery_help";

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        final ContentResolver resolver = getActivity().getContentResolver();
        addPreferencesFromResource(R.xml.statusbar_battery_prefs);
     //   hpf = new SettingsPreferenceFragment(getActivity(), this, "statusbar_battery_prefs");
        mMainBatteryMode = (MyListPreference) findPreference("main_battery");
        int batteryIndex = Settings.System.getInt(resolver,
                DB_MAIN_BATTERY_MODE, 0);
        mMainBatteryMode.setValue(String.valueOf(batteryIndex));
        mMainBatteryMode.setSummary(mMainBatteryMode.getEntry());
        this.mMainBatteryMode.setValueIndex(batteryIndex);
        mMainBatteryMode.setOnPreferenceChangeListener(this);
        this.mCheckCustomBattery = findPreference("check_custombat");
        this.mCustomBatteryPreference = (CustomBatteryPreference) findPreference("custombattery_preference");
        checkIfCustomBattery(batteryIndex);

        setHasOptionsMenu(true);

    }
    private void checkIfCustomBattery(int batteryIndex) {
        if (batteryIndex !=1) {
            this.mCustomBatteryPreference.setEnabled(false);

        } else {
            this.mCustomBatteryPreference.setEnabled(true);

        }
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
        if(preference == mMainBatteryMode){
            if(newValue.equals("1")){
                BatteryTips(getActivity(),DB_MAIN_BATTERY,BatterName,Batteryurl);
            }
            int batteryIndex = Integer.valueOf((String) newValue);
            int index = mMainBatteryMode.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    DB_MAIN_BATTERY_MODE, batteryIndex);
            mMainBatteryMode.setSummary(
                    mMainBatteryMode.getEntries()[index]);
            checkIfCustomBattery(index);
            return true;
        }  else {
            Settings.System.putInt(getActivity().getContentResolver(), DB_MAIN_BATTERY_MODE, Integer.valueOf((String) newValue).intValue());
            checkIfCustomBattery(Integer.valueOf((String) newValue).intValue());
            return true;

        }
    }


    private boolean mIsOnCreate = true;


    @Override
    public void onPause() {
        super.onPause();
       // hpf.onPauseFragment();
    }
    public void onResume() {
        super.onResume();
     //   hpf.onResumeFragment();
        if (!this.mIsOnCreate) {
            this.mCustomBatteryPreference.dismissDialog();
            getActivity().recreate();
        }
        this.mIsOnCreate = false;
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
