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

package com.tweaks.leo.utils;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.StatFs;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.Toast;

import com.tweaks.leo.R;
import com.tweaks.leo.utils.root.Helpers;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Logger;


import static com.tweaks.leo.utils.Constants.LeoTAG;


public class AndroidUtils {
    public static String versions(Context c) {
        String str;
        if (AndroidUtils.getCustomOTA().equals(Helpers.Companion.getCODE())) {
            str=c.getResources().getString(R.string.leo_tweaks_a);
        }else {
            str=c.getResources().getString(R.string.leo_tweaks_b);
        }
        return str;
    }

    public static String getProp(String prop) {
        if (prop == null || prop.length() == 0) return UNKNOWN;
        String s = UNKNOWN;
        try { s = com.tweaks.leo.extrainfo.ExtraInfoLib.shellExec("getprop " + prop).get(0).trim(); }
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
    public static String gety_idVersion() {
        return getProp("ro.expect.recovery_id");
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
// System.out.println(">>>>>>><<<<<<<" +(String)result);
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


        return getProp("ro.product.model"); }



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
    public  static  String OTA() {
        return getProp("ro.leo.ota"); }
}
