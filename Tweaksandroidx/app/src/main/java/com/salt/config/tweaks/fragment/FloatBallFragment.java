package com.salt.config.tweaks.fragment;


import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.provider.Settings;

import androidx.preference.Preference;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;

import org.salt.preference.SaltIconListPreference;
import org.salt.preference.SaltInfoPreference;
import org.salt.preference.SaltListPreference;
import org.salt.preference.SaltSeekBarPreference;
import org.salt.preference.SaltSettingCategoryPreference;
import org.salt.preference.SaltSwitchPreference;

import static com.salt.frame.LeadFrame.getStringIdentifier;

import static com.salt.utils.SaltProper.BuildSecuritycheck;
import static com.salt.utils.SaltProper.disableSnackn;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getCustomArray;

public class FloatBallFragment  extends SaltPreferenceFragmentCompat
        implements Preference.OnPreferenceChangeListener {
    public SaltListPreference mClick,mUP,mDown,mLeft,mRight;
    @Override
    protected void getSaltPreferenceEnabled() {
        getPreferenceManager().findPreference("qs_floatball_style").setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("Ballsize").setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("BallConceal").setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("BallVibrator").setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("floclick").setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("BallUP").setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("BallDown").setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("BallLeft").setEnabled(findPreferenceEnabled);
        getPreferenceManager().findPreference("BallRight").setEnabled(findPreferenceEnabled);
    }


    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return disableSnackn;
    }

    private SaltIconListPreference mFloatBallPreference;
    private SaltSeekBarPreference mSize,mLevel;
    private SaltSwitchPreference mFloatBallDisplay,mVibrator,mConceal;
    private static final String KEY0 = LEO_PREFE+"qs_floatball";
    private static final String KEY =KEY0+"_enabled";
    private static final String KEY1 = KEY0+"_remove_enabled";

    private static final String KEY3 = KEY0+"_size";
    private static final String KEY4 = KEY0+"_vibrator";
    private static final String KEY5 = KEY0+"_vibrator_level";
    private static final String KEY6 = KEY0+"_onclick_action";
    private static final String KEY7 = KEY0+"_up_action";
    private static final String KEY8 = KEY0+"_down_action";
    private static final String KEY9 =KEY0+"_left_action";
    private static final String KEY10 = KEY0+"_right_action";
    public SaltSettingCategoryPreference mColor, mColor2;
    public SaltInfoPreference mWarning;

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        getActivity().sendBroadcast(new Intent(getApksStringInt(R.string.broadcast_folat_gesture)));
        if (preference ==  mClick) {
            String key=KEY6;
            Picker(mClick,newValue,key);
            return true;
        }else if (preference == mUP) {
            String key2=KEY7;
            Picker(mUP,newValue,key2);
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
        }else if (preference ==mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(getContentResolver(),
                    KEY3, width);
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
        }else if (preference ==mConceal) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getContentResolver(),
                    KEY1, value ? 1 : 0);
            return true;
        }else if (preference ==mFloatBallDisplay) {
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
        return R.xml.floatball_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {
        mWarning= (SaltInfoPreference)findPreference("Ballarning");
       // mWarning.setWarningSetting("悬浮球支持:点击 ↑上滑↓下滑←左滑→右滑 下滑3ms则隐藏悬浮球(需开启此功能) 长按悬浮球可移动悬浮球位置");
        mColor = (SaltSettingCategoryPreference) findPreference("BallibratoDisplay");
        mColor2 = (SaltSettingCategoryPreference) findPreference("Ballactionlay");
        mFloatBallPreference =(SaltIconListPreference) findPreference("qs_floatball_style");
        mFloatBallPreference.setEntries(getCustomArray("floatball_entries"));
        mFloatBallPreference.setEntryValues(getCustomArray("floatball_values"));
        mFloatBallPreference.setDrawableArray(BallIcon );
        mFloatBallPreference.setSummary(getStringIdentifier(getActivity(),"icon_select"));
        mFloatBallPreference.setOnPreferenceChangeListener(this);
        mClick= (SaltListPreference) findPreference("floclick");
        int BixbyOnClick = Settings.System.getInt(getContentResolver(),
                KEY6, 0);
        mClick.setValue(String.valueOf(BixbyOnClick));
        mClick.setSummary(mClick.getEntry());
        mClick.setOnPreferenceChangeListener(this);
        mUP= (SaltListPreference) findPreference("BallUP");
        int BixbyOnLongPress = Settings.System.getInt(getContentResolver(),
                KEY7, 0);
        mUP.setValue(String.valueOf(BixbyOnLongPress));
        mUP.setSummary(mUP.getEntry());
        mUP.setOnPreferenceChangeListener(this);

        mDown = (SaltListPreference) findPreference("BallDown");
        int BixbyOnKeyguardClick = Settings.System.getInt(getContentResolver(),
                KEY8, 0);
        mDown.setValue(String.valueOf(BixbyOnKeyguardClick));
        mDown.setSummary(mDown.getEntry());
        mDown.setOnPreferenceChangeListener(this);
        mLeft= (SaltListPreference) findPreference("BallLeft");
        int BixbyOnKeyguardLongPress = Settings.System.getInt(getContentResolver(),
                KEY9, 0);
        mLeft.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mLeft.setSummary(mLeft.getEntry());
        mLeft.setOnPreferenceChangeListener(this);
        mRight= (SaltListPreference) findPreference("BallRight");
        int Right = Settings.System.getInt(getContentResolver(),
                KEY10, 0);
        mRight.setValue(String.valueOf(Right));
        mRight.setSummary(mRight.getEntry());
        mRight.setOnPreferenceChangeListener(this);

        mSize = (SaltSeekBarPreference) findPreference("Ballsize");
        int clockSize = Settings.System.getInt(getContentResolver(),
                KEY3, 10);
        mSize.setValue(clockSize / 1);

        mSize.setOnPreferenceChangeListener(this);
        mLevel = (SaltSeekBarPreference) findPreference("BallLevel");
        int Level= Settings.System.getInt(getContentResolver(),
                KEY5, 15);
        mLevel.setValue(Level);
        mLevel.setOnPreferenceChangeListener(this);

        mVibrator= (SaltSwitchPreference) findPreference("BallVibrator");
        mVibrator.setChecked((Settings.System.getInt(getContentResolver(),
                KEY4, 0) == 1));
        mVibrator.setOnPreferenceChangeListener(this);
        mConceal= (SaltSwitchPreference) findPreference("BallConceal");
        mConceal.setChecked((Settings.System.getInt(getContentResolver(),
                KEY1, 0) == 1));
        mConceal.setOnPreferenceChangeListener(this);

        mFloatBallDisplay= (SaltSwitchPreference) findPreference("BallDisplay");
        mFloatBallDisplay.setChecked((Settings.System.getInt(getContentResolver(),
                KEY, 0) == 1));
        mFloatBallDisplay.setOnPreferenceChangeListener(this);
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



    public  Drawable[] BallIcon = {CustomDrawable("tw_leo_tweaks"),
            CustomDrawable("ball_1"),
            CustomDrawable("ball_2"),
            CustomDrawable("ball_3"),
            CustomDrawable("ball_4"),
            CustomDrawable("ball_6"),
            CustomDrawable("ball_0"),
            CustomDrawable("ball_7"),
            CustomDrawable("ball_8"),
            CustomDrawable("ball_9"),
            CustomDrawable("ball_10"),
            CustomDrawable("ball_11"),
            CustomDrawable("ball_12"),
            CustomDrawable("ball_14"),
            CustomDrawable("ball_15"),
            CustomDrawable("ball_16"),
            CustomDrawable("ball_17"),
            CustomDrawable("ball_18"),

    };


}
