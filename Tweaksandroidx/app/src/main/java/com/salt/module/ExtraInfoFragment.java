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

package com.salt.module;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.SystemClock;



import android.telephony.ServiceState;
import android.telephony.CarrierConfigManager;

import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.euicc.EuiccManager;

import android.view.LayoutInflater;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;

import com.salt.config.R;
import com.salt.utils.BatteryUtil;
import com.salt.utils.ScreenInfo;
import com.salt.utils.ScreenUtil;

import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.utils.BatteryUtil.GPUTemp;
import static com.salt.utils.BatteryUtil.GPUTempMHZ;
import static com.salt.utils.BatteryUtil.getBatteryTemperature;
import static com.salt.utils.BatteryUtil.getCurrent;
import static com.salt.utils.BatteryUtil.getCycleindex;
import static com.salt.utils.BatteryUtil.getDesignCapacity;
import static com.salt.utils.BatteryUtil.getDeviceFccId;
import static com.salt.utils.BatteryUtil.getDeviceRated;
import static com.salt.utils.BatteryUtil.getUsableindex;
import static com.salt.utils.BatteryUtil.getVoltage;
import static com.salt.utils.CpuInfo.getCpuAbi;
import static com.salt.utils.CpuInfo.getCpuAvailableFrequenciesSimple;
import static com.salt.utils.CpuInfo.getCpuAvailableGovernorsSimple;
import static com.salt.utils.CpuInfo.getCpuGovernor;
import static com.salt.utils.CpuInfo.getCpuTemparature;
import static com.salt.utils.CpuInfo.getNumCpuCores;
import static com.salt.utils.CpuInfo.getefs;
import static com.salt.utils.CpuInfo.isCpu64;
import static com.salt.utils.ExtraInfo.getCPUInfo;
import static com.salt.utils.ExtraInfo.getCpuMhz;
import static com.salt.utils.MemInfo.ObtainFSPartSize;
import static com.salt.utils.MemInfo.getRAM;
import static com.salt.utils.SaltProper.getLeoBuild;
import static com.salt.utils.SaltProper.toUpperCaseFirstOne;
import static com.salt.utils.ScreenUtil.getGPUModel;
import static com.salt.utils.ScreenUtil.getGPUbusy;
import static com.salt.widget.DialogView.linkCountDialog;


public class ExtraInfoFragment extends Fragment implements View.OnClickListener {

    private Context mContext;
   private TextView mCPU;
    private TextView mCPUTitle;
    private TextView mStorage;
    private TextView mStorageTitle;
    private TextView  mScreen;
    private TextView  mScreenTitle;
    private TextView  mBattery;
    private TextView  mMake;
    private TextView  mBatteryTitle;
    private  View view;
    private LinearLayout mLinkConut;


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
       view = inflater.inflate(R.layout.fragment_extrainfo, container, false);
        mContext = getActivity();
        mCPU=(TextView) view.findViewById(R.id.cpu_info);
        mStorage=(TextView)view.findViewById(R.id.storage_info);
        mScreen=(TextView)view.findViewById(R.id.screen_info);
        mBattery=(TextView)view.findViewById(R.id.battery_info);
        mMake=(TextView)view.findViewById(R.id.make_info);
        //getData();
        mCPUTitle=(TextView)view.findViewById(R.id.cpu_title);
        mCPUTitle.setText(getStringIdentifier(mContext,"cpu_info"));
        mStorageTitle=(TextView)view.findViewById(R.id.storage_title);
        mStorageTitle.setText(getStringIdentifier(mContext,"storage_info"));
        mScreenTitle=(TextView)view.findViewById(R.id.screen_title);
        mScreenTitle.setText(getStringIdentifier(mContext,"screen_info"));
        mBatteryTitle=(TextView)view.findViewById(R.id.battery_title);
        mBatteryTitle.setText(getStringIdentifier(mContext,"battery_info"));
        mLinkConut=view.findViewById(R.id.link_conut);
        mLinkConut.setOnClickListener(this);
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
    public static char ObjectToChar(Object obj) {
        return obj instanceof Character ? ((Character) obj).charValue() : CharFromString(obj.toString());
    }

