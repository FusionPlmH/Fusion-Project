package com.fusionleo.salt.fragment;


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
import com.fusionleo.salt.LeoApp;


import com.fusionleo.salt.R;


import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.preference.MyCheckBoxPreference;


public  class POPFragment extends BasePreferenceFragment {
    MyCheckBoxPreference mMiPop;
    MyCheckBoxPreference mBootMiPop;


    public void onCreate(Bundle bundle) {

        super.onCreate(bundle);

        BasePreferenceFragment( mContext , this, "pop_prefs");
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

    }
    @Override
    public void onPause() {
        super.onPause();

    }

}

