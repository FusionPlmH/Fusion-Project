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
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingCategoryPreference;
import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;

import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.tweaks.view.widget.DialogView.dialogCheck;



@SuppressLint("ResourceAsColor")
public class PulldownClockFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    public static final String mLeoChineseClock="_chinadetail";
    private static final String KEYdefault= "leo_salt_qs_clock";
    private static final String KEY1= KEYdefault+"_enabled";
    private static final String KEY2= KEYdefault+mLeoChineseClock+"_enabled";
    private static final String KEY3= KEYdefault+"_action"+"_enabled";
    private static final String KEY4= KEYdefault+mLeoChineseClock+"_style";

    private static final String KEY6= KEYdefault+mLeoChineseClock+"_symbol"+"_style";
    private static final String KEY7= KEYdefault+mLeoChineseClock+"_zoom"+"_enabled";
    private static final String KEY8= KEYdefault+mLeoChineseClock+"_zoom"+"_style";
    private static final String KEY9= KEYdefault+"_box_size";
    private static final String KEY10= KEYdefault+"_size";
    private static final String KEY11=KEYdefault+"_vibrator_level";
    private static final String KEY12=KEYdefault+"_vibrator";
    private static final String KEY13=KEYdefault+"_collapsepanel_enabled";
    private static final String KEY14=KEYdefault+"_click_action_style";

    private SaltSettingSwitchPreference mEnabled,mChinaTime,mActionEnabled,mClockDetaiZoom,mVibratorEnabled,mCollapsePanels;
    private SaltSettingSeekBarPreference mSize,mVibratorLevel, mBoxSize;
    private SaltSettingDefaultListPreference mClockChinaDetailSyle ,mClockChinaDetailSymbol ,mClockClick,mClockZoomScale;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "pulldown_clock_prefs");
        SaltSettingCategoryPreference mSaltSettingCategoryPreference=(SaltSettingCategoryPreference) findPreference("qs_colock");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt("qs_colock_tab"));
        ContentResolver resolver = getActivity().getContentResolver();
        dialogCheck(mContext,"qs_check_clock_language","qs_check_clock",R.string.national_and_regional_restrictions);
        mEnabled = (SaltSettingSwitchPreference) findPreference("qsclockenabled");
        mEnabled.setChecked((Settings.System.getInt(resolver,
                KEY1, 1) == 1));
        mEnabled.setOnPreferenceChangeListener(this);
        //


        //
        mClockChinaDetailSyle= (SaltSettingDefaultListPreference) findPreference("qsclockdetailstyle");
        int clockDetailSyle = Settings.System.getInt(resolver,
                KEY4, 0);
        mClockChinaDetailSyle.setValue(String.valueOf(clockDetailSyle ));
        mClockChinaDetailSyle.setSummary( mClockChinaDetailSyle.getEntry());
        mClockChinaDetailSyle.setOnPreferenceChangeListener(this);
        //

        //
        mClockChinaDetailSymbol= (SaltSettingDefaultListPreference) findPreference("qsclockdetailsymbol");
         int   clockDetailSymbol = Settings.System.getInt(resolver,
                 KEY6, 0);
        mClockChinaDetailSymbol.setValue(String.valueOf(clockDetailSymbol));
        mClockChinaDetailSymbol.setSummary( mClockChinaDetailSymbol.getEntry());
        mClockChinaDetailSymbol.setOnPreferenceChangeListener(this);
        //
        mClockDetaiZoom = (SaltSettingSwitchPreference) findPreference("qsclockdetailszoom");
        mClockDetaiZoom.setChecked((Settings.System.getInt(resolver,
                KEY7, 0) == 1));
        mClockDetaiZoom.setOnPreferenceChangeListener(this);
        //
        mClockZoomScale = (SaltSettingDefaultListPreference) findPreference("qsclockdetailsScale");
        int Scale = Settings.System.getInt(resolver,
                KEY8, 0);

        mClockZoomScale.setValue(String.valueOf(Scale));
        mClockZoomScale.setSummary( mClockZoomScale.getEntry());
        mClockZoomScale.setOnPreferenceChangeListener(this);
        //
        mBoxSize = (SaltSettingSeekBarPreference) findPreference("qsclockboxsize");
        int clockboxSize = Settings.System.getInt(resolver,
                KEY9, 44);
        mBoxSize.setValue(clockboxSize/ 1);

        mBoxSize.setOnPreferenceChangeListener(this);
        mSize = (SaltSettingSeekBarPreference) findPreference("qsclocksize");
        int clockMultiSize = Settings.System.getInt(resolver,
                KEY10, 16);
        mSize.setValue(clockMultiSize/ 1);

        mSize.setOnPreferenceChangeListener(this);
        mVibratorLevel= (SaltSettingSeekBarPreference) findPreference("qsclockVibratorLevel");
        int VibratorLevel = Settings.System.getInt(resolver,
                KEY11, 15);
        mVibratorLevel.setValue(VibratorLevel/ 1);

        mVibratorLevel.setOnPreferenceChangeListener(this);

        mVibratorEnabled= (SaltSettingSwitchPreference) findPreference("qsclockVibrator");
        mVibratorEnabled.setChecked((Settings.System.getInt(resolver,
                KEY12, 0) == 1));
        mVibratorEnabled.setOnPreferenceChangeListener(this);
        //
        mCollapsePanels= (SaltSettingSwitchPreference) findPreference("qsclockCollapsePanel");
        mCollapsePanels.setChecked((Settings.System.getInt(resolver,
                KEY13, 1) == 1));
        mCollapsePanels.setOnPreferenceChangeListener(this);
        //
        mClockClick= (SaltSettingDefaultListPreference) findPreference("qsclockclickstyle");
        int clockClick  = Settings.System.getInt(resolver,
                KEY14, 0);
        mClockClick.setValue(String.valueOf(clockClick ));
        mClockClick.setSummary( mClockClick.getEntry());
        mClockClick.setOnPreferenceChangeListener(this);
        mChinaTime = (SaltSettingSwitchPreference) findPreference("qsclockchinaenabled");
        mChinaTime.setChecked((Settings.System.getInt(resolver,
                KEY2, 0) == 1));
        mChinaTime.setOnPreferenceChangeListener(this);
        //
        mActionEnabled = (SaltSettingSwitchPreference) findPreference("qsclockactionenabled");
        mActionEnabled.setChecked((Settings.System.getInt(resolver,
                KEY3, 0) == 1));
        mActionEnabled.setOnPreferenceChangeListener(this);
        setChinaTime();
    }


    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY1, value ? 1 : 0);
            return true;
        }else if (preference ==  mChinaTime) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY2, value ? 1 : 0);
            setChinaTime();
            return true;
        }else if (preference ==  mActionEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY3, value ? 1 : 0);
            setChinaTime();
            return true;
        }else if (preference ==mClockChinaDetailSyle) {
            String key=KEY4;
            if(newValue.equals("2")){
                showSnack("五更,根据中国古代更夫打更时间设置,仅支持晚上19点至次日5点");
            }else if(newValue.equals("7")){
                EditTextDialog(KEY4+"_string", String.valueOf(mClockChinaDetailSyle.getTitle()));
            }
            int location = Integer.valueOf((String) newValue);
            int index =mClockChinaDetailSyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mClockChinaDetailSyle.setSummary(mClockChinaDetailSyle.getEntries()[index]);
            return true;
        }else if (preference ==mClockChinaDetailSymbol) {
            String key=KEY6;

            int location = Integer.valueOf((String) newValue);
            int index =mClockChinaDetailSymbol.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mClockChinaDetailSymbol.setSummary(mClockChinaDetailSymbol.getEntries()[index]);
            return true;
        }else if (preference ==   mClockDetaiZoom) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY7, value ? 1 : 0);
            return true;
        }else if (preference == mClockZoomScale) {
            String key=KEY8;
            int location = Integer.valueOf((String) newValue);
            int index =mClockZoomScale.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mClockZoomScale.setSummary(mClockZoomScale.getEntries()[index]);
            return true;
        }else if (preference ==mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY10, width);
            return true;
        }else if (preference ==mVibratorLevel) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY11, width);
            return true;
        }else if (preference == mBoxSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY9, width);
            return true;
        }else if (preference ==mVibratorEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY12, value ? 1 : 0);
            return true;
        }else if (preference ==mCollapsePanels) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY13, value ? 1 : 0);
            return true;
        } else if (preference == mClockClick) {
            String str= KEY14;
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
        }
        return false;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
    private String mString;
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
                KEY2, 0);
        int mNavRingLong2 = Settings.System.getInt(mContext.getContentResolver(),
                KEY3, 0);

        if (mNavRingLong==1) {
            getPreferenceScreen().addPreference(mClockChinaDetailSyle);
            getPreferenceScreen().addPreference(mClockChinaDetailSymbol);
            getPreferenceScreen().addPreference(mClockDetaiZoom);
            getPreferenceScreen().addPreference(mClockZoomScale);

        }else {
            getPreferenceScreen().removePreference(mClockChinaDetailSyle);
            getPreferenceScreen().removePreference(mClockChinaDetailSymbol);
            getPreferenceScreen().removePreference(mClockDetaiZoom);
            getPreferenceScreen().removePreference(mClockZoomScale);
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
        if (isChineseLanguage()) {
            if(DonatePermission()){
                mChinaTime .setEnabled(true);
            }else {
                mChinaTime .setEnabled(false);
            }
            mActionEnabled .setEnabled(true);
        }else {
            mActionEnabled .setEnabled(false);
            mChinaTime .setEnabled(false);
        }
    }
}
