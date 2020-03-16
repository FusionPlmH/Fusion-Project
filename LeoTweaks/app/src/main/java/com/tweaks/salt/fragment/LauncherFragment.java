package com.tweaks.salt.fragment;


import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.MenuItem;
import android.widget.EditText;


import com.tweaks.salt.R;
import com.tweaks.salt.activity.SubActivity;
import com.tweaks.salt.base.BasePreferenceFragment;
import com.tweaks.salt.preference.MyListPreference;
import com.tweaks.salt.preference.MyPreferenceAlerts;

import java.util.Date;



public class LauncherFragment extends BasePreferenceFragment {
    private static final String TAG = "LeoRom";

    MyPreferenceAlerts LaunchDisplay;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
       //mResolver = getActivity().getContentResolver();
        addPreferencesFromResource(R.xml.launcher_prefs);
       //hpf = new SettingsPreferenceFragment(getActivity(), this, "launcher_prefs");

        LaunchDisplay = ((MyPreferenceAlerts) findPreference("LaunchDisplay"));
    }




    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference ==LaunchDisplay) {
            Intent intent;
            intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.putExtra("StartEdit", true);
            intent.addCategory("android.intent.category.HOME");
            intent.putExtra("PackageName", getActivity().getComponentName().getPackageName());
            intent.putExtra("ClassName", "com.android.settings.Settings$LaunchDisplaySettingsActivity");
            mContext.startActivity(intent);

        }

        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }



    @Override
    public void onResume() {
        super.onResume();
        //hpf.onResumeFragment();

    }

    @Override
    public void onPause() {
        super.onPause();
        //  hpf.onPauseFragment();

    }


}
