package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.BuildSecuritycheck;
import static com.salt.utils.SaltProper.BuildVERSIONCODES;
import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;


public class GlobalGesturesFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    public SaltListPreference mTop,mLeft,mRight,mBottom;
    private static final String TopkKEY = "leo_salt_global_finger_top_gestures";
    private static final String LeftKEY = "leo_salt_global_finger_left_gestures";
    private static final String RightKEY = "leo_salt_global_finger_right_gestures";
    private static final String BottomKEY = "leo_salt_global_finger_bottom_gestures";
    private static final String EnabledFingerGestureKEY = "leo_salt_global_finger_gestures_enable";
    public SaltSwitchPreference mEnabledFingerGesture;


    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.global_gesture_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        final ContentResolver resolver = getContentResolver();
        mEnabledFingerGesture = (SaltSwitchPreference) findPreference("EnabledFingerGesture");
        mEnabledFingerGesture.setChecked((Settings.System.getInt(getContentResolver(),
                EnabledFingerGestureKEY, 0) == 1));
        mEnabledFingerGesture.setOnPreferenceChangeListener(this);
        mTop = (SaltListPreference) findPreference("finger_top_gestures");
        int BixbyOnClick = Settings.System.getInt(resolver,
                TopkKEY, 0);
        mTop.setValue(String.valueOf(BixbyOnClick));
        mTop.setSummary( mTop.getEntry());
        mTop.setOnPreferenceChangeListener(this);
        mLeft = (SaltListPreference) findPreference("finger_left_gestures");
        int BixbyOnLongPress = Settings.System.getInt(resolver,
                LeftKEY , 0);
        mLeft.setValue(String.valueOf(BixbyOnLongPress));
        mLeft.setSummary(mLeft.getEntry());
        mLeft.setOnPreferenceChangeListener(this);

        mRight = (SaltListPreference) findPreference("finger_right_gestures");
        int BixbyOnKeyguardClick = Settings.System.getInt(resolver,
                RightKEY, 0);
        mRight.setValue(String.valueOf(BixbyOnKeyguardClick));
        mRight.setSummary( mRight.getEntry());
        mRight.setOnPreferenceChangeListener(this);
        mBottom = (SaltListPreference) findPreference("finger_bottom_gestures");
        int Bottom = Settings.System.getInt(resolver,
                BottomKEY, 0);
        mBottom.setValue(String.valueOf(Bottom));
        mBottom.setSummary(mBottom.getEntry());
        mBottom.setOnPreferenceChangeListener(this);


    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference ==mTop) {
            String key=TopkKEY;
            Picker(mTop,newValue,key);
            return true;
        }else if (preference ==mLeft) {
            String key2=LeftKEY;
            Picker(mLeft,newValue,key2);
            return true;
        }else if (preference ==  mRight) {
            String key2=RightKEY;
            Picker(mRight,newValue,key2);
            return true;
        }else if (preference == mBottom) {
            String key2=BottomKEY;
            Picker(mBottom,newValue,key2);
            return true;
        }else if (preference == mEnabledFingerGesture ) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    EnabledFingerGestureKEY, value ? 1 : 0);
            return true;
        }
        return true;
    }


    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mEnabledFingerGesture.getKey()).setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }
}
