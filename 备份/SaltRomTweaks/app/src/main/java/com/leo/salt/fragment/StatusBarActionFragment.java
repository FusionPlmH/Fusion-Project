package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;


import android.os.UserHandle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.Blacklist;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;


@SuppressLint("ResourceAsColor")
public class StatusBarActionFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {


    private SaltSettingSwitchPreference mStatusBarSlideGestureEnabled,mStatusBarLongPressGestureEnabled,mStatusBarGestureVibratorEnable,mLeftEnabled,mRightEnabled;

    private SaltSettingDefaultListPreference mStatusBarGestureLongPress,mStatusBarGestureLeftSlide,mStatusBarGestureRightSlide,mLeft,mRight;
    private SaltSettingSeekBarPreference mVibratorLevel;

   private static final String STATUSBAR_GESTURE= "leo_salt_statusbar_gesture";
    private static final String SLIDE= STATUSBAR_GESTURE+"_slide_enabled";
    private static final String LONGPRESS= STATUSBAR_GESTURE+"_longPress_enabled";
    private static final String VIBRATOR= STATUSBAR_GESTURE+"_vibrator";
    private static final String LEFTSLIDE= STATUSBAR_GESTURE+"_leftslide_action_style";
    private static final String RIGHTSLIDE= STATUSBAR_GESTURE+"_rightslide_action_style";
    private static final String LONGP= STATUSBAR_GESTURE+"_longPress_action_style";
    private static final String LEGT= STATUSBAR_GESTURE+"_left_enabled";
    private static final String RIGHT= STATUSBAR_GESTURE+"_right_enabled";
    private static final String LEGTACTION= STATUSBAR_GESTURE+"_left_action_style";
    private static final String RIGHTACTION= STATUSBAR_GESTURE+"_right_action_style";
    private static final String VIBRATORLEVEL= STATUSBAR_GESTURE+"_vibrator_level";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "statusbar_gesture_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mStatusBarSlideGestureEnabled = (SaltSettingSwitchPreference) findPreference("slide_enabled");
        mStatusBarSlideGestureEnabled.setChecked((Settings.System.getInt(resolver,
                SLIDE, 0) == 1));
        mStatusBarSlideGestureEnabled.setOnPreferenceChangeListener(this);
        mStatusBarLongPressGestureEnabled = (SaltSettingSwitchPreference) findPreference("longPress_enabled");
        mStatusBarLongPressGestureEnabled.setChecked((Settings.System.getInt(resolver,
                LONGPRESS, 0) == 1));
        mStatusBarLongPressGestureEnabled.setOnPreferenceChangeListener(this);
        mStatusBarGestureVibratorEnable= (SaltSettingSwitchPreference) findPreference("vibrator_enabled");
        mStatusBarGestureVibratorEnable.setChecked((Settings.System.getInt(resolver,
                VIBRATOR, 0) == 1));
        mStatusBarGestureVibratorEnable.setOnPreferenceChangeListener(this);
        mStatusBarGestureLongPress = (SaltSettingDefaultListPreference) findPreference("LongPress");
        int BixbyOnClick = Settings.System.getInt(resolver,
                LONGP, 0);
        mStatusBarGestureLongPress.setValue(String.valueOf(BixbyOnClick));
        mStatusBarGestureLongPress.setSummary(mStatusBarGestureLongPress.getEntry());
        mStatusBarGestureLongPress.setOnPreferenceChangeListener(this);
        mStatusBarGestureLeftSlide = (SaltSettingDefaultListPreference) findPreference("LeftSlide");
        int BixbyLeftSlide = Settings.System.getInt(resolver,
                LEFTSLIDE, 0);
        mStatusBarGestureLeftSlide.setValue(String.valueOf(BixbyLeftSlide));
        mStatusBarGestureLeftSlide.setSummary(mStatusBarGestureLeftSlide.getEntry());
        mStatusBarGestureLeftSlide.setOnPreferenceChangeListener(this);

