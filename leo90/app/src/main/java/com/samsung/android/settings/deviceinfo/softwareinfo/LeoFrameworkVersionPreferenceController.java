package com.samsung.android.settings.deviceinfo.softwareinfo;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceScreen;
import com.android.settings.core.PreferenceControllerMixin;
import com.android.settingslib.core.AbstractPreferenceController;


import static com.android.settings.leo.LeoConfig.ConfigManager;
import static com.android.settings.leo.LeoConfig.getStringIdentifier;


public class LeoFrameworkVersionPreferenceController extends AbstractPreferenceController implements PreferenceControllerMixin {
    private Preference mPreference;
    private Context mContext;
    public LeoFrameworkVersionPreferenceController(Context context) {
        super(context);
        mContext=context;
    }

    public void displayPreference(PreferenceScreen preferenceScreen) {
        this.mPreference = preferenceScreen.findPreference("leo_framework_version");
        LeoFrameworkVersionPreferenceController.super.displayPreference(preferenceScreen);
    }

    public String getPreferenceKey() {
        return "leo_framework_version";
    }

    public boolean isAvailable() {
        return true;
    }

    public void updateState(Preference preference) {
       LeoFrameworkVersionPreferenceController.super.updateState(preference);
        if (this.mPreference != null) {
            mPreference.setTitle(getStringIdentifier(mContext,"leo_info"));
            this.mPreference.setSummary(getCodeVersion());
        }
    }

    public  String getCodeVersion() {
        PackageManager packageManager =mContext.getPackageManager();
        PackageInfo packInfo = null;
        try {
            packInfo = packageManager.getPackageInfo(ConfigManager, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        String version = packInfo.versionName;
        return version;
    }
}
