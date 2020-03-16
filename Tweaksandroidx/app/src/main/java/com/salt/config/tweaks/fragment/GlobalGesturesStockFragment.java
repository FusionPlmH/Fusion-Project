package com.salt.config.tweaks.fragment;


import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Color;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltColorPickerPreference;
import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.utils.SaltProper.BuildSecuritycheck;
import static com.salt.utils.SaltProper.BuildVERSIONCODES;
import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;

public class GlobalGesturesStockFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {
    public SaltListPreference mBackGesture,mBackGestureLeft;
    public SaltSwitchPreference mEnabledBackGesture,mHideArrows,mHideFeedback,mEnabledArrowsColor;
    public SaltColorPickerPreference mArrowsColor;
    private static final String KEY="leo_salt_stock_globalgestures_backarrow";
    private static final String mEnabledBackGestureKEY=KEY+"_action_enabled";
    private static final String mBackGestureKEY=KEY+"_action";
    private static final String mBackGestureleftKEY=KEY+"_right_action";
    private static final String mHideArrowsKEY=KEY+"_enabled";
    private static final String mHideFeedbackKEY=KEY+"_vibrator";
    private static final String mEnabledArrowsColorKEY=KEY+"_color_enabled";;
    private static final String mArrowsColorKEY=KEY+"_color";
    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.global_gesture_stock_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        final ContentResolver resolver = getContentResolver();
        mBackGesture = (SaltListPreference) findPreference("BackGesture");
        int BixbyOnClick = Settings.System.getInt(resolver,
                mBackGestureKEY, 200);
        mBackGesture.setValue(String.valueOf(BixbyOnClick));
        mBackGesture.setSummary(mBackGesture.getEntry());
        mBackGesture.setOnPreferenceChangeListener(this);
        mBackGestureLeft= (SaltListPreference) findPreference("BackGestureLeft");
        int BixbyOnClickleft = Settings.System.getInt(resolver,
                mBackGestureleftKEY, 202);
        mBackGestureLeft.setValue(String.valueOf(BixbyOnClickleft));
        mBackGestureLeft.setSummary(mBackGestureLeft.getEntry());
        mBackGestureLeft.setOnPreferenceChangeListener(this);
        mEnabledBackGesture = (SaltSwitchPreference) findPreference("BackEnabledBackGesture");
        mEnabledBackGesture.setChecked((Settings.System.getInt(getContentResolver(),
                mEnabledBackGestureKEY, 0) == 1));
        mEnabledBackGesture.setOnPreferenceChangeListener(this);
        mHideArrows = (SaltSwitchPreference) findPreference("BackHideArrows");
        mHideArrows.setChecked((Settings.System.getInt(getContentResolver(),
                mHideArrowsKEY, 1) == 1));
        mHideArrows.setOnPreferenceChangeListener(this);
        mHideFeedback = (SaltSwitchPreference) findPreference("BackHideFeedback");
        mHideFeedback.setChecked((Settings.System.getInt(getContentResolver(),
                mHideFeedbackKEY, 1) == 1));
        mHideFeedback.setOnPreferenceChangeListener(this);

        mEnabledArrowsColor = (SaltSwitchPreference) findPreference("BackEnabledArrowsColor");
        mEnabledArrowsColor.setChecked((Settings.System.getInt(getContentResolver(),
                mEnabledArrowsColorKEY, 0) == 1));
        mEnabledArrowsColor.setOnPreferenceChangeListener(this);

        mArrowsColor = (SaltColorPickerPreference) findPreference("BackArrowsColor");
        mArrowsColor.setValue(Settings.System.getInt(getContentResolver(),
                mArrowsColorKEY, Color.GRAY));

        mArrowsColor.setOnPreferenceChangeListener(this);
    //    setSaltDonationCheck();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getString(R.string.broadcast_nav_gesture)));
        if (preference ==mBackGesture) {
            String key=mBackGestureKEY;
            Picker(mBackGesture,newValue,key);
            return true;
        }else if (preference ==mBackGestureLeft) {
            String key=mBackGestureleftKEY;
            Picker(mBackGestureLeft,newValue,key);
            return true;
        }else if (preference ==mEnabledBackGesture) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    mEnabledBackGestureKEY, value ? 1 : 0);
            return true;
        }else if (preference ==mHideArrows) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    mHideArrowsKEY, value ? 1 : 0);
            return true;
        }else if (preference ==mHideFeedback) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    mHideFeedbackKEY, value ? 1 : 0);
            return true;
        }else if (preference ==mEnabledArrowsColor) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    mEnabledArrowsColorKEY, value ? 1 : 0);
            return true;
        }else if (preference ==mArrowsColor) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getContentResolver(),
                    mArrowsColorKEY, width);
            return true;
        }
        return true;
    }


    @Override
    protected void getSaltPreferenceEnabled() {
       getPreferenceManager().findPreference(mEnabledBackGesture.getKey()).setEnabled(findPreferenceEnabled);
    }



    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }
}
