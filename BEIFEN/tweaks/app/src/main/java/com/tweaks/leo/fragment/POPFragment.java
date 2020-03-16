package com.tweaks.leo.fragment;


import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
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
import com.tweaks.leo.LeoApp;


import com.tweaks.leo.R;


import com.tweaks.leo.preference.MyCheckBoxPreference;


public  class POPFragment extends PreferenceFragment {
    MyCheckBoxPreference mMiPop;
    MyCheckBoxPreference mBootMiPop;
    private void setupFloatIcon() {

        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(getActivity());

    //    boolean isMipopShow = sp.getBoolean(
            //    PREF_SELINUX_MODE, false);

      //  if (isMipopShow) {
          //  mMiPop.setChecked(isMipopShow);
     //   }

    }

    public void onCreate(Bundle bundle) {

        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.pop_prefs);
      //  mMiPop = ((MyCheckBoxPreference) findPreference(PREF_SELINUX_MODE));
        mBootMiPop = ((MyCheckBoxPreference) findPreference("leo_tweaks_mipop_switch"));

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
        setupFloatIcon();
    }
    @Override
    public void onPause() {
        super.onPause();
        setupFloatIcon();
    }

}