        mStatusBarGestureRightSlide = (SaltSettingDefaultListPreference) findPreference("RightSlide");
        int RightSlide = Settings.System.getInt(resolver,
                RIGHTSLIDE, 0);
        mStatusBarGestureRightSlide.setValue(String.valueOf(RightSlide));
        mStatusBarGestureRightSlide.setSummary(mStatusBarGestureRightSlide.getEntry());
        mStatusBarGestureRightSlide.setOnPreferenceChangeListener(this);

        mLeft = (SaltSettingDefaultListPreference) findPreference("LeftAction");
        int Left = Settings.System.getInt(resolver,
                LEGTACTION, 0);
        mLeft.setValue(String.valueOf(Left));
        mLeft.setSummary(mLeft.getEntry());
        mLeft.setOnPreferenceChangeListener(this);
        mRight = (SaltSettingDefaultListPreference) findPreference("RightAction");
        int Right = Settings.System.getInt(resolver,
                RIGHTACTION, 0);
        mRight.setValue(String.valueOf(Right));
        mRight.setSummary(mRight.getEntry());
        mRight.setOnPreferenceChangeListener(this);

        mLeftEnabled = (SaltSettingSwitchPreference) findPreference("LeftActionEnabled");
        mLeftEnabled.setChecked((Settings.System.getInt(resolver,
                LEGT, 0) == 1));
        mLeftEnabled.setOnPreferenceChangeListener(this);

        mRightEnabled= (SaltSettingSwitchPreference) findPreference("RightActionEnabled");
        mRightEnabled.setChecked((Settings.System.getInt(resolver,
                RIGHT, 0) == 1));
        mRightEnabled.setOnPreferenceChangeListener(this);

        mVibratorLevel = (SaltSettingSeekBarPreference) findPreference("vibrator_level");
        int clockEndPadding = Settings.System.getInt(resolver,
                VIBRATORLEVEL, 15);
        mVibratorLevel.setValue(clockEndPadding);

        mVibratorLevel.setOnPreferenceChangeListener(this);

        setHasOptionsMenu(true);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("vibrator_enabled").setEnabled(true);
            getPreferenceManager().findPreference("longPress_enabled").setEnabled(true);
            getPreferenceManager().findPreference("slide_enabled").setEnabled(true);
            getPreferenceManager().findPreference("LeftActionEnabled").setEnabled(true);
            getPreferenceManager().findPreference("RightActionEnabled").setEnabled(true);
        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("vibrator_enabled").setEnabled(false);
            getPreferenceManager().findPreference("longPress_enabled").setEnabled(false);
            getPreferenceManager().findPreference("slide_enabled").setEnabled(false);
            getPreferenceManager().findPreference("LeftActionEnabled").setEnabled(false);
            getPreferenceManager().findPreference("RightActionEnabled").setEnabled(false);
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

    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
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
        }else if (preference ==mLeftEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    LEGT, value ? 1 : 0);
            return true;
        }else if (preference ==mRightEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    RIGHT, value ? 1 : 0);
            return true;
        }else if (preference ==mLeft) {
            Picker(mLeft,newValue, LEGTACTION);
            return true;
        }else if (preference ==mRight) {
            Picker(mRight,newValue,RIGHTACTION);
            return true;
        }else if (preference ==mVibratorLevel) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    VIBRATORLEVEL, width);
            return true;
        }
         return false;
    }
    private String mString;
    public void Picker(SaltSettingDefaultListPreference preference,Object newValue,final String  mStr){
        if(newValue.equals("88")){
            launchAppSPicker(mStr);
        }else if(newValue.equals("99")){
            mString=mStr+"_short";

            mPicker = new ShortcutPickerHelper(this) {
                @Override
                public void onListViewItemClickActivity(String str, String str2, Bitmap bitmap) {
                    showSnack(getStringIdentifier(getActivity(),"shortcut_select")+"［"+str2+"］");
                    Settings.System.putString( mResolver, mString, str);
                }
            };
            mPicker.pickShortcut();
        }
        int location = Integer.valueOf((String) newValue);
        int index =preference.findIndexOfValue((String) newValue);
        Settings.System.putInt(getActivity().getContentResolver(),
                mStr, location);
        preference.setSummary(preference.getEntries()[index]);
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


    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
}
