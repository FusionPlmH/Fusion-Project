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
import android.graphics.drawable.Drawable;
import android.os.Bundle;


import android.os.UserHandle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingMultipleChoicePreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;


@SuppressLint("ResourceAsColor")
public class PulldownDateFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private SaltSettingSwitchPreference mWeekEnabled,mLunarEnabled,mClockClickEnabled,mClockLongClickEnabled,mVibratorEnabled,mCollapsePanels;
    private SaltSettingDefaultListPreference mClockDateFormat,mClockDatePosition,mClockDateWeekFormat,mClockDateWeekSymbol,mLunarMonth,
    mLunarStyle,mLunarSymbol,mClockClick;
    private SaltSettingSeekBarPreference mSize,mVibratorLevel, mBoxSize;
    private SaltSettingMultipleChoicePreference mLunarcolony;
    private static final int CUSTOM_CLOCK_DATE_FORMAT_INDEX = 20;
    private static final String KEY = "leo_salt_qs_date";
    private static final String KEY1= KEY+"_box_size";
    private static final String KEY2= KEY+"_week_enabled";
    private static final String KEY3= KEY+"_lunar_enabled";
    private static final String KEY4= KEY+"_format";
    private static final String KEY5= KEY+"_weeklocation_style";
    private static final String KEY6= KEY+"_week_style";
    private static final String KEY7= KEY+"_week_symbol_style";
    private static final String KEY8= KEY+"_lunar_month_style";
    private static final String KEY9= KEY+"_lunar_style";
    private static final String KEY10= KEY+"_lunar_symbol_style";
    private static final String KEY11= KEY+"_click_action_style";
    private static final String KEY13= KEY+"_action_enabled";
    private static final String KEY14= KEY+"_enabled";
    private static final String KEY15= KEY+"_vibrator";
    private static final String KEY16= KEY+"_vibrator_level";
    private static final String KEY17= KEY+"_size";
    private static final String KEY18= KEY+"_collapsepanel_enabled";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "pulldown_date_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mBoxSize = (SaltSettingSeekBarPreference) findPreference("qsdateboxsize");
        int clockMultiSize = Settings.System.getInt(resolver,
                KEY1, 19);
        mBoxSize.setValue(clockMultiSize / 1);

        mBoxSize.setOnPreferenceChangeListener(this);
        mWeekEnabled = (SaltSettingSwitchPreference) findPreference("qsweekenabled");
        mWeekEnabled.setChecked((Settings.System.getInt(resolver,
                KEY2, 1) == 1));
        mWeekEnabled.setOnPreferenceChangeListener(this);

        mClockDateFormat = (SaltSettingDefaultListPreference) findPreference("qsdateformat");

        String value = Settings.System.getString(getActivity().getContentResolver(),
                KEY4);
        if (value == null || value.isEmpty()) {
            value = getStringIdentifier(getContext(),"default_date_format");
        }
        int index = mClockDateFormat.findIndexOfValue((String) value);
        if (index == -1) {
            mClockDateFormat.setValueIndex(CUSTOM_CLOCK_DATE_FORMAT_INDEX);
        } else {
            mClockDateFormat.setValue(value);
        }
        mClockDateFormat.setOnPreferenceChangeListener(this);
        parseClockDateFormats();
        mClockDatePosition = (SaltSettingDefaultListPreference) findPreference("qsweeklocation");
        mClockDatePosition.setValue(Integer.toString(Settings.System.getInt(getActivity()
                        .getContentResolver(), KEY5,
                0)));
        mClockDatePosition.setSummary(mClockDatePosition.getEntry());
        mClockDatePosition.setOnPreferenceChangeListener(this);
        int clockDatePosition = Settings.System.getInt(resolver,
                KEY5, 0);
        mClockDatePosition.setValue(String.valueOf(clockDatePosition));
        mClockDatePosition.setSummary(mClockDatePosition.getEntry());
        mClockDatePosition.setOnPreferenceChangeListener(this);
        mClockDateWeekFormat= (SaltSettingDefaultListPreference) findPreference("qsweekformat");
        int clockDateWEEKStyle = Settings.System.getInt(resolver,
                KEY6, 0);
        mClockDateWeekFormat.setValue(String.valueOf(clockDateWEEKStyle));
        mClockDateWeekFormat.setSummary( mClockDateWeekFormat.getEntry());
        mClockDateWeekFormat.setOnPreferenceChangeListener(this);
        mClockDateWeekSymbol = (SaltSettingDefaultListPreference) findPreference("qsweeksymbol");
        int clockDateWEEKsymbol = Settings.System.getInt(resolver,
                KEY7, 0);
        mClockDateWeekSymbol.setValue(String.valueOf(clockDateWEEKsymbol));
        mClockDateWeekSymbol.setSummary( mClockDateWeekSymbol.getEntry());
        mClockDateWeekSymbol.setOnPreferenceChangeListener(this);
        mLunarMonth= (SaltSettingDefaultListPreference) findPreference("qslunarmonthstyle");
        int clockLunarMonth = Settings.System.getInt(resolver,
                KEY8 , 0);
        mLunarMonth.setValue(String.valueOf(clockLunarMonth));
        mLunarMonth.setSummary(mLunarMonth.getEntry());
        mLunarMonth.setOnPreferenceChangeListener(this);
        mLunarStyle= (SaltSettingDefaultListPreference) findPreference("qslunarstyle");
        int clockLunarStyle = Settings.System.getInt(resolver,
                KEY9, 0);
        mLunarStyle.setValue(String.valueOf(clockLunarStyle));
        mLunarStyle.setSummary( mLunarStyle.getEntry());
        mLunarStyle.setOnPreferenceChangeListener(this);
        mLunarSymbol = (SaltSettingDefaultListPreference) findPreference("qsLunarsymbol");
        int clockLunarsymbol = Settings.System.getInt(resolver,
                KEY10, 0);
        mLunarSymbol.setValue(String.valueOf(clockLunarsymbol));
        mLunarSymbol.setSummary(mLunarSymbol.getEntry());
        mLunarSymbol.setOnPreferenceChangeListener(this);

        mClockClick= (SaltSettingDefaultListPreference) findPreference("qsdateclickstyle");
        int clockClick  = Settings.System.getInt(resolver,
                KEY11, 0);
        mClockClick.setValue(String.valueOf(clockClick ));
        mClockClick.setSummary( mClockClick.getEntry());
        mClockClick.setOnPreferenceChangeListener(this);



        mClockClickEnabled = (SaltSettingSwitchPreference) findPreference("qsdateClickEnabled");
        mClockClickEnabled.setChecked((Settings.System.getInt(resolver,
                KEY13, 0) == 1));
        mClockClickEnabled.setOnPreferenceChangeListener(this);

        mClockLongClickEnabled= (SaltSettingSwitchPreference) findPreference("qsdateEnabled");
        mClockLongClickEnabled.setChecked((Settings.System.getInt(resolver,
                KEY14, 0) == 1));
        mClockLongClickEnabled.setOnPreferenceChangeListener(this);
        mVibratorEnabled= (SaltSettingSwitchPreference) findPreference("qsdateVibrator");
        mVibratorEnabled.setChecked((Settings.System.getInt(resolver,
                KEY15, 0) == 1));
        mVibratorEnabled.setOnPreferenceChangeListener(this);

        mSize = (SaltSettingSeekBarPreference) findPreference("qsdatesize");
        int clockSize = Settings.System.getInt(resolver,
                KEY17, 16);
        mSize.setValue(clockSize / 1);

        mSize.setOnPreferenceChangeListener(this);

        mVibratorLevel= (SaltSettingSeekBarPreference) findPreference("qsdateVibratorLevel");
        int VibratorLevel = Settings.System.getInt(resolver,
                KEY16, 15);
        mVibratorLevel.setValue(VibratorLevel/ 1);

        mVibratorLevel.setOnPreferenceChangeListener(this);

        mCollapsePanels= (SaltSettingSwitchPreference) findPreference("qsdateCollapsePanel");
        mCollapsePanels.setChecked((Settings.System.getInt(resolver,
                KEY18, 1) == 1));
        mCollapsePanels.setOnPreferenceChangeListener(this);

        mLunarcolony= (SaltSettingMultipleChoicePreference) findPreference("qsdateLunarcolony");

        mLunarEnabled = (SaltSettingSwitchPreference) findPreference("qslunarenabled");
        mLunarEnabled.setChecked((Settings.System.getInt(resolver,
                KEY3, 1) == 1));
        mLunarEnabled.setOnPreferenceChangeListener(this);
        mClockClickEnabled = (SaltSettingSwitchPreference) findPreference("qsdateClickEnabled");
        mClockClickEnabled.setChecked((Settings.System.getInt(resolver,
                KEY13, 0) == 1));
        mClockClickEnabled.setOnPreferenceChangeListener(this);
        setChinaTime();
    }
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        if (preference ==mLunarcolony) {

            return true;
        }else{
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }
    private String mString;
    private void parseClockDateFormats() {
        // Parse and repopulate mStatusBarDateFormat's entries based on current date.
        String[] dateEntries = getResources().getStringArray(
                R.array.clock_date_format_entries_values);
        CharSequence parsedDateEntries[];
        parsedDateEntries = new String[dateEntries.length];
        Date now = new Date();

        int lastEntry = dateEntries.length - 1;
        int dateStyle = Settings.System.getInt(mResolver,
                KEY4, 2);
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
         if (preference == mBoxSize) {
             int width = ((Integer)newValue).intValue();
             Settings.System.putInt(resolver,
                     KEY1, width);
            return true;
         }else if (preference ==mWeekEnabled ) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY2, value ? 1 : 0);
            return true;
         }else if (preference==mLunarEnabled) {
             boolean value = (Boolean) newValue;
             Settings.System.putInt(getActivity().getContentResolver(),
                     KEY3, value ? 1 : 0);
             setChinaTime();
             return true;
         }else  if (preference == mClockDateFormat) {
             int index = mClockDateFormat.findIndexOfValue((String) newValue);

             if (index == CUSTOM_CLOCK_DATE_FORMAT_INDEX) {
                 AlertDialog.Builder alert = new AlertDialog.Builder(getActivity());
                 alert.setTitle(getStringIdentifier(mContext,"input_date_title"));
                 alert.setMessage(getStringIdentifier(mContext,"input_date_message"));
                 alert.setIcon(getCustomArrayDrawable("android","menu_ic_magnifier_window") );
                 final EditText input = new EditText(getActivity());
                 String oldText = Settings.System.getString(
                         getActivity().getContentResolver(),
                         KEY4);
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
                             KEY4, value);

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
                             KEY4, (String) newValue);
                 }
             }
             return true;
         }else if (preference == mClockDatePosition) {
             int val = Integer.parseInt((String) newValue);
             int index = mClockDatePosition.findIndexOfValue((String) newValue);
             Settings.System.putInt(getActivity().getContentResolver(),
                     KEY5, val);
             mClockDatePosition.setSummary(mClockDatePosition.getEntries()[index]);
             parseClockDateFormats();
             return true;
         }else if (preference ==  mClockDateWeekFormat) {
             int val = Integer.parseInt((String) newValue);
             int index =  mClockDateWeekFormat.findIndexOfValue((String) newValue);
             Settings.System.putInt(getActivity().getContentResolver(),
                     KEY6, val);
             mClockDateWeekFormat.setSummary( mClockDateWeekFormat.getEntries()[index]);

             return true;
         }else if (preference ==mClockDateWeekSymbol) {
             String key=KEY7 ;

             int location = Integer.valueOf((String) newValue);
             int index =mClockDateWeekSymbol.findIndexOfValue((String) newValue);
             Settings.System.putInt(getActivity().getContentResolver(),
                     key, location);
             mClockDateWeekSymbol.setSummary(mClockDateWeekSymbol.getEntries()[index]);
             return true;
         }else if (preference ==mLunarMonth) {
             int statusBarAmPm = Integer.valueOf((String) newValue);
             int index = mLunarMonth.findIndexOfValue((String) newValue);
             Settings.System.putInt(getActivity().getContentResolver(),
                     KEY8, statusBarAmPm);
             mLunarMonth.setSummary(mLunarMonth.getEntries()[index]);
             return true;
         }else if (preference == mLunarStyle) {
             int statusBarAmPm = Integer.valueOf((String) newValue);
             int index =  mLunarStyle.findIndexOfValue((String) newValue);
             Settings.System.putInt(getActivity().getContentResolver(),
                     KEY9, statusBarAmPm);
             mLunarStyle.setSummary( mLunarStyle.getEntries()[index]);
             return true;
         }else if (preference ==mLunarSymbol) {
             String key=KEY10 ;
             if(newValue.equals("14")){
                 EditTextDialog(KEY10+"_string", String.valueOf(mLunarSymbol.getTitle()));
             }
             int location = Integer.valueOf((String) newValue);
             int index =mLunarSymbol.findIndexOfValue((String) newValue);
             Settings.System.putInt(getActivity().getContentResolver(),
                     key, location);
             mLunarSymbol.setSummary(mLunarSymbol.getEntries()[index]);
             return true;
         }  else if (preference == mClockClick) {
             String str= KEY11;
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
         }else if (preference ==mClockClickEnabled) {
             boolean value = (Boolean) newValue;
             Settings.System.putInt(getActivity().getContentResolver(),
                     KEY13, value ? 1 : 0);
             setChinaTime();
             return true;
         }else if (preference ==mClockLongClickEnabled) {
             boolean value = (Boolean) newValue;
             Settings.System.putInt(getActivity().getContentResolver(),
                     KEY14, value ? 1 : 0);
             return true;
         }else if (preference ==mVibratorEnabled) {
             boolean value = (Boolean) newValue;
             Settings.System.putInt(getActivity().getContentResolver(),
                     KEY15, value ? 1 : 0);
             return true;
         }else if (preference ==mSize) {
             int width = ((Integer)newValue).intValue();
             Settings.System.putInt(resolver,
                     KEY17, width);
             return true;
         }else if (preference ==mVibratorLevel) {
             int width = ((Integer)newValue).intValue();
             Settings.System.putInt(resolver,
                     KEY16, width);
             return true;
         }else if (preference ==mCollapsePanels) {
             boolean value = (Boolean) newValue;
             Settings.System.putInt(getActivity().getContentResolver(),
                     KEY18, value ? 1 : 0);
             return true;
         }
        return false;
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
    private void setChinaTime() {
        int mNavRingLong = Settings.System.getInt(mContext.getContentResolver(),
                KEY3, 0);
        int mNavRingLong2 = Settings.System.getInt(mContext.getContentResolver(),
                KEY13, 0);

        if (mNavRingLong==1) {
            getPreferenceScreen().addPreference(mLunarMonth);
            getPreferenceScreen().addPreference( mLunarStyle);
            getPreferenceScreen().addPreference(mLunarSymbol);
          //  getPreferenceScreen().addPreference(mLunarcolony);

        }else {
            getPreferenceScreen().removePreference(mLunarMonth);
            getPreferenceScreen().removePreference(mLunarStyle);
            getPreferenceScreen().removePreference(mLunarSymbol);
           // getPreferenceScreen().removePreference(mLunarcolony);
        }
        if(mNavRingLong2==1) {
            getPreferenceScreen().addPreference(mClockClick);
            getPreferenceScreen().addPreference(mCollapsePanels);
            getPreferenceScreen().addPreference(mVibratorEnabled);
            getPreferenceScreen().addPreference(mVibratorLevel);
        }else {
            getPreferenceScreen().removePreference(mClockClick);
            getPreferenceScreen().removePreference(mCollapsePanels);
            getPreferenceScreen().removePreference(mVibratorEnabled);
            getPreferenceScreen().removePreference(mVibratorLevel);
        }
        if(DonatePermission()){
            mClockClickEnabled.setEnabled(true);
            mClockDateWeekSymbol.setEnabled(true);
            mClockDateWeekFormat.setEnabled(true);
            mClockDateFormat.setEnabled(true);
        }else {
            mClockClickEnabled .setEnabled(false);
            mLunarEnabled.setEnabled(false);
            mClockDateFormat.setEnabled(false);
            mWeekEnabled.setEnabled(false);
            mClockDateWeekSymbol.setEnabled(false);
        }


    }
}
