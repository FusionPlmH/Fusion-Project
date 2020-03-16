package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;


import android.preference.ListPreference;
import android.preference.Preference;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;


import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;


public class EdgeFragment  extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
     private SaltSettingSeekBarPreference mSize;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "edge_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mSize = (SaltSettingSeekBarPreference) findPreference("edge_text_size");
        int clockMultiSize = Settings.System.getInt(resolver,
            "leo_salt_edge_text_size", 13);
        mSize.setValue(clockMultiSize/ 1);
        mSize.setOnPreferenceChangeListener(this);
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("edge_text_size").setEnabled(true);
            getPreferenceManager().findPreference("edge_text_color").setEnabled(true);
            getPreferenceManager().findPreference("edge_style").setEnabled(true);

        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("edge_text_size").setEnabled(false);
            getPreferenceManager().findPreference("edge_text_color").setEnabled(false);
            getPreferenceManager().findPreference("edge_style").setEnabled(false);

        }

    }

     public boolean onPreferenceChange(Preference preference, Object newValue) {
         ContentResolver resolver = getActivity().getContentResolver();
         if (preference ==mSize) {
             int width = ((Integer)newValue).intValue();
             Settings.System.putInt(resolver,
                "leo_salt_edge_text_size", width);
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
