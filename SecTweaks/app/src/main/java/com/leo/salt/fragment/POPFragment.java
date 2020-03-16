package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.widget.Toast;
import com.leo.salt.LeoApp;


import com.leo.salt.R;


import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.MyCheckBoxPreference;
import com.leo.salt.utils.AndroidUtils;

import static com.leo.salt.utils.Constants.safety;


public  class POPFragment extends BasePreferenceFragment {
    MyCheckBoxPreference mMiPop;
    MyCheckBoxPreference mBootMiPop;


    public void onCreate(Bundle bundle) {

        super.onCreate(bundle);
        //addPreferencesFromResource(R.xml.pop_prefs);
        BasePreferenceFragment( mContext , this, "pop_prefs");
        mBootMiPop = ((MyCheckBoxPreference) findPreference("leo_tweaks_mipop_switch"));
        if (AndroidUtils.getCustomOTA().equals(safety)) {
        }else {

            if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
        }

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
        getPreferenceManager().findPreference("leo_tweaks_minip_vibrate").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_minip_vibration_level").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_minip_home_action").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_minip_home_action_app").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_minip_flashlight_action").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_minip_flashlight_action_app").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_minip_task_action").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_minip_task_action_app").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_minip_back_action").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_minip_back_action_app").setEnabled(false);
    }

    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        if (preference == mMiPop) {
            if (mMiPop.isChecked()) {
           //     showMipop();

            } else {
            //    hideMipop();
            }
        }

        return super.onPreferenceTreeClick(preferenceScreen, preference);

    }

    @Override
    public void onResume() {
        super.onResume();

    }
    @Override
    public void onPause() {
        super.onPause();

    }

}

