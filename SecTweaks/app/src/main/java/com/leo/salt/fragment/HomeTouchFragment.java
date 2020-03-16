package com.leo.salt.fragment;


import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.util.Log;
import android.widget.Toast;


import com.leo.salt.R;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.IntentDialogPreference;
import com.leo.salt.preference.MyListPreference;
import com.leo.salt.preference.MyPreferenceAlerts;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.leo.salt.utils.Utils.killPackage;


public class HomeTouchFragment extends BasePreferenceFragment  {
    MyPreferenceAlerts LaunchDisplay;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "keys_home_prefs");
        LaunchDisplay = ((MyPreferenceAlerts) findPreference("LaunchDisplay"));
       // addPreferencesFromResource(R.xml.keys_home_prefs);
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



}
