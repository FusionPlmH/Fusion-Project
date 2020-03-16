package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSettingCategoryPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.frame.LeadFrame.isChineseLanguage;
import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;

public class PulldownClockFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener{
        public static final String mLeoChineseClock="_chinadetail";
    private static final String KEYdefault= "leo_salt_qs_clock";
    private static final String KEYDatedefault= "leo_salt_qs_date";
    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mQsClockDetailZoomEnabled.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mQsClockDetailEnabled.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mQsDateWeekEnabled.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mQsDateLunarEnabled.getKey()).setEnabled(findPreferenceEnabled);
       // getPreferenceManager().findPreference(mRight.getKey()).setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }
    private SaltSwitchPreference mQsClockEnabled,mQsClockDetailEnabled,mQsClockDetailZoomEnabled,mQsDateEnabled,mQsDateWeekEnabled,mQsDateLunarEnabled;
    private SaltListPreference mQsClockChinaDetailSyle,mQsClockChinaDetailSymbol,mQsClockChinaDetailZoomScale,mQsClockFont,mQsDateFont,mQsDateWeekStyle,mQsDateLunarStyle,mQsDateLunarMonthStyle;
    private static final String KEY1= KEYdefault+"_enabled";
    private static final String KEY2= KEYdefault+mLeoChineseClock+"_enabled";
    private static final String KEY3= KEYdefault+"_font";
    private static final String KEY4= KEYdefault+mLeoChineseClock+"_style";
    private static final String KEY5= KEYdefault+mLeoChineseClock+"_symbol_style";
    private static final String KEY6= KEYdefault+mLeoChineseClock+"_zoom_enabled";
    private static final String KEY7= KEYdefault+mLeoChineseClock+"_zoom_style";
    private static final String KEY8= KEYDatedefault+"_enabled";
    private static final String KEY9= KEYDatedefault+"_font";
    private static final String KEY10= KEYDatedefault+"_week_enabled";
    private static final String KEY11= KEYDatedefault+"_week_style";
    private static final String KEY12= KEYDatedefault+"_lunar_enabled";
    private static final String KEY13= KEYDatedefault+"_lunar_style";
    private static final String KEY14= KEYDatedefault+"_lunar_month_style";
    @Override
    protected void getSaltCreatePreferences() {
        SaltSettingCategoryPreference mSaltSettingCategoryPreference=(SaltSettingCategoryPreference) findPreference("qs_colock");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt("qs_colock_tab")+getApksStringInt(R.string.qs_data_r));
        ContentResolver resolver = getActivity().getContentResolver();
        mQsClockEnabled = (SaltSwitchPreference) findPreference("QsClockEnabled");
        mQsClockEnabled.setChecked((Settings.System.getInt(resolver,
                KEY1, 1) == 1));
        mQsClockEnabled.setOnPreferenceChangeListener(this);
        mQsClockDetailEnabled = (SaltSwitchPreference) findPreference("QsClockDetailEnabled");
        mQsClockDetailEnabled.setChecked((Settings.System.getInt(resolver,
                KEY2, 0) == 1));
        mQsClockDetailEnabled.setOnPreferenceChangeListener(this);

        mQsClockFont= (SaltListPreference) findPreference("QsClockFont");
        int sClockFon = Settings.System.getInt(resolver,
                KEY3, 0);
        mQsClockFont.setValue(String.valueOf(sClockFon ));
        mQsClockFont.setSummary(mQsClockFont.getEntry());
        mQsClockFont.setOnPreferenceChangeListener(this);

        mQsClockChinaDetailSyle= (SaltListPreference) findPreference("QsClockChinaDetailSyle");
        int clockDetailSyle = Settings.System.getInt(resolver,
                KEY4, 0);
        mQsClockChinaDetailSyle.setValue(String.valueOf(clockDetailSyle ));
        mQsClockChinaDetailSyle.setSummary(mQsClockChinaDetailSyle.getEntry());
        mQsClockChinaDetailSyle.setOnPreferenceChangeListener(this);

        mQsClockChinaDetailSymbol= (SaltListPreference) findPreference("QsClockChinaDetailSymbol");
        int   clockDetailSymbol = Settings.System.getInt(resolver,
                KEY5, 0);
        mQsClockChinaDetailSymbol.setValue(String.valueOf(clockDetailSymbol));
        mQsClockChinaDetailSymbol.setSummary( mQsClockChinaDetailSymbol.getEntry());
        mQsClockChinaDetailSymbol.setOnPreferenceChangeListener(this);
        //
        mQsClockDetailZoomEnabled = (SaltSwitchPreference) findPreference("QsClockDetailZoomEnabled");
        mQsClockDetailZoomEnabled.setChecked((Settings.System.getInt(resolver,
                KEY6, 1) == 1));
        mQsClockDetailZoomEnabled.setOnPreferenceChangeListener(this);
        //
        mQsClockChinaDetailZoomScale = (SaltListPreference) findPreference("QsClockChinaDetailZoomScale");
        int Scale = Settings.System.getInt(resolver,
                KEY7, 0);
        mQsClockChinaDetailZoomScale.setValue(String.valueOf(Scale));
        mQsClockChinaDetailZoomScale.setSummary(mQsClockChinaDetailZoomScale.getEntry());
        mQsClockChinaDetailZoomScale.setOnPreferenceChangeListener(this);

        mQsDateEnabled = (SaltSwitchPreference) findPreference("QsDateEnabled");
        mQsDateEnabled.setChecked((Settings.System.getInt(resolver,
                KEY8, 1) == 1));
        mQsDateEnabled.setOnPreferenceChangeListener(this);

        mQsDateFont= (SaltListPreference) findPreference("QsDataFont");
        int DateFont = Settings.System.getInt(resolver,
                KEY9, 0);
        mQsDateFont.setValue(String.valueOf(DateFont));
        mQsDateFont.setSummary(mQsDateFont.getEntry());
        mQsDateFont.setOnPreferenceChangeListener(this);

        mQsDateWeekEnabled = (SaltSwitchPreference) findPreference("QsDateWeekEnabled");
        mQsDateWeekEnabled.setChecked((Settings.System.getInt(resolver,
                KEY10, 1) == 1));
        mQsDateWeekEnabled.setOnPreferenceChangeListener(this);

        mQsDateWeekStyle= (SaltListPreference) findPreference("QsDateWeekStyle");
        int DateWeekStyle = Settings.System.getInt(resolver,
                KEY11, 0);
        mQsDateWeekStyle.setValue(String.valueOf(DateWeekStyle));
        mQsDateWeekStyle.setSummary(mQsDateWeekStyle.getEntry());
        mQsDateWeekStyle.setOnPreferenceChangeListener(this);

        mQsDateLunarEnabled = (SaltSwitchPreference) findPreference("QsDateLunarEnabled");
        mQsDateLunarEnabled.setChecked((Settings.System.getInt(resolver,
                KEY12, 1) == 1));
        mQsDateLunarEnabled.setOnPreferenceChangeListener(this);

        mQsDateLunarStyle= (SaltListPreference) findPreference("QsDateLunarStyle");
        mQsDateLunarStyle.setValue(String.valueOf(Settings.System.getInt(resolver,
                KEY13, 0)));
        mQsDateLunarStyle.setSummary(mQsDateLunarStyle.getEntry());
        mQsDateLunarStyle.setOnPreferenceChangeListener(this);

        mQsDateLunarMonthStyle= (SaltListPreference) findPreference("QsDateLunarMonthStyle");
        mQsDateLunarMonthStyle.setValue(String.valueOf(Settings.System.getInt(resolver,
                KEY14, 0)));
        mQsDateLunarMonthStyle.setSummary(mQsDateLunarMonthStyle.getEntry());
        mQsDateLunarMonthStyle.setOnPreferenceChangeListener(this);
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_qs_clock)));
        if (preference ==mQsClockEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY1, value ? 1 : 0);
            return true;
        }else if (preference ==mQsClockDetailEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY2, value ? 1 : 0);
            return true;
        }else if (preference ==mQsClockFont) {
            int location = Integer.valueOf((String) newValue);
            int index =mQsClockFont.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY3, location);
            mQsClockFont.setSummary(mQsClockFont.getEntries()[index]);
            return true;
        }else if (preference ==mQsClockChinaDetailSyle) {
            if(newValue.equals("2")){
                showSnackn("五更,根据中国古代更夫打更时间设置,仅支持晚上19点至次日5点");
            }
            int location = Integer.valueOf((String) newValue);
            int index =mQsClockChinaDetailSyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY4, location);
            mQsClockChinaDetailSyle.setSummary(mQsClockChinaDetailSyle.getEntries()[index]);
            return true;
        }else if (preference ==mQsClockChinaDetailSymbol) {
            int location = Integer.valueOf((String) newValue);
            int index =mQsClockChinaDetailSymbol.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY5, location);
            mQsClockChinaDetailSymbol.setSummary(mQsClockChinaDetailSymbol.getEntries()[index]);
            return true;
        }else if (preference == mQsClockDetailZoomEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY6, value ? 1 : 0);
            return true;
        }else if (preference ==mQsClockChinaDetailZoomScale) {
            String key=KEY7;
            int location = Integer.valueOf((String) newValue);
            int index =mQsClockChinaDetailZoomScale.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mQsClockChinaDetailZoomScale.setSummary(mQsClockChinaDetailZoomScale.getEntries()[index]);
            return true;
        }else if (preference == mQsDateEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY8, value ? 1 : 0);
            return true;
        }else if (preference ==mQsDateFont) {
            String key=KEY9;
            int location = Integer.valueOf((String) newValue);
            int index =mQsDateFont.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mQsDateFont.setSummary(mQsDateFont.getEntries()[index]);
            return true;
        }else if (preference ==mQsDateWeekEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY10, value ? 1 : 0);
            return true;
        }else if (preference ==mQsDateWeekStyle) {
            String key=KEY11;
            int location = Integer.valueOf((String) newValue);
            int index =mQsDateWeekStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mQsDateWeekStyle.setSummary(mQsDateWeekStyle.getEntries()[index]);
            return true;
        }else if (preference ==mQsDateLunarEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY12, value ? 1 : 0);
            return true;
        }else if (preference ==mQsDateLunarStyle) {
            String key=KEY13;
            int location = Integer.valueOf((String) newValue);
            int index =mQsDateLunarStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mQsDateLunarStyle.setSummary(mQsDateLunarStyle.getEntries()[index]);
            return true;
        }else if (preference ==mQsDateLunarMonthStyle) {
            String key=KEY14;
            int location = Integer.valueOf((String) newValue);
            int index =mQsDateLunarMonthStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mQsDateLunarMonthStyle.setSummary(mQsDateLunarMonthStyle.getEntries()[index]);
            return true;
        }else {
            return false;
        }

    }


    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.pulldown_clock_prefs;
    }




}
