package com.salt.config.tweaks.fragment;


import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.provider.Settings;
import android.widget.Toast;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;

import com.salt.config.R;
import com.salt.config.SplashActivity;

import org.salt.preference.SaltCheckBoxPreference;
import org.salt.preference.SaltListPreference;

import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoInt;
import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.utils.APP_UPDATE;

public class  AppsSetting extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {
    private static final String TAG =AppsSetting.class.getSimpleName();
    public static final  String mCarouselAnimationKey="leo_home_carousel_animation";
    public static final  String mHomeInfoLayoutCompatKey="leo_home_info_layoutcompat";
    public static final  String mLauncherKey="leo_home_Launcher";
    public static final  String mAppsUpdateKey="leo_apps_info_update";
    public static final  String mShareLinKingKey="leo_home_share_linking";
    public static final  String mLinKingInfoKey="leo_home_linking_info";
    public static final  String mCheckMovingdataKey="leo_fota_skip_mobile_data";
    public static final  String mSkipChecksKey="leo_fota_skip_step";
    private SaltListPreference mCarouselAnimation;
    private SaltCheckBoxPreference mSaltLauncher,mHomeInfoLayoutCompat,mAppsUpdate,mShareLinKing,mLinKingInfo,mCheckMovingdata,mSkipChecks;
    private ComponentName mSaltLauncherComponent;
    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mAppsUpdate.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mSkipChecksKey).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mCheckMovingdataKey).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mHomeInfoLayoutCompatKey).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mAppsUpdateKey).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mLauncherKey).setEnabled(findPreferenceEnabled);
    }

    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.apps_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        PackageManager pm = getContext().getPackageManager();
        mSaltLauncherComponent = new ComponentName(getContext(),
                SplashActivity.class);
        mCarouselAnimation= (SaltListPreference) findPreference("carousel_animation");
        int clockDetailSyle =getLeoInt(getActivity(),
                mCarouselAnimationKey, 15);
        mCarouselAnimation.setValue(String.valueOf(clockDetailSyle ));
        mCarouselAnimation.setSummary( mCarouselAnimation.getEntry());
        mCarouselAnimation.setOnPreferenceChangeListener(this);
        mSaltLauncher = (SaltCheckBoxPreference) findPreference(mLauncherKey);
        mSaltLauncher.setTitle(getString(R.string.apps_launcher_enabled_title)+" "+getString(R.string.app_name)+" Logo");
        mSaltLauncher.setSummary(getString(R.string.apps_launcher_enabled_summary)+" "+getString(R.string.app_name));
        mSaltLauncher.setChecked(pm.getComponentEnabledSetting(mSaltLauncherComponent) !=
                PackageManager.COMPONENT_ENABLED_STATE_DISABLED);
        mSaltLauncher.setOnPreferenceChangeListener(this);
        mHomeInfoLayoutCompat= (SaltCheckBoxPreference) findPreference(mHomeInfoLayoutCompatKey);
        mHomeInfoLayoutCompat.setChecked(getLeoInt(getActivity(),mHomeInfoLayoutCompatKey,0) == 1);
        mHomeInfoLayoutCompat.setOnPreferenceChangeListener(this);
        mAppsUpdate= (SaltCheckBoxPreference) findPreference(mAppsUpdateKey);
        mAppsUpdate.setChecked(getLeoInt(getActivity(),mAppsUpdateKey,0) == 1);
        mAppsUpdate.setTitle(getString(R.string.app_name)+" "+getString(R.string.apps_update_title));
        mAppsUpdate.setSummary(getString(R.string.app_name)+" "+getString(R.string.apps_update_summary));
        mAppsUpdate.setOnPreferenceChangeListener(this);
        mShareLinKing= (SaltCheckBoxPreference) findPreference(mShareLinKingKey);
        mShareLinKing.setChecked(getLeoInt(getActivity(),mShareLinKingKey,1) == 1);
        mShareLinKing.setOnPreferenceChangeListener(this);
        mLinKingInfo= (SaltCheckBoxPreference) findPreference(mLinKingInfoKey);
        mLinKingInfo.setChecked(getLeoInt(getActivity(),mLinKingInfoKey,0) == 1);
        mLinKingInfo.setOnPreferenceChangeListener(this);
        mCheckMovingdata= (SaltCheckBoxPreference) findPreference(mCheckMovingdataKey);
        mCheckMovingdata.setChecked(getLeoInt(getActivity(),mCheckMovingdataKey,0) == 1);
        mCheckMovingdata.setOnPreferenceChangeListener(this);
        mSkipChecks= (SaltCheckBoxPreference) findPreference(mSkipChecksKey);
        mSkipChecks.setChecked(getLeoInt(getActivity(),mSkipChecksKey,0) == 1);
        mSkipChecks.setOnPreferenceChangeListener(this);
    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(APP_UPDATE));
      if (preference == mCarouselAnimation) {
          int location = Integer.valueOf((String) newValue);
          int index = mCarouselAnimation.findIndexOfValue((String) newValue);
          Settings.System.putInt(getActivity().getContentResolver(),
                  mCarouselAnimationKey, location);
          mCarouselAnimation.setSummary( mCarouselAnimation.getEntries()[index]);
            return true;
        } else  if (preference == mSaltLauncher) {
          setSaltLauncherEnabled((Boolean) newValue);
          return true;
      }else  if (preference == mHomeInfoLayoutCompat) {
          boolean value = (Boolean) newValue;
          Settings.System.putInt(getActivity().getContentResolver(),
                  mHomeInfoLayoutCompatKey, value ? 1 : 0);
            return true;
        }else if (preference == mAppsUpdate) {
          boolean value = (Boolean) newValue;
          Settings.System.putInt(getActivity().getContentResolver(),
                  mAppsUpdateKey, value ? 1 : 0);
          return true;
      }else if (preference == mShareLinKing) {
          boolean value = (Boolean) newValue;
          Settings.System.putInt(getActivity().getContentResolver(),
                  mShareLinKingKey, value ? 1 : 0);
          return true;
      }else if (preference ==  mLinKingInfo) {
          boolean value = (Boolean) newValue;
          Settings.System.putInt(getActivity().getContentResolver(),
                  mLinKingInfoKey, value ? 1 : 0);
          return true;
      }else if (preference ==  mCheckMovingdata) {
          boolean value = (Boolean) newValue;
          Settings.System.putInt(getContentResolver(),
                  mCheckMovingdataKey, value ? 1 : 0);
          return true;
      }else if (preference ==  mSkipChecks) {
          boolean value = (Boolean) newValue;
          Settings.System.putInt(getContentResolver(),
                  mSkipChecksKey, value ? 1 : 0);
          return true;
      }else {
            return false;
        }
    }

    private void setSaltLauncherEnabled(boolean enabled) {
        PackageManager pm = getContext().getPackageManager();
        pm.setComponentEnabledSetting(mSaltLauncherComponent, enabled
                ? PackageManager.COMPONENT_ENABLED_STATE_ENABLED
                : PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
        showSnackn(getString(R.string.app_name)+" "+getString(R.string.apps_launcher_enabled_update));
    }
}