package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.os.Bundle;


import android.os.Handler;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;


import com.leo.salt.preference.SaltSettingAppMultiSelectListPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.tweaks.view.widget.DialogView.SamsungGoodLock;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;
import static com.leo.salt.utils.PrefUtils.getLeoUri;
import static com.leo.salt.utils.PrefUtils.killPackage;


@SuppressLint("ResourceAsColor")
public class NavigationBarActionFragment  extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private static final String KEY= "leo_salt_navbar_gesture";
    private static final String mNavGestureEnabled_KEY= KEY+"_enabled";
    private static final String mNavGestureStley_KEY= KEY+"_style";
    private static final String VIBRATOR= KEY+"_vibrator";
    private static final String VIBRATORLEVEL= KEY+"_vibrator_level";
    private SaltSettingSwitchPreference mNavGestureEnabled,mNavGestureVibratorEnabled;
    private SaltSettingDefaultListPreference mNavGestureStle;
    private SaltSettingSeekBarPreference mVibratorLevel;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        ContentResolver resolver = getActivity().getContentResolver();

        BasePreferenceFragment( mContext , this, "navigationbar_action_prefs");
        PreferenceScreen prefSet = getPreferenceScreen();
        mNavGestureEnabled= (SaltSettingSwitchPreference) findPreference("navActionenabled");
        mNavGestureEnabled.setChecked((Settings.System.getInt(resolver,
                mNavGestureEnabled_KEY, 0) == 1));
        mNavGestureEnabled.setOnPreferenceChangeListener(this);

        mNavGestureVibratorEnabled= (SaltSettingSwitchPreference) findPreference("navActionvibratornaenabled");
        mNavGestureVibratorEnabled.setChecked((Settings.System.getInt(resolver,
                VIBRATOR, 0) == 1));
        mNavGestureVibratorEnabled.setOnPreferenceChangeListener(this);

        mNavGestureStle = (SaltSettingDefaultListPreference) findPreference("navActionSTYLE");
        int Left = Settings.System.getInt(resolver,
                mNavGestureStley_KEY, 0);
        mNavGestureStle.setValue(String.valueOf(Left));
        mNavGestureStle.setSummary( mNavGestureStle.getEntry());
        mNavGestureStle.setOnPreferenceChangeListener(this);

        mVibratorLevel = (SaltSettingSeekBarPreference) findPreference("vibratornavlevel");
        int clockEndPadding = Settings.System.getInt(resolver,
                VIBRATORLEVEL, 15);
        mVibratorLevel.setValue(clockEndPadding);

        mVibratorLevel.setOnPreferenceChangeListener(this);
        setHasOptionsMenu(true);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("navActionenabled").setEnabled(true);

        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("navActionenabled").setEnabled(false);

        }

    }

    private static final int MENU_RESET = Menu.FIRST;
    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        menu.add(0, MENU_RESET, 0, getStringIdentifier(mContext,"grid_Blacklist"))

                .setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference == mNavGestureEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    mNavGestureEnabled_KEY, value ? 1 : 0);
            dfdsf(value);
            return true;
        }if (preference ==  mNavGestureVibratorEnabled) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    VIBRATOR, value ? 1 : 0);
            return true;
        }else if (preference ==  mNavGestureStle) {
            Picker(  mNavGestureStle,newValue,mNavGestureStley_KEY);
            return true;
        }else if (preference ==mVibratorLevel) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    VIBRATORLEVEL, width);
            return true;
        }
        return false;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
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
   private void dfdsf(boolean gfg){
       if(gfg){
           killPackage("com.android.systemui",mContext);
       }else{
           killPackage("com.android.systemui",mContext);
       }

   }
}
