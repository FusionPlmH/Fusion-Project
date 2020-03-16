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
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingCategoryPreference;
import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;

import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;


@SuppressLint("ResourceAsColor")
public class KeyguardCarrierFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    private SaltSettingDefaultListPreference mClockDateWeekSymbol;
    private static final String KEY= "leo_salt_keyguard_carrier";
    private static final String KEY1= KEY+"_symbol";
    private static final String KEY2= KEY+"_size";
    private SaltSettingSeekBarPreference mSize;

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "keyguard_carrier_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mClockDateWeekSymbol = (SaltSettingDefaultListPreference) findPreference("keyguard_carrier_symbol");
        int clockDateWEEKsymbol = Settings.System.getInt(resolver,
                KEY1, 0);
        SaltSettingCategoryPreference   mSaltSettingCategoryPreference=(SaltSettingCategoryPreference) findPreference("keyguard_carrier");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt("grid_keyguard_carrier"));
        mClockDateWeekSymbol.setValue(String.valueOf(clockDateWEEKsymbol));
        mClockDateWeekSymbol.setSummary( mClockDateWeekSymbol.getEntry());
        mClockDateWeekSymbol.setOnPreferenceChangeListener(this);
        mSize= (SaltSettingSeekBarPreference) findPreference("keyguardcarriersize");
        int clockEndPadding = Settings.System.getInt(resolver,
                KEY2, 14);
        mSize.setValue(clockEndPadding);

        mSize.setOnPreferenceChangeListener(this);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("keyguard_carrier_custom_single_enabled").setEnabled(true);
            getPreferenceManager().findPreference("keyguard_carrier_custom").setEnabled(true);

        }else {

            getPreferenceManager().findPreference("keyguard_carrier_custom_single_enabled").setEnabled(false);
            getPreferenceManager().findPreference("keyguard_carrier_custom").setEnabled(false);
        }

    }

    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mClockDateWeekSymbol) {
            String key=KEY1;
            if(newValue.equals("14")){
                EditTextDialog(KEY1+"_string", String.valueOf(mClockDateWeekSymbol.getTitle()));
            }
            int location = Integer.valueOf((String) newValue);
            int index =mClockDateWeekSymbol.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mClockDateWeekSymbol.setSummary(mClockDateWeekSymbol.getEntries()[index]);
            return true;
        }else if (preference == mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY2, width);
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
