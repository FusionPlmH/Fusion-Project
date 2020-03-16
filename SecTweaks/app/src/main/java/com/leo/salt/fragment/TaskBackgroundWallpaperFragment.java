package com.leo.salt.fragment;



import android.content.ContentResolver;

import android.content.Intent;

import android.os.Bundle;
import android.preference.Preference;

import android.preference.PreferenceScreen;
import android.provider.Settings;

import android.util.Log;

import com.leo.salt.activity.SubActivity;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.MyListPreference;


public class TaskBackgroundWallpaperFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
    private static final String TAG ="LeoRom" ;
    private MyListPreference mRecentsWallpaper;
    private static final String TASK_WALLPAER_STYLE = "leo_tweaks_task_bg_style";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment(mContext, this, "task_backgroundwallpaper_prefs");
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
     onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
     onPauseFragment();
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
