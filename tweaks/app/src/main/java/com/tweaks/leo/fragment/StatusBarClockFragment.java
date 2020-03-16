package com.tweaks.leo.fragment;


import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Bundle;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.EditText;

import com.tweaks.leo.R;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyListPreference;
import com.tweaks.leo.utils.AndroidUtils;
import com.tweaks.leo.utils.root.Helpers;


import java.util.Date;


import static com.tweaks.leo.utils.Utils.isSupportChinaLanguage;
import static com.tweaks.leo.utils.Utils.isSupportKoreaLanguage;
import static com.tweaks.leo.widget.DialogUtil.CustomEdit;


public class StatusBarClockFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
   // SettingsPreferenceFragment hpf;
    private static final String TAG = "LeoRom";

    private MyListPreference mDateFormat;
    private static final String DATE_FORMAT = "leo_clock_date_format";
    private static final String STATUS_BAR_CLOCK_DATE_FORMAT = "leo_tweaks_statusbar_clock_date_format";
    private ContentResolver mResolver;
    @Override
    public void onCreate(Bundle icicle) {

        super.onCreate(icicle);
        mResolver = getActivity().getContentResolver();
        addPreferencesFromResource(R.xml.statusbar_clock_prefs);

        mDateFormat = (MyListPreference) findPreference(DATE_FORMAT);
        parseDateFormats();
        String dateFormat = Settings.System.getString(mResolver,
                STATUS_BAR_CLOCK_DATE_FORMAT);
        if (dateFormat == null) {
            dateFormat = "EEE";
        }
        mDateFormat.setValue(dateFormat);
        mDateFormat.setSummary( mDateFormat.getEntry());
        mDateFormat.setOnPreferenceChangeListener(this);

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
    //根据语言判断是否显示细节
    // 傅春生 or 2018/5/12
    public void disablePreferences(){


            if (AndroidUtils.getCustomOTA().equals(Helpers.Companion.getCODE())) {
                if (isSupportChinaLanguage(true)) {
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_details_display").setEnabled(true);
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_detail_style").setEnabled(true);
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_ampm").setEnabled(false);
                } else {
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_details_display").setEnabled(false);
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_detail_style").setEnabled(false);
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_ampm").setEnabled(true);
                }

            }else {
                if (isSupportChinaLanguage(true)) {
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_details_display").setEnabled(false);
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_detail_style").setEnabled(false);
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_ampm").setEnabled(false);
                } else {
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_details_display").setEnabled(false);
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_detail_style").setEnabled(false);
                    getPreferenceManager().findPreference("leo_tweaks_statusbar_clock_ampm").setEnabled(false);
                }
            }



    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {


        if (preference == mDateFormat) {
            int index = mDateFormat.findIndexOfValue((String) newValue);
            if (index == 15) {
               // CustomEdit();
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
    @Override
    public void onResume() {
        super.onResume();
       // hpf.onResumeFragment();

    }

    @Override
    public void onPause() {
        super.onPause();
        //hpf.onPauseFragment();

    }


}








