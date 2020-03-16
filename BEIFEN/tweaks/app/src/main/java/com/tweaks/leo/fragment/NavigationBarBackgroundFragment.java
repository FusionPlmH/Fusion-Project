package com.tweaks.leo.fragment;


import android.content.ContentResolver;
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
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyListPreference;


public class NavigationBarBackgroundFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
   // SettingsPreferenceFragment hpf;
   private MyListPreference mPowerMeunBackground;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.navbar_backgroundwallpaper_prefs);

        final ContentResolver resolver = getActivity().getContentResolver();

        mPowerMeunBackground = (MyListPreference) findPreference("leo_tweaks_navbar_bg_style");
        setHasOptionsMenu(true);
        int backgroundstyle = Settings.System.getInt(resolver,
                "leo_tweaks_navbar_bg_style", 1);
        mPowerMeunBackground.setValue(String.valueOf(backgroundstyle));
        mPowerMeunBackground.setSummary(mPowerMeunBackground.getEntry());
        mContext = (BaseActivity) getActivity();
        mPowerMeunBackground.setOnPreferenceChangeListener(this);
    }

    @Override
    public void onResume() {
        super.onResume();
      //  hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
     //   hpf.onPauseFragment();
    }



    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_navbar_bg_only_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_navbar_gradient_bg_one_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_navbar_gradient_bg_three_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_navbar_gradient_bg_two_color", Color.parseColor("#00000000"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_navbar_bg_stroke_color", Color.parseColor("#FF00BCD4"));
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_navbar_bg_wallpaper_color", Color.parseColor("#FFFFFFFF"));
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference == mPowerMeunBackground) {

        }  else {
            Log.v(TAG, "onPreferenceTreeClick preference invalid");
        }

        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    private static final String TAG ="LeoRom" ;
    public boolean onPreferenceChange(Preference preference,  Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));

        if(preference == mPowerMeunBackground){
            if(newValue.equals("666")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.NavBarWallpaperPicker);
                mContext.startActivity(intentFragment);
            }else if(newValue.equals("999")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.NavBarWallpaperPicker);
                mContext.startActivity(intentFragment);
            }
            int backgroundstyle = Integer.valueOf((String) newValue);
            int index = mPowerMeunBackground.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    "leo_tweaks_navbar_bg_style", backgroundstyle);
            mPowerMeunBackground.setSummary(
                    mPowerMeunBackground.getEntries()[index]);
        }
        return true;
    }
}
