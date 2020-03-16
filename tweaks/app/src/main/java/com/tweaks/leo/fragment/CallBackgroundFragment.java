package com.tweaks.leo.fragment;


import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;

import android.os.RemoteException;
import android.os.UserHandle;
import android.preference.Preference;

import android.preference.PreferenceScreen;
import android.provider.Settings;

import android.util.Log;

import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyListPreference;
import com.tweaks.leo.preference.MyPreferenceAlerts;
import com.tweaks.leo.widget.HelpDialog;

import static com.tweaks.leo.utils.Constants.PPPS;


public class CallBackgroundFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {

    private MyListPreference mCallWallpaper;
    private Context mContext;
    private static final String CALL_WALLPAER_STYLE = "leo_tweaks_activity_bg_style";
    MyPreferenceAlerts mFullScreen;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.call_background_prefs);
       // hpf = new SettingsPreferenceFragment(getActivity(), this, "call_background_prefs");
        final ContentResolver resolver = getActivity().getContentResolver();

        mCallWallpaper = (MyListPreference) findPreference(CALL_WALLPAER_STYLE);
       mFullScreen = ((MyPreferenceAlerts) findPreference("leo_tweaks_update_mods"));
        int statusbarbackgroundstyle = Settings.System.getInt(resolver,
                CALL_WALLPAER_STYLE, 1);
        mCallWallpaper.setValue(String.valueOf(statusbarbackgroundstyle));
        mCallWallpaper.setSummary(mCallWallpaper.getEntry());
        setHasOptionsMenu(true);
        mCallWallpaper.setOnPreferenceChangeListener(this);
        mContext = getActivity();
        new HelpDialog(mContext, BatterName, Batteryurl, DB_MAIN_BATTERY);

    }



    @Override
    public void onResume() {
        super.onResume();
        //hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
       // hpf.onPauseFragment();
    }
    public String BatterName="系统背景";
    public String Batteryurl=PPPS+"system_bg.html";
    public static final String DB_MAIN_BATTERY = "leo_system_bg_help";
    private static final String TAG = "LeoRom";
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference ==  mFullScreen) {
            com.os.leo.utils.LeoUserString.LeoAction(mContext,113,null);//动画开始时杀死进程
        }  else {
            Log.v(TAG, "onPreferenceTreeClick preference invalid");
        }

        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    public boolean onPreferenceChange(Preference preference,  Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));

        if(preference == mCallWallpaper){
          if(newValue.equals("999")){
                intentFragment = new Intent(mContext, SubActivity.class);
                intentFragment.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.CallWallpaperPicker);
                mContext.startActivity(intentFragment);
            }
            int statusbarbackgroundstyle = Integer.valueOf((String) newValue);
            int index = mCallWallpaper.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    CALL_WALLPAER_STYLE, statusbarbackgroundstyle);
            mCallWallpaper.setSummary(
                    mCallWallpaper.getEntries()[index]);
        }
        return true;
    }




}
