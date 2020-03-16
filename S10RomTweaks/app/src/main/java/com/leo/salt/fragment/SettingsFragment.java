package com.leo.salt.fragment;

import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.widget.Toast;


import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.SplashActivity;
import com.leo.salt.tweaks.base.BaseActivity;
import com.leo.salt.tweaks.base.BasePreferenceFragment;


import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.ActionToastSring;
import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.tweaks.view.widget.DialogView.Shortcut;
import static com.leo.salt.tweaks.view.widget.DialogView.checkOTAinfo;
import static com.leo.salt.utils.PrefUtils.ota;
import static com.os.salt.OSBuild.SystemUrl.ChineseCSC;


public class SettingsFragment extends BasePreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    public String mShortcutKey="leo_shortcut";
    private SaltSettingSwitchPreference  mCheckOTA;
    public String mRictureKey="leo_salt_ricture";
    private Preference mShortcut;
    private Preference mRicture;
    private static final String PREF_LEO_LAUNCHER = "leo_tools_launcher_enabled";
    private ComponentName mLauncherComponent;
    private SwitchPreference mLauncher;
    private SwitchPreference mCheckAPKS;
    private SwitchPreference mLinKing;
    private SwitchPreference mWeather;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        PackageManager pm =mContext.getPackageManager();
        mLauncherComponent= new ComponentName(mContext, SplashActivity.class);
        BasePreferenceFragment(getActivity(),this, "prefe_app_setting");
        ContentResolver resolver = getActivity().getContentResolver();
        mCheckOTA = (SaltSettingSwitchPreference) findPreference("checkupdates");
        mCheckOTA.setChecked((Settings.System.getInt(resolver,
              "leo_salt_checkupdates_rom", 0) == 1));
        mCheckOTA.setOnPreferenceChangeListener(this);
        mCheckAPKS = (SwitchPreference) findPreference("checkuapkspdates");
        mCheckAPKS.setChecked((Settings.System.getInt(resolver,
                "leo_apks_check_info", 0) == 1));
        mCheckAPKS.setOnPreferenceChangeListener(this);
        mCheckAPKS.setTitle(getApksStringInt(R.string.app_name)+"主动更新检测服务");
        mCheckAPKS.setSummary("启用主动检测服务当"+getApksStringInt(R.string.app_name)+"有可用更新的时候将会自动弹出提示对话框,相反你需要手动点击首页底部的"+getApksStringInt(R.string.app_name)+"项目被动检测");
        mShortcut= (Preference) findPreference(mShortcutKey);
        mRicture= (Preference) findPreference(mRictureKey);
        mLauncher = (SwitchPreference) findPreference(PREF_LEO_LAUNCHER);
        mLauncher.setTitle(getString(R.string.apps_launcher_enabled_title)+" "+getString(R.string.app_name)+" Logo");
        mLauncher.setSummary(getString(R.string.apps_launcher_enabled_summary)+" "+getString(R.string.app_name));
        mLauncher.setChecked(pm.getComponentEnabledSetting(mLauncherComponent) !=
                PackageManager.COMPONENT_ENABLED_STATE_DISABLED);
        mLauncher.setOnPreferenceChangeListener(this);
        mWeather= (SwitchPreference) findPreference("checkuaweatherpkspdates");
        mWeather.setChecked((Settings.System.getInt(resolver,
                "leo_home_weather_info", 0) == 1));
        mWeather.setOnPreferenceChangeListener(this);
        mLinKing= (SwitchPreference) findPreference("checkuaweatherpkspdatdfdses");
        mLinKing.setChecked((Settings.System.getInt(resolver,
                "leo_home_linking_info", 0) == 1));
        mLinKing.setOnPreferenceChangeListener(this);
        LinKing();
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
    public void LinKing(){
        if (ChineseCSC()) {
            getPreferenceScreen().addPreference(mWeather);
            getPreferenceScreen().addPreference(mLinKing);
            if(DonatePermission()){
                mLinKing.setEnabled(true);
            }else {
                mLinKing.setEnabled(false);
            }
        }else {
            getPreferenceScreen().removePreference(mLinKing);
            getPreferenceScreen().removePreference(mWeather);

        }
    }
    public void disablePreferences(){
        if (DonatePermission()) {
            getPreferenceManager().findPreference("network_check").setEnabled(true);
            getPreferenceManager().findPreference("checkupdates").setEnabled(true);
            getPreferenceManager().findPreference("checkuapkspdates").setEnabled(true);
            getPreferenceManager().findPreference("leo_shortcut").setEnabled(true);
            getPreferenceManager().findPreference(PREF_LEO_LAUNCHER).setEnabled(true);
        }else {
            PermissionFunction( mContext);
            getPreferenceManager().findPreference("leo_shortcut").setEnabled(false);
            getPreferenceManager().findPreference("checkupdates").setEnabled(false);
            getPreferenceManager().findPreference("checkuapkspdates").setEnabled(false);
            getPreferenceManager().findPreference("network_check").setEnabled(false);
            getPreferenceManager().findPreference(PREF_LEO_LAUNCHER).setEnabled(false);
        }

    }

    private void setAeLauncherEnabled(boolean enabled) {
        PackageManager pm =mContext.getPackageManager();
        pm.setComponentEnabledSetting(mLauncherComponent, enabled
                ? PackageManager.COMPONENT_ENABLED_STATE_ENABLED
                : PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
        showSnack(getString(R.string.app_name)+" "+getString(R.string.apps_launcher_enabled_update));
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        if (preference ==mShortcut) {
            Shortcut(getActivity());

            return true;
        } else if (preference ==mRicture) {


            return true;
        } else {
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference ==mCheckOTA ) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                  "leo_salt_checkupdates_rom" , value ? 1 : 0);
            setota();
            return true;
        }else if (preference ==mCheckAPKS) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_apks_check_info" , value ? 1 : 0);
            setota();
            return true;
        }else if (preference ==mWeather) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_home_weather_info" , value ? 1 : 0);
            LinKing();
            return true;
        }else if (preference ==mLinKing) {
            boolean value = (Boolean) newValue;
            Settings.System.putInt(getActivity().getContentResolver(),
                    "leo_home_linking_info" , value ? 1 : 0);
            LinKing();
            return true;
        }else if (preference ==  mLauncher) {
            setAeLauncherEnabled((Boolean) newValue);
            return true;
        } else {
            return false;
        }
    }

    private void setota() {
       boolean mOTA = ota(mContext);
        if (mOTA ) {
            new Handler().postDelayed(() -> {
                checkOTAinfo(getActivity());
            }, 50);
        }
    }

}
