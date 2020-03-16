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
import com.leo.salt.preference.SaltSettingSeekBarPreference;
import com.leo.salt.preference.SaltSettingSwitchPreference;
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

import static com.leo.salt.utils.PrefUtils.DrawerCardView;
import static com.leo.salt.utils.PrefUtils.LEO_PREFE;


@SuppressLint("ResourceAsColor")
public class NavigationBarBackgroundFragment  extends BasePreferenceFragment implements
       Preference.OnPreferenceChangeListener{
   public SaltSettingDefaultListPreference mSaltSettingListPreference;
    public static final String LeoKEY="leo_salt_";
    public static final String KEY=LeoKEY+"navbar_bg_style";
    public static final String GradientKEY=LeoKEY+"navbar_bg_gradient_type";
    public static final String GradientModeKEY=LeoKEY+"navbar_bg_gradient_style";
    public SaltSettingCategoryPreference mColor, mColor2,mColor3,mColor4;
    public SaltSettingDefaultListPreference mGradientStyle,mGradientMode;
    public SaltSettingSwitchPreference mCustomBackground;
    public static final String CustomBackground=LeoKEY+"navbar_bg_enabled";
    public SaltSettingSeekBarPreference mColorRadius,mCircularRadius;
    public static final String ColorRadius=LeoKEY+"navbar_bg_gradient_radius";
    public static final String CircularRadius=LeoKEY+"navbar_bg_radius";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        mContext = getActivity();
        final ContentResolver resolver = getActivity().getContentResolver();
        BasePreferenceFragment( mContext , this, "nav_background_prefs");

        mCustomBackground = (SaltSettingSwitchPreference) findPreference("navbgenabled");
        mCustomBackground.setChecked((Settings.System.getInt(resolver,
                CustomBackground, 0) == 1));
        mCustomBackground.setOnPreferenceChangeListener(this);

        mSaltSettingListPreference = (SaltSettingDefaultListPreference) findPreference("nav_bg_style");
        int BixbyOnKeyguardLongPress = Settings.System.getInt(resolver,
                KEY, 0);
        mSaltSettingListPreference.setValue(String.valueOf(BixbyOnKeyguardLongPress));
        mSaltSettingListPreference.setSummary(mSaltSettingListPreference.getEntry());
        mSaltSettingListPreference.setOnPreferenceChangeListener(this);
        mColor = (SaltSettingCategoryPreference) findPreference("nav_only_bg_color");
        mColor2 = (SaltSettingCategoryPreference) findPreference("nav_gradient_color");
        mColor3 = (SaltSettingCategoryPreference) findPreference("nav_wallpaper");
        mColor4 = (SaltSettingCategoryPreference) findPreference("nav_dashed");
        setbgOptions();
        mGradientMode = (SaltSettingDefaultListPreference) findPreference("nav_gradient_style");
        int Mode= Settings.System.getInt(resolver,
                GradientModeKEY, 0);

        mGradientMode.setValue(String.valueOf(Mode));
        mGradientMode.setSummary(mGradientMode.getEntry());
        mGradientMode.setOnPreferenceChangeListener(this);

        mColorRadius = (SaltSettingSeekBarPreference) findPreference("navColorRadius");
        int ColorRadiusSize = Settings.System.getInt(resolver,
                ColorRadius, 1);
        mColorRadius.setValue(ColorRadiusSize);
        mColorRadius.setOnPreferenceChangeListener(this);
        mCircularRadius = (SaltSettingSeekBarPreference) findPreference("navdashedradius");
        int CircularRadiusSize = Settings.System.getInt(resolver,
                CircularRadius, 0);
        mCircularRadius.setValue(CircularRadiusSize);
        mCircularRadius.setOnPreferenceChangeListener(this);
        mGradientStyle = (SaltSettingDefaultListPreference) findPreference("nav_gradient_type");
        int Gradient = Settings.System.getInt(resolver,
                GradientKEY, 0);

        mGradientStyle.setValue(String.valueOf(Gradient));
        mGradientStyle.setSummary(mGradientStyle.getEntry());
        mGradientStyle.setOnPreferenceChangeListener(this);
      setGradientStyleOptions();


    }


    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        if (preference ==mCustomBackground) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    CustomBackground, value ? 1 : 0);
        } else if (preference == mSaltSettingListPreference) {
            String key=KEY ;
            if(newValue.equals("999")){
                launchWallpaperPicker(KEY, getStringIdentifier(getContext(),"grid_status_bar_background"));
            }
            int location = Integer.valueOf((String) newValue);
            int index = mSaltSettingListPreference.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    key, location);
            mSaltSettingListPreference.setSummary(mSaltSettingListPreference.getEntries()[index]);
            setbgOptions();
            return true;
        }else if (preference ==  mGradientStyle) {
            int location = Integer.valueOf((String) newValue);
            int index = mGradientStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    GradientKEY, location);
            mGradientStyle.setSummary(mGradientStyle.getEntries()[index]);
           setGradientStyleOptions();
            return true;
        }else if (preference ==  mGradientMode) {
            int location = Integer.valueOf((String) newValue);
            int index = mGradientMode.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    GradientModeKEY, location);
            mGradientMode.setSummary(mGradientMode.getEntries()[index]);
            return true;
        }else if (preference ==mColorRadius) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    ColorRadius, width);
            return true;
        }else if (preference ==mCircularRadius) {
            int width = ((Integer)newValue).intValue();
            Settings.System.putInt(resolver,
                    CircularRadius, width);
            return true;
        }
        return true;
    }


    private void setGradientStyleOptions() {
        int enableDateOptions = Settings.System.getInt(getActivity().getContentResolver(),
                GradientKEY, 0);
        if (enableDateOptions == 0) {
            mGradientMode.setEnabled(true);
            mColorRadius.setEnabled(false);
        } else if (enableDateOptions == 1){
            mGradientMode.setEnabled(false);
            mColorRadius.setEnabled(true);
        }else if (enableDateOptions == 2){
            mColorRadius.setEnabled(false);
            mGradientMode.setEnabled(false);
        }
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
