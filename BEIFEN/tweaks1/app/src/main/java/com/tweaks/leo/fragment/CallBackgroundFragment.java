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
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;


import com.os.leo.utils.LeoUserString;
import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyListPreference;
import com.tweaks.leo.preference.MyPreference;
import com.tweaks.leo.preference.MyPreferenceAlerts;
import com.tweaks.leo.preference.MySwitchPreference;


import com.tweaks.leo.wallpaper.WallpaperPicker;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import static com.tweaks.leo.widget.DialogUtil.BatteryTips;


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
        BatteryTips(getActivity(),DB_MAIN_BATTERY,BatterName,Batteryurl);

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
    public String Batteryurl="file:///android_asset/system_bg.html";
    public static final String DB_MAIN_BATTERY = "leo_system_bg_help";
    private static final String TAG = "LeoRom";
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference ==  mFullScreen) {
            LeoUserString.LeoAction(mContext,113,null);//动画开始时杀死进程
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
                intentFragment.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.CallWallpaperPicker);
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


    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_activity_bg_enable", 0);
    }


}
