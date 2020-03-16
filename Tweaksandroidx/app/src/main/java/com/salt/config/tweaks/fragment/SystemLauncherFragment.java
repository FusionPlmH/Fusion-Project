package com.salt.config.tweaks.fragment;


import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.provider.Settings;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltInfoPreference;
import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSettingCategoryPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.BuildSecuritycheck;
import static com.salt.utils.SaltProper.BuildVERSIONCODES;
import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;


public  class SystemLauncherFragment extends SaltPreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {
    private SaltInfoPreference mOneUI1,mOneUI2;
    private SaltSwitchPreference mSlidingEnabled,mDoubleEnabled;
    public SaltListPreference mTop,mBottom,mDouble;
    public static final String TOPKEY="leo_salt_launcher_gesture_sliding_top";
    public static final String      BottomKEY="leo_salt_launcher_gesture_sliding_bottom";
    public static final String   DoubleKEY="leo_salt_launcher_gesture_double_style";
    private SaltSettingCategoryPreference mHomeGesture;
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference ==mTop) {
            String key=TOPKEY;
            Picker(mTop,newValue,key);
            return true;
        }else if (preference ==mBottom) {
            String key2=BottomKEY;
            Picker(mBottom,newValue,key2);
            return true;
        }else if (preference == mDouble) {
            String mStr = DoubleKEY;
            Picker(mBottom,newValue,mStr);
            return true;
        }else if (preference ==mSlidingEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_salt_launcher_gesture_sliding_enabled", value ? 1 : 0);
            dasdasd();
            return true;
        }else if (preference == mDoubleEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_salt_launcher_gesture_double_enabled", value ? 1 : 0);
            dasdasd();
            return true;
        }
        return true;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.launcher_gestures_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mDoubleEnabled= (SaltSwitchPreference)findPreference("DoubleEnabled");
        mDoubleEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                "leo_salt_launcher_gesture_double_enabled", 0) == 1));
        mDoubleEnabled.setOnPreferenceChangeListener(this);
        mOneUI2= (SaltInfoPreference)findPreference("launcher_warning10");
        mOneUI1= (SaltInfoPreference)findPreference("launcher_warning9");
        mTop = (SaltListPreference) findPreference("sliding_top");
        int top = Settings.System.getInt(getContentResolver(),
                TOPKEY, 0);
        mTop.setValue(String.valueOf(top));
        mTop.setSummary( mTop.getEntry());
        mTop.setOnPreferenceChangeListener(this);
        mBottom = (SaltListPreference) findPreference("sliding_bottom");
        int Bottom = Settings.System.getInt(getContentResolver(),
                BottomKEY, 0);
        mBottom.setValue(String.valueOf(Bottom));
        mBottom.setSummary( mBottom.getEntry());
        mBottom.setOnPreferenceChangeListener(this);

        mDouble = (SaltListPreference) findPreference("gesture_double");
        int Double = Settings.System.getInt(getContentResolver(),
                DoubleKEY, 0);
        mDouble.setValue(String.valueOf(Double));
        mDouble.setSummary(mDouble.getEntry());
        mDouble.setOnPreferenceChangeListener(this);
        setHasOptionsMenu(true);
        mSlidingEnabled= (SaltSwitchPreference)findPreference("sliding_enabled");
        mSlidingEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                "leo_salt_launcher_gesture_sliding_enabled", 0) == 1));
        mSlidingEnabled.setOnPreferenceChangeListener(this);
        dasdasd();
    }

    private void dasdasd(){
        if(Settings.System.getInt(getContentResolver(),
                "leo_salt_launcher_gesture_sliding_enabled", 0) == 1){
            if ( BuildVERSIONCODES()) {
                getPreferenceScreen().addPreference(mOneUI2);
            }else {
                getPreferenceScreen().addPreference(mOneUI1);
            }
        }else {
            getPreferenceScreen().removePreference(mOneUI1);
            getPreferenceScreen().removePreference(mOneUI2);
        }
    }

    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mSlidingEnabled.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference( mDoubleEnabled.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("launcher_gesture_double_vibrator_enabled").setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }



}
