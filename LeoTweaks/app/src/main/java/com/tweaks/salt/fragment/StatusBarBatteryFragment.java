package com.tweaks.salt.fragment;


import android.content.ContentResolver;
import android.os.Bundle;
import android.preference.Preference;
import android.provider.Settings;
import com.tweaks.salt.R;
import com.tweaks.salt.base.BasePreferenceFragment;
import com.tweaks.salt.preference.CustomBatteryPreference;
import com.tweaks.salt.preference.MyListPreference;
import com.tweaks.salt.widget.HelpDialog;

import static com.tweaks.salt.utils.Constants.PPPS;


public class StatusBarBatteryFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {

    CustomBatteryPreference mCustomBatteryPreference;
    public static final String DB_MAIN_BATTERY_MODE = "leo_tweaks_battery_custom";
    MyListPreference mMainBatteryMode;
    Preference mCheckCustomBattery;
    public String BatterName="Leo电池模组";
    public String Batteryurl=PPPS+"LeoRom_battery.html";
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
                new HelpDialog(mContext,BatterName,Batteryurl,DB_MAIN_BATTERY );
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



}
