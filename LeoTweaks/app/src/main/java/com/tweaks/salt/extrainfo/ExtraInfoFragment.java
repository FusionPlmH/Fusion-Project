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

package com.tweaks.salt.extrainfo;

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
import android.os.StatFs;
import android.support.v4.app.Fragment;

import android.support.v7.widget.Toolbar;
import android.text.format.Formatter;

import android.view.LayoutInflater;
import android.view.MenuItem;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.tweaks.salt.R;


import java.io.File;




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
        name.setText("制造商"+"\n"+di.getBuildManufacturer() +
                "\n"+"\n"+"设备型号"+"\n"+di.getDevice()+
                "\n"+"\n"+"设备序列号"+"\n"+ di.getSerialNumber()+
                "\n"+"\n"+"运营商"+"\n"+  di. getCarrier(mContext)+
                "\n"+"\n"+"设备运行时间"+"\n"+  di.getTimes(mContext)+
                "\n"+"\n"+"硬件平台"+"\n"+ di.getPropHardware()+
                "\n"+"\n"+"BL"+"\n"+ di.getPropBootloader()
        );

    }
    public void  StorageInfo(View v) {
        ExtraInfo di = new ExtraInfo(mContext);
        TextView name= (TextView)v. findViewById(R.id.device_Storage);
        name.setText("系统分区"+"\n"+ ObtainFSPartSize("/system")+
                "\n"+"\n"+"内置存储"+"\n"+ ObtainFSPartSize("/sdcard")+
                "\n"+"\n"+"Data分区"+"\n"+ ObtainFSPartSize("/data")+
                "\n"+"\n"+"Cache分区"+"\n"+ ObtainFSPartSize("/cache")+
                "\n"+"\n"+"运行内存"+"\n"+ showRAMInfo()
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
        CPUInfo.setText("CPU" + "\n" + Build.HARDWARE + "\n" + "\n" + "芯片组" + "\n" + di.getProcCpuDescription() + "\n" + "\n" + "产品特点" + "\n" + di.getProcCpuFeatures() + "\n" + "\n" + "BogoMIPS" + "\n" + di.getProcCpuBogoMips() + "\n" + "\n" + "指令集1" + "\n" + di.getBuildCpuAbi() +
                "\n" + "\n" + "指令集2" + "\n" + di.getPropCpuAbi2() +
                "\n" + "\n" + "架构" + "\n" + di.getProcCpuArchitecture() +
                "\n" + "\n" + "Implementer" + "\n" + di.getProcCpuImplementer()+
                "\n" + "\n" + "Part" + "\n" + di.getProcCpuPart() +
                "\n" + "\n" + "修订版本" + "\n" + di.getProcCpuRevision()
         );
    }

    public void  DisplayInfo(View v) {
        ExtraInfo di = new ExtraInfo(mContext);
        TextView DisplayDiagonalInches= (TextView) v.findViewById(R.id.device_DisplayDiagonalInches);
        DisplayDiagonalInches.setText( "对角线" + "\n" +  di.getDisplayDiagonalInches() + " 英寸"+
                "\n" + "\n" + "宽度" + "\n" +  di.getDisplayWidthInches() + " 英寸"+
                "\n" + "\n" + "高度"+ "\n" + di.getDisplayHeightInches() + " 英寸"+
                "\n" + "\n" + "宽度"+ "\n" +  di.getDisplayWidth() + " 像素"+
                "\n" + "\n" + "高度"+ "\n" +   di.getDisplayHeight() + " 像素"+
                "\n" + "\n" + "密度"+ "\n" +    di.getDisplayDensity()+
                "\n" + "\n" + "DPI"+ "\n" +   di.getDisplayDpi()+
                "\n" + "\n" + "X轴实际DPI"+ "\n" +  di.getDisplayDpiX()+
                "\n" + "\n" +"Y轴实际DPI"+ "\n" +  di.getDisplayDpiY()+
                "\n" + "\n" +"刷新频率"+ "\n" +   di.getDisplayRefreshRate()
        );
    }
    public void  DatteryInfo(View v) {
        TV = (TextView)v.findViewById(R.id.device_battery);
    }
    public TextView TV;



    private int BatteryN;       //目前电量
    private int BatteryV;       //电池电压
    private double BatteryT;        //电池温度
    private String BatteryStatus;   //电池状态
    private String BatteryTemp;

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
                BatteryV = intent.getIntExtra("voltage", 0);  //电池电压
                BatteryT = intent.getIntExtra("temperature", 0);  //电池温度
                double T = BatteryT/10.0; //电池摄氏温度，默认获取的非摄氏温度值，需做一下运算转换
                String technology = intent.getStringExtra("technology");
                int plugged = intent.getIntExtra("plugged", 0);
                String acString = "";

                switch (plugged) {
                    case BatteryManager.BATTERY_PLUGGED_AC:
                        acString = "AC 电源";
                        break;
                    case BatteryManager.BATTERY_PLUGGED_USB:
                        acString = "USB";
                        break;
                }
                switch (intent.getIntExtra("status", BatteryManager.BATTERY_STATUS_UNKNOWN))
                {
                    case BatteryManager.BATTERY_STATUS_CHARGING:
                        BatteryStatus = "充电状态";
                        break;
                    case BatteryManager.BATTERY_STATUS_DISCHARGING:
                        BatteryStatus = "放电状态";
                        break;
                    case BatteryManager.BATTERY_STATUS_NOT_CHARGING:
                        BatteryStatus = "未充电";
                        break;
                    case BatteryManager.BATTERY_STATUS_FULL:
                        BatteryStatus = "充满电";
                        break;
                    case BatteryManager.BATTERY_STATUS_UNKNOWN:
                        BatteryStatus = "未知道状态";
                        break;
                }

                switch (intent.getIntExtra("health", BatteryManager.BATTERY_HEALTH_UNKNOWN))
                {
                    case BatteryManager.BATTERY_HEALTH_UNKNOWN:
                        BatteryTemp = "未知错误";
                        break;
                    case BatteryManager.BATTERY_HEALTH_GOOD:
                        BatteryTemp = "状态良好";
                        break;
                    case BatteryManager.BATTERY_HEALTH_DEAD:
                        BatteryTemp = "电池没有电";
                        break;
                    case BatteryManager.BATTERY_HEALTH_OVER_VOLTAGE:
                        BatteryTemp = "电池电压过高";
                        break;
                    case BatteryManager.BATTERY_HEALTH_OVERHEAT:
                        BatteryTemp =  "电池过热";
                        break;
                }
                TV.setText("电量"+ "\n" +  BatteryN + "%" +"\n" + "\n"+"当前电池状态"+ "\n" +  BatteryStatus + "\n" +  "\n" +"当前电压为" + "\n" +  BatteryV + "mV"  +"\n" + "\n"+"电池健康信息"+ "\n" + BatteryTemp + "\n" + "\n" +  "温度为" + "\n" +T  + "℃"+ "\n" + "\n" + "充电方式" + "\n" + acString+ "\n" + "\n" + "电池技术" + "\n" + technology);
            }
        }
    };

}
