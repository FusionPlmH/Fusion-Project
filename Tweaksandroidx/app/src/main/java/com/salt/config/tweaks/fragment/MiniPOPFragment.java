package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltInfoPreference;
import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSettingCategoryPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;

public class MiniPOPFragment  extends SaltPreferenceFragmentCompat
        implements Preference.OnPreferenceChangeListener {
    public SaltListPreference mUP,mDown,mLeft,mRight;
    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mUP.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mDown.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mLeft.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mRight.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mLevel.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mVibrator.getKey()).setEnabled(findPreferenceEnabled);
    }



    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }
    private SaltSeekBarPreference mLevel;
    private SaltSwitchPreference mMiniPoPDisplay,mVibrator;
    private static final String KEY0 = LEO_PREFE+"qs_minipop";
    private static final String KEY =KEY0+"_enabled";
    private static final String KEY4 = KEY0+"_vibrator";
    private static final String KEY5 = KEY0+"_vibrator_level";
    private static final String KEY7 = KEY0+"_back_action";
    private static final String KEY8 = KEY0+"_home_action";
    private static final String KEY9 =KEY0+"_recent_action";
    private static final String KEY10 = KEY0+"_flashlight_action";
    public SaltSettingCategoryPreference mColor, mColor2;
    public SaltInfoPreference mWarning;

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_minipop_gesture)));
        if (preference == mUP) {
            String key2=KEY7;
            Picker( mUP,newValue,key2);
            return true;
        }else if (preference ==mDown) {
            String key2=KEY8;
            Picker(mDown,newValue,key2);
            return true;
        }else if (preference == mLeft) {
            String key=KEY9;
            Picker(mLeft,newValue,key);
            return true;
        }else if (preference ==mRight) {
            String key=KEY10;
            Picker(mRight,newValue,key);
            return true;
        }else if (preference == mLevel) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getContentResolver(),
                    KEY5, width);
            return true;
        }else if (preference ==mVibrator) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    KEY4, value ? 1 : 0);
            return true;
        }else if (preference ==mMiniPoPDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    KEY, value ? 1 : 0);
            disableHelp();
            return true;
        }
        return true;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.minipop_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        final ContentResolver resolver = getActivity().getContentResolver();
        mWarning= (SaltInfoPreference)findPreference("minipoparning");
       // mWarning.setWarningSetting("屏幕助手:点击可移动位置,长按滑动可展开屏幕助手子菜单");
        mColor = (SaltSettingCategoryPreference) findPreference("minipopDlay");
        mColor2 = (SaltSettingCategoryPreference) findPreference("minipoptionlay");
        mUP= (SaltListPreference) findPreference("minipopbc");
        int BixbyOnLongPress = Settings.System.getInt(resolver,
                KEY7, 0);
        mUP.setValue(String.valueOf(BixbyOnLongPress));
        mUP.setSummary(mUP.getEntry());
        mUP.setOnPreferenceChangeListener(this);

        mDown = (SaltListPreference) findPreference("minipopho");
        int BixbyOnKeyguardClick = Settings.System.getInt(resolver,
                KEY8, 0);
        mDown.setValue(String.valueOf(BixbyOnKeyguardClick));
        mDown.setSummary(mDown.getEntry());
        mDown.setOnPreferenceChangeListener(this);
        mLeft= (SaltListPreference) findPreference("minipopre");
        int BixbyOnKeyguardLongPress = Settings.System.getInt(resolver,
                KEY9, 0);
        mLeft.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mLeft.setSummary(mLeft.getEntry());
        mLeft.setOnPreferenceChangeListener(this);
        mRight= (SaltListPreference) findPreference("minipopfla");
        int Right = Settings.System.getInt(resolver,
                KEY10, 0);
        mRight.setValue(String.valueOf(Right));
        mRight.setSummary(mRight.getEntry());
        mRight.setOnPreferenceChangeListener(this);

        mLevel = (SaltSeekBarPreference) findPreference("minipopLevel");
        int Level= Settings.System.getInt(resolver,
                KEY5, 15);
        mLevel.setValue(Level);
        mLevel.setOnPreferenceChangeListener(this);

        mVibrator= (SaltSwitchPreference) findPreference("minipopVibrator");
        mVibrator.setChecked((Settings.System.getInt(resolver,
                KEY4, 0) == 1));
        mVibrator.setOnPreferenceChangeListener(this);

        mMiniPoPDisplay= (SaltSwitchPreference) findPreference("minipopDisplay");
        mMiniPoPDisplay.setChecked((Settings.System.getInt(resolver,
                KEY, 0) == 1));
        mMiniPoPDisplay.setOnPreferenceChangeListener(this);
        disableHelp();
    }



    public void disableHelp(){
        if ((Settings.System.getInt(getContentResolver(),
                KEY, 0) == 1)) {
            getPreferenceScreen().addPreference(mWarning);
        }else  {
            getPreferenceScreen().removePreference(mWarning);
        }
    }



}
