package com.leo.salt.fragment;


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


import com.leo.salt.R;
import com.leo.salt.activity.SubActivity;
import com.leo.salt.base.BaseActivity;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.MyListPreference;
import com.leo.salt.preference.MyPreference;
import com.leo.salt.widget.LogDialog;

import static com.leo.salt.utils.Utils.isLunarSetting;


public class PowerMeunFragment extends BasePreferenceFragment {
    MyPreference mDownloadBattery;
    public static final String DownloadBattery = "leo_tweaks_powermenu_stock_bg";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
     //   addPreferencesFromResource(R.xml.power_meun_prefs);
        BasePreferenceFragment( mContext , this, "power_meun_prefs");
        mDownloadBattery = (MyPreference)findPreference(DownloadBattery);
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        if (preference ==mDownloadBattery) {
            Intent FragmentContainer = new Intent(mContext, SubActivity.class);
            FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.stockpowerBG);
            mContext.startActivity(FragmentContainer);
            return true;
        } else {
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
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



}
