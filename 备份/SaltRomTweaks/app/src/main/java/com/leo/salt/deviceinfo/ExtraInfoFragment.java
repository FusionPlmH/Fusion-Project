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

package com.leo.salt.deviceinfo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.app.Fragment;

import android.view.Display;
import android.view.LayoutInflater;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;


import com.leo.salt.tweaks.R;
import com.leo.salt.utils.BatteryUtil;
import com.leo.salt.utils.ScreenInfo;
import com.leo.salt.utils.ScreenUtil;

import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.BatteryUtil.CpuTemp;
import static com.leo.salt.utils.BatteryUtil.GPUTemp;
import static com.leo.salt.utils.BatteryUtil.GPUTempMHZ;

import static com.leo.salt.utils.BatteryUtil.getBatteryTemperature;
import static com.leo.salt.utils.BatteryUtil.getCurrent;
import static com.leo.salt.utils.BatteryUtil.getCycleindex;
import static com.leo.salt.utils.BatteryUtil.getDesignCapacity;
import static com.leo.salt.utils.BatteryUtil.getUsableindex;
import static com.leo.salt.utils.BatteryUtil.getVoltage;
import static com.leo.salt.utils.CpuInfo.getCpuAbi;
import static com.leo.salt.utils.CpuInfo.getCpuAvailableFrequenciesSimple;
import static com.leo.salt.utils.CpuInfo.getCpuAvailableGovernorsSimple;
import static com.leo.salt.utils.CpuInfo.getCpuGovernor;
import static com.leo.salt.utils.CpuInfo.getCpuTemp;
import static com.leo.salt.utils.CpuInfo.getNumCpuCores;

import static com.leo.salt.utils.CpuInfo.isCpu64;
import static com.leo.salt.utils.ExtraInfo.getCPUInfo;
import static com.leo.salt.utils.ExtraInfo.getCpuMhz;
import static com.leo.salt.utils.MemInfo.ObtainFSPartSize;
import static com.leo.salt.utils.MemInfo.getRAM;
import static com.leo.salt.utils.ScreenUtil.getGPUModel;
import static com.leo.salt.utils.ScreenUtil.getGPUbusy;


public class ExtraInfoFragment extends Fragment  {

    private Context mContext;
   private TextView mCPU;
    private TextView mCPUTitle;
    private TextView mStorage;
    private TextView mStorageTitle;
    private TextView  mScreen;
    private TextView  mScreenTitle;
    private TextView  mBattery;
    private TextView  mBatteryTitle;
    private  View view;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
       view = inflater.inflate(R.layout.extrainfo_layout, container, false);
        mContext = getActivity();
        mCPU=(TextView) view.findViewById(R.id.cpu_info);
        mStorage=(TextView)view.findViewById(R.id.storage_info);
        mScreen=(TextView)view.findViewById(R.id.screen_info);
        mBattery=(TextView)view.findViewById(R.id.battery_info);
        //getData();
        mCPUTitle=(TextView)view.findViewById(R.id.cpu_title);
        mCPUTitle.setText(getStringIdentifier(mContext,"cpu_info"));
        mStorageTitle=(TextView)view.findViewById(R.id.storage_title);
        mStorageTitle.setText(getStringIdentifier(mContext,"storage_info"));
        mScreenTitle=(TextView)view.findViewById(R.id.screen_title);
        mScreenTitle.setText(getStringIdentifier(mContext,"screen_info"));
        mBatteryTitle=(TextView)view.findViewById(R.id.battery_title);
        mBatteryTitle.setText(getStringIdentifier(mContext,"battery_info"));
        return view;
    }
    private boolean isRun;
    @Override
    public void onResume() {
        isRun = true;

        if (isRun) {
            final Handler handler = new Handler();
            handler.post(new Runnable() {
                public void run() {
                    getData();
                    handler.postDelayed(this, 1000);
                }
            });
        }
        super.onResume();


    }
    @Override
    public void onPause() {
        super.onPause();
        isRun = false;
    }

    @Override
    public void onStop() {
        isRun = false;

        super.onStop();
    }
     public void getData(){

         mCPU.setText(HardwareCPU+mLine+getCPUExtension()+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"quantity_cpu")+mLine+String.valueOf(getNumCpuCores())+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"places_cpu")+mLine+(isCpu64() ? "64" : "32")+mLine2+
                 HardwareCPU+"MHz"+mLine+getCpuMhz("闲置")+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"abi_cpu") +mLine+getCpuAbi()+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"governor_cpu")+mLine+getCpuGovernor()+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"available_cpu")+mLine+getCpuAvailableGovernorsSimple()+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"frequencies_cpu")+mLine+getCpuAvailableFrequenciesSimple()+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"temp_cpu")+mLine+getCpuTemp());
         ScreenInfo mScreenInfo = ScreenUtil.getScreenInfo(mContext);
         ScreenUtil di = new ScreenUtil(mContext);
         mScreen.setText("GPU"+mLine+  getGPUModel()+mLine2+
                 "GPU Mhz"+mLine+  GPUTempMHZ(BatteryUtil.TemperatureType.GPUMHZ)+mLine2+
                 "GPU"+getStringIdentifier(mContext,"temp_info")+mLine+  GPUTemp(BatteryUtil.TemperatureType.GPU)+mLine2+
                 getStringIdentifier(mContext,"gpu_usage")+mLine+ getGPUbusy()+mLine2+

                 getStringIdentifier(mContext,"screen_real_metrics")+mLine+mScreenInfo.screenRealMetrics+mLine2+
                 getStringIdentifier(mContext,"screen_density")+mLine+mScreenInfo.densityDpiStr+mLine2+
                 getStringIdentifier(mContext,"screen_refresh")+mLine+ di.getDisplayRefreshRate());
         mBattery.setText(getStringIdentifier(mContext,"battery_info_current")+mLine+ getCurrent()+mLine2+
                 getStringIdentifier(mContext,"battery_info_voltage")+mLine+getVoltage()+mLine2+
                 getStringIdentifier(mContext,"battery_info_cycleindex")+mLine+getCycleindex ()+mLine2+
                 getStringIdentifier(mContext,"battery_info_designCapacity")+mLine+getDesignCapacity()+mLine2+
                 getStringIdentifier(mContext,"battery_info_tusableindex")+mLine+getUsableindex(mContext)+mLine2+
                 getStringIdentifier(mContext,"battery_info_temp")+mLine+getBatteryTemperature(BatteryUtil.TemperatureType.Battery));
         mStorage.setText("Sdcard"+mLine+ObtainFSPartSize("/sdcard")+mLine2+
                 "System"+mLine+ObtainFSPartSize("/system")+mLine2+
                 "Data"+mLine+ObtainFSPartSize("/data")+mLine2+
                 "Cache"+mLine+ObtainFSPartSize("/cache")+mLine2+
                 "RAM"+mLine+getRAM());
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
    String HardwareCPU="CPU ";
    String mLine="\n";
    String mLine2="\n"+"\n";




}
