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

package com.fusionleo.salt.extrainfo;

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
import android.widget.TextView;

import com.fusionleo.salt.R;
import com.fusionleo.salt.utils.AndroidUtils;
import com.fusionleo.salt.utils.root.Helpers;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Method;


public class ExtraInfoFragment extends Fragment {

    private Context mContext;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.extrainfo_layout, container, false);




        mContext = getActivity();
        BasicInfo(view);
        CpuInfo(view);

        DisplayInfo(view);
        DatteryInfo(view);
        StorageInfo(view);
        return view;
    }

    @Override
    public void onResume() {
        super.onResume();
        mContext.registerReceiver(mBatInfoReceiver, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
    }

    @Override
    public void onPause() {
        super.onPause();
        mContext.unregisterReceiver(mBatInfoReceiver);

    }



    public void  BasicInfo(View v) {
        ExtraInfo di = new ExtraInfo(mContext);
        TextView name= (TextView)v .findViewById(R.id.device_name);
        name.setText(mContext.getResources().getString(R.string.manufacturer)+"\n"+di.getBuildManufacturer() +
                "\n"+"\n"+mContext.getResources().getString(R.string.model)+"\n"+di.getDevice()+
                "\n"+"\n"+mContext.getResources().getString(R.string.serial)+"\n"+ di.getSerialNumber()+
                "\n"+"\n"+mContext.getResources().getString(R.string.carrier)+"\n"+  di. getCarrier(mContext)+
                "\n"+"\n"+mContext.getResources().getString(R.string.run_time)+"\n"+  di.getTimes(mContext)+
                "\n"+"\n"+mContext.getResources().getString(R.string.hardware_platform)+"\n"+ di.getPropHardware()+
                "\n"+"\n"+"BL"+"\n"+ di.getPropBootloader()
        );

    }
    public void  StorageInfo(View v) {
        ExtraInfo di = new ExtraInfo(mContext);
        TextView name= (TextView)v. findViewById(R.id.device_Storage);
        name.setText(mContext.getResources().getString(R.string.system_partition)+"\n"+ ObtainFSPartSize("/system")+
                "\n"+"\n"+mContext.getResources().getString(R.string.storage_partition)+"\n"+ ObtainFSPartSize("/sdcard")+
                "\n"+"\n"+mContext.getResources().getString(R.string.data_partition)+"\n"+ ObtainFSPartSize("/data")+
                "\n"+"\n"+mContext.getResources().getString(R.string.cache_partition)+"\n"+ ObtainFSPartSize("/cache")+
                "\n"+"\n"+mContext.getResources().getString(R.string.ram_partition)+"\n"+ showRAMInfo()
        );

    }
    private String ObtainFSPartSize(String PartitionPath) {
        StatFs extraStat = new StatFs(new File(PartitionPath).getPath());
        long eBlockSize = (long) extraStat.getBlockSize();
        long eTotalBlocks = (long) extraStat.getBlockCount();
        return (Formatter.formatFileSize(mContext, (eTotalBlocks * eBlockSize) - (((long) extraStat.getAvailableBlocks()) * eBlockSize)) + "  " + "/" + "  ") + Formatter.formatFileSize(mContext, eTotalBlocks * eBlockSize);
    }
    public String showRAMInfo(){
        ActivityManager am=(ActivityManager)mContext.getSystemService(Context.ACTIVITY_SERVICE);
        ActivityManager.MemoryInfo mi=new ActivityManager.MemoryInfo();
        am.getMemoryInfo(mi);
        String[] available=fileSize(mi.availMem);
        String[] total= fileSize(mi.totalMem);
        return (total[0]+total[1]+ "  " + "/" + "  "+available[0]+available[1]);
    }
    @SuppressLint("NewApi")
    public static String[] fileSize(long size){
        String str="";
        if(size>=1000){
            str="KB";
            size/=1000;
            if(size>=1000){
                str="MB";
                size/=1000;
            }
        }
        /*将每3个数字用,分隔如:1,000*/
        DecimalFormat formatter=new DecimalFormat();
        formatter.setGroupingSize(3);
        String result[]=new String[2];
        result[0]=formatter.format(size);
        result[1]=str;
        return result;
    }
    public void  CpuInfo(View v) {
        ExtraInfo di = new ExtraInfo(mContext);
        TextView CPUInfo = (TextView) v.findViewById(R.id.device_CPUInfo);
        CPUInfo.setText("CPU" + "\n" + Build.HARDWARE + "\n" + "\n" + mContext.getResources().getString(R.string.chipset) + "\n" + di.getProcCpuDescription() + "\n" + "\n" + mContext.getResources().getString(R.string.trait) + "\n" + di.getProcCpuFeatures() + "\n" + "\n" + "BogoMIPS" + "\n" + di.getProcCpuBogoMips() + "\n" + "\n" + mContext.getResources().getString(R.string.bit1) + "\n" + di.getBuildCpuAbi() +
                "\n" + "\n" + mContext.getResources().getString(R.string.bit2) + "\n" + di.getPropCpuAbi2() +
                "\n" + "\n" + mContext.getResources().getString(R.string.architecture)  + "\n" + di.getProcCpuArchitecture() +
                "\n" + "\n" + "Implementer" + "\n" + di.getProcCpuImplementer()+
                "\n" + "\n" + "Part" + "\n" + di.getProcCpuPart() +
                "\n" + "\n" + mContext.getResources().getString(R.string.revision) + "\n" + di.getProcCpuRevision()
         );
    }

    public void  DisplayInfo(View v) {
        ExtraInfo di = new ExtraInfo(mContext);
        TextView DisplayDiagonalInches= (TextView) v.findViewById(R.id.device_DisplayDiagonalInches);
        DisplayDiagonalInches.setText( mContext.getResources().getString(R.string.diagonal) + "\n" +  di.getDisplayDiagonalInches() + mContext.getResources().getString(R.string.inch)+
                "\n" + "\n" + mContext.getResources().getString(R.string.width) + "\n" +  di.getDisplayWidthInches() + mContext.getResources().getString(R.string.inch)+
                "\n" + "\n" + mContext.getResources().getString(R.string.height)+ "\n" + di.getDisplayHeightInches() + mContext.getResources().getString(R.string.inch)+
                "\n" + "\n" + mContext.getResources().getString(R.string.width)+ "\n" +  di.getDisplayWidth() + " px"+
                "\n" + "\n" + mContext.getResources().getString(R.string.height)+ "\n" +   di.getDisplayHeight() + " px"+
                "\n" + "\n" + "PPI"+ "\n" +    di.getDisplayDensity()+
                "\n" + "\n" + "DPI"+ "\n" +   di.getDisplayDpi()+
                "\n" + "\n" + "X DPI"+ "\n" +  di.getDisplayDpiX()+
                "\n" + "\n" +"Y DPI"+ "\n" +  di.getDisplayDpiY()+
                "\n" + "\n" +mContext.getResources().getString(R.string.refreshrate)+ "\n" +   di.getDisplayRefreshRate()
        );
    }
    public void  DatteryInfo(View v) {
        TV = (TextView)v.findViewById(R.id.device_battery);


    }
    public TextView TV;



    private int BatteryN;       //目前电量

    private double BatteryT;        //电池温度
    private String BatteryStatus;   //电池状态
    private String BatteryTemp;

    double T;
    String technology;
    String acString = "";
    /* 创建广播接收器 */
    private BroadcastReceiver mBatInfoReceiver = new BroadcastReceiver()
    {
        public void onReceive(Context context, Intent intent)
        {
            String action = intent.getAction();
            /*
             * 如果捕捉到的action是ACTION_BATTERY_CHANGED， 就运行onBatteryInfoReceiver()
             */
            if (Intent.ACTION_BATTERY_CHANGED.equals(action))
            {
                BatteryN = intent.getIntExtra("level", 0);    //目前电量
                BatteryT = intent.getIntExtra("temperature", 0);  //电池温度
               T = BatteryT/10.0; //电池摄氏温度，默认获取的非摄氏温度值，需做一下运算转换
               technology = intent.getStringExtra("technology");
                int plugged = intent.getIntExtra("plugged", 0);


                switch (plugged) {
                    case BatteryManager.BATTERY_PLUGGED_AC:
                        acString = mContext.getResources().getString(R.string.battery_ac);
                        break;
                    case BatteryManager.BATTERY_PLUGGED_USB:
                        acString = "USB";
                        break;
                }
                switch (intent.getIntExtra("status", BatteryManager.BATTERY_STATUS_UNKNOWN))
                {
                    case BatteryManager.BATTERY_STATUS_CHARGING:
                        BatteryStatus = mContext.getResources().getString(R.string.battery);
                        break;
                    case BatteryManager.BATTERY_STATUS_DISCHARGING:
                        BatteryStatus = mContext.getResources().getString(R.string.battery1);
                        break;
                    case BatteryManager.BATTERY_STATUS_NOT_CHARGING:
                        BatteryStatus = mContext.getResources().getString(R.string.battery2);
                        break;
                    case BatteryManager.BATTERY_STATUS_FULL:
                        BatteryStatus = mContext.getResources().getString(R.string.battery3);
                        break;
                    case BatteryManager.BATTERY_STATUS_UNKNOWN:
                        BatteryStatus =mContext.getResources().getString(R.string.battery4);
                        break;
                }

                switch (intent.getIntExtra("health", BatteryManager.BATTERY_HEALTH_UNKNOWN))
                {
                    case BatteryManager.BATTERY_HEALTH_UNKNOWN:
                        BatteryTemp =mContext.getResources().getString(R.string.battery5);
                        break;
                    case BatteryManager.BATTERY_HEALTH_GOOD:
                        BatteryTemp = mContext.getResources().getString(R.string.battery6);
                        break;
                    case BatteryManager.BATTERY_HEALTH_DEAD:
                        BatteryTemp = mContext.getResources().getString(R.string.battery7);
                        break;
                    case BatteryManager.BATTERY_HEALTH_OVER_VOLTAGE:
                        BatteryTemp = mContext.getResources().getString(R.string.battery8);
                        break;
                    case BatteryManager.BATTERY_HEALTH_OVERHEAT:
                        BatteryTemp =  mContext.getResources().getString(R.string.battery9);
                        break;
                }

                 TV.setText(mContext.getResources().getString(R.string.battery11)+ "\n" +  BatteryN + "%" +"\n" + "\n"+mContext.getResources().getString(R.string.battery12)+ "\n" +  BatteryStatus + "\n" +  "\n" +mContext.getResources().getString(R.string.battery13)+ "\n" + BatteryTemp + "\n" + "\n" + mContext.getResources().getString(R.string.battery14) + "\n" +T  + "℃"+ "\n" + "\n" + mContext.getResources().getString(R.string.battery15)+ "\n" + acString+ "\n" + "\n" + mContext.getResources().getString(R.string.battery16) + "\n" +
                         technology+"\n" + "\n" +mContext.getResources().getString(R.string.battery17)+ "\n" +getCurrent()+" "+getVoltage()+"\n" + "\n"+mContext.getResources().getString(R.string.battery18)+"\n"+getCycleindex ()+"\n" + "\n"+mContext.getResources().getString(R.string.battery19)+"\n"+getDesignCapacity()+" "+mContext.getResources().getString(R.string.battery21)+geTUsableindex ());



            }
        }
    };
    private static final String CHARGER_CURRENT_NOW =
            "/sys/class/power_supply/battery/current_now";
    private static final String VOLTAGE_NOW =
            "/sys/class/power_supply/battery/voltage_now";
    private static final String CYLE_COUNT =
            "/sys/class/power_supply/battery/battery_cycle";
    private static final String FG_FULLCAPNOM =
            "/sys/class/power_supply/battery/fg_fullcapnom";

    public String readCurrentFile(File file) throws IOException {
        InputStream input = new FileInputStream(file);
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(
                    input));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            return sb.toString();
        } finally {
            input.close();
        }
    }

    private String getVoltage() {
        String result = "null";
        try {
            int voltage = readFile(VOLTAGE_NOW, 0) / 1000;
            result = mContext.getResources().getString(R.string.battery22)+ voltage + "mV";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    private String getCurrent() {
        String result = "null";
        try {
        result =mContext.getResources().getString(R.string.battery23)+readCurrentFile(new File(CHARGER_CURRENT_NOW))+" mA";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;

    }
    private String getCycleindex () {
        String result = "null";
        try {
            result =mContext.getResources().getString(R.string.battery24)+readCurrentFile(new File(CYLE_COUNT))+" 次";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    private String geTUsableindex () {
        ExtraInfo di = new ExtraInfo(mContext);
        String result = "null";
        try {
            if (di.getPropHardware().startsWith("qcom")) {
                Integer num = Integer.valueOf(readCurrentFile(new File(FG_FULLCAPNOM)));
                result =String.valueOf(new Integer( num.intValue() * 2))+capacityunit;
            }else if (di.getPropHardware().startsWith("samsungexynos8895")) {
                result=readCurrentFile(new File(FG_FULLCAPNOM));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    private static final String  capacityunit= " mAh";
    public  String getDesignCapacity() {
        Object mPowerProfile;
        double designbattery=0;
        final String POWER_PROFILE_CLASS = "com.android.internal.os.PowerProfile";

        try {
            mPowerProfile = Class.forName(POWER_PROFILE_CLASS)
                    .getConstructor(Context.class)
                    .newInstance(mContext);

            designbattery = (double) Class
                    .forName(POWER_PROFILE_CLASS)
                    .getMethod("getBatteryCapacity")
                    .invoke(mPowerProfile);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return String.valueOf( mContext.getResources().getString(R.string.battery20)+designbattery + capacityunit);
    }
    private int readFile(String path, int defaultValue) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(
                    path));
            int i = Integer.parseInt(bufferedReader.readLine(), 10);
            bufferedReader.close();
            return i;
        } catch (Exception localException) {
        }
        return defaultValue;
    }



}
