package com.fusionleo.salt.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.widget.Toast;


import com.fusionleo.salt.R;
import com.fusionleo.salt.activity.SubActivity;
import com.fusionleo.salt.base.BaseActivity;
import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.preference.MyListPreference;
import com.fusionleo.salt.preference.MyPreference;


public class PowerMeunbgFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
   // SettingsPreferenceFragment hpf;
   private MyListPreference mPowerMeunBackground;
    private MyPreference mPowerMeun;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

        BasePreferenceFragment( mContext , this, "power_meun_bg_prefs");
        final ContentResolver resolver = getActivity().getContentResolver();
        mPowerMeun = (MyPreference) findPreference("leo_tweaks_power_meun_items");
        mPowerMeunBackground = (MyListPreference) findPreference("leo_tweaks_power_bg_style");

        int backgroundstyle = Settings.System.getInt(resolver,
                "leo_tweaks_power_bg_style", 1);
        mPowerMeunBackground.setValue(String.valueOf(backgroundstyle));
        mPowerMeunBackground.setSummary(mPowerMeunBackground.getEntry());
        mContext = (BaseActivity) getActivity();
        mPowerMeunBackground.setOnPreferenceChangeListener(this);
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

        if (preference == mPowerMeunBackground) {

        } else if (preference == mPowerMeun) {

            return true;
        } else {
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
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.PowerWallpaperPicker);
                mContext.startActivity(intentFragment);
            }else if(newValue.equals("999")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.PowerWallpaperPicker);
                mContext.startActivity(intentFragment);
            }
            int backgroundstyle = Integer.valueOf((String) newValue);
            int index = mPowerMeunBackground.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    "leo_tweaks_power_bg_style", backgroundstyle);
            mPowerMeunBackground.setSummary(
                    mPowerMeunBackground.getEntries()[index]);
        }
        return true;
    }

}
