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
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.widget.EditText;



import com.leo.salt.preference.SaltSettingSeekBarPreference;


import com.leo.salt.tweaks.base.BasePreferenceFragment;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;

import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;


@SuppressLint("ResourceAsColor")
public class PulldownNotificationFuzzy extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private static final String KEYdefault= "leo_salt_qs_blur";
    private static final String KEY=KEYdefault+"_style";
    private SaltSettingSeekBarPreference mSize;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "pulldown_fuzzy_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mSize = (SaltSettingSeekBarPreference) findPreference("qs_blursyule");
        int clockMultiSize = Settings.System.getInt(resolver,
                KEY, 15);
        mSize.setValue(clockMultiSize);

        mSize.setOnPreferenceChangeListener(this);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mSize) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    KEY, width);
            return true;
        }
        return false;
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("qs_blur_enabled").setEnabled(true);

        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("qs_blur_enabled").setEnabled(false);

        }

    }
}
