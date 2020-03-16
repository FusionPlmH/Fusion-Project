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
import com.tweaks.leo.preference.MyPreferenceCategory;


public class PulldownBackgroundWallpaperFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
    //SettingsPreferenceFragment hpf;

    private static final String TAG ="LeoRom" ;
    MyPreferenceCategory mCustomBatteryPreference;
 private Context mContext;
    private MyListPreference mPulldownBackgroundFormat;
    private static final String PULLDWN_BAR_DATE_FORMAT = "leo_tweaks_qspanel_bg_style";
    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        final ContentResolver resolver = getActivity().getContentResolver();

        addPreferencesFromResource(R.xml.pulldown_backgroundwallpaper_prefs);
       // hpf = new SettingsPreferenceFragment(getActivity(), this, "pulldown_backgroundwallpaper_prefs");
        mPulldownBackgroundFormat = (MyListPreference) findPreference(PULLDWN_BAR_DATE_FORMAT);

        int batteryShowPercent = Settings.System.getInt(resolver,
                PULLDWN_BAR_DATE_FORMAT, 1);
        mPulldownBackgroundFormat.setValue(String.valueOf(batteryShowPercent));
        mPulldownBackgroundFormat.setSummary(mPulldownBackgroundFormat.getEntry());
        mContext = getActivity();
        mPulldownBackgroundFormat.setOnPreferenceChangeListener(this);
        mCustomBatteryPreference = (MyPreferenceCategory) findPreference("wallpaper_preference");

    }



    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference == mPulldownBackgroundFormat) {

        }  else {
            Log.v(TAG, "onPreferenceTreeClick preference invalid");
        }

        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }


    public boolean onPreferenceChange(Preference preference,  Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));

        if(preference == mPulldownBackgroundFormat){
            if(newValue.equals("666")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelWallpaperPicker);
                mContext.startActivity(intentFragment);
            }else if(newValue.equals("999")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelWallpaperPicker);
                mContext.startActivity(intentFragment);
            }

            int batteryShowPercent = Integer.valueOf((String) newValue);

            int index = mPulldownBackgroundFormat.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    PULLDWN_BAR_DATE_FORMAT, batteryShowPercent);
            mPulldownBackgroundFormat.setSummary(
                    mPulldownBackgroundFormat.getEntries()[index]);
        }
        return true;
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


}
