package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;


import android.os.UserHandle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;


@SuppressLint("ResourceAsColor")
public class KeyguardAlarmFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private SaltSettingSeekBarPreference mTop;
    private SaltSettingSwitchPreference mDisplay,mIcon,mInf,mColor;
    private static final String KEY= "leo_salt_";
    private static final String KEY1= KEY+"keyguard_alarm_enabled";
    private static final String KEY2= KEY+"keyguard_alarm_icon_enabled";
    private static final String KEY3= KEY+"keyguard_alarm_text_enabled";
    private static final String KEY4= KEY+"keyguard_alarm_color_enabled";
    private static final String KEY5= KEY+"keyguard_alarm_text_size";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "keyguard_alarm_prefs");
        ContentResolver resolver = getActivity().getContentResolver();

        mDisplay= (SaltSettingSwitchPreference) findPreference("alarm_enabled");
        mDisplay.setChecked((Settings.System.getInt(resolver,
                KEY1, 0) == 1));
        mDisplay.setOnPreferenceChangeListener(this);
        mIcon= (SaltSettingSwitchPreference) findPreference("alarm_icon_enabled");
        mIcon.setChecked((Settings.System.getInt(resolver,
                KEY2, 0) == 1));
        mIcon.setOnPreferenceChangeListener(this);
        mInf= (SaltSettingSwitchPreference) findPreference("alarm_text_enabled");
        mInf.setChecked((Settings.System.getInt(resolver,
                KEY3, 0) == 1));
        mInf.setOnPreferenceChangeListener(this);
        mColor= (SaltSettingSwitchPreference) findPreference("alarm_color_enabled");
        mColor.setChecked((Settings.System.getInt(resolver,
                KEY4, 0) == 1));
        mColor.setOnPreferenceChangeListener(this);
        mTop = (SaltSettingSeekBarPreference) findPreference("alarm_size");
        int clockEndPadding = Settings.System.getInt(resolver,
                KEY5, 14);
        mTop.setValue(clockEndPadding);
        mTop.setOnPreferenceChangeListener(this);

    }
    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
        if (preference == mTop) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY5, width);
            return true;
        } else if (preference ==mInf) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY3, value ? 1 : 0);

            return true;
        }else if (preference ==mColor) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY4, value ? 1 : 0);
            return true;
        }else if (preference ==mDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY1, value ? 1 : 0);
            return true;
        }else if (preference ==mIcon) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY2, value ? 1 : 0);
            return true;
        }
        return false;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

}
