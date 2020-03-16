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


public class StatusBarActionFragment extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceChangeListener {

    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference(mStatusBarGestureLongPress.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mStatusBarGestureLeftSlide.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mStatusBarGestureRightSlide.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mLeft.getKey()).setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference(mRight.getKey()).setEnabled(findPreferenceEnabled);
    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }
    private SaltSwitchPreference mStatusBarSlideGestureEnabled,mStatusBarLongPressGestureEnabled,mStatusBarGestureVibratorEnable,mLeftEnabled,mRightEnabled;
    private SaltListPreference mStatusBarGestureLongPress,mStatusBarGestureLeftSlide,mStatusBarGestureRightSlide,mLeft,mRight;
    private SaltSeekBarPreference mVibratorLevel;
    private SaltColorPickerPreference mSaltLeftColor,mSaltRightColor;
    private static final String STATUSBAR_GESTURE= "leo_salt_statusbar_gesture";
    private static final String SLIDE= STATUSBAR_GESTURE+"_slide_enabled";
    private static final String LONGPRESS= STATUSBAR_GESTURE+"_longPress_enabled";
    private static final String VIBRATOR= STATUSBAR_GESTURE+"_vibrator";
    private static final String LEFTSLIDE= STATUSBAR_GESTURE+"_leftslide_action_style";
    private static final String RIGHTSLIDE= STATUSBAR_GESTURE+"_rightslide_action_style";
    private static final String LONGP= STATUSBAR_GESTURE+"_longPress_action_style";
    private static final String VIBRATORLEVEL= STATUSBAR_GESTURE+"_vibrator_level";
    private static final String LeftEnabled= STATUSBAR_GESTURE+"_left_enabled";
    private static final String RightEnabled= STATUSBAR_GESTURE+"_right_enabled";
    private static final String LeftEnabledStle= STATUSBAR_GESTURE+"_left_action";
    private static final String RightEnabledStyle= STATUSBAR_GESTURE+"_right_action";
    private static final String LeftEnabledColor= STATUSBAR_GESTURE+"_left_color";
    private static final String RightEnabledColor= STATUSBAR_GESTURE+"_right_color";
    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_stausbar_gesture)));
        ContentResolver resolver = getContentResolver();
        if (preference == mStatusBarSlideGestureEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    SLIDE, value ? 1 : 0);
            return true;
        }else if (preference ==mStatusBarLongPressGestureEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    LONGPRESS, value ? 1 : 0);
            return true;
        }else if (preference == mStatusBarGestureVibratorEnable) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    VIBRATOR, value ? 1 : 0);
            return true;
        }else if (preference ==mStatusBarGestureLongPress) {
            Picker(mStatusBarGestureLongPress,newValue,LONGP);
            return true;
        }else if (preference ==mStatusBarGestureLeftSlide) {
            Picker(mStatusBarGestureLeftSlide,newValue,LEFTSLIDE);
            return true;
        }else if (preference ==mStatusBarGestureRightSlide) {
            Picker(mStatusBarGestureRightSlide,newValue,RIGHTSLIDE);
            return true;
        }else if (preference ==mVibratorLevel) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    VIBRATORLEVEL, width);
            return true;
        }else if (preference ==mLeftEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    LeftEnabled, value ? 1 : 0);
            return true;
        }else if (preference ==mRightEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    RightEnabled, value ? 1 : 0);
            return true;
        }else if (preference ==mLeft) {
            Picker(mLeft,newValue,LeftEnabledStle);
            return true;
        }else if (preference ==mRight) {
            Picker(mRight,newValue,RightEnabledStyle);
            return true;
        }else if (preference ==mSaltLeftColor) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    LeftEnabledColor, width);
            return true;
        }else if (preference ==mSaltRightColor) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    RightEnabledColor, width);
            return true;
        }else{
            return false;
        }

    }
    public void Picker(SaltListPreference preference,Object newValue,final String  mStr){
        if(newValue.equals("88")){
            launchAppPicker(mStr);
        }else if(newValue.equals("99")){
            pickShortcut(mStr+"_short");
        }
        int location = Integer.valueOf((String) newValue);
        int index =preference.findIndexOfValue((String) newValue);
        Settings.System.putInt(getActivity().getContentResolver(),
                mStr, location);
        preference.setSummary(preference.getEntries()[index]);
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.statusbar_gesture_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mStatusBarSlideGestureEnabled = (SaltSwitchPreference) findPreference("slide_enabled");
        mStatusBarSlideGestureEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                SLIDE, 0) == 1));
        mStatusBarSlideGestureEnabled.setOnPreferenceChangeListener(this);
        mStatusBarLongPressGestureEnabled = (SaltSwitchPreference) findPreference("longPress_enabled");
        mStatusBarLongPressGestureEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                LONGPRESS, 0) == 1));
        mStatusBarLongPressGestureEnabled.setOnPreferenceChangeListener(this);
        mStatusBarGestureVibratorEnable= (SaltSwitchPreference) findPreference("vibrator_enabled");
        mStatusBarGestureVibratorEnable.setChecked((Settings.System.getInt(getContentResolver(),
                VIBRATOR, 0) == 1));
        mStatusBarGestureVibratorEnable.setOnPreferenceChangeListener(this);
        mStatusBarGestureLongPress = (SaltListPreference) findPreference("LongPress");
        int BixbyOnClick = Settings.System.getInt(getContentResolver(),
                LONGP, 200);
        mStatusBarGestureLongPress.setValue(String.valueOf(BixbyOnClick));
        mStatusBarGestureLongPress.setSummary(mStatusBarGestureLongPress.getEntry());
        mStatusBarGestureLongPress.setOnPreferenceChangeListener(this);
        mStatusBarGestureLeftSlide = (SaltListPreference) findPreference("LeftSlide");
        int BixbyLeftSlide = Settings.System.getInt(getContentResolver(),
                LEFTSLIDE, 201);
        mStatusBarGestureLeftSlide.setValue(String.valueOf(BixbyLeftSlide));
        mStatusBarGestureLeftSlide.setSummary(mStatusBarGestureLeftSlide.getEntry());
        mStatusBarGestureLeftSlide.setOnPreferenceChangeListener(this);

        mStatusBarGestureRightSlide = (SaltListPreference) findPreference("RightSlide");
        int RightSlide = Settings.System.getInt(getContentResolver(),
                RIGHTSLIDE, 202);
        mStatusBarGestureRightSlide.setValue(String.valueOf(RightSlide));
        mStatusBarGestureRightSlide.setSummary(mStatusBarGestureRightSlide.getEntry());
        mStatusBarGestureRightSlide.setOnPreferenceChangeListener(this);
        mVibratorLevel = (SaltSeekBarPreference) findPreference("vibrator_level");
        int clockEndPadding = Settings.System.getInt(getContentResolver(),
                VIBRATORLEVEL, 15);
        mVibratorLevel.setValue(clockEndPadding);
        mVibratorLevel.setOnPreferenceChangeListener(this);
        mLeftEnabled = (SaltSwitchPreference) findPreference("LeftEnabled");
        mLeftEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                LeftEnabled, 0) == 1));
        mLeftEnabled.setOnPreferenceChangeListener(this);
        mRightEnabled = (SaltSwitchPreference) findPreference("RightEnabled");
        mRightEnabled.setChecked((Settings.System.getInt(getContentResolver(),
                RightEnabled, 0) == 1));
        mRightEnabled.setOnPreferenceChangeListener(this);

        mLeft = (SaltListPreference) findPreference("LeftStyle");
        int Left = Settings.System.getInt(getContentResolver(),
                LeftEnabledStle, 202);
        mLeft.setValue(String.valueOf(Left));
        mLeft.setSummary(mLeft.getEntry());
        mLeft.setOnPreferenceChangeListener(this);

        mRight = (SaltListPreference) findPreference("RightStyle");
        int Right = Settings.System.getInt(getContentResolver(),
                RightEnabledStyle, 203);
        mRight.setValue(String.valueOf(Right));
        mRight.setSummary(mRight.getEntry());
        mRight.setOnPreferenceChangeListener(this);
        mSaltLeftColor = (SaltColorPickerPreference) findPreference("SaltLeftColor");
        mSaltLeftColor.setValue(Settings.System.getInt(getContentResolver(),
                LeftEnabledColor, -2138869761));
        mSaltLeftColor.setOnPreferenceChangeListener(this);
        mSaltRightColor = (SaltColorPickerPreference) findPreference("SaltRightColor");
        mSaltRightColor.setValue(Settings.System.getInt(getContentResolver(),
                RightEnabledColor, -2138869761));
        mSaltRightColor.setOnPreferenceChangeListener(this);
    }

}
