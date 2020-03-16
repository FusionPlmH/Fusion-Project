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


package com.tweaks.leo.fragment;

import android.annotation.SuppressLint;
import android.app.Activity;

import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import com.tweaks.leo.LeoApp;
import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.activity.WebViewActivity;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.donate.DonateActivity;
import com.tweaks.leo.preference.MyListPreference;
import com.tweaks.leo.utils.AndroidUtils;


import static com.tweaks.leo.utils.root.Helpers.CODE;
import static com.tweaks.leo.utils.root.Helpers.GoogleDisabled;
import static com.tweaks.leo.utils.root.Helpers.GoogleEnabled;
import static com.tweaks.leo.utils.root.Helpers.RootCode;


import static com.tweaks.leo.utils.root.Helpers.WipeMeun;
import static com.tweaks.leo.utils.root.Helpers.locationCode;
import static com.tweaks.leo.widget.DialogUtil.showWipePrefs;


public  class SystemAnimationFragment extends PreferenceFragment implements Preference.OnPreferenceChangeListener {
               private MyListPreference mGoogleServices;
        public SystemAnimationFragment() {
        }


    private BaseActivity mContext;
    private static final String TAG = "SystemAnimationFragment";
    private static final String STATUS_BAR_WALLPAER_STYLE = "leo_tweaks_google_services_freeze";
    private static final String PREF_dolby_BOOTANIM = "leo_tweaks_location";
               private static final String PREF_ROOT_BOOTANIM = "leo_tweaks_root";


               private Preference mLocation;

               private Preference mRoot;
               private Preference mWipe;
               private static final String PREF_WIPE_BOOTANIM = "leo_tweaks_wipe";
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.system_animation_prefs);
        mContext = (BaseActivity) getActivity();
        final PreferenceScreen prefSet = getPreferenceScreen();
        final ContentResolver resolver = getActivity().getContentResolver();
        mRoot= findPreference(PREF_ROOT_BOOTANIM);
        mLocation= findPreference(PREF_dolby_BOOTANIM);
        prefSet.findPreference(PREF_dolby_BOOTANIM).setSummary("修改定位服务");
        mWipe= findPreference(PREF_WIPE_BOOTANIM);
        mGoogleServices = (MyListPreference) findPreference(STATUS_BAR_WALLPAER_STYLE);
        if (AndroidUtils.getCustomOTA().equals(CODE)) {

        }else {
            if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();

        }
        int statusbarbackgroundstyle = Settings.System.getInt(resolver,
                STATUS_BAR_WALLPAER_STYLE, 1);
        mGoogleServices.setValue(String.valueOf(statusbarbackgroundstyle));
        mGoogleServices.setSummary(mGoogleServices.getEntry());

        mGoogleServices.setOnPreferenceChangeListener(this);
    }


               @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {

        if (preference == mRoot) {
            setRoot();
            return true;
        } else if (preference == mLocation) {
            setlocation();
               return true;
         } else if (preference == mWipe) {
            showWipePrefs(mContext);
            return true;
        }else {
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }

               private void setlocation() {
                   AlertDialog dialog = new AlertDialog.Builder(mContext)

                           .setTitle("定位切换")//设置对话框的标题
                           .setItems(R.array.location_service, new DialogInterface.OnClickListener() {
                               @Override
                               public void onClick(DialogInterface dialog, int which) {
                                   switch (which) {
                                       case 0:
                                           //安装
                                           locationCode("正在安装高德定位",mContext,"rm -rf /system/priv-app/OfflineNetworkLocation_Baidu","rm -rf /system/priv-app/AMapNetworkLocation","cp -r -a /system/leo/location/gaode/ system/priv-app/AMapNetworkLocation","高德定位");

                                           break;
                                       case 1:
                                           //卸载
                                           locationCode("正在安装百度定位",mContext,"rm -rf /system/priv-app/AMapNetworkLocation","rm -rf /system/priv-app/OfflineNetworkLocation_Baidu","cp -r -a /system/leo/location/baidu/ system/priv-app/OfflineNetworkLocation_Baidu","百度定位");
                                           break;

                                   }
                                   dialog.dismiss();
                               }
                           })
                           .create();
                   dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
                   dialog.show();

               }
               private void setRoot() {
                   AlertDialog   dialog = new AlertDialog.Builder(mContext)
                           .setTitle("注意")//设置对话框的标题
                           .setMessage("ROOT 模式切换仅支持 G9500/9550 点击(确定)开始 选择切换模式")//设置对话框的内容
                           //设置对话框的按钮
                           .setNegativeButton("取消", new DialogInterface.OnClickListener() {
                               @Override
                               public void onClick(DialogInterface dialog, int which) {

                                   dialog.dismiss();
                               }
                           })

                           .setPositiveButton("确定", new DialogInterface.OnClickListener() {

                               @Override
                               public void onClick(DialogInterface dialog, int which) {
                                   hint();
                                   dialog.dismiss();
                               }
                           })
                           .create();
                   dialog.show();
                   //屏幕定格在此对话框
                   dialog.setCanceledOnTouchOutside(false);
                   //屏蔽返回键
                   dialog.setCancelable(false);

                   dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);

               }

               private void hint() {
                   if (AndroidUtils.getCustomOTA().equals("JXU3NzFGJTBB")) {
                       AlertDialog dialog = new AlertDialog.Builder(mContext)

                               .setTitle("Root方案")//设置对话框的标题
                               .setItems(R.array.root_mode, new DialogInterface.OnClickListener() {
                                   @Override
                                   public void onClick(DialogInterface dialog, int which) {
                                       switch (which) {
                                           case 0:
                                               //安装
                                               RootCode("正在安装 SuperSU",mContext,"cp  /system/leo/root/su.zip /cache/recovery/root.zip");
                                               break;
                                           case 1:
                                               //卸载
                                               RootCode("正在安装 Magisk",mContext,"cp  /system/leo/root/magisk.zip /cache/recovery/root.zip");
                                               break;

                                       }
                                       dialog.dismiss();
                                   }
                               }).create();
                       dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
                       dialog.show();

                   }else {
                       AlertDialog   dialog = new AlertDialog.Builder(mContext)
                               .setTitle("无法使用")//设置对话框的标题
                               .setMessage("很抱歉,目前你无法使用<在线更新>,此功能只有捐赠者方可使用")//设置对话框的内容
                               //设置对话框的按钮
                               .setPositiveButton("马上捐赠", new DialogInterface.OnClickListener() {

                                   @Override
                                   public void onClick(DialogInterface dialog, int which) {
                                       startActivity(new Intent(mContext, DonateActivity.class));
                                       dialog.dismiss();
                                   }
                               })
                               .create();
                       dialog.show();
                       //屏幕定格在此对话框
                       dialog.setCanceledOnTouchOutside(false);
                       //屏蔽返回键
                       dialog.setCancelable(false);

                       dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
                   }


               }


    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));

        if(preference ==  mGoogleServices){
            if(newValue.equals("0")){
                GoogleEnabled(mContext);
            }else if(newValue.equals("1")){
                GoogleDisabled(mContext);
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
