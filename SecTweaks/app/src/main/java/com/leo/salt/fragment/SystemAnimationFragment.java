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


package com.leo.salt.fragment;

import android.annotation.SuppressLint;
import android.app.Activity;

import android.app.Dialog;
import android.app.DownloadManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
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
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;

import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.app.AlertDialog;
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
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import com.leo.salt.LeoApp;
import com.leo.salt.R;
import com.leo.salt.activity.SubActivity;
import com.leo.salt.activity.WebViewActivity;
import com.leo.salt.base.BaseActivity;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.donate.DonateActivity;
import com.leo.salt.preference.MyListPreference;
import com.leo.salt.update.DownloadActivity;
import com.leo.salt.utils.AndroidUtils;
import com.leo.salt.utils.root.GoogleServices;
import com.leo.salt.utils.root.Helpers;


import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import static android.content.Context.BIND_AUTO_CREATE;
import static com.leo.salt.utils.AndroidUtils.getPropHardware;
import static com.leo.salt.utils.Constants.LeoInstallGoogleCN;

import static com.leo.salt.utils.Constants.safety;

import static com.leo.salt.utils.Utils.isLunarSetting;
import static com.leo.salt.widget.DialogUtil.showWipePrefs;


public  class SystemAnimationFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener {

        public SystemAnimationFragment() {
        }

    public void createSDCardDirimg(){
        // if (Version.equals(leoversion())) {
        //  getCopyrightAlertDialog();
        //   return;
        //  }
        //  Copyright ( );
        if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){
            // 创建一个文件夹对象，赋值为外部存储器的目录
            // 创建一个文件夹对象，赋值为外部存储器的目录
            File sdcardDir =Environment.getExternalStorageDirectory();
            //得到一个路径，内容是sdcard的文件夹路径和名字
            String path=sdcardDir.getPath()+"/Android/ota";
            File path1 = new File(path);
            if (!path1.exists()) {
                //若不存在，创建目录，可以在应用启动的时候创建
                path1.mkdirs();
                getActivity(). setTitle("paht ok,path:"+path);
            }
        }
        else{
            getActivity(). setTitle("false");
            return;

        }

    }
    private GoogleServices.GoogleServicesBinder GoogleServicesBinder;
    private static final String TAG = "SystemAnimationFragment";
    private static final String GOOGLE_SERBICES= "leo_tweaks_google_services";

    private static final String PREF_dolby_BOOTANIM = "leo_tweaks_location";
    private Preference mLocation;
    private Preference mGOOGLE;
   private Preference mWipe;
   private static final String PREF_WIPE_BOOTANIM = "leo_tweaks_wipe";
    private Preference mAPPS;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
       // addPreferencesFromResource(R.xml.system_animation_prefs);
        BasePreferenceFragment(mContext, this, "system_animation_prefs");
        final PreferenceScreen prefSet = getPreferenceScreen();
        final ContentResolver resolver = getActivity().getContentResolver();

        mLocation= findPreference(PREF_dolby_BOOTANIM);
        prefSet.findPreference(PREF_dolby_BOOTANIM).setSummary(R.string.location_service_switcher);
        mWipe= findPreference(PREF_WIPE_BOOTANIM);
        mAPPS= findPreference("leo_apps");
        createSDCardDirimg();
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
        mGOOGLE= findPreference(GOOGLE_SERBICES);
        Intent intent=new Intent(mContext,GoogleServices.class);
        mContext.startService(intent);
        mContext. bindService(intent,connection,BIND_AUTO_CREATE);//绑定服务，可以让服务与活动进行通信
    }
    //创建了一个ServiceConnection匿名类
    private ServiceConnection connection=new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            //获取到DownloadBinder的实例，用这个实例在活动中调用服务提供的各种方法

            GoogleServicesBinder= (GoogleServices.GoogleServicesBinder) service;
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {

        }
    };

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mLocation) {
            setlocation();
            return true;
        } else if (preference == mWipe) {
            showWipePrefs(mContext);
            return true;
        } else if (preference == mGOOGLE) {
            GoogleServicesInstall();
            return true;
        }else if (preference ==  mAPPS) {
            Helpers.Companion.APPS(mContext);
            return true;
        } else {
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
     }

    public static boolean isAppInstalled(Context context, String packageName) {
        final PackageManager packageManager = context.getPackageManager();
        //取得所有的PackageInfo
        List<PackageInfo> pinfo = packageManager.getInstalledPackages(0);
        List<String> pName = new ArrayList<>();
        if (pinfo != null) {
            for (int i = 0; i < pinfo.size(); i++) {
                String pn = pinfo.get(i).packageName;
                pName.add(pn);
            }
        }
        //判断包名是否在系统包名列表中
        return pName.contains(packageName);
    }
    private final String APP_PACKAGE = "com.google.android.gms";
    private void GoogleServicesInstall() {
        AlertDialog dialog = new AlertDialog.Builder(mContext)
                .setTitle("GoogleServices")//设置对话框的标题
                .setItems(R.array.google_services_options, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:
                                if (isAppInstalled(mContext, APP_PACKAGE)) {
                                    Toast.makeText(mContext,mContext.getResources().getString(R.string.google_servicesr_yes),Toast.LENGTH_SHORT).show();
                                } else {
                                    GoogleServicesBinder.startDownload(LeoInstallGoogleCN);//高通
                                }
                                break;
                            case 1:
                                if (isAppInstalled(mContext, APP_PACKAGE)) {

                                } else {
                                    Toast.makeText(mContext,mContext.getResources().getString(R.string.google_servicesr_no),Toast.LENGTH_SHORT).show();
                                }
                                break;


                        }
                        dialog.dismiss();
                    }
                })
                .create();
        // dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();
    }

    //一定要记得写下代码对服务进行接触绑定，不然可能会造成内存泄漏
    @Override
    public void onDestroy() {
        super.onDestroy();
        mContext.unbindService(connection);
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
       // dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();

    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));


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
        if (AndroidUtils.getCustomOTA().equals(safety)) {
            getPreferenceManager().findPreference("leo_apps").setEnabled(true);
            getPreferenceManager().findPreference(GOOGLE_SERBICES).setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_global_navbar_landscape_mod").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_global_navbar_portrait_mod").setEnabled(true);
        }else {
            getPreferenceManager().findPreference("leo_apps").setEnabled(false);
            getPreferenceManager().findPreference(GOOGLE_SERBICES).setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_global_navbar_landscape_mod").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_global_navbar_portrait_mod").setEnabled(false);

        }

    }



}
