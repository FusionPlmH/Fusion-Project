package com.tweaks.leo.fragment;



import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;

import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyPreference;
import com.tweaks.leo.preference.MyPreferenceAlerts;
import com.tweaks.leo.preference.MySwitchPreference;


import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.MenuItem;

import static android.content.Context.MODE_PRIVATE;
import static com.tweaks.leo.base.BasePreferenceFragment.MENU_RESET;
import static com.tweaks.leo.utils.Constants.mNewline;
import static com.tweaks.leo.utils.NotificationUtils.showTestNotification;
import static com.tweaks.leo.utils.Utils.killPackage;
import static com.tweaks.leo.widget.DialogUtil.BatteryTips;


public class StatusBarLogoFragment extends BasePreferenceFragment {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.statusbar_icon_logo_prefs);
        setHasOptionsMenu(true);

       
    }

   

    @Override
    public void ResetColor() {

        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_status_bar_logo_color", Color.parseColor("#AEFFFFFF"));
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
