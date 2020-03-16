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
import android.graphics.drawable.Drawable;
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
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.Blacklist;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;


@SuppressLint("ResourceAsColor")
public class KeyguardActionFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private SaltSettingDefaultListPreference mGesture;
    private SaltSettingSwitchPreference mDisplay,mDisplay2;
    private static final String KEY= "leo_salt_";
    private static final String KEY1= KEY+"keyguard_action_enabled";
    private static final String KEY2= KEY+"keyguard_action_doubleTap_enabled";
    private static final String KEY3= KEY+"keyguard_action_style";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "keyguard_gesture_prefs");
        ContentResolver resolver = getActivity().getContentResolver();

        mDisplay= (SaltSettingSwitchPreference) findPreference("keyguard_action_enabled");
        mDisplay.setChecked((Settings.System.getInt(resolver,
                KEY1, 0) == 1));
        mDisplay.setOnPreferenceChangeListener(this);
        mDisplay2= (SaltSettingSwitchPreference) findPreference("keyguard_action_doubleTap_enabled");
        mDisplay2.setChecked((Settings.System.getInt(resolver,
                KEY2, 0) == 1));
        mDisplay2.setOnPreferenceChangeListener(this);
        mGesture= (SaltSettingDefaultListPreference) findPreference("keyguard_action_style");
        int BixbyOnClick = Settings.System.getInt(resolver,
                KEY3, 0);
        mGesture.setValue(String.valueOf(BixbyOnClick));
        mGesture.setSummary( mGesture.getEntry());
        mGesture.setOnPreferenceChangeListener(this);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("keyguard_action_doubleTap_enabled").setEnabled(true);
            getPreferenceManager().findPreference("keyguard_action_enabled").setEnabled(true);
            getPreferenceManager().findPreference("keyguard_action_style").setEnabled(true);

        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("keyguard_action_doubleTap_enabled").setEnabled(false);
            getPreferenceManager().findPreference("keyguard_action_enabled").setEnabled(false);
            getPreferenceManager().findPreference("keyguard_action_style").setEnabled(false);
        }
    }
    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mDisplay) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY1, value ? 1 : 0);
            return true;
        }else if (preference ==mDisplay2) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY2, value ? 1 : 0);
            return true;
        }else if (preference == mGesture) {
            int location = Integer.valueOf((String) newValue);
            int index =  mGesture.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    KEY3 , location);
            mGesture.setSummary( mGesture.getEntries()[index]);
            return true;
        }
        return false;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }


}
