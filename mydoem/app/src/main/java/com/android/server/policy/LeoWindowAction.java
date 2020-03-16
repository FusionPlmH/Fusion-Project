/*
 * Copyright (C) 2011 The Android Open Source Project
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

package com.android.server.policy;

import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.inputs.InputManager;
import android.media.AudioManager;
import android.net.wifi.WifiManager;
import android.os.Debug;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.aPowerManager;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.Toast;

import com.android.internal.statusbar.IStatusBarService;

import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import static android.content.Intent.FLAG_ACTIVITY_CLEAR_TOP;
import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.mKill;
import static com.os.leo.utils.LeoUserValues.mLabel;
import static com.os.leo.utils.LeoUserValues.mMobileDataOff;
import static com.os.leo.utils.LeoUserValues.mMobileDataOn;
import static com.os.leo.utils.LeoUserValues.mNewline;
import static com.os.leo.utils.LeoUserValues.mPackage;
import static com.os.leo.utils.LeoUserValues.mRINGER_MODE_NORMAL;
import static com.os.leo.utils.LeoUserValues.mRINGER_MODE_SILENT;
import static com.os.leo.utils.LeoUserValues.mRINGER_MODE_VIBRATE;
import static com.os.leo.utils.LeoUserValues.mWIFIOFF;
import static com.os.leo.utils.LeoUserValues.mWIFIOn;

public class LeoWindowAction {
    public static void sendHomeKeyEvent() {
        int[] iArr = new int[]{0, 1};
        for (int keyEvent : iArr) {
            long uptimeMillis = SystemClock.uptimeMillis();
            InputManager.getInstance().injectInputEvent(new KeyEvent(uptimeMillis, uptimeMillis, keyEvent, 3, 0, 0, -1, 0, 268435464, 257), 0);
        }
    }
    public static void setAudioMode(Context ctx) {
        AudioManager audioManager = (AudioManager) ctx.getSystemService("audio");
        switch (audioManager.getRingerMode()) {
            case 0:
                audioManager.setRingerMode(2);
                Toast.makeText(ctx, mRINGER_MODE_NORMAL, Toast.LENGTH_LONG).show();
                return;
            case 1:
                audioManager.setRingerMode(0);
                Toast.makeText(ctx, mRINGER_MODE_VIBRATE, Toast.LENGTH_LONG).show();
                return;
            case 2:
                audioManager.setRingerMode(1);
                Toast.makeText(ctx, mRINGER_MODE_SILENT, Toast.LENGTH_LONG).show();
                return;
            default:
                return;
        }
    }


    public static void toggleMobile(Context ctx ) {

    }

    public static void switchScreenOff(Context ctx) {
        aPowerManager pm = (aPowerManager) ctx.getSystemService(Context.POWER_SERVICE);
        if (pm!= null) {
            pm.goToSleep(SystemClock.uptimeMillis());
        }
    }


    public static  void toggleAirplane(Context context) {
        boolean z = false;
        boolean z2 = Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) == 1;
        Settings.Global.putInt(context.getContentResolver(), "airplane_mode_on", z2 ? 0 : 1);
        Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
        String str = "state";
        if (!z2) {
            z = true;
        }
        intent.putExtra(str, z);
        context.sendBroadcast(intent);
    }



    public static void KillForegroundApp(Context context) {
        List runningTasks = ((ActivityManager)context.getSystemService("activity")).getRunningTasks(1);
        if (runningTasks != null && runningTasks.iterator().hasNext()) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) runningTasks.iterator().next();
            String packageName = runningTaskInfo.topActivity.getPackageName();
            String strToast;
            if (isWhitelisted(packageName)) {
                strToast = mLabel;
            } else if (!isHomeApplication(packageName,context)) {
                Log.d("Stopped package ", packageName);
                strToast = mKill;
                try {
                    IActivityManager Activity = ActivityManagerNative.getDefault();
                    Activity.removeTask(runningTaskInfo. id);
                    Activity.forceStopPackage(packageName, -2);
                } catch (RemoteException e) {
                    return;
                }
            } else {
                return;
            }
            Toast.makeText(context, strToast+getApplicationNameFromPageName(packageName,context), 1).show();
        }
    }
    private  static String getApplicationNameFromPageName(String str,Context context) {
        ApplicationInfo applicationInfo;
        PackageManager packageManager =context.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "Unknown");
    }
    private static boolean isHomeApplication(String str,Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        return (resolveActivity == null || resolveActivity.activityInfo == null || !str.equals(resolveActivity.activityInfo.packageName)) ? false : true;
    }
    private static boolean isWhitelisted(String str) {
        return "com.android.providers.applications".equals(str) || "com.sec.android.app.clockpackage".equals(str) || "android".equals(str) || "com.leo.personalise".equals(str) || "com.android.server.telecom".equals(str) || "com.android.incallui".equals(str) || "com.android.systemui".equals(str) || "com.android.phone".equals(str);
    }



    public static void startSFinderActivity(Context context) {
        ComponentName componetName = new ComponentName(
//这个是另外一个应用程序的包名
                "com.samsung.android.app.galaxyfinder",
//这个参数是要启动的Activity
                "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity");
        try {
            Intent intent = new Intent();
            intent.setComponent(componetName);
            context.startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(context, mPackage, Toast.LENGTH_LONG).show();
        }
    }
    public static void startWActivity(Context context) {
        ComponentName componetName = new ComponentName(
//这个是另外一个应用程序的包名
                "com.leo.personalise",
//这个参数是要启动的Activity
                "com.leo.personalise.activity.WifiPasswordActivity");
        try {
            Intent intent = new Intent();
            intent.setComponent(componetName);
            context.startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(context, mPackage, Toast.LENGTH_LONG).show();
        }
    }

    public static void defaultkey(Context context) {
        ComponentName componetName = new ComponentName(
//这个是另外一个应用程序的包名
                "com.leo.personalise",
//这个参数是要启动的Activity
                "com.leo.personalise.activity.MainActivity");
        try {
            Intent intent = new Intent();
            intent.setComponent(componetName);
            context.startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(context, mPackage, Toast.LENGTH_LONG).show();
        }
    }

    public static void sendEvent(int i, int i2, int i3) {
        sendEvent(i, i2, i3, SystemClock.uptimeMillis());
    }
    public static void sendEvent(int i, int i2, int i3, long j) {
        android.hardware.inputs.InputManager.getInstance().injectInputEvent(new KeyEvent(SystemClock.uptimeMillis(), j, i2, i, (i3 & 128) != 0 ? 1 : 0, 0, -1, 0, (i3 | 8) | 64, 257), 0);
    }
    public static void sendKeyEvent(int i ) {
        sendEvent(i, 0, 0);
        sendEvent(i, 1, 0);
    }


    public static void openCamera(Context context) {
        Intent intentCamera = new Intent();
        intentCamera.setFlags(FLAG_ACTIVITY_NEW_TASK);
        intentCamera.setAction("android.media.action.STILL_IMAGE_CAMERA");
        context.startActivity(intentCamera);
    }





    public static void ScreenRecord(Context context) {
        ComponentName componetName = new ComponentName(
//这个是另外一个应用程序的包名
                "com.sec.app.screenrecorder",
//这个参数是要启动的Activity
                "com.sec.app.screenrecorder.activity.LauncherActivity");
        try {
            Intent intent = new Intent();
            intent.setComponent(componetName);
            context.startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(context, mPackage, Toast.LENGTH_LONG).show();
        }
    }
    public static void StartAppLication(Context context,String appkey) {
        String string = appkey;
        if (string != null) {
            String[] split = string.split("##");
            ComponentName componentName = new ComponentName(split[0], split[1]);
            Intent intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK | FLAG_ACTIVITY_CLEAR_TOP);
            intent.setComponent(componentName);
            context.startActivity(intent);
        }
    }

    public static void ClearMemory(Context context)  {
        ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
        List<ActivityManager.RunningAppProcessInfo> infoList = am.getRunningAppProcesses();
        List<ActivityManager.RunningServiceInfo> serviceInfos = am.getRunningServices(100);


        long beforeMem = getAvailMemory(context);
        Log.d(AUTHOR, "-----------before memory info : " + beforeMem);
        int count = 0;
        if (infoList != null) {
            for (int i = 0; i < infoList.size(); ++i) {
                ActivityManager.RunningAppProcessInfo appProcessInfo = infoList.get(i);
                Log.d(AUTHOR, "process name : " + appProcessInfo.processName);
                //importance 该进程的重要程度  分为几个级别，数值越低就越重要。
                Log.d(AUTHOR, "importance : " + appProcessInfo.importance);

                // 一般数值大于RunningAppProcessInfo.IMPORTANCE_SERVICE的进程都长时间没用或者空进程了
                // 一般数值大于RunningAppProcessInfo.IMPORTANCE_VISIBLE的进程都是非可见进程，也就是在后台运行着
                if (appProcessInfo.importance > ActivityManager.RunningAppProcessInfo.IMPORTANCE_VISIBLE) {
                    String[] pkgList = appProcessInfo.pkgList;
                    for (int j = 0; j < pkgList.length; ++j) {//pkgList 得到该进程下运行的包名
                        Log.d(AUTHOR, "It will be killed, package name : " + pkgList[j]);
                        am.killBackgroundProcesses(pkgList[j]);
                        count++;
                    }
                }

            }
        }

        long afterMem = getAvailMemory(context);
        Log.d(AUTHOR, "----------- after memory info : " + afterMem);

            Toast.makeText(context, "清理" + count + "个进程,"+"释放内存"+ (afterMem - beforeMem) + "M", Toast.LENGTH_LONG).show();


    }

    //获取可用内存大小
    public  static long getAvailMemory(Context context) {
        // 获取android当前可用内存大小
        ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
        ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
        am.getMemoryInfo(mi);
        //mi.availMem; 当前系统的可用内存
        //return Formatter.formatFileSize(context, mi.availMem);// 将获取的内存大小规格化
        Log.d(AUTHOR, "可用内存---->>>" + mi.availMem / (1024 * 1024));
        return mi.availMem / (1024 * 1024);
    }

    public  static void expandNotification() {
        try {
            IStatusBarService asInterface = IStatusBarService.Stub.asInterface(ServiceManager.getService("statusbar"));
            if (asInterface != null) {
                asInterface.expandNotificationsPanel();
            }
        } catch (RemoteException e) {
        }
    }

    public static void sendMediaKeyEvent(Context context, int i) {
        long uptimeMillis = SystemClock.uptimeMillis();
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON", null);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(uptimeMillis, uptimeMillis, 0, i, 0));
        context.sendOrderedBroadcast(intent, null);
        Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON", null);
        intent2.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(uptimeMillis, uptimeMillis, 1, i, 0));
        context.sendOrderedBroadcast(intent2, null);
    }
    // WIFI状态
    public static void  toggleWifi(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
        if (wifiManager.isWifiEnabled()) {
            wifiManager.setWifiEnabled(false);
            Toast.makeText(context, mWIFIOFF, Toast.LENGTH_LONG).show();
            //WIFI关闭
            return;
        }
        wifiManager.setWifiEnabled(true);
        Toast.makeText(context, mWIFIOn, Toast.LENGTH_LONG).show();
        //WIFI开启
    }
    public static void toggleLastApp(Context c) {
        int i = 0;
        int i2 = 1;
        Intent intent = new Intent("android.intent.action.MAIN");
        ActivityManager activityManager = (ActivityManager) c.getSystemService("activity");
        Object obj = "com.android.launcher";
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = c.getPackageManager().resolveActivity(intent, 0);
        if (!(resolveActivity.activityInfo == null || resolveActivity.activityInfo.packageName.equals("android"))) {
            obj = resolveActivity.activityInfo.packageName;
        }
        List runningTasks = activityManager.getRunningTasks(5);
        while (i == 0 && i2 < runningTasks.size()) {
            String packageName = ((ActivityManager.RunningTaskInfo) runningTasks.get(i2)).topActivity.getPackageName();
            if (!(packageName.equals(obj) || packageName.equals("com.android.systemui"))) {
                i = ((ActivityManager.RunningTaskInfo) runningTasks.get(i2)).id;
            }
            i2++;
        }
        if (i != 0) {
            activityManager.moveTaskToFront(i, 2);
        }
    }



    public static void launchBixbyVoice(Context c) {
        Intent intent = new Intent("android.intent.action.VOICE_COMMAND");
        intent.setPackage("com.samsung.android.bixby.agent");
        intent.setFlags(268435456);
        try {
            c.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public static void toggleBlueTooth() {

        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter != null) {
        }
        if (defaultAdapter.isEnabled()) {
            defaultAdapter.disable();
        }
        defaultAdapter.enable();

    }

    public static  void  isOutdoorModel(Context ctx) {
        int Styel;
        Styel  = Settings.System.getInt(ctx.getContentResolver(), "display_outdoor_mode", 0) ^ 1;

        Settings.System.putInt(ctx.getContentResolver(), "display_outdoor_mode", Styel);
        if (Styel== 0){
            Toast.makeText(ctx, "☹ "+"禁用户外模式", 0).show();

        }else if(Styel== 1){
            Toast.makeText(ctx, "☺ "+"启用户外模式"+mNewline+"这将方便你在户外使用.如果你不在继续使用屏幕，户外模式将在15分钟后关闭", 0).show();
        }
    }
    public static  void  isMiPopModel(Context ctx) {
        int Styel;
        Styel  = Settings.System.getInt(ctx.getContentResolver(), "leo_tweaks_minip_enable", 0) ^ 1;

        Settings.System.putInt(ctx.getContentResolver(), "leo_tweaks_minip_enable", Styel);
        if (Styel== 0){
            Toast.makeText(ctx, "☹ "+"禁用屏幕助手", 0).show();

        }else if(Styel== 1){
            Toast.makeText(ctx, "☺ "+"启用屏幕助手", 0).show();
        }
    }
}
