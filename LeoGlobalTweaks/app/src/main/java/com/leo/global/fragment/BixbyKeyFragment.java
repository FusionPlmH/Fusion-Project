package com.leo.global.fragment;


import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Fragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.UserHandle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;

import com.leo.global.preference.SaltSettingListPreference;
import com.leo.global.preference.SaltSettingSwitchPreference;
import com.leo.global.tweaks.R;
import com.leo.global.tweaks.activity.FragSettingsActivity;
import com.leo.global.tweaks.base.BasePreferenceFragment;
import com.leo.global.utils.Helpers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;


public   class BixbyKeyFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener{

    private static final String DATE_FORMAT = "leo_tweaks_statusbar_bg_style";

    private SaltSettingListPreference mBixbyClick;



    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.keys_bixby_prefs);

        mBixbyClick = (SaltSettingListPreference) findPreference(DATE_FORMAT );
        int batteryShowPercent = Settings.System.getInt(mContentRes,
                DATE_FORMAT , 0);
        mBixbyClick.setValue(String.valueOf(batteryShowPercent));
        mBixbyClick.setSummary(mBixbyClick.getEntry());
        mContext = getActivity();
        mBixbyClick.setOnPreferenceChangeListener(this);
    }
    String Str="leo_doem";
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if(preference ==mBixbyClick){
            if(newValue.equals("666")){


                Intent intent = null;
                sddsa(intent);
                startActivityForResult(intent, 20001);
            }


            int batteryShowPercent = Integer.valueOf((String) newValue);
            int index =mBixbyClick.findIndexOfValue((String) newValue);
            Settings.System.putInt(mContentRes,
                    DATE_FORMAT, batteryShowPercent);
            mBixbyClick.setSummary(
                    mBixbyClick.getEntries()[index]);
            return true;
        }
        return true;
    }
    protected void leoleo(String str, String str2) {
        Settings.System.putString(mContentRes, str, str2);
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

    public void sddsa(Intent intent){

        // launchAppChooseDialog("leo_app_dome",mBixbyClick);
        Intent intent3 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String stringExtra4 = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        ListPreference listPreference2 = (ListPreference) findPreference(Str);
        listPreference2.setSummary(stringExtra4);
        listPreference2.getEditor().putString(Str + "_title", stringExtra4).commit();
        try {
            leoleo(Str + "_package", intent3.getComponent().getPackageName());
            leoleo(Str+ "_activity", intent3.getComponent().getClassName());

        } catch (Exception e) {
            leoleo(Str + "_package", stringExtra4);
            leoleo(Str + "_activity", intent3.toUri(0));
        }
    }

}
