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
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;


import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import static com.leo.salt.tweaks.view.widget.DialogView.AppPackageVersionsError;
import static com.leo.salt.utils.PrefUtils.getCodeVersion;


@SuppressLint("ResourceAsColor")
public class TaskStorageFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{
   public ListPreference mSaltSettingListPreference;
   public static final String KEY="leo_salt_task_info_symbol_style";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        String str="com.sec.android.app.launcher";
        if (getCodeVersion(mContext,str).equals("10.0.35.14")) {
            Log.v(str,"OK");
        }else{
            AppPackageVersionsError(mContext,str,"rm -rf /data/app/com.sec.android.app.launcher*");
        }
        mContext = getActivity();
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "task_storage_prefs");
        mSaltSettingListPreference = (ListPreference) findPreference(KEY);
        int BixbyOnKeyguardLongPress = Settings.System.getInt(resolver,
                KEY, 0);
        mSaltSettingListPreference.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mSaltSettingListPreference.setSummary(mSaltSettingListPreference.getEntry());
        mSaltSettingListPreference.setOnPreferenceChangeListener(this);
    }




    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mSaltSettingListPreference) {
            String key=KEY ;
            if(newValue.equals("12")){

                EditTextDialog("leo_salt_task_info_symbol_str", String.valueOf(mSaltSettingListPreference.getTitle()));
            }
            int location = Integer.valueOf((String) newValue);
            int index = mSaltSettingListPreference.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getContentResolver(),
                    key, location);
            mSaltSettingListPreference.setSummary(mSaltSettingListPreference.getEntries()[index]);
            return true;
        }
        return true;
    }




}
