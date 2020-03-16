package com.fusionleo.salt.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.MenuItem;


import com.fusionleo.salt.R;
import com.fusionleo.salt.activity.SubActivity;
import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.preference.MyListPreference;


public class LauncherBackgroundWallpaperFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener{
    private static final String TAG ="LeoRom" ;

    private MyListPreference mLauncherBackgroundFormat;
    private static final String PULLDWN_BAR_DATE_FORMAT = "leo_tweaks_launcher_blur_style";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "launcher_wallpaper_prefs");
        mLauncherBackgroundFormat = (MyListPreference) findPreference(PULLDWN_BAR_DATE_FORMAT);
        int batteryShowPercent = Settings.System.getInt(resolver,
                PULLDWN_BAR_DATE_FORMAT, 1);
        mLauncherBackgroundFormat.setValue(String.valueOf(batteryShowPercent));
        mLauncherBackgroundFormat.setSummary(mLauncherBackgroundFormat.getEntry());
        mContext = getActivity();
        mLauncherBackgroundFormat.setOnPreferenceChangeListener(this);
    }

    @Override
    public void onResume() {
        super.onResume();
  onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
     onPauseFragment();
    }


    public boolean onPreferenceChange(Preference preference,  Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));

        if(preference == mLauncherBackgroundFormat){
            if(newValue.equals("999")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.LauncherWallpaperPicker);
                mContext.startActivity(intentFragment);
            }
            int batteryShowPercent = Integer.valueOf((String) newValue);
            int index = mLauncherBackgroundFormat.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    PULLDWN_BAR_DATE_FORMAT, batteryShowPercent);
            mLauncherBackgroundFormat.setSummary(
                    mLauncherBackgroundFormat.getEntries()[index]);
        }
        return true;
    }



}
