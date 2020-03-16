package com.android.settings.deviceinfo;


import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.arch.lifecycle.Lifecycle;
import android.arch.lifecycle.LifecycleObserver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;

import android.os.SystemProperties;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceCategory;
import android.support.v7.preference.PreferenceGroup;
import android.support.v7.preference.PreferenceScreen;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.text.BidiFormatter;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;

import com.android.settings.core.InstrumentedPreferenceFragment;
import com.android.settings.core.PreferenceControllerMixin;
import com.android.settings.core.instrumentation.InstrumentedDialogFragment;
import com.android.settingslib.core.AbstractPreferenceController;
import com.samsung.android.settings.Rune;
import com.samsung.android.settings.deviceinfo.SecDeviceInfoUtils;


public class BuildNumberPreferenceController extends AbstractPreferenceController implements PreferenceControllerMixin, LifecycleObserver {
    private final Activity mActivity;

    private boolean mDebuggingFeaturesDisallowedBySystem;
    private int mDevHitCountdown;
    private Toast mDevHitToast;
    private final Fragment mFragment;

    private boolean mProcessingLastDevHit;


    public BuildNumberPreferenceController(Context context, Activity activity, Fragment fragment, Lifecycle lifecycle) {
        super(context);
        this.mActivity = activity;
        this.mFragment = fragment;

    }

    private void enableDevelopmentSettings() {
        this.mDevHitCountdown = 0;
        this.mProcessingLastDevHit = false;

        if (this.mDevHitToast != null) {
            this.mDevHitToast.cancel();
        }
        this.mDevHitToast = Toast.makeText(this.mContext, 2131892171, 1);
        this.mDevHitToast.show();
    }

    public void displayPreference(PreferenceScreen preferenceScreen) {
        BuildNumberPreferenceController.super.displayPreference(preferenceScreen);
        Preference findPreference = preferenceScreen.findPreference("build_number");
        if (findPreference != null) {
            try {
                if (Rune.isChinaCMCCModel()) {
                    findPreference.setSummary(SecDeviceInfoUtils.getCMCCBuildNumberSummary(mContext, Build.DISPLAY));
                } else {
                    findPreference.setSummary(getLeoROMdonate());
                }
                findPreference.setEnabled(true);
            } catch (Exception e) {
                findPreference.setSummary(2131887830);
            }
        }
    }
    public String getLeoROMdonate() {
        String strvip="ro.leo.os.vip.donate";
        String str="";
        if(SystemProperties.get(strvip).equals("true")){
            str=" №."+ SystemProperties.get("ro.leo.online.update.version");
        }else if(SystemProperties.get(strvip).equals("0")){
            str="";
        }
        return BidiFormatter.getInstance().unicodeWrap(Build.DISPLAY)+str;
    }
    public String getPreferenceKey() {
        return "build_number";
    }

    @Override
    public boolean isAvailable() {
        return false;
    }


}
