package com.fusionleo.salt.fragment;


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


import com.fusionleo.salt.R;
import com.fusionleo.salt.activity.SubActivity;
import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.preference.MyListPreference;
import com.fusionleo.salt.preference.MyPreferenceCategory;
import com.fusionleo.salt.utils.AndroidUtils;
import com.fusionleo.salt.utils.root.Helpers;

import static com.fusionleo.salt.utils.Constants.safety;
import static com.fusionleo.salt.utils.Utils.VipDATA;


public class PulldownBackgroundBasicsFragment extends BasePreferenceFragment {

    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "pulldown_backgroundbasics_prefs");
        if (AndroidUtils.getCustomOTA().equals(safety)) {
            VipDATA(mContext);
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
     onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
     onPauseFragment();
    }

}
