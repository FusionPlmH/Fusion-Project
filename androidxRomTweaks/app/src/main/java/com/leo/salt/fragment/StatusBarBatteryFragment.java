package com.leo.salt.fragment;



import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;

import android.os.Bundle;


import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;




import com.leo.salt.preference.SaltSettingCategoryPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;

import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tweaks.FragUIActivity;
import com.leo.salt.tweaks.LeoAmberApplication;


import com.leo.salt.tweaks.base.BasePreferenceFragment;

import com.leo.salt.tweaks.view.BatteryPicker;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;


public class StatusBarBatteryFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private SaltSettingDefaultListPreference mBatteryStyle;
    private SaltSettingSeekBarPreference mSize,mStartPadding,mEndPadding,mTetxSize;
    private static final String BATTERY="leo_salt_statusbar_battery";
    private static final String SIZE=BATTERY+"_size";
    private static final String TEXTSIZE=BATTERY+"_text_size";
    private static final String START_PADDING=BATTERY+"_start_padding";
    private static final String END_PADDING=BATTERY+"_end_padding";
    private SaltSettingCategoryPreference mBattcolor;
    private static final String Style=BATTERY+"_style";
    private Preference Batterybar;
    private SaltSettingSwitchPreference mTetx;
    private void setDateOptions() {
        int mNavRingLong = Settings.System.getInt(mContext.getContentResolver(),
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
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "statusbar_battery_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mBattcolor = (SaltSettingCategoryPreference) findPreference("batt_color");
        mSize= (SaltSettingSeekBarPreference) findPreference("size");
        int clockSize = Settings.System.getInt(resolver,
                SIZE, 60);
        mSize.setValue(clockSize);
        mSize.setOnPreferenceChangeListener(this);

        mTetxSize= (SaltSettingSeekBarPreference) findPreference("PercentSize");
        int cSize = Settings.System.getInt(resolver,
                TEXTSIZE,15);
        mTetxSize.setValue(cSize);
        mTetxSize.setOnPreferenceChangeListener(this);

        mStartPadding = (SaltSettingSeekBarPreference) findPreference("start_padding");
        int clockStartPadding = Settings.System.getInt(resolver,
                START_PADDING , 1);
        mStartPadding.setValue(clockStartPadding);
        mStartPadding.setOnPreferenceChangeListener(this);


        mEndPadding = (SaltSettingSeekBarPreference) findPreference("end_padding");
        int clockEndPadding = Settings.System.getInt(resolver,
                END_PADDING, 1);
        mEndPadding.setValue(clockEndPadding);
        mEndPadding.setOnPreferenceChangeListener(this);

        Batterybar= (Preference) findPreference("bar");
        Batterybar.setTitle(getStringIdentifier(getContext(),"grid_battery_bar"));

        mBatteryStyle= (SaltSettingDefaultListPreference) findPreference("batteryStyle");
        int clockDetailSyle = Settings.System.getInt(resolver,
                Style, 0);
        mBatteryStyle.setValue(String.valueOf(clockDetailSyle ));
        mBatteryStyle.setSummary(mBatteryStyle.getEntry());
        mBatteryStyle.setOnPreferenceChangeListener(this);

        mTetx=(SaltSettingSwitchPreference) findPreference("Percentenabled");
        int Biometrics = Settings.System.getInt(getActivity().getContentResolver(),"display_battery_percentage", 0);
        mTetx.setChecked(Biometrics != 0);
        mTetx.setOnPreferenceChangeListener(this);
        setDateOptions();
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mBatteryStyle) {
            String str= Style;
           if(newValue.equals("1")){
               Intent  intent = new Intent();
               intent.putExtra("batterykey",str);
               intent.setClass(getContext(), BatteryPicker.class);
            mContext.startActivity(intent);
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
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        if (preference ==Batterybar) {

            Intent    intent =  new Intent(mContext,FragUIActivity.class);
            intent.putExtra(FragUIActivity.KEY_TYPE, FragUIActivity.FragmentType.BatteryBar);
            startActivity(intent);
            return true;
        }else{
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }
}
