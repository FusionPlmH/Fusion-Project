package com.tweaks.salt.fragment;


import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.MenuItem;

import com.tweaks.salt.R;
import com.tweaks.salt.activity.SubActivity;
import com.tweaks.salt.base.BasePreferenceFragment;
import com.tweaks.salt.preference.MyListPreference;


public class StatusBarBackgroundWallpaperFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
  //  SettingsPreferenceFragment hpf;
    private static final String TAG = "LeoRom";

    private MyListPreference mStatusBarWallpaper;
    private Context mContext;
    private static final String STATUS_BAR_WALLPAER_STYLE = "leo_tweaks_statusbar_bg_style";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.statusbar_backgroundwallpaper_prefs);
      //  hpf = new SettingsPreferenceFragment(getActivity(), this, "statusbar_backgroundwallpaper_prefs");
        final ContentResolver resolver = getActivity().getContentResolver();

        mStatusBarWallpaper = (MyListPreference) findPreference(STATUS_BAR_WALLPAER_STYLE);

        int statusbarbackgroundstyle = Settings.System.getInt(resolver,
                STATUS_BAR_WALLPAER_STYLE, 1);
        mStatusBarWallpaper.setValue(String.valueOf(statusbarbackgroundstyle));
        mStatusBarWallpaper.setSummary(mStatusBarWallpaper.getEntry());

        mStatusBarWallpaper.setOnPreferenceChangeListener(this);
        mContext = getActivity();
    }


    @Override
    public void onResume() {
        super.onResume();
      //  hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
      //  hpf.onPauseFragment();
    }


    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference == mStatusBarWallpaper) {

        }  else {
            Log.v(TAG, "onPreferenceTreeClick preference invalid");
        }

        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }


    public boolean onPreferenceChange(Preference preference,  Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));

        if(preference == mStatusBarWallpaper){
            if(newValue.equals("666")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarWallpaperPicker);
                mContext.startActivity(intentFragment);
            }else if(newValue.equals("999")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarWallpaperPicker);
                mContext.startActivity(intentFragment);
            }
            int statusbarbackgroundstyle = Integer.valueOf((String) newValue);
            int index = mStatusBarWallpaper.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    STATUS_BAR_WALLPAER_STYLE, statusbarbackgroundstyle);
            mStatusBarWallpaper.setSummary(
                    mStatusBarWallpaper.getEntries()[index]);
        }
        return true;
    }






}
