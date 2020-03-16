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
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingMultipleChoicePreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;


@SuppressLint("ResourceAsColor")
public class PulldownDeviceInfoFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    private SaltSettingSeekBarPreference mSize,mStatusbarSize;
    private static final String KEYdefault= LEO_PREFE+"device_info";
    private static final String KEY1= KEYdefault+"_statusbar_style";
    private static final String KEY2= KEYdefault+"_size";
    private static final String KEY3= KEYdefault+"_one_style";
    private static final String KEY4= KEYdefault+"_two_style";
    private static final String KEY5= KEYdefault+"_three_style";
    private static final String KEY6= KEYdefault+"_four_style";
    private static final String KEY7= KEYdefault+"_five_style";
    private static final String KEY8= KEYdefault+"_list";
    private static final String KEY9= KEYdefault+"_statusbar_size";
    private SaltSettingDefaultListPreference mOne,mTwo,mThree,mFour,mFive,mEnabled,mStatusbar;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "pulldown_deviceinfo_prefs");
        ContentResolver resolver = getActivity().getContentResolver();

        mSize= (SaltSettingSeekBarPreference) findPreference("Infosize");
        int clockEndPadding = Settings.System.getInt(resolver,
                KEY2, 13);
        mSize.setValue(clockEndPadding);
        mSize.setOnPreferenceChangeListener(this);
        mStatusbarSize= (SaltSettingSeekBarPreference) findPreference("statusbarInfosize");
        int StatusbarSize = Settings.System.getInt(resolver,
                KEY9, 13);
        mStatusbarSize.setValue(StatusbarSize);
        mStatusbarSize.setOnPreferenceChangeListener(this);
        mOne= (SaltSettingDefaultListPreference) findPreference("InfoOnestyle");
        int One = Settings.System.getInt(resolver,
                KEY3, 0);
        mOne.setValue(String.valueOf(One ));
        mOne.setSummary( mOne.getEntry());
        mOne.setOnPreferenceChangeListener(this);
        mTwo= (SaltSettingDefaultListPreference) findPreference("InfoTwostyle");
        int Two = Settings.System.getInt(resolver,
                KEY4, 0);
        mTwo.setValue(String.valueOf(Two));
        mTwo.setSummary(mTwo.getEntry());
        mTwo.setOnPreferenceChangeListener(this);

        mThree= (SaltSettingDefaultListPreference) findPreference("InfoThreestyle");
        int Three = Settings.System.getInt(resolver,
                KEY5, 0);
        mThree.setValue(String.valueOf(Three));
        mThree.setSummary(mThree.getEntry());
        mThree.setOnPreferenceChangeListener(this);

        mFour= (SaltSettingDefaultListPreference) findPreference("InfoFourstyle");
        int Four = Settings.System.getInt(resolver,
                KEY6, 0);
        mFour.setValue(String.valueOf(Four));
        mFour.setSummary( mFour.getEntry());
        mFour.setOnPreferenceChangeListener(this);

        mFive= (SaltSettingDefaultListPreference) findPreference("InfoFivestyle");
        int Five = Settings.System.getInt(resolver,
                KEY7, 0);
        mFive.setValue(String.valueOf(Five));
        mFive.setSummary( mFour.getEntry());
        mFive.setOnPreferenceChangeListener(this);



        mEnabled= (SaltSettingDefaultListPreference) findPreference("Infoenabledstyle");
        int Enabled = Settings.System.getInt(resolver,
                KEY8, 3);
        mEnabled.setValue(String.valueOf(Enabled));
        mEnabled.setSummary( mEnabled.getEntry());
        mEnabled.setOnPreferenceChangeListener(this);
        mStatusbar= (SaltSettingDefaultListPreference) findPreference("Infostatusbarstyle");
        int Statusbar = Settings.System.getInt(resolver,
                KEY1, 4);
        mStatusbar.setValue(String.valueOf(Statusbar));
        mStatusbar.setSummary( mStatusbar.getEntry());
        mStatusbar.setOnPreferenceChangeListener(this);
    }


    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mEnabled) {
            String key=KEY8;
            int location = Integer.valueOf((String) newValue);
            int index =mEnabled.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mEnabled.setSummary(mEnabled.getEntries()[index]);
            return true;
        }else if (preference ==  mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY2, width);
            return true;
        }else if (preference ==   mStatusbarSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY9, width);
            return true;
        }else if (preference == mOne) {
            String key=KEY3;
            int location = Integer.valueOf((String) newValue);
            int index = mOne.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mOne.setSummary( mOne.getEntries()[index]);
            return true;
        }else if (preference == mTwo) {
            String key=KEY4;
            int location = Integer.valueOf((String) newValue);
            int index =mTwo.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mTwo.setSummary(mTwo.getEntries()[index]);
            return true;
        }else if (preference ==  mThree) {
            String key=KEY5;
            int location = Integer.valueOf((String) newValue);
            int index = mThree.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mThree.setSummary( mThree.getEntries()[index]);
            return true;
        }else if (preference == mFour) {
            String key=KEY6;
            int location = Integer.valueOf((String) newValue);
            int index =mFour.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mFour.setSummary(mFour.getEntries()[index]);
            return true;
        }else if (preference == mFive) {
            String key=KEY7;
            int location = Integer.valueOf((String) newValue);
            int index =mFive.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mFive.setSummary(mFive.getEntries()[index]);
            return true;
        }
        else if (preference ==  mStatusbar) {
            String key=KEY1;
            int location = Integer.valueOf((String) newValue);
            int index =mStatusbar.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mStatusbar.setSummary(mStatusbar.getEntries()[index]);
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
