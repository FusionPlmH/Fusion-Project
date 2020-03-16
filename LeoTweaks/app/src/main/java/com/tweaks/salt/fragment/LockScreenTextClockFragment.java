package com.tweaks.salt.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Bundle;

import com.tweaks.salt.R;
import com.tweaks.salt.activity.SubActivity;
import com.tweaks.salt.base.BasePreferenceFragment;
import com.tweaks.salt.preference.MyListPreference;
import com.tweaks.salt.utils.AndroidUtils;
import com.tweaks.salt.utils.root.Helpers;
import com.tweaks.salt.widget.WebDialog;


import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.text.format.DateFormat;

import java.util.Date;

import static com.tweaks.salt.utils.Constants.PPPS;
import static com.tweaks.salt.widget.DialogUtil.CustomEdit;


public class LockScreenTextClockFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
    private static final String DATE_FORMAT = "leo_keyguard_date_format";
    private static final String STATUS_BAR_CLOCK_DATE_FORMAT = "leo_tweaks_keyguard_date_format";
    private MyListPreference mDateFormat;
    private ContentResolver mResolver;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.lockscreen_clock_prefs);

        mResolver = getActivity().getContentResolver();
        mDateFormat = (MyListPreference) findPreference(DATE_FORMAT);
        parseDateFormats();
        String dateFormat = Settings.System.getString(mResolver,
                STATUS_BAR_CLOCK_DATE_FORMAT);
        if (dateFormat == null) {
            dateFormat = "MMMd日";
        }
        mDateFormat.setValue(dateFormat);
        mDateFormat.setSummary( mDateFormat.getEntry());
        mDateFormat.setOnPreferenceChangeListener(this);
        new WebDialog(mContext, BatterName, Batteryurl, DB_MAIN_BATTERY,false);
        if (AndroidUtils.getCustomOTA().equals(Helpers.Companion.getCODE())) {
        }else {
            if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();

        }
    }
    public void disablePreferences(){
        getPreferenceManager().findPreference("leo_tweaks_keyguard_details_display").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_keyguard_clock_details_style").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_keyguard_datail_clock_size").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_keyguard_detail_clock_font").setEnabled(false);
        getPreferenceManager().findPreference("leo_tweaks_keyguard_datail_clock_color").setEnabled(false);
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
    @Override
    public void onResume() {
        super.onResume();
       // hpf.onResumeFragment();
    }

    @Override
    public void onPause() {
        super.onPause();
      //  hpf.onPauseFragment();
    }


    public String BatterName="锁屏时间";
    public String Batteryurl=PPPS+"Clock.html";
    public static final String DB_MAIN_BATTERY = "leo_clock_help";


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {


        if (preference == mDateFormat) {
            int index = mDateFormat.findIndexOfValue((String) newValue);
            if (index == 15) {
                //CustomEdit();
                String tite= mContext.getResources().getString( R.string.status_bar_date_string_edittext_title);
                String sum= mContext.getResources().getString( R.string.status_bar_date_string_edittext_summary);
                CustomEdit(mContext,STATUS_BAR_CLOCK_DATE_FORMAT,tite,sum,"MMMd日,EEE");
            }else {
                if ((String) newValue != null) {
                    Settings.System.putString(getActivity().getContentResolver(), STATUS_BAR_CLOCK_DATE_FORMAT, (String) newValue);
                    mDateFormat.setSummary(mDateFormat.getEntries()[index]);
                }
            }
            //   parseDateFormats();
            return true;
        }
        return false;
    }
    private void parseDateFormats() {
        // Parse and repopulate mStatusBarDateFormat's entries based on current date.
        String[] dateEntries = getResources().getStringArray(
                R.array.clock_date_format_entries_values);
        CharSequence parsedDateEntries[];
        parsedDateEntries = new String[dateEntries.length];
        Date now = new Date();

        int lastEntry = dateEntries.length - 1;
        int dateStyle = Settings.System.getInt(mResolver,
                STATUS_BAR_CLOCK_DATE_FORMAT, 2);
        for (int i = 0; i < dateEntries.length; i++) {
            if (i == lastEntry) {
                parsedDateEntries[i] = dateEntries[i];
            } else {
                String newDate;
                CharSequence dateString = DateFormat.format(dateEntries[i], now);
                if (dateStyle == 1) {
                    newDate = dateString.toString().toLowerCase();
                } else if (dateStyle == 2) {
                    newDate = dateString.toString().toUpperCase();
                } else {
                    newDate = dateString.toString();
                }

                parsedDateEntries[i] = newDate;
            }
        }
        mDateFormat.setEntries(parsedDateEntries);
    }
}
