package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;

import android.os.Parcelable;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.util.Log;


import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.tweaks.FragUIActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.AppPicker;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.net.URISyntaxException;

import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;


public class StatusBarBatteryFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    private SaltSettingSeekBarPreference mSize,mStartPadding,mEndPadding,mLow;
    private static final String BATTERY="leo_salt_statusbar_battery";
    private static final String SIZE=BATTERY+"_size";
    private static final String START_PADDING=BATTERY+"_start_padding";
    private static final String END_PADDING=BATTERY+"_end_padding";
    private static final String LOW=BATTERY+"_low_style";
    private Preference Batterybar;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "statusbar_battery_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mSize= (SaltSettingSeekBarPreference) findPreference("size");
        int clockSize = Settings.System.getInt(resolver,
                SIZE, 60);
        mSize.setValue(clockSize);
        mSize.setOnPreferenceChangeListener(this);


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

        mLow = (SaltSettingSeekBarPreference) findPreference("low");
        int low = Settings.System.getInt(resolver,
                LOW, 15);
        mLow.setValue(low);
        mLow.setOnPreferenceChangeListener(this);
        Batterybar= (Preference) findPreference("bar");
        Batterybar.setTitle(getStringIdentifier(getContext(),"grid_battery_bar"));
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference == mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    SIZE, width);
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
        }else if (preference ==  mLow ) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    LOW, width);
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
