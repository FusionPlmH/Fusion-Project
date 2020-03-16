package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
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
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.format.DateFormat;
import android.widget.EditText;


import com.leo.salt.preference.SaltSettingCategoryPreference;
import com.leo.salt.preference.SaltSettingColorPickerPreference;
import com.leo.salt.preference.SaltSettingDefaultListPreference;
import com.leo.salt.preference.SaltSettingIconListPreference;
import com.leo.salt.preference.SaltSettingListPreference;
import com.leo.salt.preference.SaltSettingPreference;
import com.leo.salt.preference.SaltSettingSeekBarPreference;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.resource.Resource;
import com.tencent.bugly.crashreport.CrashReport;

import java.util.Date;
import java.util.List;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.leo.salt.fragment.SystemFragment.getDynamiclockStringIdentifier;
import static com.leo.salt.tweaks.FragSubActivity.FragmentType.Locklunar;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;

import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;

import static com.leo.salt.utils.PrefUtils.SubMenuService;

import static com.os.salt.OSBuild.SystemUrl.ChineseCSC;


@SuppressLint("ResourceAsColor")
public class KeyguardDetailFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {
    private String mBiometricsKEY="keyguard_biometrics_unlock";
    private String mKeyguardStatusbarKEY="leo_salt_keyguard_statusbar_view";
    private String mKeyguardRotationKEY="notification_multi_window_peace";
    private SwitchPreference mKeyguardBiometrics;
    private SwitchPreference mKeyguardStatusbar;
    private SwitchPreference mKeyguardRotation;
    private SaltSettingPreference mDynamiclock;
    private SaltSettingPreference mKeyguardLunar;
    private SaltSettingCategoryPreference mSaltSettingCategoryPreference;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment( mContext , this, "keyguard_detail_prefs");
        ContentResolver resolver = getActivity().getContentResolver();
        mKeyguardBiometrics=(SwitchPreference) findPreference("wake_Biometrics");
        int Biometrics = Settings.System.getInt(getActivity().getContentResolver(),mBiometricsKEY, 0);
        mKeyguardBiometrics.setChecked(Biometrics != 0);
        mKeyguardBiometrics.setOnPreferenceChangeListener(this);
        mKeyguardStatusbar=(SwitchPreference) findPreference("keyguard_statusbar");
        int Statusbar= Settings.System.getInt(getActivity().getContentResolver(),mKeyguardStatusbarKEY, 0);
        mKeyguardStatusbar.setChecked(Statusbar != 0);
        mKeyguardStatusbar.setOnPreferenceChangeListener(this);
        mDynamiclock= (SaltSettingPreference) findPreference("dynamiclock");
        appNameIcon(mDynamiclock,"com.samsung.android.dynamiclock");
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
        if (isLeoAvilible(mContext,"com.samsung.android.dynamiclock")) {
            getPreferenceScreen().addPreference( mDynamiclock);
        }else {
            getPreferenceScreen().removePreference( mDynamiclock);
        }
        mKeyguardLunar= (SaltSettingPreference) findPreference("KeyguardLunar");
        mKeyguardLunar.setTitle(getApksStringInt("lock_lunar"));
        mSaltSettingCategoryPreference= (SaltSettingCategoryPreference) findPreference("CNKeyguardLunar");
        mSaltSettingCategoryPreference.setTitle(getApksStringInt("lock_lunar"));
        disableKeyguardLunar();
        mKeyguardRotation=(SwitchPreference) findPreference("allow_rotation");
        mKeyguardRotation.setChecked(getSettingValue() > 0);
    }
    private int getSettingValue() {
        return Settings.Global.getInt(mContext.getContentResolver(), "notification_freeform_menuitem", 0);
    }

    public void appNameIcon(SaltSettingPreference preference,String string){
        try {
            ApplicationInfo applicationInfo = mContext.getPackageManager().getApplicationInfo( string, 0);
            String appLabel = applicationInfo.loadLabel( mContext.getPackageManager()).toString();
            preference.setTitle(appLabel);
            preference.setSummary(getDynamiclockStringIdentifier(getContext(),"magazine_dialog_notifer_message1"));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }
    public void disableKeyguardLunar(){
        if (ChineseCSC()) {
            getPreferenceScreen().addPreference(mSaltSettingCategoryPreference);
        }else {
            getPreferenceScreen().removePreference(mSaltSettingCategoryPreference);
        }
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("keyguard_statusbar").setEnabled(true);
            getPreferenceManager().findPreference("wake_Biometrics").setEnabled(true);

        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("keyguard_statusbar").setEnabled(false);
            getPreferenceManager().findPreference("wake_Biometrics").setEnabled(false);
        }

    }

    @Override
    public void onResume() {
        super.onResume();
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {

        ContentResolver resolver = getActivity().getContentResolver();
        if(preference == mKeyguardBiometrics) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    mBiometricsKEY, value ? 1 : 0);

            return true;
        }else if(preference == mKeyguardStatusbar) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(resolver,
                    mKeyguardStatusbarKEY, value ? 1 : 0);

            return true;
        }else if(preference == mKeyguardRotation) {
            boolean value = (Boolean) newValue;
            int stuyle=0;
            Settings.Global.putInt(mContext.getContentResolver(), "notification_freeform_menuitem",value ? stuyle: 8);
        //    writePreferences(stuyle);

            return true;
        }
        return false;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
       if (preference == mDynamiclock) {
            Intent  intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction("dynamic.intent.action.SETTINGS");
            mContext.startActivity(intent);
            return true;
        }else if (preference == mKeyguardLunar) {
           SubMenuService(mContext,Locklunar);
           return true;
       }else{
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }

    public   boolean isLeoAvilible(Context context, String packageName) {
        final PackageManager packageManager = context.getPackageManager();
        // 获取所有已安装程序的包信息
        List<PackageInfo> pinfo = packageManager.getInstalledPackages(0);
        for ( int i = 0; i < pinfo.size(); i++ )
        {
            if(pinfo.get(i).packageName.equalsIgnoreCase(packageName))
                return true;
        }
        return false;
    }



    private void writePreferences(int i) {
        SharedPreferences.Editor edit = mContext.getSharedPreferences("notification_multi_window", 0).edit();
        edit.putInt("notification_freeform_menuitem", i);
        edit.commit();
    }

}
