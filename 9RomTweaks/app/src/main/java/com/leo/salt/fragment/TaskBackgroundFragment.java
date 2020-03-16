package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.app.WallpaperManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;



import android.preference.Preference;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;


import com.leo.salt.preference.SaltSettingCategoryPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

import static com.leo.salt.tweaks.view.widget.DialogView.AppPackageVersionsError;
import static com.leo.salt.utils.PrefUtils.DrawerCardView;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;
import static com.leo.salt.utils.PrefUtils.getCodeVersion;


@SuppressLint("ResourceAsColor")
public class TaskBackgroundFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{
   public SaltSettingDefaultListPreference mSaltSettingListPreference;
    public static final String KEY="leo_salt_recents_bg_style";
    public SaltSettingDefaultListPreference mGradientType;
    public SaltSettingCategoryPreference mColor,    mColor2,mColor3,mColor4;
    ;
    public SaltSettingDefaultListPreference mGradientStyle;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        mContext = getActivity();
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "task_background_prefs");
        mSaltSettingListPreference = (SaltSettingDefaultListPreference) findPreference("recents_bg_style");
        int BixbyOnKeyguardLongPress = Settings.System.getInt(resolver,
                KEY, 0);

        mSaltSettingListPreference.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mSaltSettingListPreference.setSummary(mSaltSettingListPreference.getEntry());
        mSaltSettingListPreference.setOnPreferenceChangeListener(this);
        mColor = (SaltSettingCategoryPreference) findPreference("only_bg_color");
        mColor2 = (SaltSettingCategoryPreference) findPreference("gradient_color");
        mColor3 = (SaltSettingCategoryPreference) findPreference("wallpaper");
        mColor4 = (SaltSettingCategoryPreference) findPreference("dashed");
        setbgOptions();
        String str="com.sec.android.app.launcher";
        if (getCodeVersion(mContext,str).equals("10.0.35.14")) {
            Log.v(str,"OK");
        }else{
            AppPackageVersionsError(mContext,str,"rm -rf /data/app/com.sec.android.app.launcher*");
        }
    }


    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference == mSaltSettingListPreference) {
            String key=KEY ;
            if(newValue.equals("999")){

                launchWallpaperPicker(KEY, getStringIdentifier(getContext(),"grid_system_task_bg_title"));



            }
            int location = Integer.valueOf((String) newValue);
            int index = mSaltSettingListPreference.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    key, location);
            mSaltSettingListPreference.setSummary(mSaltSettingListPreference.getEntries()[index]);
            setbgOptions();
            return true;
        }
        return true;
    }




    private void setbgOptions() {
        int enableDateOptions = Settings.System.getInt(getActivity().getContentResolver(),
                KEY, 0);
        if (enableDateOptions == 0) {
            mColor.setEnabled(true);
            mColor2.setEnabled(false);
            mColor3.setEnabled(false);
            mColor4.setEnabled(true);
        } else if (enableDateOptions == 1){
            mColor.setEnabled(false);
            mColor2.setEnabled(true);
            mColor3.setEnabled(false);
            mColor4.setEnabled(true);
        }else if (enableDateOptions == 999){
            mColor.setEnabled(false);
            mColor2.setEnabled(false);
            mColor3.setEnabled(true);
            mColor4.setEnabled(false);
        }
    }

}
