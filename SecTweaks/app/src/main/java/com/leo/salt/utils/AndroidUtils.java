/*
 * Copyright (C) 2015 The Android Open Source Project
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

package com.leo.salt.utils;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.StatFs;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.Toast;


import com.leo.salt.LeoApp;
import com.leo.salt.MainActivity;
import com.leo.salt.R;

import com.leo.salt.extrainfo.ExtraInfoLib;
import com.leo.salt.utils.root.Helpers;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;

import static com.leo.salt.utils.Constants.LEO_ACTION_GLOBAL;
import static com.leo.salt.utils.Constants.LEO_ACTION_SERVICE;
import static com.leo.salt.utils.Constants.LeoTAG;
import static com.leo.salt.utils.Constants.safety;

public class AndroidUtils {
    public static String pname(){
        String NAME="";
        if (getDevice().equals("SM-G9500")) {
            NAME=SamsungNameSMALL;
        }else if(getDevice().equals("SM-G950N")){
            NAME=SamsungNameSMALL;
        }else if(getDevice().equals("SM-G950F")){
            NAME=SamsungNameSMALL;
        }else if(getDevice().equals("SM-G950FD")){
            NAME=SamsungNameSMALL;
        }else if(getDevice().equals("SM-G955N")){
            NAME=SamsungNameBIG;
        }else if(getDevice().equals("SM-G955F")){
            NAME=SamsungNameBIG;
        }else if(getDevice().equals("SM-G955FD")){
            NAME=SamsungNameBIG;
        }else if(getDevice().equals("SM-G9550")){
            NAME=SamsungNameBIG;
        } if (getDevice().equals("SC-02J")) {
            NAME=SamsungNameSMALL;
        } if (getDevice().equals("SC-03J")) {
            NAME=SamsungNameBIG;
        } if (getDevice().equals("SCV35")) {
            NAME=SamsungNameBIG;
        } if (getDevice().equals("SCV36")) {
            NAME=SamsungNameSMALL;
        }if (getDevice().equals("SM-N950N")) {
            NAME=SamsungNameNote;
        }if (getDevice().equals("SM-N950F")) {
            NAME=SamsungNameNote;
        }if (getDevice().equals("SM-N950FD")) {
            NAME=SamsungNameNote;
        }if (getDevice().equals("SM-N9500")) {
            NAME=SamsungNameNote;
        }if (getDevice().equals("SM-G965N")) {
            NAME=SamsungNameBIG9;
        }if (getDevice().equals("SM-G960N")) {
            NAME=SamsungNameSMALL9;
        }if (getDevice().equals("SM-G965F")) {
            NAME=SamsungNameBIG9;
        }if (getDevice().equals("SM-G960F")) {
            NAME=SamsungNameSMALL9;
        }if (getDevice().equals("SM-G960FD")) {
            NAME=SamsungNameSMALL9;
        }if (getDevice().equals("SM-G965FD")) {
            NAME=SamsungNameBIG9;
        }
        return NAME;
    }
    public static String SamsungNameBIG9= LeoApp.getContext().getResources().getString(R.string.samsung)+" Galaxy S9+";
    public static String SamsungNameSMALL9= LeoApp.getContext().getResources().getString(R.string.samsung)+" Galaxy S9";
    public static String SamsungNameBIG= LeoApp.getContext().getResources().getString(R.string.samsung)+" Galaxy S8+";
    public static String SamsungNameSMALL= LeoApp.getContext().getResources().getString(R.string.samsung)+" Galaxy S8";
    public static String SamsungNameNote= LeoApp.getContext().getResources().getString(R.string.samsung)+" Note8";
    public static String versions(Context c) {
        String str;
        if (AndroidUtils.getCustomOTA().equals(safety)) {
            str=c.getResources().getString(R.string.leo_tweaks_a);
        }else {
            str=c.getResources().getString(R.string.leo_tweaks_b);
        }
        return str;
    }
    public static void   clearmemory(Context context) {
        Intent intent = new Intent();
        intent.setAction(LEO_ACTION_SERVICE);
        intent.putExtra(LEO_ACTION_GLOBAL, "com.hitomileo.action.clearmemory");
        context. sendBroadcast(intent);
    }
    public static void openUrl(String url,Context context) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        context.startActivity(intent);
    }
    public static String getProp(String prop) {
        if (prop == null || prop.length() == 0) return UNKNOWN;
        String s = UNKNOWN;
        try { s = ExtraInfoLib.shellExec("getprop " + prop).get(0).trim(); }
        catch (IOException e) {}
        catch (SecurityException e) {}
        if (s == "[]") return UNKNOWN;
        return s;
    }
    public static String getSystemVersion() {
        return getProp("ro.build.version.release");
    }
    public static String getCustomSystemVersion() {
        return getProp("ro.build.leo.code");
    }
    public static String getUpdatemodel() {
        return getProp("ro.chipname");
    }
    public static String getCustomDateSystemVersion() {
        return getProp("ro.build.rom.name");
    }
    public static String getchipname() {
        return getProp("ro.hardware.chipname");
    }
    public static String getRomName() {
        return getProp("ro.build.rom.name");
    }
    public static String getCustomOTA() {
        return getProp("ro.build.leo");
    }
    public static String getBasicsSystemVersion() {
        return  getProp("ro.build.PDA");
    }
    public static String getLinuxKernalInfoEx() {
        String result = "";
        String line;
        String[] cmd = new String[] { "/system/bin/cat", "/proc/version" };
        String workdirectory = "/system/bin/";
        try {
            ProcessBuilder bulider = new ProcessBuilder(cmd);
            bulider.directory(new File(workdirectory));
            bulider.redirectErrorStream(true);
            Process process = bulider.start();
            InputStream in = process.getInputStream();
            InputStreamReader isrout = new InputStreamReader(in);
            BufferedReader brout = new BufferedReader(isrout, 8 * 1024);

            while ((line = brout.readLine()) != null) {
                result += line;
                // result += "\n";
            }
            in.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        Log.i(LeoTAG,"----Linux Kernal is :"+result);
        return result;
    }
    public static String getBaseband_Ver(){
        String Version = "";
        try {
            Class cl = Class.forName("android.os.SystemProperties");
            Object invoker = cl.newInstance();
            Method m = cl.getMethod("get", new Class[] { String.class,String.class });
            Object result = m.invoke(invoker, new Object[]{"gsm.version.baseband", "no message"});

            Version = (String)result;
        } catch (Exception e) {
        }
        return Version;
    }


    public static String getSDK () {
        return getProp("ro.build.version.sdk");

    }
    public static String getPropHardware() {
        return getProp("ro.hardware"); }
    public  static  String getDevice() {


        return getProp("ro.boot.em.model"); }



    private static final String UNKNOWN = "unknown";



    public  static String getVersionName(Context ctx) throws Exception
    {
        // 获取packagemanager的实例
        PackageManager packageManager = ctx.getPackageManager();
        // getPackageName()是你当前类的包名，0代表是获取版本信息
        PackageInfo packInfo = packageManager.getPackageInfo(ctx.getPackageName(),0);
        String version = packInfo.versionName;
        return version;
    }

    /**
     * 获取应用名称
     */
    public  static  String getAppName(Context ctx) {
        String appName = "";
        try {
            PackageManager packManager = ctx.getPackageManager();
            ApplicationInfo appInfo = ctx.getApplicationInfo();
            appName = (String) packManager.getApplicationLabel(appInfo);
        } catch (Exception e) {
        }
        return appName;
    }

    public static String getPlatformVersion() {
        return  getProp("ro.board.platform");
    }
    public static String getROMVersion() {
        return  getProp("ro.build.display.id");
    }
    public static String getLeoKernel() {
        return  getProp("ro.build.leo.kernel");
    }
    public static long getAvailableMemory(Context context) {
        ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        am.getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    private static DecimalFormat fileIntegerFormat = new DecimalFormat("#0");
    private static DecimalFormat fileDecimalFormat = new DecimalFormat("#0.#");
    public static String Size(Context context) {
        return formatFileSize(getAvailableMemory(context),false);
    }
    public static String formatFileSize(long size, boolean isInteger) {
        DecimalFormat df = isInteger ? fileIntegerFormat : fileDecimalFormat;
        String fileSizeString = "0M";
        if (size < 1024 && size > 0) {
            fileSizeString = df.format((double) size) + "B";
        } else if (size < 1024 * 1024) {
            fileSizeString = df.format((double) size / 1024) + "K";
        } else if (size < 1024 * 1024 * 1024) {
            fileSizeString = df.format((double) size / (1024 * 1024)) + "M";
        } else {
            fileSizeString = df.format((double) size / (1024 * 1024 * 1024)) + "G";
        }
        return fileSizeString;
    }

    public static String APPName(Context context){
        String NAME;
        if (getAPPNAME().equals("R28K136VAZJ")) {
            NAME="不咸的盐巴";
        }else if(getAPPNAME().equals("R58J44F6B3D")){
            NAME="深見　ひとみ";
        }else if(getAPPNAME().equals("RF8J52ELJFR")){
            NAME="深見　ひとみ";
        }else if(getAPPNAME().equals("R28J51NJOFD")){
            NAME="夏天";
        }else if(getAPPNAME().equals("R39J704L9T")){
            NAME="Bright";
        }else if(getAPPNAME().equals("R39J40L2DS")){
            NAME="打酱油的";
        }else if(getAPPNAME().equals("R28JC20F09T")){
            NAME="咸鱼";
        }else if(getAPPNAME().equals("R28J51PLHQW")){
            NAME="Plmh";
        }else if(getAPPNAME().equals("R39JA001JT")){
            NAME="罒_▁肥籽";
        }else {
            NAME=versions(context)+context.getResources().getString(R.string.is_using_summary);
        }
        return NAME;
    }
    public static String customization(Context context){
        String NAME;
        if (getAPPNAME().equals("R28K136VAZJ")) {
            NAME="不咸的盐巴"+" 定制版";
        }else if(getAPPNAME().equals("R58J44F6B3D")){
            NAME="深見　ひとみ"+" 女神版";
        }else if(getAPPNAME().equals("RF8J52ELJFR")){
            NAME="深見　ひとみ"+" 女神版";
        }else if(getAPPNAME().equals("R28J51NJ0FD")){
            NAME="夏天"+" 女神版";
        }else if(getAPPNAME().equals("R39J704L9T")){
            NAME="Bright"+" 定制版";
        }else if(getAPPNAME().equals("R39J40L2DS")){
            NAME="打酱油的"+" 定制版";
        }else if(getAPPNAME().equals("R28JC20F09T")){
            NAME="咸鱼"+" 定制版";
        }else if(getAPPNAME().equals("R28J51PLHQW")){
            NAME="Plmh"+" 定制版";
        }else if(getAPPNAME().equals("R39JA001JT")){
            NAME="罒_▁肥籽"+" 定制版";
        }openUrl
        return NAME;

    }
    public static String getAPPNAME() {
        return  getProp("ril.serialnumber");
    }
    public static int getLeoInt(Context cxt, String key, int defaultValue) {

        return Settings.System.getInt(cxt.getContentResolver(), key, defaultValue);
    }
}