    public static char CharFromString(String str) {
        return (str == null || str.length() == 0) ? 0 : str.charAt(0);
    }

    public static String producing_area(String str)  {
        String str2 ;
        str2 = "";
        if ((!str.startsWith("R") && !str.startsWith("C")) || str.length() <= 5) {
            return str2;
        }
        switch (switchObjectToInt(Character.valueOf(str.charAt(1)), Character.valueOf(ObjectToChar("1")), Character.valueOf(ObjectToChar("2")), Character.valueOf(ObjectToChar("3")), Character.valueOf(ObjectToChar("4")), Character.valueOf(ObjectToChar("5")), Character.valueOf(ObjectToChar("6")), Character.valueOf(ObjectToChar("7")), Character.valueOf(ObjectToChar("8")), Character.valueOf(ObjectToChar("9")), Character.valueOf(ObjectToChar("A")), Character.valueOf(ObjectToChar("B")), Character.valueOf(ObjectToChar("N")), Character.valueOf(ObjectToChar("P")), Character.valueOf(ObjectToChar("Q")), Character.valueOf(ObjectToChar("R")), Character.valueOf(ObjectToChar("T")), Character.valueOf(ObjectToChar("U")), Character.valueOf(ObjectToChar("V")), Character.valueOf(ObjectToChar("Y")), Character.valueOf(ObjectToChar("D")), Character.valueOf(ObjectToChar("F")), Character.valueOf(ObjectToChar("G")), Character.valueOf(ObjectToChar("J")), Character.valueOf(ObjectToChar("L")), Character.valueOf(ObjectToChar("S")), Character.valueOf(ObjectToChar("Z")))) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                str2 = ("KOREA");
                break;
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                str2 =("CHINA");
                break;
            case 19:
            case 20:
            case 21:
            case 22:
                str2 = ("VIETNAM");
                break;
            case 23:
            case 24:
            case 25:
                str2 =("BRAZIL");
                break;
        }
        switch (switchObjectToInt(str.substring(0, 3), "R21", "R28", "R51", "R58")) {
            case 0:
            case 1:
                str2 = ("CHINA");
                break;
            case 2:
            case 3:
                str2 = ("VIETNAM");
                break;
        }
        return !str2.equals("") ? ("MADE IN ") + str2 : str2;
    }


     public void getData(){
         String bbt=getDesignCapacity();
        String strbbt=bbt.substring(0, 4);
         String carrier=getLeoBuild("ro.boot.carrierid");
         String csc;
         if(carrier.equals("")){
             csc="公开版";
         }else{
             csc=  carrier;
         }
             mMake.setText(getStringIdentifier(mContext,"device_inf_vendor")+mLine+toUpperCaseFirstOne(getLeoBuild("ro.product.manufacturer"))
                     +mLine2+getStringIdentifier(mContext,"device_inf_origin")+mLine+producing_area(getLeoBuild("ril.serialnumber"))
                     +mLine2+getStringIdentifier(mContext,"device_inf_of_sale_csc")+mLine+csc+mLine2+
                     getStringIdentifier(mContext,"device_inf_csc")+mLine+getLeoBuild("ro.csc.country_code")+"/"+getLeoBuild("ro.csc.sales_code")+"/"+getLeoBuild("ro.csc.countryiso_code")+mLine2+
                     getStringIdentifier(mContext,"device_inf_fingerprint")+mLine+getLeoBuild("ro.build.fingerprint")+mLine2+ "Motherboard"+mLine+getLeoBuild("ro.product.board")
                     +mLine2+ getStringIdentifier(mContext,"device_inf_knox")+mLine+"0x" +getLeoBuild("ro.boot.warranty_bit")
                     +mLine2+getStringIdentifier(mContext,"device_inf_fcc")+mLine+"FCC ID:"+getDeviceFccId() +mLine2+ getStringIdentifier(mContext,"device_inf_mp")+mLine+getLeoBuild("ril.hw_ver")
                    );

         mCPU.setText(HardwareCPU+mLine+getCPUExtension()+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"quantity_cpu")+mLine+String.valueOf(getNumCpuCores())+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"places_cpu")+mLine+(isCpu64() ? "64" : "32")+mLine2+
                 HardwareCPU+"MHz"+mLine+getCpuMhz("闲置")+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"abi_cpu") +mLine+getCpuAbi()+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"governor_cpu")+mLine+getCpuGovernor()+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"available_cpu")+mLine+getCpuAvailableGovernorsSimple()+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"frequencies_cpu")+mLine+getCpuAvailableFrequenciesSimple()+mLine2+
                 HardwareCPU+getStringIdentifier(mContext,"temp_cpu")+mLine+getCpuTemparature());
         ScreenInfo mScreenInfo = ScreenUtil.getScreenInfo(mContext);
         ScreenUtil di = new ScreenUtil(mContext);
         mScreen.setText("GPU"+mLine+  getGPUModel()+mLine2+
                 "GPU Mhz"+mLine+  GPUTempMHZ(BatteryUtil.TemperatureType.GPUMHZ)+mLine2+
                 "GPU"+getStringIdentifier(mContext,"temp_info")+mLine+  GPUTemp(BatteryUtil.TemperatureType.GPU)+mLine2+
                 getStringIdentifier(mContext,"gpu_usage")+mLine+ getGPUbusy()+mLine2+

                 getStringIdentifier(mContext,"screen_real_metrics")+mLine+mScreenInfo.screenRealMetrics+mLine2+
                 getStringIdentifier(mContext,"screen_density")+mLine+mScreenInfo.densityDpiStr+mLine2+
                 getStringIdentifier(mContext,"screen_refresh")+mLine+ di.getDisplayRefreshRate());
         mBattery.setText(getStringIdentifier(mContext,"device_inf_fixed_value")+mLine+getDeviceRated()+mLine2+getStringIdentifier(mContext,"battery_info_current")+mLine+ getCurrent()+mLine2+
                 getStringIdentifier(mContext,"battery_info_voltage")+mLine+getVoltage()+mLine2+
                 getStringIdentifier(mContext,"battery_info_cycleindex")+mLine+getCycleindex ()+mLine2+
                 getStringIdentifier(mContext,"battery_info_designCapacity")+mLine+strbbt+" mAh"+mLine2+
                 getStringIdentifier(mContext,"battery_info_tusableindex")+mLine+getUsableindex(mContext)+mLine2+
                 getStringIdentifier(mContext,"battery_info_temp")+mLine+getBatteryTemperature(BatteryUtil.TemperatureType.Battery));
         mStorage.setText("Sdcard"+mLine+ObtainFSPartSize("/sdcard")+mLine2+
                 "System"+mLine+ObtainFSPartSize("/system")+mLine2+
                 "Data"+mLine+ObtainFSPartSize("/data")+mLine2+
                 "Cache"+mLine+ObtainFSPartSize("/cache")+mLine2+
                 "RAM"+mLine+getRAM()+getefs());
     }


    public static int switchObjectToInt(Object obj, Object... objArr) {
        int i;
        if (obj instanceof Number) {
            double doubleValue = ((Number) obj).doubleValue();
            for (i = 0; i < objArr.length; i++) {
                if (doubleValue == ((Number) objArr[i]).doubleValue()) {
                    return i;
                }
            }
            return -1;
        }
        for (i = 0; i < objArr.length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        return -1;
    }


    public static String getCPUExtension() {
        String NAME;

        if (getLeoBuild("ro.hardware").equals("qcom")) {
            NAME = getCPUInfo();
            // return;
        } else  {
            NAME =toUpperCaseFirstOne(getLeoBuild("ro.hardware"));
        }
        return NAME;
    }
    String HardwareCPU="CPU ";
    String mLine="\n";
    String mLine2="\n"+"\n";



    @Override
    public void onClick(View v) {
      linkCountDialog(getActivity(),getString(R.string.link_count));
    }
}
