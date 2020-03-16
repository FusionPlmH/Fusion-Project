package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;


import android.os.UserHandle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingCategoryPreference;
import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.AppPicker;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.tweaks.view.widget.DialogView.dialogCheck;
import static com.os.salt.OSBuild.SystemUrl.Phonebootloader;


@SuppressLint("ResourceAsColor")
public class StatusBarClockFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private static final int CUSTOM_CLOCK_DATE_FORMAT_INDEX = 20;
    private SaltSettingDefaultListPreference mClockDateFormat;
    private SaltSettingDefaultListPreference mClockDateStyle;
    private SaltSettingDefaultListPreference mClockDateDisplay;
    private SaltSettingDefaultListPreference mClockDatePosition;
    private SaltSettingSwitchPreference mClockDateWeekDisplay,mClockClickEnabled;
    private SaltSettingDefaultListPreference mClockDateWeekFormat,mClockWeekPosition;
    private SaltSettingDefaultListPreference mClockDateWeekSymbol;
    private SaltSettingSwitchPreference mClockChinaDetailDisplay,mClockDisplay;
    private SaltSettingDefaultListPreference mClockChinaDetailSyle ,mClockChinaDetailSymbol ,mClockDetailPosition,mClockPosition,mStatusBarAmPm,mLunarMonth,mClockClick;

    private SaltSettingSeekBarPreference mClockMultiSize,mClockSize,mStartPadding,mEndPadding;

   private static final String STATUSBAR_CLOCK_DATE_FORMAT = "leo_salt_statusbar_clock_date_format";
    private static final String  STATUSBAR_CLOCK_DATE_STYLE="leo_salt_statusbar_clock_date_style";
    private static final String  STATUSBAR_CLOCK_DATE_DISPLAY="leo_salt_statusbar_clock_date_enabled";
    private static final String   STATUSBAR_CLOCK_DATE_POSITION="leo_salt_statusbar_clock_date_orientation";
    private static final String STATUSBAR_CLOCK_DATE_WEEK_FORMAT = "leo_salt_statusbar_clock_week_style";
    private static final String STATUSBAR_CLOCK_DATE_WEEK_DISPLAY = "leo_salt_statusbar_clock_week_enabled";
    private static final String STATUSBAR_CLOCK_DATE_WEEK_SYMBOL = "leo_salt_statusbar_clock_week_symbol";
    private static final String STATUSBAR_CLOCK_DATE_WEEK_SYMBOL_STR = "leo_salt_statusbar_clock_week_symbol_string";
    private static final String STATUSBAR_CLOCK_CHINA_DETAIL_DISPLAY = "leo_salt_statusbar_clock_chinadetail_enabled";
    private static final String STATUSBAR_CLOCK_CHINA_DETAIL_STYLE= "leo_salt_statusbar_clock_chinadetail_style";
    private static final String STATUSBAR_CLOCK_CHINA_DETAIL_STRING= "leo_salt_statusbar_clock_chinadetail_string";
    private static final String STATUSBAR_CLOCK_CHINA_DETAIL_SYMBOL = "leo_salt_statusbar_clock_chinadetail_symbol";
    private static final String STATUSBAR_CLOCK_CHINA_DETAIL_SYMBOL_STR = "leo_salt_statusbar_clock_chinadetail_symbol_string";
    private static final String STATUSBAR_CLOCK_CHINA_DETAIL_POSITION = "leo_salt_statusbar_clock_chinadetail_orientation";
    private static final String STATUSBAR_CLOCK_WEEK_POSITION = "leo_salt_statusbar_clock_week_orientation";
    private static final String STATUSBAR_CLOCK_LUNAR_MONTH = "leo_salt_statusbar_clock_lunar_month";
    public static final int CLOCK_DATE_STYLE_LOWERCASE = 1;
    public static final int CLOCK_DATE_STYLE_UPPERCASE = 2;
    private static final String STATUSBAR_CLOCK_SIZE = "leo_salt_statusbar_clock_single_size";
    private static final String STATUSBAR_CLOCK_MULTIS_SIZE = "leo_salt_statusbar_clock_multi_size";
    private static final String  STATUSBAR_CLOCK_AM_PM_STYLE = "leo_salt_statusbar_clock_ampm_style";
    private static final String  STATUSBAR_CLOCK_START_PADDING = "leo_salt_statusbar_clock_start_padding";
    private static final String   STATUSBAR_CLOCK_END_PADDING = "leo_salt_statusbar_clock_end_padding";
    private static final String   STATUSBAR_CLOCK_PADDING = "clock_orientation";
    private static final String   STATUSBAR_CLOCK_CLICK= "leo_salt_statusbar_clock_onlong";
    private static final String   STATUSBAR_CLOCK_CLICKEnabled= "leo_salt_statusbar_clock_onclick";
    private static final String   STATUSBAR_CLOCK_LOCATION= "leo_salt_statusbar_clock_orientation";
    private static final String   STATUSBAR_CLOCK_DISPLAY= "leo_salt_statusbar_clock_enabled";
    private void setDonatePreference() {
        if (DonatePermission()) {
            mClockClickEnabled.setEnabled(true);
            mStartPadding .setEnabled(true);
            mClockChinaDetailDisplay.setEnabled(true);
            mEndPadding .setEnabled(true);
            mClockDateDisplay .setEnabled(true);
        } else {
            mClockClickEnabled.setEnabled(false);
            mEndPadding .setEnabled(false);
            mStartPadding .setEnabled(false);
            mClockChinaDetailDisplay.setEnabled(false);
            mClockDateDisplay .setEnabled(false);
        }
    }
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "statusbar_clock_prefs");
        ContentResolver resolver = getActivity().getContentResolver();


        dialogCheck(mContext,"statusbar_check_clock_language","statusbar_check_clock",R.string.national_and_regional_restrictions);
        mClockDateWeekDisplay = (SaltSettingSwitchPreference) findPreference("week_enabled");
        mClockDateWeekDisplay.setChecked((Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_DATE_WEEK_DISPLAY, 0) == 1));
        mClockDateWeekDisplay.setOnPreferenceChangeListener(this);
        mClockDateWeekSymbol = (SaltSettingDefaultListPreference) findPreference("week_symbol");

        mClockDatePosition = (SaltSettingDefaultListPreference) findPreference("date_location");
        mClockDateStyle = (SaltSettingDefaultListPreference) findPreference("date_style");
        mClockDateWeekFormat= (SaltSettingDefaultListPreference) findPreference("week_format");

        int clockDateStyle = Settings.System.getInt(resolver,
            STATUSBAR_CLOCK_DATE_STYLE, 0);
        mClockDateStyle.setValue(String.valueOf(clockDateStyle));
        mClockDateStyle.setSummary(mClockDateStyle.getEntry());
        mClockDateStyle.setOnPreferenceChangeListener(this);
        int clockDateWEEKStyle = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_DATE_WEEK_FORMAT, 0);
        mClockDateWeekFormat.setValue(String.valueOf(clockDateWEEKStyle));
        mClockDateWeekFormat.setSummary( mClockDateWeekFormat.getEntry());
        mClockDateWeekFormat.setOnPreferenceChangeListener(this);
        int clockDateWEEKsymbol = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_DATE_WEEK_SYMBOL, 0);
        mClockDateWeekSymbol.setValue(String.valueOf(clockDateWEEKsymbol));
        mClockDateWeekSymbol.setSummary( mClockDateWeekSymbol.getEntry());
        mClockDateWeekSymbol.setOnPreferenceChangeListener(this);
        mClockDateFormat = (SaltSettingDefaultListPreference) findPreference("date_format");
        mClockDateFormat.setOnPreferenceChangeListener(this);
        String value = Settings.System.getString(getActivity().getContentResolver(),
             STATUSBAR_CLOCK_DATE_FORMAT);
        if (value == null || value.isEmpty()) {
            value = getStringIdentifier(getContext(),"default_date_format");;
        }
        int index = mClockDateFormat.findIndexOfValue((String) value);
        if (index == -1) {
            mClockDateFormat.setValueIndex(CUSTOM_CLOCK_DATE_FORMAT_INDEX);
        } else {
            mClockDateFormat.setValue(value);
        }

        parseClockDateFormats();
        mClockDatePosition.setValue(Integer.toString(Settings.System.getInt(getActivity()
                        .getContentResolver(), STATUSBAR_CLOCK_DATE_POSITION,
                1)));
        mClockDatePosition.setSummary(mClockDatePosition.getEntry());
        mClockDatePosition.setOnPreferenceChangeListener(this);
        int clockDatePosition = Settings.System.getInt(resolver,
             STATUSBAR_CLOCK_DATE_POSITION, 1);
        mClockDatePosition.setValue(String.valueOf(clockDatePosition));
        mClockDatePosition.setSummary(mClockDatePosition.getEntry());
        mClockDatePosition.setOnPreferenceChangeListener(this);

        mClockWeekPosition= (SaltSettingDefaultListPreference) findPreference("week_location");
        mClockWeekPosition.setValue(Integer.toString(Settings.System.getInt(getActivity()
                        .getContentResolver(),STATUSBAR_CLOCK_WEEK_POSITION ,
                0)));
        mClockWeekPosition.setSummary(mClockWeekPosition.getEntry());
        mClockWeekPosition.setOnPreferenceChangeListener(this);
        int clockWEEKPosition = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_WEEK_POSITION , 0);
        mClockWeekPosition.setValue(String.valueOf(clockWEEKPosition));
        mClockWeekPosition.setSummary(mClockWeekPosition.getEntry());
        mClockWeekPosition.setOnPreferenceChangeListener(this);


        mClockChinaDetailSyle= (SaltSettingDefaultListPreference) findPreference("detail_style");
        int clockDetailSyle = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_CHINA_DETAIL_STYLE, 0);
        mClockChinaDetailSyle.setValue(String.valueOf(clockDetailSyle ));
        mClockChinaDetailSyle.setSummary( mClockChinaDetailSyle.getEntry());
        mClockChinaDetailSyle.setOnPreferenceChangeListener(this);

        mClockDetailPosition= (SaltSettingDefaultListPreference) findPreference("detail_location");
        mClockDetailPosition.setValue(Integer.toString(Settings.System.getInt(getActivity()
                        .getContentResolver(),STATUSBAR_CLOCK_CHINA_DETAIL_POSITION,
                0)));
        mClockDetailPosition.setSummary(   mClockDetailPosition.getEntry());
        mClockDetailPosition.setOnPreferenceChangeListener(this);
        int clockDetailPosition = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_CHINA_DETAIL_POSITION, 0);
        mClockDetailPosition.setValue(String.valueOf(clockDetailPosition));
        mClockDetailPosition.setSummary(   mClockDetailPosition.getEntry());
        mClockDetailPosition.setOnPreferenceChangeListener(this);

        mClockSize = (SaltSettingSeekBarPreference) findPreference("single_size");
        int clockSize = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_SIZE, 14);
        mClockSize.setValue(clockSize / 1);

        mClockSize.setOnPreferenceChangeListener(this);

        mClockMultiSize = (SaltSettingSeekBarPreference) findPreference("multi_size");
        int clockMultiSize = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_MULTIS_SIZE , 10);
        mClockMultiSize.setValue(clockMultiSize / 1);

        mClockMultiSize.setOnPreferenceChangeListener(this);

        mStatusBarAmPm = (SaltSettingDefaultListPreference) findPreference("ampm_style");

        mClockChinaDetailSymbol= (SaltSettingDefaultListPreference) findPreference("detail_symbol");

        mClockChinaDetailSymbol.setValue(String.valueOf(clockDetailSymbol));
        mClockChinaDetailSymbol.setSummary( mClockChinaDetailSymbol.getEntry());
        mClockChinaDetailSymbol.setOnPreferenceChangeListener(this);


        mStartPadding = (SaltSettingSeekBarPreference) findPreference("start_padding");
        int clockStartPadding = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_START_PADDING , 1);
        mStartPadding.setValue(clockStartPadding);

        mStartPadding.setOnPreferenceChangeListener(this);


        mEndPadding = (SaltSettingSeekBarPreference) findPreference("end_padding");
        int clockEndPadding = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_END_PADDING, 1);
        mEndPadding.setValue(clockEndPadding);

        mEndPadding.setOnPreferenceChangeListener(this);

        mClockPosition= (SaltSettingDefaultListPreference) findPreference(STATUSBAR_CLOCK_PADDING );
        int clockPosition = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_WEEK_POSITION , 0);
        String[] Entries;
        String[] Entriesvalues;
        if (Phonebootloader(3).equals("G97")) {
            Entriesvalues= getResources().getStringArray(R.array.statusbar_s10clock_values);
            Entries= getResources().getStringArray(R.array.statusbar_view_options);
        }else {
            Entriesvalues= getResources().getStringArray(R.array.statusbar_clock_values);
            Entries= getResources().getStringArray(R.array.statusbar_clock_options);
        }
        mClockPosition.setEntryValues(Entriesvalues);
        mClockPosition.setEntries(Entries);
        mClockPosition.setValue(String.valueOf(clockPosition));
        mClockPosition.setSummary(mClockPosition.getEntry());
        mClockPosition.setOnPreferenceChangeListener(this);

        mLunarMonth= (SaltSettingDefaultListPreference) findPreference("lunar_month_style");
        int clockLunarMonth = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_LUNAR_MONTH , 0);
        mLunarMonth.setValue(String.valueOf(clockLunarMonth));
        mLunarMonth.setSummary(mLunarMonth.getEntry());
        mLunarMonth.setOnPreferenceChangeListener(this);

        mClockClickEnabled = (SaltSettingSwitchPreference) findPreference("click_enabled");
        mClockClickEnabled.setChecked((Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_CLICKEnabled, 0) == 1));
        mClockClickEnabled.setOnPreferenceChangeListener(this);

        mClockClick= (SaltSettingDefaultListPreference) findPreference("clock_click");
        int clockClick  = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_CLICK , 0);
        mClockClick.setValue(String.valueOf(clockClick ));
        mClockClick.setSummary( mClockClick.getEntry());
        mClockClick.setOnPreferenceChangeListener(this);

        mClockDisplay= (SaltSettingSwitchPreference) findPreference("clock_show");
        mClockDisplay.setChecked((Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_DISPLAY, 1) == 1));
        mClockDisplay.setOnPreferenceChangeListener(this);


        mClockChinaDetailDisplay= (SaltSettingSwitchPreference) findPreference("detail_enabled");
        if (isChineseLanguage()) {
            clockDetailSymbol = Settings.System.getInt(resolver,
                    STATUSBAR_CLOCK_CHINA_DETAIL_SYMBOL, 0);
            mStatusBarAmPm.setEnabled(false);
            mClockChinaDetailDisplay.setChecked((Settings.System.getInt(resolver,
                    STATUSBAR_CLOCK_CHINA_DETAIL_DISPLAY, 0) == 1));
            mClockChinaDetailDisplay.setOnPreferenceChangeListener(this);
        } else {
            mClockChinaDetailDisplay.setEnabled(false);
            if (DateFormat.is24HourFormat(getActivity())) {
                mStatusBarAmPm.setEnabled(false);
                mStatusBarAmPm.setSummary("当前为12小时制");
            } else {
                clockDetailSymbol=0;
                int statusBarAmPm = Settings.System.getInt(resolver,
                        STATUSBAR_CLOCK_AM_PM_STYLE, 2);
                mStatusBarAmPm.setValue(String.valueOf(statusBarAmPm));
                mStatusBarAmPm.setSummary(mStatusBarAmPm.getEntry());
                mStatusBarAmPm.setOnPreferenceChangeListener(this);
            }

        }
        setColopd();
        mClockDateDisplay = (SaltSettingDefaultListPreference) findPreference("date_enabled");
        int clockDateDisplay = Settings.System.getInt(resolver,
                STATUSBAR_CLOCK_DATE_DISPLAY, 0);
        mClockDateDisplay.setValue(String.valueOf(clockDateDisplay));
        mClockDateDisplay.setSummary(mClockDateDisplay.getEntry());
        mClockDateDisplay.setOnPreferenceChangeListener(this);
        setDateOptions();
        setDonatePreference();

    }
    int  clockDetailSymbol;
    private void parseClockDateFormats() {
        String[] dateEntries = getResources().getStringArray(R.array.clock_date_format_entries_values);
        CharSequence parsedDateEntries[];
        parsedDateEntries = new String[dateEntries.length];
        Date now = new Date();

        int lastEntry = dateEntries.length - 1;
        int dateFormat = Settings.System.getInt(getActivity()
                .getContentResolver(),STATUSBAR_CLOCK_DATE_STYLE, 0);
        for (int i = 0; i < dateEntries.length; i++) {
            if (i == lastEntry) {
                parsedDateEntries[i] = dateEntries[i];
            } else {
                String newDate;
                CharSequence dateString = DateFormat.format(dateEntries[i], now);
                if (dateFormat == CLOCK_DATE_STYLE_LOWERCASE) {
                    newDate = dateString.toString().toLowerCase();
                } else if (dateFormat == CLOCK_DATE_STYLE_UPPERCASE) {
                    newDate = dateString.toString().toUpperCase();
                } else {
                    newDate = dateString.toString();
                }

                parsedDateEntries[i] = newDate;
            }
        }
        mClockDateFormat.setEntries(parsedDateEntries);
    }
    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        AlertDialog dialog;

        ContentResolver resolver = getActivity().getContentResolver();
        if (preference == mClockDateDisplay) {
            int clockDateDisplay = Integer.valueOf((String) newValue);
            int index = mClockDateDisplay.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                  STATUSBAR_CLOCK_DATE_DISPLAY, clockDateDisplay);
            mClockDateDisplay.setSummary(mClockDateDisplay.getEntries()[index]);
          setDateOptions();
            return true;
        } else if (preference == mClockDateStyle) {
            int clockDateStyle = Integer.valueOf((String) newValue);
            int index = mClockDateStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                   STATUSBAR_CLOCK_DATE_STYLE, clockDateStyle);
            mClockDateStyle.setSummary(mClockDateStyle.getEntries()[index]);
            parseClockDateFormats();
            return true;
        } else  if (preference == mClockDateFormat) {
            int index = mClockDateFormat.findIndexOfValue((String) newValue);

            if (index == CUSTOM_CLOCK_DATE_FORMAT_INDEX) {
                AlertDialog.Builder alert = new AlertDialog.Builder(getActivity());
                alert.setTitle(getStringIdentifier(mContext,"input_date_title"));
                alert.setMessage(getStringIdentifier(mContext,"input_date_message"));
                alert.setIcon(getCustomArrayDrawable("android","menu_ic_magnifier_window") );
                final EditText input = new EditText(getActivity());
                String oldText = Settings.System.getString(
                        getActivity().getContentResolver(),
                    STATUSBAR_CLOCK_DATE_FORMAT);
                if (oldText != null) {
                    input.setHint(getStringIdentifier(mContext,"input_date_hint"));
                    input.setText(oldText);
                }
                alert.setView(input);

                alert.setPositiveButton(android.R.string.ok, (dialogInterface, whichButton) -> {
                    String value = input.getText().toString();
                    if (value.equals("")) {
                        return;
                    }
                    Settings.System.putString(getActivity().getContentResolver(),
                          STATUSBAR_CLOCK_DATE_FORMAT, value);

                    return;
                });

                alert.setNegativeButton(android.R.string.cancel,
                        (dialogInterface, which) -> {
                            return;
                        });
                dialog = alert.create();
                dialog.show();
            } else {
                if ((String) newValue != null) {
                    Settings.System.putString(getActivity().getContentResolver(),
                          STATUSBAR_CLOCK_DATE_FORMAT, (String) newValue);
                }
            }
            return true;
        }else if (preference == mClockDatePosition) {
            int val = Integer.parseInt((String) newValue);
            int index = mClockDatePosition.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                   STATUSBAR_CLOCK_DATE_POSITION, val);
            mClockDatePosition.setSummary(mClockDatePosition.getEntries()[index]);
            parseClockDateFormats();
            return true;
        }else if (preference == mClockDateWeekDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    STATUSBAR_CLOCK_DATE_WEEK_DISPLAY, value ? 1 : 0);
            return true;
        }else if (preference ==  mClockDateWeekFormat) {

            int val = Integer.parseInt((String) newValue);
            int index =  mClockDateWeekFormat.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    STATUSBAR_CLOCK_DATE_WEEK_FORMAT, val);
            mClockDateWeekFormat.setSummary( mClockDateWeekFormat.getEntries()[index]);

            return true;
        }else if (preference ==mClockDateWeekSymbol) {
            String key=STATUSBAR_CLOCK_DATE_WEEK_SYMBOL ;
            if(newValue.equals("14")){
                EditTextDialog(STATUSBAR_CLOCK_DATE_WEEK_SYMBOL_STR, String.valueOf(mClockDateWeekSymbol.getTitle()));
            }
            int location = Integer.valueOf((String) newValue);
            int index =mClockDateWeekSymbol.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mClockDateWeekSymbol.setSummary(mClockDateWeekSymbol.getEntries()[index]);
            return true;
        }else if (preference == mClockWeekPosition) {
            int val = Integer.parseInt((String) newValue);
            int index = mClockWeekPosition.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    STATUSBAR_CLOCK_WEEK_POSITION , val);
            mClockWeekPosition.setSummary(mClockWeekPosition.getEntries()[index]);
            parseClockDateFormats();
            return true;
        }else if (preference == mClockChinaDetailDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    STATUSBAR_CLOCK_CHINA_DETAIL_DISPLAY , value ? 1 : 0);
            setColopd();
            return true;
        }else if (preference ==mClockChinaDetailSyle) {
            String key=STATUSBAR_CLOCK_CHINA_DETAIL_STYLE;
            if(newValue.equals("2")){
                showSnack("五更,根据中国古代更夫打更时间设置,仅支持晚上19点至次日5点");
            }else if(newValue.equals("7")){
                EditTextDialog(STATUSBAR_CLOCK_CHINA_DETAIL_STRING, String.valueOf(mClockChinaDetailSyle.getTitle()));
            }
            int location = Integer.valueOf((String) newValue);
            int index =mClockChinaDetailSyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mClockChinaDetailSyle.setSummary(mClockChinaDetailSyle.getEntries()[index]);
            return true;
        }else if (preference ==mClockChinaDetailSymbol) {
            String key=STATUSBAR_CLOCK_CHINA_DETAIL_SYMBOL;
            if(newValue.equals("14")){
                EditTextDialog(STATUSBAR_CLOCK_CHINA_DETAIL_SYMBOL_STR, String.valueOf(mClockChinaDetailSymbol.getTitle()));
            }
            int location = Integer.valueOf((String) newValue);
            int index =mClockChinaDetailSymbol.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mClockChinaDetailSymbol.setSummary(mClockChinaDetailSymbol.getEntries()[index]);
            return true;
        }else if (preference == mClockDetailPosition) {
            int val = Integer.parseInt((String) newValue);
            int index =mClockDetailPosition.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    STATUSBAR_CLOCK_CHINA_DETAIL_POSITION, val);
        mClockDetailPosition.setSummary(mClockDetailPosition.getEntries()[index]);
            parseClockDateFormats();
            return true;
        }else if (preference == mClockSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    STATUSBAR_CLOCK_SIZE, width);
            return true;
        }else if (preference ==mClockMultiSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    STATUSBAR_CLOCK_MULTIS_SIZE, width);
            return true;
        } else if (preference == mStatusBarAmPm) {
            int statusBarAmPm = Integer.valueOf((String) newValue);
            int index = mStatusBarAmPm.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                  STATUSBAR_CLOCK_AM_PM_STYLE, statusBarAmPm);
            mStatusBarAmPm.setSummary(mStatusBarAmPm.getEntries()[index]);
            return true;
        }else if (preference == mStartPadding) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    STATUSBAR_CLOCK_START_PADDING, width);
            return true;
        }
        else if (preference == mEndPadding) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    STATUSBAR_CLOCK_END_PADDING, width);
            return true;
        }else if (preference == mClockPosition) {

            int clockDateStyle = Integer.valueOf((String) newValue);
            int index =  mClockPosition.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    STATUSBAR_CLOCK_LOCATION, clockDateStyle);
            mClockPosition.setSummary( mClockPosition.getEntries()[index]);
            return true;
        }else if (preference ==mLunarMonth) {
            int statusBarAmPm = Integer.valueOf((String) newValue);
            int index = mLunarMonth.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    STATUSBAR_CLOCK_LUNAR_MONTH, statusBarAmPm);
            mLunarMonth.setSummary(mLunarMonth.getEntries()[index]);
            return true;
        }else if (preference == mClockClick) {
            String str= STATUSBAR_CLOCK_CLICK;
            if(newValue.equals("5")){
                launchAppSPicker(str);
            }else if(newValue.equals("6")){
                mString=str+"_short";
                mPicker = new ShortcutPickerHelper(this) {
                    @Override
                    public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                        showSnack(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                        Settings.System.putString( mResolver, mString, str);
                    }
                };
                mPicker.pickShortcut();
            }
            int location = Integer.valueOf((String) newValue);
            int index =mClockClick.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    str, location);
            mClockClick.setSummary(mClockClick.getEntries()[index]);

            return true;
        }else if (preference == mClockClickEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    STATUSBAR_CLOCK_CLICKEnabled, value ? 1 : 0);
            return true;
        }else if (preference == mClockDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    STATUSBAR_CLOCK_DISPLAY, value ? 1 : 0);

            return true;
        }
        setDonatePreference();
        return true;
    }
    private String mString;

    private void setColopd() {
        int mNavRingLong = Settings.System.getInt(mContext.getContentResolver(),
                STATUSBAR_CLOCK_CHINA_DETAIL_DISPLAY, 0);
        if (mNavRingLong==1) {
            mClockChinaDetailSyle.setEnabled(true);
            mClockChinaDetailSymbol.setEnabled(true);
            mClockDetailPosition.setEnabled(true);
            mStatusBarAmPm.setEnabled(true);
            mLunarMonth.setEnabled(true);
        }else {
            mClockChinaDetailSyle.setEnabled(false);
            mClockChinaDetailSymbol.setEnabled(false);
            mClockDetailPosition.setEnabled(false);
            mStatusBarAmPm.setEnabled(false);
            mLunarMonth.setEnabled(false);

        }
    }
    private void setDateOptions() {
        int mNavRingLong = Settings.System.getInt(mContext.getContentResolver(),
                STATUSBAR_CLOCK_DATE_DISPLAY, 0);
        if (mNavRingLong==1) {
            mClockDateStyle.setEnabled(true);
            mClockDatePosition.setEnabled(true);
            mClockDateWeekDisplay.setEnabled(true);
            mClockDateFormat.setEnabled(true);

        }else if (mNavRingLong==2) {
            mClockDateStyle.setEnabled(true);
            mClockDatePosition.setEnabled(true);
            mClockDateWeekDisplay.setEnabled(true);
            mClockDateFormat.setEnabled(true);
        }else  if (mNavRingLong==0){
            mClockDateStyle.setEnabled(false);
            mClockDatePosition.setEnabled(false);
            mClockDateWeekDisplay.setEnabled(false);
            mClockDateFormat.setEnabled(false);

        }

    }


    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }


    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == Activity.RESULT_OK) {
            if (requestCode == ShortcutPickerHelper.REQUEST_PICK_SHORTCUT

                    || requestCode == ShortcutPickerHelper.REQUEST_CREATE_SHORTCUT
                    ) {
                mPicker.onActivityResult(requestCode, resultCode, data);
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

}
