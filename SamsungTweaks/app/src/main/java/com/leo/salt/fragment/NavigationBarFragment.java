package com.fusionleo.salt.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.MenuItem;


import com.fusionleo.salt.R;
import com.fusionleo.salt.activity.SubActivity;
import com.fusionleo.salt.base.BaseActivity;
import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.utils.AndroidUtils;
import com.fusionleo.salt.utils.root.Helpers;

import static com.fusionleo.salt.utils.Constants.safety;

public class NavigationBarFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
   // SettingsPreferenceFragment hpf;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

        BasePreferenceFragment( mContext , this, "navbar_prefs");
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

        getPreferenceManager().findPreference("leo_tweaks_navbar_portrait_disabled").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_navbar_landscape_disabled").setEnabled(false);

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



    private static final String TAG ="LeoRom" ;

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        return false;
    }
}
