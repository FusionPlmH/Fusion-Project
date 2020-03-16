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



public class MiniPOPFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{
    public SaltSettingDefaultListPreference mUP,mDown,mLeft,mRight;
    private String mString;

    private SaltSettingSeekBarPreference mLevel;
    private SaltSettingSwitchPreference mMiniPoPDisplay,mVibrator;
    private static final String KEY0 = LEO_PREFE+"qs_minipop";
    private static final String KEY =KEY0+"_enabled";
    private static final String KEY4 = KEY0+"_vibrator";
    private static final String KEY5 = KEY0+"_vibrator_level";
    private static final String KEY7 = KEY0+"_back_action";
    private static final String KEY8 = KEY0+"_home_action";
    private static final String KEY9 =KEY0+"_recent_action";
    private static final String KEY10 = KEY0+"_flashlight_action";
    public SaltSettingCategoryPreference mColor, mColor2;
    public SaltSettingCardWarningPreference mWarning;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);

        mContext = getActivity();
        BasePreferenceFragment( mContext , this, "minipop_prefs");
        final ContentResolver resolver = getActivity().getContentResolver();
        mWarning= (SaltSettingCardWarningPreference)findPreference("minipoparning");
        mWarning.setWarningSetting("屏幕助手:点击可移动位置,长按滑动可展开屏幕助手子菜单");
        mColor = (SaltSettingCategoryPreference) findPreference("minipopDlay");
        mColor2 = (SaltSettingCategoryPreference) findPreference("minipoptionlay");
        mUP= (SaltSettingDefaultListPreference) findPreference("minipopbc");
        int BixbyOnLongPress = Settings.System.getInt(resolver,
                KEY7, 0);
        mUP.setValue(String.valueOf(BixbyOnLongPress));
        mUP.setSummary(mUP.getEntry());
        mUP.setOnPreferenceChangeListener(this);

        mDown = (SaltSettingDefaultListPreference) findPreference("minipopho");
        int BixbyOnKeyguardClick = Settings.System.getInt(resolver,
                KEY8, 0);
        mDown.setValue(String.valueOf(BixbyOnKeyguardClick));
        mDown.setSummary(mDown.getEntry());
        mDown.setOnPreferenceChangeListener(this);
        mLeft= (SaltSettingDefaultListPreference) findPreference("minipopre");
        int BixbyOnKeyguardLongPress = Settings.System.getInt(resolver,
                KEY9, 0);
        mLeft.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mLeft.setSummary(mLeft.getEntry());
        mLeft.setOnPreferenceChangeListener(this);
        mRight= (SaltSettingDefaultListPreference) findPreference("minipopfla");
        int Right = Settings.System.getInt(resolver,
                KEY10, 0);
        mRight.setValue(String.valueOf(Right));
        mRight.setSummary(mRight.getEntry());
        mRight.setOnPreferenceChangeListener(this);

        mLevel = (SaltSettingSeekBarPreference) findPreference("minipopLevel");
        int Level= Settings.System.getInt(resolver,
                KEY5, 15);
        mLevel.setValue(Level);
        mLevel.setOnPreferenceChangeListener(this);

        mVibrator= (SaltSettingSwitchPreference) findPreference("minipopVibrator");
        mVibrator.setChecked((Settings.System.getInt(resolver,
                KEY4, 0) == 1));
        mVibrator.setOnPreferenceChangeListener(this);

        mMiniPoPDisplay= (SaltSettingSwitchPreference) findPreference("minipopDisplay");
        mMiniPoPDisplay.setChecked((Settings.System.getInt(resolver,
                KEY, 0) == 1));
        mMiniPoPDisplay.setOnPreferenceChangeListener(this);
        setHasOptionsMenu(true);
        setDateOptions();
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
         if (preference == mUP) {
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
        }else if (preference ==mMiniPoPDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    KEY, value ? 1 : 0);
            setDateOptions();
            return true;
        }
        return true;
    }



    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
    private void setDateOptions() {
        boolean mNavRingLong = Settings.System.getInt(mContext.getContentResolver(),
                KEY, 0)==1;
       if (DonatePermission()) {

           mColor2.setEnabled(true);
           mColor .setEnabled(true);

           if (mNavRingLong) {
               getPreferenceScreen().addPreference(mWarning);
           }else  {
               getPreferenceScreen().removePreference(mWarning);
           }
        }else  {
           PermissionFunction( mContext);
           mColor2.setEnabled(false);
           mColor .setEnabled(false);


        }

    }
}
