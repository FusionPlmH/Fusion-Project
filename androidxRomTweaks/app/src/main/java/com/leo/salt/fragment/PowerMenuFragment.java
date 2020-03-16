package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;


import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;


import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.tweaks.view.widget.DialogView.SafetyDonateDialogView;
import static com.leo.salt.utils.PrefUtils.killPackage;


@SuppressLint("ResourceAsColor")
public class PowerMenuFragment extends BasePreferenceFragment  {

    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "power_menu_prefs");
        if(DonatePermission()){
            //checkNetworkInf();
        }else {
            SafetyDonateDialogView(getActivity());
        }
    }


}
