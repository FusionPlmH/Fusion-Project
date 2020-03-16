package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltColorPickerPreference;
import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getColorInt;
import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;

public class PulldownSaltBarFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener{
    private SaltSwitchPreference mSaltBarEnabled,mSaltBarEndEnabled,mSaltBarStartEnabled,mSaltBarStartCollapsePanel,mSaltBarEndCollapsePanel,mSaltBarColorEnabled,mSaltBarInfoEnabled;
    private SaltListPreference mSaltBarEndAction,mSaltBarStartAction,mSaltBarInfoStyle,mSaltBarInfoFont;
    private SaltSeekBarPreference mSaltBarInfoSize;
    private SaltColorPickerPreference mSaltBarEndActionColor,mSaltBarStartActionColor,mSaltBarInfoColor;
    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mSaltBarEnabled.getKey()).setEnabled(findPreferenceEnabled);
      //  getPreferenceManager().findPreference(mSaltBarEnabled.getKey()).setEnabled(findPreferenceEnabled);
      //  getPreferenceManager().findPreference(mSaltBarEnabled.getKey()).setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }
    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.pulldown_saltbar_prefs;
    }
    private static final String KEYdefault=defaultKey+"qsbar_";
    private static final String KEYSaltBarEnabled=KEYdefault+"enabled";
    private static final String KEYSaltBarEndEnabled=KEYdefault+"end_enabled";
    private static final String KEYSaltBarStartEnabled=KEYdefault+"start_enabled";
    private static final String KEYSaltBarEndCollapsePanel=KEYdefault+"start_collapsepanel";
    private static final String KEYSaltBarStartCollapsePanel=KEYdefault+"end_collapsepanel";
    private static final String KEYSaltBarInfoEnabled=defaultKey+"device_info_qsbar_enabled";
    private static final String KEYSaltBarInfoSize=defaultKey+"device_info_qsbar_size";
    private static final String KEYSaltBarInfoStyle=defaultKey+"device_info_qsbar_style";
    private static final String KEYSaltBarInfoFont=defaultKey+"device_info_qsbar_font";
    private static final String KEYSaltBarEndAction=KEYdefault+"end_action";
    private static final String KEYSaltBarStartAction=KEYdefault+"start_action";
    private static final String KEYSaltBarColorEnabled=KEYdefault+"color_enabled";
    private static final String KEYSaltBarEndActionColor=KEYdefault+"end_color";
    private static final String KEYSaltBarStartActionColor=KEYdefault+"start_color";
    private static final String KEYSaltBarInfoColor=defaultKey+"device_info_qsbar_color";
    @Override
    protected void getSaltCreatePreferences() {
        mSaltBarEnabled=(SaltSwitchPreference) findPreference("SaltBarEnabled");
        mSaltBarEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                KEYSaltBarEnabled, 1) == 1));
        mSaltBarEnabled.setOnPreferenceChangeListener(this);

        mSaltBarEndEnabled=(SaltSwitchPreference) findPreference("SaltBarEndEnabled");
        mSaltBarEndEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                KEYSaltBarEndEnabled, 1) == 1));
        mSaltBarEndEnabled.setOnPreferenceChangeListener(this);

        mSaltBarStartEnabled=(SaltSwitchPreference) findPreference("SaltBarStartEnabled");
        mSaltBarStartEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                KEYSaltBarStartEnabled, 1) == 1));
        mSaltBarStartEnabled.setOnPreferenceChangeListener(this);

        mSaltBarStartCollapsePanel=(SaltSwitchPreference) findPreference("SaltBarStartCollapsePanel");
        mSaltBarStartCollapsePanel.setChecked((Settings.System.getInt(getContentResolver(),
                KEYSaltBarStartCollapsePanel, 1) == 1));
        mSaltBarStartCollapsePanel.setOnPreferenceChangeListener(this);

        mSaltBarEndCollapsePanel=(SaltSwitchPreference) findPreference("SaltBarEndCollapsePanel");
        mSaltBarEndCollapsePanel.setChecked((Settings.System.getInt(getContentResolver(),
                KEYSaltBarEndCollapsePanel, 1) == 1));
        mSaltBarEndCollapsePanel.setOnPreferenceChangeListener(this);

        mSaltBarInfoEnabled=(SaltSwitchPreference) findPreference("SaltBarInfoEnabled");
        mSaltBarInfoEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                KEYSaltBarInfoEnabled, 1) == 1));
        mSaltBarInfoEnabled.setOnPreferenceChangeListener(this);

        mSaltBarInfoSize=(SaltSeekBarPreference) findPreference("SaltBarInfoSize");
        int SaltBarInfoSize = Settings.System.getInt(getContentResolver(),
                KEYSaltBarInfoSize, 14);
        mSaltBarInfoSize.setValue(SaltBarInfoSize);
        mSaltBarInfoSize.setOnPreferenceChangeListener(this);

        mSaltBarInfoStyle = (SaltListPreference) findPreference("SaltBarInfoStyle");
        int SaltBarInfoStyle= Settings.System.getInt(getContentResolver(),
                KEYSaltBarInfoStyle, 0);
        mSaltBarInfoStyle.setValue(String.valueOf(SaltBarInfoStyle));
        mSaltBarInfoStyle.setSummary(mSaltBarInfoStyle.getEntry());
        mSaltBarInfoStyle.setOnPreferenceChangeListener(this);

        mSaltBarInfoFont = (SaltListPreference) findPreference("SaltBarInfoFont");
        int SaltBarInfoFont= Settings.System.getInt(getContentResolver(),
                KEYSaltBarInfoFont, 4);
        mSaltBarInfoFont.setValue(String.valueOf(SaltBarInfoFont));
        mSaltBarInfoFont.setSummary(mSaltBarInfoFont.getEntry());
        mSaltBarInfoFont.setOnPreferenceChangeListener(this);

        mSaltBarEndAction = (SaltListPreference) findPreference("SaltBarEndAction");
        int SaltBarEndAction= Settings.System.getInt(getContentResolver(),
                KEYSaltBarEndAction, 0);
        mSaltBarEndAction.setValue(String.valueOf(SaltBarEndAction));
        mSaltBarEndAction.setSummary(mSaltBarEndAction.getEntry());
        mSaltBarEndAction.setOnPreferenceChangeListener(this);

        mSaltBarStartAction = (SaltListPreference) findPreference("SaltBarStartAction");
        int SaltBarStartAction= Settings.System.getInt(getContentResolver(),
                KEYSaltBarStartAction, 1);
        mSaltBarStartAction.setValue(String.valueOf(SaltBarStartAction));
        mSaltBarStartAction.setSummary(mSaltBarStartAction.getEntry());
        mSaltBarStartAction.setOnPreferenceChangeListener(this);

        mSaltBarColorEnabled=(SaltSwitchPreference) findPreference("SaltBarColorEnabled");
        mSaltBarColorEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                KEYSaltBarColorEnabled, 0) == 1));

        mSaltBarColorEnabled.setOnPreferenceChangeListener(this);
        mSaltBarEndActionColor = (SaltColorPickerPreference) findPreference("SaltBarEndActionColor");
        mSaltBarEndActionColor.setValue(Settings.System.getInt(getContentResolver(),
                KEYSaltBarEndActionColor, getColorInt(R.color.qsbar_color)));
        mSaltBarEndActionColor.setOnPreferenceChangeListener(this);

        mSaltBarStartActionColor = (SaltColorPickerPreference) findPreference("SaltBarStartActionColor");
        mSaltBarStartActionColor.setValue(Settings.System.getInt(getContentResolver(),
                KEYSaltBarStartActionColor, getColorInt(R.color.qsbar_color)));
        mSaltBarStartActionColor.setOnPreferenceChangeListener(this);

        mSaltBarInfoColor = (SaltColorPickerPreference) findPreference("SaltBarInfoColor");
        mSaltBarInfoColor.setValue(Settings.System.getInt(getContentResolver(),
                KEYSaltBarInfoColor, getColorInt(R.color.qsbar_color)));
        mSaltBarInfoColor.setOnPreferenceChangeListener(this);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_qs_bar_salt)));
        ContentResolver resolver = getContentResolver();
        if (preference ==mSaltBarEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEYSaltBarEnabled, value ? 1 : 0);
            return true;
        }else if (preference ==mSaltBarEndEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEYSaltBarEndEnabled, value ? 1 : 0);
            return true;
        }else if (preference ==mSaltBarStartEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEYSaltBarStartEnabled, value ? 1 : 0);
            return true;
        }else if (preference ==mSaltBarStartCollapsePanel) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEYSaltBarStartCollapsePanel, value ? 1 : 0);
            return true;
        }else if (preference == mSaltBarEndCollapsePanel) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEYSaltBarEndCollapsePanel, value ? 1 : 0);
            return true;
        }else if (preference ==mSaltBarInfoEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEYSaltBarInfoEnabled, value ? 1 : 0);
            return true;
        }else if (preference ==mSaltBarInfoSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEYSaltBarInfoSize, width);
            return true;
        }else if (preference ==mSaltBarInfoStyle) {
            int val = Integer.parseInt((String) newValue);
            int index = mSaltBarInfoStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEYSaltBarInfoStyle, val);
            mSaltBarInfoStyle.setSummary(mSaltBarInfoStyle.getEntries()[index]);
            return true;
        }else if (preference ==mSaltBarInfoFont) {
            int val = Integer.parseInt((String) newValue);
            int index = mSaltBarInfoFont.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEYSaltBarInfoFont, val);
            mSaltBarInfoFont.setSummary(mSaltBarInfoFont.getEntries()[index]);
            return true;
        }else if (preference ==mSaltBarEndAction) {
            Picker(mSaltBarEndAction,newValue,KEYSaltBarEndAction);
            return true;
        }else if (preference ==mSaltBarStartAction) {
            Picker(mSaltBarStartAction,newValue,KEYSaltBarStartAction);
            return true;
        }else if (preference == mSaltBarColorEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEYSaltBarColorEnabled, value ? 1 : 0);
            return true;
        }else if (preference ==mSaltBarEndActionColor) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEYSaltBarEndActionColor, width);
            return true;
        }else if (preference ==mSaltBarStartActionColor) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEYSaltBarStartActionColor, width);
            return true;
        }else if (preference ==mSaltBarInfoColor) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEYSaltBarInfoColor, width);
            return true;
        }else{
            return false;
        }

    }

    public void Picker(SaltListPreference preference,Object newValue,final String  mStr){
        if(newValue.equals("88")){
            launchAppPicker(mStr);
        }
        int location = Integer.valueOf((String) newValue);
        int index =preference.findIndexOfValue((String) newValue);
        Settings.System.putInt(getActivity().getContentResolver(),
                mStr, location);
        preference.setSummary(preference.getEntries()[index]);
    }
}
