package com.salt.config.tweaks.fragment;


import android.content.Intent;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSettingCategoryPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.BuildVERSIONCODES;


public class NavigationBarFragment  extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    public SaltSwitchPreference mHome;
    private static final String KEY= "leo_salt_navbar_gesture";
    private static final String mNavGestureEnabled_KEY= KEY+"_enabled";
    private static final String mNavGestureStley_KEY= KEY+"_style";
    private static final String VIBRATOR= KEY+"_vibrator";
    private static final String VIBRATORLEVEL= KEY+"_vibrator_level";
    private SaltSwitchPreference mNavGestureEnabled,mNavGestureVibratorEnabled;
    private SaltListPreference mNavGestureStle;
    private SaltSeekBarPreference mVibratorLevel;
    private SaltSettingCategoryPreference mNavHeight,mNavGesture,mHomeSetting;


    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.navigationbar_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mNavGestureEnabled= (SaltSwitchPreference) findPreference("navActionenabled");
        mNavGestureEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                mNavGestureEnabled_KEY, 0) == 1));
        mNavGestureEnabled.setOnPreferenceChangeListener(this);
        mNavGestureVibratorEnabled= (SaltSwitchPreference) findPreference("navActionvibratornaenabled");
        mNavGestureVibratorEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                VIBRATOR, 0) == 1));
        mNavGestureVibratorEnabled.setOnPreferenceChangeListener(this);
        mNavGestureStle = (SaltListPreference) findPreference("navActionSTYLE");
        int Left = Settings.System.getInt(getContentResolver(),
                mNavGestureStley_KEY, 0);
        mNavGestureStle.setValue(String.valueOf(Left));
        mNavGestureStle.setSummary( mNavGestureStle.getEntry());
        mNavGestureStle.setOnPreferenceChangeListener(this);
        mVibratorLevel = (SaltSeekBarPreference) findPreference("vibratornavlevel");
        int clockEndPadding = Settings.System.getInt(getContentResolver(),
                VIBRATORLEVEL, 15);
        mVibratorLevel.setValue(clockEndPadding);
        mVibratorLevel.setOnPreferenceChangeListener(this);

        mHome= (SaltSwitchPreference) findPreference("icon_text");
        mHome.setChecked(Settings.System.getInt(getContentResolver(),
                "leo_salt_launcher_icon_text_enabled", 0) == 1);
        mHome.setOnPreferenceChangeListener(this);
        mNavHeight= (SaltSettingCategoryPreference) findPreference("nav_height");
        //  mNavGesture= (SaltSettingCategoryPreference) findPreference("navaction");
        mHomeSetting= (SaltSettingCategoryPreference) findPreference("launcher_setting");
        if (BuildVERSIONCODES()) {
            getPreferenceScreen().removePreference(mNavHeight);
            getPreferenceScreen().removePreference(mHomeSetting);
        }else {
            getPreferenceScreen().removePreference(mNavHeight);
            getPreferenceScreen().removePreference(mHomeSetting);
        }

    }
    @Override
    protected void getSaltPreferenceEnabled() {

    }



    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getString(R.string.broadcast_nav_gesture)));
        if (preference == mHome) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_salt_launcher_icon_text_enabled", value ? 1 : 0);
            return true;
        }else if (preference == mNavGestureEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    mNavGestureEnabled_KEY, value ? 1 : 0);
            return true;
        }else if (preference ==  mNavGestureVibratorEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    VIBRATOR, value ? 1 : 0);
            return true;
        }else if (preference ==  mNavGestureStle) {
            Picker(mNavGestureStle,newValue,mNavGestureStley_KEY);
            return true;
        }else if (preference ==mVibratorLevel) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getContentResolver(),
                    VIBRATORLEVEL, width);
            return true;
        }
        return false;
    }
}
