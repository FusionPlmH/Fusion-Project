package com.leo.global.view.gridmenu;




import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.StatFs;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.CardView;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.AdapterView;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;


import com.leo.global.tweaks.LeoAmberApplication;
import com.leo.global.tweaks.R;
import com.leo.global.tweaks.activity.FragSettingsActivity;
import com.leo.global.tweaks.base.BaseActivity;
import com.leo.global.utils.BatteryUtil;
import com.leo.global.utils.MemInfo;
import com.leo.global.view.gridview.AppAboutGridViewAdapter;
import com.leo.global.view.widget.LineGridView;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;


import static android.support.constraint.Constraints.TAG;

import static com.leo.global.tools.deviceinfo.ExtraInfo.getCPUInfo;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getCpuMhz;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getDisplayDensity;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getDisplayDiagonalInches;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getDisplayDpi;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getDisplayDpiX;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getDisplayDpiY;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getDisplayHeight;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getDisplayHeightInches;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getDisplayRefreshRate;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getDisplayWidth;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getDisplayWidthInches;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getIMEI;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getKenel;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getMac;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getOperatorType;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getPhoneNumber;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getProcCpuArchitecture;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getProcCpuBogoMips;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getProcCpuDescription;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getProcCpuFeatures;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getProcCpuImplementer;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getProcCpuPart;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getProcCpuRevision;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getPropCpuAbi2;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getSerialNumber;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getStockCarrier;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getTimes;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getbusybox;
import static com.leo.global.tweaks.LeoAmberApplication.getContext;
import static com.leo.global.utils.BatteryUtil.geTUsableindex;
import static com.leo.global.utils.BatteryUtil.getBatteryTemperature;
import static com.leo.global.utils.BatteryUtil.getCurrent;
import static com.leo.global.utils.BatteryUtil.getCycleindex;
import static com.leo.global.utils.BatteryUtil.getDesignCapacity;
import static com.leo.global.utils.BatteryUtil.getVoltage;
import static com.leo.global.utils.Build.getCustomDrawable;
import static com.leo.global.utils.Build.getIpAddress;
import static com.leo.global.utils.Build.getLeoBuild;

import static com.leo.global.utils.Build.isLunarCN;
import static com.leo.global.utils.CpuInfo.getCpuAbi;
import static com.leo.global.utils.CpuInfo.getCpuAvailableFrequenciesSimple;
import static com.leo.global.utils.CpuInfo.getCpuAvailableGovernorsSimple;
import static com.leo.global.utils.CpuInfo.getCpuGovernor;

import static com.leo.global.utils.CpuInfo.getNumCpuCores;

import static com.leo.global.utils.CpuInfo.isCpu64;


import static com.leo.global.utils.MemInfo.ObtainFSPartSize;
import static com.leo.global.utils.MemInfo.getRAM;
import static com.leo.global.utils.MemInfo.getTotsalMemory;
import static com.leo.global.utils.PrefUtils.isRooted;
import static com.leo.global.view.widget.DialogView.initInfoView;


public class AboutMenuFragment extends Fragment implements View.OnClickListener{
    private LineGridView mAbout;
   public Activity mContext;
    private LinearLayout mAndroid;
    private LinearLayout mCellphone;
    private LinearLayout mDevice;
    private ImageView mAPPView;
    private TextView mAPPTextView;
    private TextView mAPPSView;
    private View mView;
    private LinearLayout mAPP;
    private ImageView mLeoLOGO;



