package com.tweaks.leo.fragment;


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

import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyListPreference;


public class TaskBackgroundWallpaperFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
   // SettingsPreferenceFragment hpf;

    private static final String TAG ="LeoRom" ;



    private MyListPreference mRecentsWallpaper;
    private Context mContext;
    private static final String TASK_WALLPAER_STYLE = "leo_tweaks_task_bg_style";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.task_backgroundwallpaper_prefs);
       // hpf = new SettingsPreferenceFragment(getActivity(), this, "task_backgroundwallpaper_prefs");
        final ContentResolver resolver = getActivity().getContentResolver();

        mRecentsWallpaper = (MyListPreference) findPreference(TASK_WALLPAER_STYLE);

        int statusbarbackgroundstyle = Settings.System.getInt(resolver,
                TASK_WALLPAER_STYLE, 1);
        mRecentsWallpaper.setValue(String.valueOf(statusbarbackgroundstyle));
        mRecentsWallpaper.setSummary(mRecentsWallpaper.getEntry());

        mRecentsWallpaper.setOnPreferenceChangeListener(this);
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
       // hpf.onPauseFragment();
    }


    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference == mRecentsWallpaper) {

        }  else {
            Log.v(TAG, "onPreferenceTreeClick preference invalid");
        }

        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }


    public boolean onPreferenceChange(Preference preference,  Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));

        if(preference == mRecentsWallpaper){
            if(newValue.equals("666")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.TaskWallpaperPicker);
                mContext.startActivity(intentFragment);
            }else if(newValue.equals("999")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.TaskWallpaperPicker);
                mContext.startActivity(intentFragment);
            }
            int statusbarbackgroundstyle = Integer.valueOf((String) newValue);
            int index = mRecentsWallpaper.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    TASK_WALLPAER_STYLE, statusbarbackgroundstyle);
            mRecentsWallpaper.setSummary(
                    mRecentsWallpaper.getEntries()[index]);
        }
        return true;
    }


}
