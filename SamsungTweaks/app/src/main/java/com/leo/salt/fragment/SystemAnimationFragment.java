/*
 * Copyright (C) 2017 AICP
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


package com.fusionleo.salt.fragment;

import android.annotation.SuppressLint;
import android.app.Activity;

import android.app.Dialog;
import android.app.DownloadManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.view.Display;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import com.fusionleo.salt.LeoApp;
import com.fusionleo.salt.R;
import com.fusionleo.salt.activity.SubActivity;
import com.fusionleo.salt.activity.WebViewActivity;
import com.fusionleo.salt.base.BaseActivity;
import com.fusionleo.salt.base.BasePreferenceFragment;
import com.fusionleo.salt.donate.DonateActivity;
import com.fusionleo.salt.preference.MyListPreference;
import com.fusionleo.salt.update.DownloadActivity;
import com.fusionleo.salt.utils.AndroidUtils;
import com.fusionleo.salt.utils.root.Helpers;


import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import static com.fusionleo.salt.utils.Constants.safety;
import static com.fusionleo.salt.utils.Utils.VipDATA;
import static com.fusionleo.salt.widget.DialogUtil.Promptdonate;
import static com.fusionleo.salt.widget.DialogUtil.showWipePrefs;


public  class SystemAnimationFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {
               private MyListPreference mGoogleServices;
        public SystemAnimationFragment() {
        }



    private static final String TAG = "SystemAnimationFragment";
    private static final String GOOGLE_SERBICES= "leo_tweaks_google_services";
    private static final String STATUS_BAR_WALLPAER_STYLE = "leo_tweaks_google_services_freeze";
    private static final String PREF_dolby_BOOTANIM = "leo_tweaks_location";

               private Preference mLocation;
    private Preference mGOOGLE;

               private Preference mWipe;
               private static final String PREF_WIPE_BOOTANIM = "leo_tweaks_wipe";
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        BasePreferenceFragment(mContext, this, "system_animation_prefs");
        final PreferenceScreen prefSet = getPreferenceScreen();
        final ContentResolver resolver = getActivity().getContentResolver();

        mLocation= findPreference(PREF_dolby_BOOTANIM);
        prefSet.findPreference(PREF_dolby_BOOTANIM).setSummary(R.string.location_service_switcher);
        mWipe= findPreference(PREF_WIPE_BOOTANIM);
        mGoogleServices = (MyListPreference) findPreference(STATUS_BAR_WALLPAER_STYLE);
        if (AndroidUtils.getCustomOTA().equals(safety)) {

        }else {
            if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();

        }
        int statusbarbackgroundstyle = Settings.System.getInt(resolver,
                STATUS_BAR_WALLPAER_STYLE, 1);
        mGoogleServices.setValue(String.valueOf(statusbarbackgroundstyle));
        mGoogleServices.setSummary(mGoogleServices.getEntry());

        mGoogleServices.setOnPreferenceChangeListener(this);
        mGOOGLE= findPreference(GOOGLE_SERBICES);
    }


               @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
 if (preference == mLocation) {
            setlocation();
               return true;
         } else if (preference == mWipe) {
            showWipePrefs(mContext);
            return true;
        } else if (preference == mGOOGLE) {
            Helpers.Companion.GoogleEnabledrecover(mContext);
            return true;
        }else {
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }
    private void setlocation() {
        AlertDialog dialog = new AlertDialog.Builder(mContext)

                .setTitle(R.string.location_service_switcher)//设置对话框的标题
                .setItems(R.array.location_service, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:
                                //安装
                                Helpers.Companion.locationCode("正在安装高德定位",mContext,"rm -rf /system/priv-app/OfflineNetworkLocation_Baidu","rm -rf /system/priv-app/AMapNetworkLocation","cp -r -a /system/leo/location/gaode/ system/priv-app/AMapNetworkLocation","高德定位");

                                break;
                            case 1:
                                //卸载
                                Helpers.  Companion.locationCode("正在安装百度定位",mContext,"rm -rf /system/priv-app/AMapNetworkLocation","rm -rf /system/priv-app/OfflineNetworkLocation_Baidu","cp -r -a /system/leo/location/baidu/ system/priv-app/OfflineNetworkLocation_Baidu","百度定位");
                                break;

                        }
                        dialog.dismiss();
                    }
                })
                .create();
        dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();

    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));

        if(preference ==  mGoogleServices){
            if(newValue.equals("0")){
                Helpers.  Companion.GoogleEnabled(mContext);
            }else if(newValue.equals("1")){
                Helpers. Companion.GoogleDisabled(mContext);
            }
            int statusbarbackgroundstyle = Integer.valueOf((String) newValue);
            int index =  mGoogleServices.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    STATUS_BAR_WALLPAER_STYLE, statusbarbackgroundstyle);
            mGoogleServices.setSummary(
                    mGoogleServices.getEntries()[index]);
        }
        return true;
    }
    public boolean isProKeyInstalled(Context context){
        boolean isInstalled;
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo pInfo1 = packageManager.getPackageInfo("", PackageManager.GET_SIGNATURES);
            PackageInfo pInfo2 = packageManager.getPackageInfo(context.getPackageName(), PackageManager.GET_SIGNATURES);

            isInstalled = pInfo1.signatures[0].toCharsString().equals(pInfo2.signatures[0].toCharsString());
        } catch (PackageManager.NameNotFoundException e) {
            isInstalled = false;
            e.printStackTrace();
        }
        return isInstalled;
    }

    public void disablePreferences(){

        getPreferenceManager().findPreference(STATUS_BAR_WALLPAER_STYLE).setEnabled(false);

    }



}
