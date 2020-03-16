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
import android.view.MenuItem;

import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyListPreference;


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
        setHasOptionsMenu(true);
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
                intentFragment.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarWallpaperPicker);
                mContext.startActivity(intentFragment);
            }else if(newValue.equals("999")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarWallpaperPicker);
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

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case MENU_RESET:
                showResetDialog();
                return true;
            default:
                return super.onContextItemSelected(item);
        }
    }



    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_bg_only_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_gradient_bg_one_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_gradient_bg_two_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_gradient_bg_three_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_bg_stroke_color", Color.parseColor("#00BCD4"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_bg_wallpaper_color", Color.parseColor("#FFFFFFFF"));
    }
}
