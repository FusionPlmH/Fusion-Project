/*
 * Copyright (C) 2014 The Dirty Unicorns project
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

package com.leo.global.tools.deviceinfo;

import android.annotation.SuppressLint;
import android.app.ActivityManager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.icu.text.DecimalFormat;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.StatFs;
import android.os.SystemClock;
import android.support.v4.app.Fragment;

import android.support.v7.widget.Toolbar;
import android.text.format.Formatter;

import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MenuItem;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;


import com.leo.global.tweaks.R;
import com.leo.global.utils.BatteryUtil;
import com.leo.global.utils.ScreenUtil;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import static com.leo.global.tools.deviceinfo.ExtraInfo.getCpuMhz;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getMac;
import static com.leo.global.tools.deviceinfo.ExtraInfo.getPhoneNumber;
import static com.leo.global.utils.BatteryUtil.CpuTemp;
import static com.leo.global.utils.BatteryUtil.GPUTemp;
import static com.leo.global.utils.BatteryUtil.GPUTempMHZ;

import static com.leo.global.utils.BatteryUtil.geTUsableindex;
import static com.leo.global.utils.BatteryUtil.getBatteryTemperature;
import static com.leo.global.utils.BatteryUtil.getCurrent;
import static com.leo.global.utils.BatteryUtil.getCycleindex;
import static com.leo.global.utils.BatteryUtil.getDesignCapacity;
import static com.leo.global.utils.BatteryUtil.getVoltage;
import static com.leo.global.utils.CpuInfo.getCpuAbi;
import static com.leo.global.utils.CpuInfo.getCpuAvailableFrequenciesSimple;
import static com.leo.global.utils.CpuInfo.getCpuAvailableGovernorsSimple;
import static com.leo.global.utils.CpuInfo.getCpuGovernor;



import static com.leo.global.utils.CpuInfo.getNumCpuCores;
import static com.leo.global.utils.CpuInfo.isCpu64;
import static com.leo.global.utils.MemInfo.ObtainFSPartSize;
import static com.leo.global.utils.MemInfo.getRAM;

import static com.leo.global.utils.ScreenUtil.getGPUModel;
import static com.leo.global.utils.ScreenUtil.getGPUbusy;
import static com.leo.global.view.gridmenu.AboutMenuFragment.getCPUExtension;


public class ExtraInfoFragment extends Fragment  {

    private Context mContext;
   private TextView mCPU;
    private TextView mStorage;
    private TextView  mScreen;
    private TextView  mBattery;
    View view;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
       view = inflater.inflate(R.layout.extrainfo_layout, container, false);

        mContext = getActivity();

        onView();


            CPUInfo();

        // BasicInfo(view);
      //  CpuInfo(view);

     //   DisplayInfo(view);
      //  DatteryInfo(view);
      //  StorageInfo(view);
        return view;
    }

    @Override
    public void onResume() {
        super.onResume();
        onView();
    }

    @Override
    public void onPause() {
        super.onPause();
        if (mHandler != null) {
            mContext.unregisterReceiver(mTemperatureReceiver);
            mHandler.removeCallbacks(mTemperatureTick);
            mHandler = null;
            CPUInfo();
        }

    }

    public void onView() {
        if (mHandler == null &&  view .getDisplay() != null) {
            mHandler = new Handler();
            if (view .getDisplay().getState() == Display.STATE_ON) {
                mHandler.postAtTime(mTemperatureTick,
                        SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
            }
            IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
            filter.addAction(Intent.ACTION_SCREEN_ON);
            mContext.registerReceiver(mTemperatureReceiver, filter);
        }

    }
    String HardwareCPU="CPU ";
    String mLine="\n";
    String mLine2="\n"+"\n";
     public void  CPUInfo() {
         mCPU=(TextView) view.findViewById(R.id.cpu_info);
         mCPU.setText(HardwareCPU+mLine+getCPUExtension()+mLine2+
                 HardwareCPU+"核心数"+mLine+String.valueOf(getNumCpuCores())+mLine2+
                 HardwareCPU+"位数"+mLine+(isCpu64() ? "64" : "32")+mLine2+
                 HardwareCPU+"MHz"+mLine+getCpuMhz("闲置")+mLine2+
                 HardwareCPU+"指令集" +mLine+getCpuAbi()+mLine2+
                 HardwareCPU+"当前调频策略"+mLine+getCpuGovernor()+mLine2+
                 HardwareCPU+"支持的调频策略"+mLine+getCpuAvailableGovernorsSimple()+mLine2+
                 HardwareCPU+"频率档位"+mLine+getCpuAvailableFrequenciesSimple()+mLine2+
                 HardwareCPU+"温度"+mLine+CpuTemp(BatteryUtil.TemperatureType.CPU));
         StorageInfo();
     }
    public void  StorageInfo()  {
        mStorage=(TextView)view.findViewById(R.id.storage_info);
        mStorage.setText("Sdcard"+mLine+ObtainFSPartSize("/sdcard")+mLine2+
                "System"+mLine+ObtainFSPartSize("/system")+mLine2+
                "Data"+mLine+ObtainFSPartSize("/data")+mLine2+
                "Cache"+mLine+ObtainFSPartSize("/cache")+mLine2+
                "RAM"+mLine+getRAM());
        ScreenInfo();
    }
    public void  ScreenInfo(){
        ScreenInfo mScreenInfo = ScreenUtil.getScreenInfo(mContext);
        ScreenUtil di = new ScreenUtil(mContext);
        mScreen=(TextView)view.findViewById(R.id.screen_info);
        mScreen.setText("GPU"+mLine+  getGPUModel()+mLine2+
                "GPU Mhz"+mLine+  GPUTempMHZ(BatteryUtil.TemperatureType.GPUMHZ)+mLine2+
                "GPU"+mContext.getResources().getString(R.string.temp_info)+mLine+  GPUTemp(BatteryUtil.TemperatureType.GPU)+mLine2+
                "GPU使用率"+mLine+  getGPUbusy()+mLine2+
                mContext.getResources().getString(R.string.screen_real_metrics)+mLine+mScreenInfo.screenRealMetrics+mLine2+
                mContext.getResources().getString(R.string.screen_density)+mLine+mScreenInfo.densityDpiStr+mLine2+
                mContext.getResources().getString(R.string.screen_refresh)+mLine+ di.getDisplayRefreshRate());
        BatteryInfo();
    }
    public void  BatteryInfo(){

        mBattery=(TextView)view.findViewById(R.id.battery_info);
        mBattery.setText(mContext.getResources().getString(R.string.battery_info_current)+mLine+ getCurrent()+mLine2+
                mContext.getResources().getString(R.string.battery_info_voltage)+mLine+getVoltage()+mLine2+
                mContext.getResources().getString(R.string.battery_info_cycleindex)+mLine+getCycleindex ()+mLine2+
                mContext.getResources().getString(R.string.battery_info_designCapacity)+mLine+getDesignCapacity()+mLine2+
                mContext.getResources().getString(R.string.battery_info_tusableindex)+mLine+geTUsableindex ()+mLine2+
                mContext.getResources().getString(R.string.battery_info_temp)+mLine+getBatteryTemperature(BatteryUtil.TemperatureType.Battery));
    }


    private Handler mHandler;
    private final BroadcastReceiver mTemperatureReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                if (mHandler != null) {
                    mHandler.removeCallbacks(mTemperatureTick);
                }
            } else if (Intent.ACTION_SCREEN_ON.equals(action)) {
                if (mHandler != null) {
                    mHandler.postAtTime(mTemperatureTick,
                            SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                }
            }
        }
    };
    private final Runnable mTemperatureTick = new Runnable() {
        @Override
        public void run() {
            CPUInfo();
            mHandler.postAtTime(this, SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
        }
    };

}
