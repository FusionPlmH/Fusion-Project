package com.tweaks.salt.fragment;


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


import com.tweaks.salt.R;
import com.tweaks.salt.activity.SubActivity;
import com.tweaks.salt.base.BaseActivity;
import com.tweaks.salt.base.BasePreferenceFragment;
import com.tweaks.salt.preference.MyListPreference;


public class NavigationBarBackgroundFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
   // SettingsPreferenceFragment hpf;
   private MyListPreference mPowerMeunBackground;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.navbar_backgroundwallpaper_prefs);

        final ContentResolver resolver = getActivity().getContentResolver();

        mPowerMeunBackground = (MyListPreference) findPreference("leo_tweaks_navbar_bg_style");

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
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NavBarWallpaperPicker);
                mContext.startActivity(intentFragment);
            }else if(newValue.equals("999")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NavBarWallpaperPicker);
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
