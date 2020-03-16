package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;

import android.os.Bundle;
import android.provider.Settings;


import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;
import com.salt.config.picker.BatteryPicker;

import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSettingCategoryPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.disableSnackn;


public class StatusBarBatteryFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener{
    private SaltListPreference mBatteryStyle;
    private SaltSeekBarPreference mSize,mStartPadding,mEndPadding,mTetxSize;
    private static final String BATTERY="leo_salt_statusbar_battery";
    private static final String SIZE=BATTERY+"_size";
    private static final String TEXTSIZE=BATTERY+"_text_size";
    private static final String START_PADDING=BATTERY+"_start_padding";
    private static final String END_PADDING=BATTERY+"_end_padding";
    private SaltSettingCategoryPreference mBattcolor;
    private static final String Style=BATTERY+"_style";
    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mBatteryStyle.getKey()).setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }
    private SaltSwitchPreference mTetx;
    private void setDateOptions() {
        int mNavRingLong = Settings.System.getInt(getContentResolver(),
                Style, 0);
        if (mNavRingLong==0) {
            mBattcolor.setEnabled(false);
            mSize.setEnabled(false);
            mStartPadding.setEnabled(false);
            mEndPadding.setEnabled(false);
        }else if (mNavRingLong==1) {
            mBattcolor.setEnabled(true);
            mSize.setEnabled(true);
            mStartPadding.setEnabled(true);
            mEndPadding.setEnabled(true);
        }else  if (mNavRingLong==2){
            mSize.setEnabled(false);
            mBattcolor.setEnabled(false);
            mStartPadding.setEnabled(false);
            mEndPadding.setEnabled(false);
        }
    }



    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        getActivity().sendBroadcast(new Intent(getString(R.string.broadcast_battery)));
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mBatteryStyle) {
            String str= Style;
           if(newValue.equals("1")){
               launchBatteryPicker(str);
            }
            int location = Integer.valueOf((String) newValue);
            int index =mBatteryStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    str, location);
            mBatteryStyle.setSummary(mBatteryStyle.getEntries()[index]);
            setDateOptions();
            return true;
        }else if (preference == mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    SIZE, width);
            return true;
        }else if (preference == mTetxSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    TEXTSIZE, width);
            return true;
        }else if (preference == mStartPadding) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    START_PADDING, width);
            return true;
        }
        else if (preference == mEndPadding) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    END_PADDING, width);
            return true;
        } else if(preference == mTetx) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                  "display_battery_percentage", value ? 1 : 0);

            return true;
        }
        return false;
    }


    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.statusbar_battery_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        ContentResolver resolver = getActivity().getContentResolver();
        mBattcolor = (SaltSettingCategoryPreference) findPreference("batt_color");
        mSize= (SaltSeekBarPreference) findPreference("size");
        int clockSize = Settings.System.getInt(resolver,
                SIZE, 60);
        mSize.setValue(clockSize);
        mSize.setOnPreferenceChangeListener(this);

        mTetxSize= (SaltSeekBarPreference) findPreference("PercentSize");
        int cSize = Settings.System.getInt(resolver,
                TEXTSIZE,15);
        mTetxSize.setValue(cSize);
        mTetxSize.setOnPreferenceChangeListener(this);

        mStartPadding = (SaltSeekBarPreference) findPreference("start_padding");
        int clockStartPadding = Settings.System.getInt(resolver,
                START_PADDING , 1);
        mStartPadding.setValue(clockStartPadding);
        mStartPadding.setOnPreferenceChangeListener(this);


        mEndPadding = (SaltSeekBarPreference) findPreference("end_padding");
        int clockEndPadding = Settings.System.getInt(resolver,
                END_PADDING, 1);
        mEndPadding.setValue(clockEndPadding);
        mEndPadding.setOnPreferenceChangeListener(this);


        mBatteryStyle= (SaltListPreference) findPreference("batteryStyle");
        int clockDetailSyle = Settings.System.getInt(resolver,
                Style, 0);
        mBatteryStyle.setValue(String.valueOf(clockDetailSyle ));
        mBatteryStyle.setSummary(mBatteryStyle.getEntry());
        mBatteryStyle.setOnPreferenceChangeListener(this);

        mTetx=(SaltSwitchPreference) findPreference("Percentenabled");
        int Biometrics = Settings.System.getInt(getActivity().getContentResolver(),"display_battery_percentage", 0);
        mTetx.setChecked(Biometrics != 0);
        mTetx.setOnPreferenceChangeListener(this);
        setDateOptions();
    }
}
