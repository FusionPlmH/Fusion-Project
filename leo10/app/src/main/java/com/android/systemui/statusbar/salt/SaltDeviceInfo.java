/*
 * Copyright (C) 2018 crDroid Android Project
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

package com.android.systemui.statusbar.salt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Display;
import android.widget.TextView;

import com.android.settingslib.salt.SaltConfigCenter;

import static com.android.settingslib.salt.SaltConfigCenter.LeoString;
import static com.android.settingslib.salt.SaltConfigCenter.getBatteryTemp;
import static com.android.settingslib.salt.SaltConfigCenter.getCpuTemp;
import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.*;
import static com.android.settingslib.salt.SaltValues.Values18;
import static com.android.settingslib.salt.SaltValues.capacityunit;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class SaltDeviceInfo extends TextView {
    private Context mContext;
    public SaltDeviceInfo(Context context) {
        this(context, null);
    }
    public SaltDeviceInfo(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
    public SaltDeviceInfo(Context context, AttributeSet attributeSet, int level) {
        super(context, attributeSet, level);

        mContext=context;
    }
    private String getInfoList(int style) {
        Context context=  mContext;
        String info ;
        switch (style) {
            case 1:
                info = "Android" +"［"+Build.VERSION.RELEASE+" "+getAndroidSDKVersion()+"］";
                break;
            case 2:
                info = Build.DISPLAY;
                break;
            case 3:
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) mContext.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected() || activeNetworkInfo.getType() != 1) {
                    info =LeoString("device_info_wifi_no");
                    break;
                }
                WifiInfo connectionInfo = ((WifiManager) this.mContext.getSystemService("wifi")).getConnectionInfo();
                int calculateSignalLevel = WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 10) * 10;
                String sb=connectionInfo+",";
                String str =sb.substring(6, sb.indexOf("B"));
                info=str+LeoString("device_info_wifi_signal")+" " + String.valueOf(calculateSignalLevel) + "%";
                break;
            case 4:
                String  strcpu=LeoString("cpu");
                String  strBattery=LeoString("battery");
                info =strcpu+getCPUTemperature()+" "+strBattery+getBatteryTemperature();
                break;
            case 5:
                String sb2=LeoString("storage_sdcard");
                String str2 =sb2.substring(0, 2);
                info ="RAM:"+getTotalRam()+"/"+getSystemMemoryUsableSize(mContext)+" "+str2+":"+getTotalExternalMemorySize(mContext)+"/"+getAvailableExternalMemorySize(mContext);
                break;
            case 6:
                Resources mResources = getResources();
                info=nextalarm(mContext,mResources,1);
                break;
            case 7:
                info=CpuModl(context);
                break;
            case 8:
                info=getCPUusage(context);
                break;
            case 9:
                info=getCpuMhz(context);
                break;
            case 10:
                info= LeoString("cpu")+":"+getNumCpuCores(context)+LeoString("device_cpu_nucleus")+"/"+(isCpu64(context) ? "64" : "32")+LeoString("device_cpu_status");
                break;
            case 11:
                info= getGPUModel(context);
                break;
            case 12:
                info=GPUTempMHZ(context);
                break;
            case 13:
                info=LeoString("gpu_usage")+":"+getGPUbusy(context);
                break;
            case 14:
                Intent batteryIntent =context.registerReceiver(null, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
                int level = batteryIntent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1);
                String str3 =getBatteryCapacity(context).substring(0, 4);
                info =LeoString("device_info_quantity")+ String.valueOf(level) + "%"+" "+LeoString("device_info_capacity")+str3+ capacityunit;
                break;
            case 15:
                info=LeoString("battery_info_current").substring(2, 4)+":"+getCurrent(context)+" "+LeoString("battery_info_voltage").substring(2, 4)+":"+getVoltage(context);
                break;
            default:
                info =getLeoFloatingFature(rt100foleo("U0VDX0ZMT0FUSU5HX0ZFQVRVUkVfU0VUVElOR1NfQ09ORklHX0JSQU5EX05BTUU="))+" "+getLeoSystemProper("ro.boot.em.model");
                break;
        }
        return info;
    }


    private void updateSettings() {
        String kg="\n";
        String nu="";

        int style1;
        switch (setLeoDeviceInfoOrientation) {
            case 1:
                style1=8388611 ;
                break;
            case 2:
                style1= 17;
                break;
            default:
                style1=  8388613;
                break;
        }
        setGravity((style1 | 16) | 1);
        setTextSize( setLeoDeviceInfoSize);
        setText("");
        int one=setLeoDeviceInfoOneStyle;
        int onecolor= setLeoDeviceInfoOneStyleColor;
        int onefont=setLeoDeviceInfoOneStyleFont;
        int two=setLeoDeviceInfoTwoStyle;
        int twocolor=setLeoDeviceInfoTwoStyleColor;
        int twofont=setLeoDeviceInfoTwoStyleFont;
        int Three=setLeoDeviceInfoThreeStyle;
        int Threecolor=setLeoDeviceInfoThreeStyleColor;
        int Threefont= setLeoDeviceInfoThreeStyleFont;
        int Four= setLeoDeviceInfoFourStyle;
        int Fourcolor=  setLeoDeviceInfoFourStyleColor;
        int Fourfont=   setLeoDeviceInfoFourStyleFont;
        int style=setLeoDeviceInfoList;


        if(style==1) {
            intInfoView(one, onecolor,onefont,nu);
        }else  if(style==2) {
            intInfoView(one, onecolor,onefont,kg);
            intInfoView(two, twocolor,twofont,nu);
        }else if(style==3){
            intInfoView(one, onecolor,onefont,kg);
            intInfoView(two, twocolor,twofont,kg);
            intInfoView(Three,Threecolor,Threefont,nu);
        }else if(style==4){
            intInfoView(one, onecolor,onefont,kg);
            intInfoView(two,twocolor,twofont,kg);
            intInfoView(Three, Threecolor,Threefont,kg);
            intInfoView(Four, Fourcolor,Fourfont,nu);

        } else if(style==5){
            intInfoView(one,onecolor,onefont,kg);
            intInfoView(two, twocolor,twofont,kg);
            intInfoView(Three, Threecolor,Threefont,kg);
            intInfoView(Four,Fourcolor,Fourfont,kg);
            intInfoView(setLeoDeviceInfoFiveStyle, setLeoDeviceInfoFiveStyleColor,setLeoDeviceInfoFiveStyleFont,nu);
        }
    }

    private void intInfoView(int infoStyle,int infocolor,int infofont,String str){
        String font="sec-roboto-light";
        int typ=Typeface.NORMAL;
        SpannableString info= new SpannableString(String.valueOf(getInfoList(infoStyle)));
        info.setSpan(new ForegroundColorSpan(infocolor), 0, info.length(), 33);
        info.setSpan(new SaltConfigCenter.TypefaceFonts(setLeoTextFont(getContext(), infofont,font,typ)), 0, info.length(), 33);
        append(info);
        append(str);
    }
    private boolean mQsBarDeviceInfo;
    private int  mQsBarDeviceInfoSzie;
    private int  mQsBarDeviceInfoStyle;
    private int  mQsBarDeviceInfoFont;
    public void updateQsBarDeviceInfo() {
        if ("salt_qsbar_title".equals(getTag())) {
            boolean of=mQsBarDeviceInfo;
            if (of){
                refresh();
                setText(getInfoList(mQsBarDeviceInfoStyle));
                setTextSize(TypedValue.COMPLEX_UNIT_PX, (float)3*mQsBarDeviceInfoSzie);
                Typeface tf =setLeoTextFont(this.mContext, mQsBarDeviceInfoFont, "sec-roboto-light",Typeface.NORMAL);
                setTypeface(tf);
                setVisibility(VISIBLE);
            }else {
                setVisibility(GONE);
            }

        }
    }
    public void refreshQsBarDeviceInfo(boolean off,int style,int size,int font) {
        mQsBarDeviceInfo=off;
        mQsBarDeviceInfoStyle=style;
        mQsBarDeviceInfoSzie=size;
        mQsBarDeviceInfoFont=font;
        updateQsBarDeviceInfo();
    }
    private void refresh(){
        if (mHandler == null && getDisplay() != null) {
            mHandler = new Handler();
            if (getDisplay().getState() == Display.STATE_ON) {
                mHandler.postAtTime(mTemperatureTick,
                        SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
            }
            IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
            filter.addAction(Intent.ACTION_SCREEN_ON);
            getContext().registerReceiver(mTemperatureReceiver, filter);
        }
    }
    public void setLeoDeviceInfo(){
        if ("salt_panel_deviceInfo".equals(getTag())) {
            LeoSysUiManages(mContext);
            boolean mEnabled=setLeoDeviceInfoEnabled;
            if (mEnabled){
                refresh();
                updateSettings();
                setVisibility(VISIBLE);
            }else {
                setVisibility(GONE);
            }
        }
    }

    private static final String TEMP=" ℃";
    private String getBatteryTemperature() {
        float f =getBatteryTemp();
        return Math.round(f) + TEMP;
    }
    private String getCPUTemperature() {

        return getCpuTemp()+ TEMP;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLeoDeviceInfo();
        updateQsBarDeviceInfo();

    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mHandler != null) {
            getContext().unregisterReceiver(mTemperatureReceiver);
            mHandler.removeCallbacks(mTemperatureTick);
            mHandler = null;
            setLeoDeviceInfo();
            updateQsBarDeviceInfo();
        }

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
            setLeoDeviceInfo();
            updateQsBarDeviceInfo();
            mHandler.postAtTime(this, SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
        }
    };


}
