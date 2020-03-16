package com.leo.salt.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
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
import com.leo.salt.preference.MyPreferenceAlerts;
import com.leo.salt.utils.AndroidUtils;
import com.leo.salt.widget.LogDialog;

import static com.leo.salt.utils.Constants.safety;
import static com.leo.salt.utils.Utils.isLunarSetting;
import static com.leo.salt.utils.Utils.showKillPackageDialog;


public class EdgeScreen extends BasePreferenceFragment {
    public String mod="leo_tweaks_update_mods_edge";
    private MyPreferenceAlerts mMods;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
     //   addPreferencesFromResource(R.xml.edge_screen_prefs);
        BasePreferenceFragment( mContext , this, "edge_screen_prefs");
        mMods = (MyPreferenceAlerts)findPreference(mod);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        if (preference == mMods) {
            com.leo.salt.utils.Utils.killPackage("com.samsung.android.app.cocktailbarservice");
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

    public boolean isProKeyInstalled(Context context){
        boolean isInstalled;
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo pInfo1 = packageManager.getPackageInfo("", PackageManager.GET_SIGNATURES);
            PackageInfo pInfo2 = packageManager.getPackageInfo(context.getPackageName(), PackageManager.GET_SIGNATURES);

            isInstalled = pInfo1.signatures[0].toCharsString().equals(pInfo2.signatures[0].toCharsString());
        } catch (PackageManager.NameNotFoundException e) {
            isInstalled = false;
            e.printStackTrace();
        }
        return isInstalled;
    }
    public void disablePreferences(){
        if (AndroidUtils.getCustomOTA().equals(safety)) {
            getPreferenceManager().findPreference("leo_tweaks_edge_apps").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_edge_wifi").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_edge_autostarts").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_edge_floating").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_edge_mipop").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_edge_img").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_edge_leo").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_edge_clear").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_edge_lock").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_edge_text_color").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_edge_text_size").setEnabled(true);

        }else {
            getPreferenceManager().findPreference("leo_tweaks_edge_apps").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_edge_wifi").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_edge_autostarts").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_edge_floating").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_edge_mipop").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_edge_img").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_edge_leo").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_edge_clear").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_edge_lock").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_edge_text_color").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_edge_text_size").setEnabled(false);
        }

    }

}
