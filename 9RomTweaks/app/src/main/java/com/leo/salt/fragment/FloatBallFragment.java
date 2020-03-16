package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;


import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;


import com.leo.salt.preference.SaltSettingCardWarningPreference;
import com.leo.salt.preference.SaltSettingCategoryPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.Blacklist;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;



public class FloatBallFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{
    public SaltSettingDefaultListPreference mClick,mUP,mDown,mLeft,mRight;
    private String mString;
    private SaltSettingIconListPreference mFloatBallPreference;
    private SaltSettingSeekBarPreference mSize,mLevel;
    private SaltSettingSwitchPreference mFloatBallDisplay,mVibrator,mConceal;
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
    public SaltSettingCardWarningPreference mWarning;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

        mContext = getActivity();
        BasePreferenceFragment( mContext , this, "floatball_prefs");
        final ContentResolver resolver = getActivity().getContentResolver();
        mWarning= (SaltSettingCardWarningPreference)findPreference("Ballarning");
        mWarning.setWarningSetting("悬浮球支持:点击 ↑上滑↓下滑←左滑→右滑 下滑3ms则隐藏悬浮球(需开启此功能) 长按悬浮球可移动悬浮球位置");
        mColor = (SaltSettingCategoryPreference) findPreference("BallibratoDisplay");
        mColor2 = (SaltSettingCategoryPreference) findPreference("Ballactionlay");
        mFloatBallPreference =(SaltSettingIconListPreference) findPreference("qs_floatball_style");
        mFloatBallPreference.setEntries(getCustomArray("floatball_entries"));
        mFloatBallPreference.setEntryValues(getCustomArray("floatball_values"));
        mFloatBallPreference.setDrawableArray(BallIcon );
        mFloatBallPreference.setSummary(getStringIdentifier(getContext(),"icon_select"));
        mFloatBallPreference.setOnPreferenceChangeListener(this);
        mClick= (SaltSettingDefaultListPreference) findPreference("floclick");
        int BixbyOnClick = Settings.System.getInt(resolver,
                KEY6, 0);
        mClick.setValue(String.valueOf(BixbyOnClick));
        mClick.setSummary(mClick.getEntry());
        mClick.setOnPreferenceChangeListener(this);
        mUP= (SaltSettingDefaultListPreference) findPreference("BallUP");
        int BixbyOnLongPress = Settings.System.getInt(resolver,
                KEY7, 0);
        mUP.setValue(String.valueOf(BixbyOnLongPress));
        mUP.setSummary(mUP.getEntry());
        mUP.setOnPreferenceChangeListener(this);

        mDown = (SaltSettingDefaultListPreference) findPreference("BallDown");
        int BixbyOnKeyguardClick = Settings.System.getInt(resolver,
                KEY8, 0);
        mDown.setValue(String.valueOf(BixbyOnKeyguardClick));
        mDown.setSummary(mDown.getEntry());
        mDown.setOnPreferenceChangeListener(this);
        mLeft= (SaltSettingDefaultListPreference) findPreference("BallLeft");
        int BixbyOnKeyguardLongPress = Settings.System.getInt(resolver,
                KEY9, 0);
        mLeft.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mLeft.setSummary(mLeft.getEntry());
        mLeft.setOnPreferenceChangeListener(this);
        mRight= (SaltSettingDefaultListPreference) findPreference("BallRight");
        int Right = Settings.System.getInt(resolver,
                KEY10, 0);
        mRight.setValue(String.valueOf(Right));
        mRight.setSummary(mRight.getEntry());
        mRight.setOnPreferenceChangeListener(this);

        mSize = (SaltSettingSeekBarPreference) findPreference("Ballsize");
        int clockSize = Settings.System.getInt(resolver,
                KEY3, 10);
        mSize.setValue(clockSize / 1);

        mSize.setOnPreferenceChangeListener(this);
        mLevel = (SaltSettingSeekBarPreference) findPreference("BallLevel");
        int Level= Settings.System.getInt(resolver,
                KEY5, 15);
        mLevel.setValue(Level);
        mLevel.setOnPreferenceChangeListener(this);

        mVibrator= (SaltSettingSwitchPreference) findPreference("BallVibrator");
        mVibrator.setChecked((Settings.System.getInt(resolver,
                KEY4, 0) == 1));
        mVibrator.setOnPreferenceChangeListener(this);
        mConceal= (SaltSettingSwitchPreference) findPreference("BallConceal");
        mConceal.setChecked((Settings.System.getInt(resolver,
                KEY1, 0) == 1));
        mConceal.setOnPreferenceChangeListener(this);

