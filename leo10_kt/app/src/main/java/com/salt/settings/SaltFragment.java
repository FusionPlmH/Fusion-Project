package com.salt.settings;

import android.os.Bundle;


import androidx.annotation.Nullable;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;

import static com.salt.settings.SaltUtils.getApksStringInt;
import static com.salt.settings.SaltUtils.getLeoROMState;
import static com.salt.settings.SaltUtils.getLeoROMdonate;
import static com.salt.settings.SaltUtils.getSaltProper;
import static com.salt.settings.SaltUtils.*;


public  class SaltFragment extends PreferenceFragmentCompat {
    public Preference mROMbasics;
    public Preference mROMNAME;
    public Preference mROMFrame;
    public Preference mROMCompile;

    public Preference mCopyright;
    public Preference mAndroid;
    public Preference mKernel;
    public Preference mBusybox;
    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {

        setPreferencesFromResource(getLeoUIResource(getActivity(),"xml/sec_software_update_settings"), rootKey);

        mROMbasics=(Preference) findPreference("os_basics"); //ROM基础版本
        mROMbasics.setTitle(getApksStringInt(getActivity(),"basics_info")+getApksStringInt(getActivity(),"android_versions"));
        mROMbasics.setSummary(getSaltProper("ro.build.id")+"."+ getSaltProper("ro.build.PDA"));

        mROMNAME=(Preference) findPreference("os_name"); //ROMNMEI
        mROMNAME.setTitle(getApksStringInt(getActivity(),"rom_info"));
        mROMNAME.setSummary(getSaltProper("ro.leo.name"));

        mROMFrame=(Preference) findPreference("os_frame");//ROM框架
        mROMFrame.setTitle(getApksStringInt(getActivity(),"leo_info")+getApksStringInt(getActivity(),"android_versions"));
        mROMFrame.setSummary(getVersionName(getActivity()));

        mROMCompile=(Preference) findPreference("os_versions");//编译版本号
        mROMCompile.setTitle(getApksStringInt(getActivity(),"compile_info"));
        mROMCompile.setSummary(getLeoROMdonate());

        mCopyright=(Preference) findPreference("os_state");//权限版本
        mCopyright.setTitle("捐赠状态");
        mCopyright.setSummary(getLeoROMState());
        if (getSaltProper("ro.leo.os.vip.donate").equals("true")) {
            getPreferenceScreen().addPreference(mCopyright);
        }else {
            getPreferenceScreen().removePreference(mCopyright);
        }
        mAndroid=(Preference) findPreference("os_android");//权限版本
        mAndroid.setTitle("Android"+getApksStringInt(getActivity(),"android_versions"));
        mAndroid.setSummary(getSaltProper("ro.build.version.release")+"【"+getAndroidSDKVersion()+"】"+" SDK"+" "+
                getSaltProper("ro.build.version.sdk"));

        mBusybox=(Preference) findPreference("os_busybox");//权限版本
        mBusybox.setTitle("Busybox"+getApksStringInt(getActivity(),"android_versions"));
        mBusybox.setSummary(getbusybox());
    }



}