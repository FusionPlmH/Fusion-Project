package com.tweaks.salt.fragment;


import android.content.ComponentName;
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


import com.tweaks.salt.R;
import com.tweaks.salt.activity.SubActivity;
import com.tweaks.salt.base.BasePreferenceFragment;
import com.tweaks.salt.preference.MyListPreference;
import com.tweaks.salt.preference.MyPreferenceCategory;
import com.tweaks.salt.utils.AndroidUtils;
import com.tweaks.salt.utils.root.Helpers;


public class PulldownBackgroundBasicsFragment extends BasePreferenceFragment {

    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        final ContentResolver resolver = getActivity().getContentResolver();

        addPreferencesFromResource(R.xml.pulldown_backgroundbasics_prefs);
        if (AndroidUtils.getCustomOTA().equals(Helpers.Companion.getCODE())) {
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
        getPreferenceManager().findPreference("leo_tweaks_notification_bg_enabled").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_notification_item_circular_enabled").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_notification_transparency_level").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_notification_item_circular_level").setEnabled(false);
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