        mFloatBallDisplay= (SaltSettingSwitchPreference) findPreference("BallDisplay");
        mFloatBallDisplay.setChecked((Settings.System.getInt(resolver,
                KEY, 0) == 1));
        mFloatBallDisplay.setOnPreferenceChangeListener(this);
        setHasOptionsMenu(true);
        setDateOptions();
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("Ballactionlay").setEnabled(true);
            getPreferenceManager().findPreference("BallibratoDisplay").setEnabled(true);


        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("Ballactionlay").setEnabled(false);
            getPreferenceManager().findPreference("BallibratoDisplay").setEnabled(false);

        }
    }

    private static final int MENU_RESET = Menu.FIRST;

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        menu.add(0, MENU_RESET, 0, getStringIdentifier(mContext,"grid_Blacklist"))

                .setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

            switch (item.getItemId()) {
                case MENU_RESET:
                    Blacklist(mContext);
                    return true;
                default:
                    return super.onContextItemSelected(item);
            }
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


    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==  mClick) {
            String key=KEY6;
            if(newValue.equals("88")){
                launchAppSPicker(key);
            }else if(newValue.equals("99")){
                mString=key+"_short";
                mPicker = new ShortcutPickerHelper(this) {
                    @Override
                    public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                        showSnack(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                        Settings.System.putString( mResolver,mString, str);
                    }
                };
                mPicker.pickShortcut();
            }
            int location = Integer.valueOf((String) newValue);
            int index =  mClick.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mClick.setSummary(  mClick.getEntries()[index]);
            return true;
        }else if (preference == mUP) {
            String key2=KEY7;
            if(newValue.equals("88")){
                launchAppSPicker(key2);
            }else if(newValue.equals("99")){
                mString=key2+"_short";
              //  launchShortcutPicker(key+"_short");

                mPicker = new ShortcutPickerHelper(this) {
                    @Override
                    public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                        showSnack(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                        Settings.System.putString( mResolver,mString, str);
                    }
                };
                mPicker.pickShortcut();
            }
            int location = Integer.valueOf((String) newValue);
            int index = mUP.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key2, location);
            mUP.setSummary(mUP.getEntries()[index]);
            return true;
        }else if (preference ==mDown) {
            String key2=KEY8;
            if(newValue.equals("88")){
                launchAppSPicker(key2);
            }else if(newValue.equals("99")){
                mString=key2+"_short";
                //  launchShortcutPicker(key+"_short");

                mPicker = new ShortcutPickerHelper(this) {
                    @Override
                    public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                        showSnack(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                        Settings.System.putString( mResolver,mString, str);
                    }
                };
                mPicker.pickShortcut();
            }
            int location = Integer.valueOf((String) newValue);
            int index =mDown.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key2, location);
            mDown.setSummary(mDown.getEntries()[index]);
            return true;
        }else if (preference == mLeft) {
            String key=KEY9;
            if(newValue.equals("88")){
                launchAppSPicker(key);
            }else if(newValue.equals("99")){
                mString=key+"_short";
                mPicker = new ShortcutPickerHelper(this) {
                    @Override
                    public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                        showSnack(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                        Settings.System.putString( mResolver,mString, str);
                    }
                };
                mPicker.pickShortcut();
            }
            int location = Integer.valueOf((String) newValue);
            int index = mLeft.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mLeft.setSummary(mLeft.getEntries()[index]);
            return true;
        }else if (preference ==mRight) {
            String key=KEY10;
            if(newValue.equals("88")){
                launchAppSPicker(key);
            }else if(newValue.equals("99")){
                mString=key+"_short";
                mPicker = new ShortcutPickerHelper(this) {
                    @Override
                    public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                        showSnack(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                        Settings.System.putString( mResolver,mString, str);
                    }
                };
                mPicker.pickShortcut();
            }
            int location = Integer.valueOf((String) newValue);
            int index =mRight.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mRight.setSummary(mRight.getEntries()[index]);
            return true;
        }else if (preference ==mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY3, width);
            return true;
        }else if (preference == mLevel) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY5, width);
            return true;
        }else if (preference ==mVibrator) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEY4, value ? 1 : 0);
            return true;
        }else if (preference ==mConceal) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEY1, value ? 1 : 0);
            return true;
        }else if (preference ==mFloatBallDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEY, value ? 1 : 0);
            setDateOptions();
            return true;
        }
        return true;
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
    public Drawable CustomDrawable(String str){
        return getCustomDrawable(getContext(), str);
    }

    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
    private void setDateOptions() {
        boolean mNavRingLong = Settings.System.getInt(mContext.getContentResolver(),
                KEY, 0)==1;
       if (DonatePermission()) {
           mFloatBallPreference.setEnabled(true);
           mColor2.setEnabled(true);
           mColor .setEnabled(true);
           mConceal.setEnabled(true);
           mSize.setEnabled(true);
           if (mNavRingLong) {
               getPreferenceScreen().addPreference(mWarning);
           }else  {
               getPreferenceScreen().removePreference(mWarning);
           }
        }else  {
           mFloatBallPreference.setEnabled(false);
           mColor2.setEnabled(false);
           mColor .setEnabled(false);
           mConceal.setEnabled(false);
           mSize.setEnabled(false);

        }

    }
}