        public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.about_meun, container, false);
            mContext=getActivity();
          //  mContext.registerReceiver(mBatInfoReceiver, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));

        initValues(mView);
        return  mView;
    }




    private void initValues(View v) {
        mAbout = (LineGridView) v.findViewById(R.id.grid_about);
        mAndroid=v.findViewById(R.id.about_android);
        mCellphone=v.findViewById(R.id.about_device);
        mDevice=v.findViewById(R.id.about_hardware);
        mAPP=v.findViewById(R.id.about_app);
        mAbout.setAdapter(new AppAboutGridViewAdapter(getActivity()));
       // mScreenInfo = ScreenUtil.getScreenInfo(getContext());
        mAbout.setOnItemClickListener((adapterView, view, i, l) -> AboutItem(i));
        mAndroid.setOnClickListener(this);
        mCellphone.setOnClickListener(this);
        mDevice.setOnClickListener(this);
        mAPP.setOnClickListener(this);
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = getContext().getPackageManager().getApplicationInfo(getContext().getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        mAPPView=v.findViewById(R.id.app_view);
        mAPPTextView=v.findViewById(R.id.about_app_text_view);
        mAPPSView=v.findViewById(R.id.about_app_sumarry_view);
        mLeoLOGO=v.findViewById(R.id.about_leo_logo);
        mLeoLOGO.setImageDrawable(getCustomDrawable(mContext, "leologo", "drawable"));
        String appLabel = applicationInfo.loadLabel(getContext().getPackageManager()).toString();
        Drawable appIcon = applicationInfo.loadIcon(getContext().getPackageManager());


        mAPPView.setImageDrawable(appIcon);
        mAPPTextView.setText(appLabel);

        mAPPSView.setText(getVersionName());


        AlphaAnimation aa = new AlphaAnimation(0.1f,1.0f);
        //渐变时间
        aa.setDuration(ANIMATION_TIME);
        //展示图片渐变动画
        v.findViewById(R.id.about_leo_logo).startAnimation(aa);

        //渐变过程监听
        aa.setAnimationListener(new Animation.AnimationListener() {

            /**
             * 动画开始时
             */
            @Override
            public void onAnimationStart(Animation animation) {
               // System.out.println("动画开始...");
            }

            /**
             * 重复动画时
             */
            @Override
            public void onAnimationRepeat(Animation animation) {
             //   System.out.println("动画重复...");
            }

            /**
             * 动画结束时
             */
            @Override
            public void onAnimationEnd(Animation animation) {
             //   System.out.println("动画结束...");
            }
        });
    }
    public   String getVersionName()
    {
        // 获取packagemanager的实例
        PackageManager packageManager = getContext().getPackageManager();
        // getPackageName()是你当前类的包名，0代表是获取版本信息
        PackageInfo packInfo = null;
        try {
            packInfo = packageManager.getPackageInfo (getContext().getPackageName(),0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        String version = packInfo.versionName;
        return version;
    }
    private  int AboutItem(int i){
        switch (i) {
            case 0:

                break;
            case 1:

                break;
            case 2:

                break;
            case 3:

                break;
        }
        return i;
    }
    private void openUrl(String url) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
    }

    public static String getBaseband_Ver(){
        String baseband = getLeoBuild("gsm.version.baseband");
        if (baseband.contains(",")){
            String[] baseband_parts = baseband.split(",");
            if (baseband_parts.length > 0 && baseband_parts[0].equals(baseband_parts[1])){
                baseband = baseband_parts[0];
            }
        }
        return baseband;
    }

    String[] AndroidInfoName={getContext().getString(R.string.rom_info),
             getContext().getString(R.string.leo_info)+getContext().getString(R.string.android_versions),
             getContext().getString(R.string.basics_info)+getContext().getString(R.string.android_versions),
             "Android"+getContext().getString(R.string.android_versions),
             "SDK"+getContext().getString(R.string.android_versions),
             getContext().getString(R.string.compile_info),
             getContext().getString(R.string.kernel_info)+getContext().getString(R.string.android_versions),
             getContext().getString(R.string.baseband_info)+getContext().getString(R.string.android_versions),
           "Bootloader"+getContext().getString(R.string.android_versions),
            "Busybox"+getContext().getString(R.string.android_versions)
             ,
          };
    String[] AndroidInfoMessage={getLeoBuild("ro.build.rom.name"),
            getLeoBuild("ro.build.leo.code"),
            getLeoBuild("ro.build.version.incremental"),
            getLeoBuild("ro.build.version.release"),
            getLeoBuild("ro.build.version.sdk"),
            getLeoBuild("ro.build.display.id"),
          getKenel(),
            getBaseband_Ver(),
            getLeoBuild("ro.bootloader"),
           getbusybox()};
    String[] phoneInfoName={getContext().getString(R.string.device_info_manufacturers),
            getContext().getString(R.string.device_info_model),
            getContext().getString(R.string.device_info_serial),
            "IP",
            "WIFI MAC",
            getContext().getString(R.string.device_info_carrier),
            getContext().getString(R.string.device_info_phonenumber),
            "IMEI",
            getContext().getString(R.string.device_info_runtime),
            "是否ROOT",

    };
    String TOOT=(isRooted() ? "ROOT" : "no");
    String[] phoneInfoMessage={Build.MANUFACTURER,
            getLeoBuild("ro.product.model"),
            getLeoBuild("ril.serialnumber"),
            getIpAddress(true),
            getMac(mContext),
            getOperator(),
            getPhoneNumber(),
            getIMEI(),
            getTimes(LeoAmberApplication.getContext()),
            TOOT
    };


    public static String getOperator() {
        String NAME;
        if(isLunarCN()){
            NAME=getOperatorType();
        }else {
            NAME=getStockCarrier();
        }
        return NAME;
    }
    public static String getCPUExtension() {
        String NAME=null;
        if (getLeoBuild("ro.hardware").equals("qcom")) {
            NAME = getCPUInfo();
            // return;
        } else  if (getLeoBuild("ro.hardware").equals("samsungexynos8895")){
            NAME = "Samsung Exynos 8895";
        }
        return NAME;
    }

    @Override
    public void onClick(View v) {
        int id = v.getId();
        doInfo(id);
    }
    private void doInfo(int id) {

        switch (id) {
            case R.id.about_android:
                initInfoView(mContext,R.string.android_info, R.drawable.android,AndroidInfoName,AndroidInfoMessage );
                break;
            case R.id.about_device:

                initInfoView(mContext,R.string.device_info, R.drawable.ic_about_display,phoneInfoName,phoneInfoMessage );
                break;

            case R.id.about_app:

                Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
                intent.setData(Uri.parse("package:" + getContext().getPackageName()));
                startActivity(intent);
                break;
            case R.id.about_hardware:
              final  Intent FragmentContainer;

                break;
        }
    }

    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }


    public static final int ANIMATION_TIME = 5000;


}