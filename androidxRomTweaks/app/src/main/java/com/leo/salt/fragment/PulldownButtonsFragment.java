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


import com.leo.salt.preference.SaltSettingCategoryPreference;
import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingMultipleChoicePreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;

import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.util.Date;


import static com.leo.salt.tweaks.resource.Resource.DonatePermission;

import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;


@SuppressLint("ResourceAsColor")
public class PulldownButtonsFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private SaltSettingSwitchPreference mLeoEnabled,mSettingEnabled,mSearchEnabled,mCollapsePanels;
    private SaltSettingDefaultListPreference mLeoClick,mSettingClick,mSearchClick;
    private Preference mKiilWhite;
    private static final String mLeobutton=new String(new char[]{'b', 'u', 't', 't','o','n'});
    private static final String KEY = "leo_salt_qs_button";
    public static final String[] mLeoQSHeadsButton={
            KEY+"_leo"+mLeobutton+"_enabled",
            KEY+"_setting"+mLeobutton+"_enabled",
            KEY+"_search"+mLeobutton+"_enabled",
            KEY+"_leo"+mLeobutton+"_style",
            KEY+"_setting"+mLeobutton+"_style",
            KEY+"_search"+mLeobutton+"_style",
            KEY+"_leo"+mLeobutton+"_collapsepanel"+"_enabled",
    };

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "pulldown_button_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mKiilWhite= (Preference) findPreference("KiilWhite");
        mLeoClick= (SaltSettingDefaultListPreference) findPreference("qsLeoClick");
        int clockClick  = Settings.System.getInt(resolver,
                mLeoQSHeadsButton[3], 0);
        mLeoClick.setValue(String.valueOf(clockClick ));
        mLeoClick.setSummary(mLeoClick.getEntry());
        mLeoClick.setOnPreferenceChangeListener(this);
        mSettingClick= (SaltSettingDefaultListPreference) findPreference("qsSettingClick");
        int Setting  = Settings.System.getInt(resolver,
                mLeoQSHeadsButton[4], 0);
        mSettingClick.setValue(String.valueOf(Setting));
        mSettingClick.setSummary(mSettingClick.getEntry());
        mSettingClick.setOnPreferenceChangeListener(this);
        mSearchClick= (SaltSettingDefaultListPreference) findPreference("qsSearchClick");
        int Search  = Settings.System.getInt(resolver,
                mLeoQSHeadsButton[5], 0);
        mSearchClick.setValue(String.valueOf(Search));
        mSearchClick.setSummary(mSearchClick.getEntry());
        mSearchClick.setOnPreferenceChangeListener(this);


        mCollapsePanels= (SaltSettingSwitchPreference) findPreference("qsButtonCollapsePanel");
        mCollapsePanels.setChecked((Settings.System.getInt(resolver,
                mLeoQSHeadsButton[6], 1) == 1));
        mCollapsePanels.setOnPreferenceChangeListener(this);

        mLeoEnabled= (SaltSettingSwitchPreference) findPreference("qsLeoEnabled");
        mLeoEnabled.setChecked((Settings.System.getInt(resolver,
                mLeoQSHeadsButton[0], 1) == 1));
        mLeoEnabled.setOnPreferenceChangeListener(this);
        mSettingEnabled= (SaltSettingSwitchPreference) findPreference("qsSettingEnabled");
        mSettingEnabled.setChecked((Settings.System.getInt(resolver,
                mLeoQSHeadsButton[1], 1) == 1));
        mSettingEnabled.setOnPreferenceChangeListener(this);
        mSearchEnabled= (SaltSettingSwitchPreference) findPreference("qsSearchEnabled");
        mSearchEnabled.setChecked((Settings.System.getInt(resolver,
                mLeoQSHeadsButton[2], 1) == 1));
        mSearchEnabled.setOnPreferenceChangeListener(this);
        setChinaTime();
        PermissionFunction( mContext);
        SaltSettingCategoryPreference mSaltSettingCategoryPreference=(SaltSettingCategoryPreference) findPreference("head_button");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt(R.string.head_button));
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        if (preference ==mKiilWhite) {
           Intent    intent =  new Intent(mContext,FragSettingActivity.class);
            intent.putExtra(FragSettingActivity.KEY_TYPE, FragSettingActivity.FragmentType.AppProcess);
           mContext.startActivity(intent);
            return true;
        }else{
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }
    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
          if (preference ==mCollapsePanels) {
             boolean value = (Boolean) newValue;
             Settings.System.putInt(getActivity().getContentResolver(),
                     mLeoQSHeadsButton[6], value ? 1 : 0);
             return true;
         }else if (preference ==mLeoEnabled) {
              boolean value = (Boolean) newValue;
              Settings.System.putInt(getActivity().getContentResolver(),
                      mLeoQSHeadsButton[0], value ? 1 : 0);
              setChinaTime();
              return true;
          }else if (preference ==mSettingEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    mLeoQSHeadsButton[1], value ? 1 : 0);
              setChinaTime();
            return true;
        }else if (preference ==mSearchEnabled) {
              boolean value = (Boolean) newValue;
              Settings.System.putInt(getActivity().getContentResolver(),
                      mLeoQSHeadsButton[2], value ? 1 : 0);
              setChinaTime();
              return true;
          }else if (preference == mLeoClick) {
              String str= mLeoQSHeadsButton[3];
              int location = Integer.valueOf((String) newValue);
              int index =mLeoClick.findIndexOfValue((String) newValue);
              Settings.System.putInt(getActivity().getContentResolver(),
                      str, location);
              mLeoClick.setSummary(mLeoClick.getEntries()[index]);
              setChinaTime();
              return true;
          }else if (preference == mSettingClick) {
              String str= mLeoQSHeadsButton[4];
              int location = Integer.valueOf((String) newValue);
              int index =mSettingClick.findIndexOfValue((String) newValue);
              Settings.System.putInt(getActivity().getContentResolver(),
                      str, location);
              mSettingClick.setSummary(mSettingClick.getEntries()[index]);

              return true;
          }else if (preference ==mSearchClick) {
              String str=mLeoQSHeadsButton[5];

              int location = Integer.valueOf((String) newValue);
              int index =mSearchClick.findIndexOfValue((String) newValue);
              Settings.System.putInt(getActivity().getContentResolver(),
                      str, location);
              mSearchClick.setSummary(mSearchClick.getEntries()[index]);

              return true;
          }
        return false;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
    private void setChinaTime() {
        int mNavRingLong = Settings.System.getInt(mContext.getContentResolver(),
                mLeoQSHeadsButton[0], 0);
        int mNavRingLong2 = Settings.System.getInt(mContext.getContentResolver(),
                mLeoQSHeadsButton[1], 1);
        int mNavRingLong3 = Settings.System.getInt(mContext.getContentResolver(),
                mLeoQSHeadsButton[2], 1);
        int mNavRingLong4 = Settings.System.getInt(mContext.getContentResolver(),
                mLeoQSHeadsButton[3], 0);

        if (mNavRingLong==1) {
            getPreferenceScreen().addPreference(mLeoClick);
            getPreferenceScreen().addPreference(mCollapsePanels);
            getPreferenceScreen().addPreference(mKiilWhite);
            if (mNavRingLong4==2) {
                mKiilWhite.setEnabled(true);
            }else {
                mKiilWhite.setEnabled(false);
            }
        }else {
            getPreferenceScreen().removePreference(mLeoClick);
            getPreferenceScreen().removePreference(mCollapsePanels);
            getPreferenceScreen().removePreference(mKiilWhite);
        }
        if(mNavRingLong3==1) {
            getPreferenceScreen().addPreference(mSearchClick );
        }else {
            getPreferenceScreen().removePreference(mSearchClick );
        }
        if(mNavRingLong2==1) {
            getPreferenceScreen().addPreference(mSettingClick);
        }else {
            getPreferenceScreen().removePreference(mSettingClick);
        }
        if(DonatePermission()){
            mLeoEnabled .setEnabled(true);
            mSettingClick .setEnabled(true);
                    mSearchClick .setEnabled(true);
            mCollapsePanels .setEnabled(true);
        }else {

            mLeoEnabled .setEnabled(false);
            mSettingClick .setEnabled(false);
            mSearchClick .setEnabled(false);
            mCollapsePanels .setEnabled(false);
        }

    }
}
