package com.leo.salt.fragment;


import android.content.ContentResolver;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;

import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.CustomBatteryPreference;
import com.leo.salt.preference.MyListPreference;
import com.leo.salt.preference.MyPreference;
import com.leo.salt.widget.LogDialog;
import com.leo.salt.widget.WebDialog;


import static com.leo.salt.utils.Constants.PPPS;
import static com.leo.salt.utils.Utils.isLunarSetting;
import static com.leo.salt.utils.Utils.killPackage;


public class StatusBarBatteryFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {

    CustomBatteryPreference mCustomBatteryPreference;
    public static final String DB_MAIN_BATTERY_MODE = "leo_tweaks_battery_custom";
    MyListPreference mMainBatteryMode;
    Preference mCheckCustomBattery;
    public String BatterNameEN="Leo battery";
    public String BatterName="Leo电池模组";
    public String Batteryurl=PPPS+"LeoRom_battery.html";
    public String Batteryurlen=PPPS+"LeoRom_battery_en.html";
    public static final String DB_MAIN_BATTERY = "leo_battery_help";
    MyPreference mDownloadBattery;
    public static final String DownloadBattery = "leo_DownloadBattery";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "statusbar_battery_prefs");
    //    addPreferencesFromResource(R.xml.statusbar_battery_prefs);
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

        mDownloadBattery = (MyPreference)findPreference(DownloadBattery);
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
                String name;
                String url;
                if (isLunarSetting()==true){
                    name=BatterName;
                    url=Batteryurl;
                } else {
                    name=BatterNameEN;
                    url=Batteryurlen;
                }
            new WebDialog(mContext,name, url,DB_MAIN_BATTERY ,false);
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

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        if (preference ==mDownloadBattery) {
            if (isLunarSetting()==true){
               new LogDialog(mContext,"http://os.leorom.cc/battery/batterydownload_cn.html","电池图标下载");
            }else {
                new LogDialog(mContext,"http://os.leorom.cc/battery/batterydownload_en.html","Battery icon download");
            }
            return true;
        } else {
            return super.onPreferenceTreeClick(preferenceScreen, preference);
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
