package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;


import android.os.UserHandle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;

import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.tencent.bugly.crashreport.CrashReport;

import java.util.Date;
import java.util.List;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.leo.salt.fragment.SystemFragment.getDynamiclockStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.utils.PrefUtils.ScriptsLogClear;


@SuppressLint("ResourceAsColor")
public class KeyguardLunarFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private SaltSettingSeekBarPreference mSize;
    private SaltSettingSwitchPreference mEnabled,mColorEnabled;
    private SaltSettingDefaultListPreference mLunarMonth, mLunarStyle;
    private static final String KEY = "leo_salt_keyguard_lunar";
    private static final String KEY1 = KEY+"_enabled";
    private static final String KEY2 = KEY+"_color_enabled";
    private static final String KEY3 = KEY+"_month_style";
    private static final String KEY4 = KEY+"_style";
    private static final String KEY5= KEY+"_size";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "keyguard_lunar_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mEnabled= (SaltSettingSwitchPreference) findPreference("LOCKLUNAR");
        mEnabled.setChecked((Settings.System.getInt(resolver,
                KEY1, 1) == 1));
        mEnabled.setOnPreferenceChangeListener(this);

        mColorEnabled= (SaltSettingSwitchPreference) findPreference("LOCKLUNARCOLOR");
        mColorEnabled.setChecked((Settings.System.getInt(resolver,
                KEY2, 0) == 1));
        mColorEnabled.setOnPreferenceChangeListener(this);

        mLunarMonth= (SaltSettingDefaultListPreference) findPreference("LOCKLUNARMONTH");
        int clockLunarMonth = Settings.System.getInt(resolver,
                KEY3 , 0);
        mLunarMonth.setValue(String.valueOf(clockLunarMonth));
        mLunarMonth.setSummary(mLunarMonth.getEntry());
        mLunarMonth.setOnPreferenceChangeListener(this);

        mLunarStyle= (SaltSettingDefaultListPreference) findPreference("LOCKLUNARSTYLE");
        int clockLunarStyle = Settings.System.getInt(resolver,
                KEY4, 5);
        mLunarStyle.setValue(String.valueOf(clockLunarStyle));
        mLunarStyle.setSummary( mLunarStyle.getEntry());
        mLunarStyle.setOnPreferenceChangeListener(this);

        mSize = (SaltSettingSeekBarPreference) findPreference("LOCKLUNARSZIE");
        int clockSize = Settings.System.getInt(resolver,
                KEY5, 15);
        mSize.setValue(clockSize / 1);

        mSize.setOnPreferenceChangeListener(this);
    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY5, width);
            return true;
        }else if (preference ==mLunarMonth) {
            int statusBarAmPm = Integer.valueOf((String) newValue);
            int index = mLunarMonth.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY3, statusBarAmPm);
            mLunarMonth.setSummary(mLunarMonth.getEntries()[index]);
            return true;
        }else if (preference == mLunarStyle) {
            int statusBarAmPm = Integer.valueOf((String) newValue);
            int index =  mLunarStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY4, statusBarAmPm);
            mLunarStyle.setSummary( mLunarStyle.getEntries()[index]);
            return true;
        }else if (preference == mColorEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY2, value ? 1 : 0);
            return true;
        } else if (preference ==mEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY1, value ? 1 : 0);
            return true;
        }
        return false;
    }
}
