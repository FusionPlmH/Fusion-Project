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


package com.android.server.utils.salt;

import android.app.AAActivityManager;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.ActivityThread;
import android.app.AlertDialog;
import android.app.IActivityManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.hardware.fingerprint.FingerprintManager;
import android.os.AsyncTask;
import android.os.IPowerManager;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.aPowerManager;


import java.io.IOException;

import static com.android.server.utils.salt.SaltServerFrame.*;


public class SaltReboot {
    private static final String TAG =SaltReboot.class.getSimpleName();
    private static void hotReboot() {
        try {
            Runtime.getRuntime().exec(new String[]{"setprop", "ctl.restart", "zygote"});
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void rebootDownload() {
        try {
            IPowerManager.Stub.asInterface(ServiceManager.getService("power")).reboot(false, "download", false);
        } catch (RemoteException e) {

        }
    }
    private static void rebootRecovery() {
        try {
            IPowerManager.Stub.asInterface(ServiceManager.getService("power")).reboot(false, "recovery", false);
        } catch (RemoteException e) {

        }
    }
    private static void SystemShutdown(Context context) {


        ((aPowerManager)context.getSystemService(Context.POWER_SERVICE)).shutdown(false, null, false);
    }
   private static void rebootSystem(Context context) {

        PowerManager pm = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
        pm.reboot(null);
    }

   public static void performRestartTask(Context context, String action,String processNa) {
        if (action == null) {
            return;
        }
        if (action.equals(rt100foleo("bGVvLmFjdGlvbi5TeXN0ZW1VaQ=="))) {
            restartSystemUi(context,processNa);
            return;
        }else if (action.equals(rt100foleo("bGVvLmFjdGlvbi5yZWJvb3RTeXN0ZW0="))) {
            rebootSystem(context);
            return;
        }  else if (action.equals(rt100foleo("bGVvLmFjdGlvbi5Eb3dubG9hZA=="))) {
            rebootDownload();
            return;
        } else if (action.equals(rt100foleo("bGVvLmFjdGlvbi5SZWNvdmVyeQ=="))) {
            rebootRecovery();
            return;
        } else if (action.equals(rt100foleo("bGVvLmFjdGlvbi5ob3RSZWJvb3Q="))) {
            hotReboot();
            return;
        } else if (action.equals(rt100foleo("bGVvLmFjdGlvbi5TeXN0ZW1TaHV0ZG93bg=="))) {
            SystemShutdown(context);
            return;
        }
   }

    private static void restartSystemUi(Context context,String processNa) {
        try {
            AAActivityManager am =
                    ( AAActivityManager)context.getSystemService(Context.ACTIVITY_SERVICE);
            IActivityManager ams = AAActivityManager.getService();
            for ( AAActivityManager.RunningAppProcessInfo app: am.getRunningAppProcesses()) {
                if (processNa.equals(app.processName)) {
                    ams.killApplicationProcess(app.processName, app.uid);
                    break;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }



}
