/*
 * Copyright (C) 2015 TeamEos project
 * Author Randall Rushing aka bigrushdog, randall.rushing@gmail.com
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
 * 
 * Widgets may implement this interface to interact with action configurations
 * 
 */

package com.android.server.utils.leoglobal;


import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;

import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.inputs.AInputManager;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IPowerManager;
import android.os.Looper;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.Vibrator;
import android.os.aPowerManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.widget.Toast;


import com.android.fusionleo.global.LeoGlobalLunar;
import com.android.internal.statusbar.IStatusBarService;
import com.android.server.LocalServices;
import com.android.server.policy.PolicyControl;
import com.android.server.statusbar.StatusBarManagerInternal;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Pattern;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.android.fusionleo.global.LeoGlobalSetting.KillWhiteList;
import static com.android.fusionleo.global.LeoGlobalUtils.isLunarSetting;
import static com.android.fusionleo.global.LeoGlobalValues.LEOFRAMEWORK;
import static com.android.fusionleo.global.LeoGlobalValues.getStringIdentifier;

public class LeoGlobalAction {
    public static final String SYSTEM_PREFIX = "999";
    public static String TAG = LeoGlobalAction.class.getSimpleName();


    public static void launchActivity(Context context,String appName,String appActivity) {
        Intent intent;
        String packageName = Settings.System.getString(context.getContentResolver(), appName);
        String activity = Settings.System.getString(context.getContentResolver(), appActivity);
        boolean launchActivity = activity != null && !TextUtils.equals("NONE", activity);
        try {
            if (launchActivity) {
                intent = new Intent(Intent.ACTION_MAIN);
                intent.setClassName(packageName, activity);
            } else {
                intent = context.getPackageManager().getLaunchIntentForPackage(packageName);
            }
            if (intent != null) {
                intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            }
            context.startActivity(intent);
        } catch (Exception e) {

            Log.i(TAG, "Unable to launch activity " + e);
        }

    }

    public  static  String  HITOMILEO_ACTION_TORCH= "com.hitomileo.action.flashlight";
    public  static  String  LEO_ACTION_SERVICE= "com.global.leo.action.service";

    public static void toggleSPlitScreens() {
        LeoAction.splitScreen();
    }
    public static void toggleNotificationPanel() {
        LeoAction.expandNotificationPanel();
    }
    public static void toggleFlashlight(Context c) {
        LeoAction.setFlashlight(c);
    }
    public static void toggleSettingsPanel() {
        LeoAction.expandSettingsPanel();
    }
    private static final class LeoAction {

        private static void splitScreen() {
            getStatusBarManagerInternal().toggleSplitScreen();

        }

        static StatusBarManagerInternal mStatusBarManagerInternal;
        static StatusBarManagerInternal getStatusBarManagerInternal() {
            StatusBarManagerInternal statusBarManagerInternal;
            synchronized (mServiceAquireLock) {
                if (mStatusBarManagerInternal == null) {
                    mStatusBarManagerInternal = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
                }
                statusBarManagerInternal =mStatusBarManagerInternal;
            }
            return statusBarManagerInternal;
        }
        final static Object mServiceAquireLock = new Object();




        private static IStatusBarService mService = null;

        private static IStatusBarService getStatusBarService() {
            synchronized (LeoAction.class) {
                if (mService == null) {
                    try {
                        mService = IStatusBarService.Stub.asInterface(
                                ServiceManager.getService("statusbar"));
                    } catch (Exception e) {
                    }
                }
                return mService;
            }
        }
        private static void expandNotificationPanel() {
            IStatusBarService service = getStatusBarService();
            if (service != null) {
                try {
                    service.expandNotificationsPanel();
                } catch (RemoteException e) {
                }
            }
        }

        private static void expandSettingsPanel() {
            IStatusBarService service = getStatusBarService();
            if (service != null) {
                try {
                    service.expandSettingsPanel(null);
                } catch (RemoteException e) {
                }
            }
        }

        private static void setFlashlight(Context context){
            Intent intent = new Intent();
            intent.setAction(LEO_ACTION_SERVICE);
            intent.putExtra("ACTION",HITOMILEO_ACTION_TORCH);
            context.sendBroadcast(intent);
        }

    }

    public static void  toggleWifi(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
        if (wifiManager.isWifiEnabled()) {
            wifiManager.setWifiEnabled(false);
            mActionString.ActionToastSring(context,"wifi_no");
            //WIFI关闭
            return;
        }
        wifiManager.setWifiEnabled(true);
        mActionString.ActionToastSring(context,"wifi_yes");
        //WIFI开启
    }
    public static void openCamera(Context context) {
        Intent intentCamera = new Intent();
        intentCamera.setFlags(FLAG_ACTIVITY_NEW_TASK);
        intentCamera.setAction("android.media.action.STILL_IMAGE_CAMERA");
        context.startActivity(intentCamera);
    }

    public static void toggleRingerModes (Context context) {
        AudioManager am = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        if (am != null && ActivityManagerNative.isSystemReady()) {
            if (am.getRingerMode() == AudioManager.RINGER_MODE_NORMAL) {
                am.setRingerMode(AudioManager.RINGER_MODE_VIBRATE);
                Vibrator vib = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
                if (vib != null) {
                    vib.vibrate(50);
                }
                mActionString.ActionToastSring(context,"ringer_modes_vibrator");
            } else if (am.getRingerMode() == AudioManager.RINGER_MODE_VIBRATE) {
                am.setRingerMode(AudioManager.RINGER_MODE_SILENT);
                mActionString.ActionToastSring(context,"ringer_modes_silence");
            } else {
                am.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
                ToneGenerator tg = new ToneGenerator(
                        AudioManager.STREAM_NOTIFICATION,
                        (int) (ToneGenerator.MAX_VOLUME * 0.85));
                if (tg != null) {
                    tg.startTone(ToneGenerator.TONE_PROP_BEEP);
                }
                mActionString.ActionToastSring(context,"ringer_modes_sound");
            }
        }
    }
    public static void toggleRingerSoundModes (Context context) {
        AudioManager am = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        if (am != null && ActivityManagerNative.isSystemReady()) {
            if (am.getRingerMode() != AudioManager.RINGER_MODE_SILENT) {
                am.setRingerMode(AudioManager.RINGER_MODE_SILENT);
                mActionString.ActionToastSring(context,"ringer_modes_silence");
            } else {
                am.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
                ToneGenerator tg = new ToneGenerator(
                        AudioManager.STREAM_NOTIFICATION,
                        (int) (ToneGenerator.MAX_VOLUME * 0.85));
                if (tg != null) {
                    tg.startTone(ToneGenerator.TONE_PROP_BEEP);
                }
                mActionString.ActionToastSring(context,"ringer_modes_sound");
            }
        }
    }
    public static void toggleRingerVIBRATESoundModes (Context context) {
        AudioManager am = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        if (am != null && ActivityManagerNative.isSystemReady()) {
            if (am.getRingerMode() != AudioManager.RINGER_MODE_VIBRATE) {
                am.setRingerMode(AudioManager.RINGER_MODE_VIBRATE);
                Vibrator vib = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
                if (vib != null) {
                    vib.vibrate(50);
                }
                mActionString.ActionToastSring(context,"ringer_modes_vibrator");
            } else {
                am.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
                ToneGenerator tg = new ToneGenerator(
                        AudioManager.STREAM_NOTIFICATION,
                        (int) (ToneGenerator.MAX_VOLUME * 0.85));
                if (tg != null) {
                    tg.startTone(ToneGenerator.TONE_PROP_BEEP);
                }
                mActionString.ActionToastSring(context,"ringer_modes_sound");
            }
        }
    }

    public static void toggleExpandedDesktop(Context context,String str) {
        ContentResolver cr = context.getContentResolver();
        String newVal = "";
        String currentVal = Settings.Global.getString(cr,str);
        if (currentVal == null) {
            currentVal = newVal;
        }
        if ("".equals(currentVal)) {
            newVal = "immersive.full=*";
        }
        Settings.Global.putString(cr,str, newVal);
        if (newVal.equals("")) {
            PolicyControl.reloadFromSetting(context);
        }
    }
    public static void volumePanel(Context context) {
        AudioManager am = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        am.adjustVolume(AudioManager.ADJUST_SAME, AudioManager.FLAG_SHOW_UI);
    }
    public static void screenOff(Context context) {
        aPowerManager pm = (aPowerManager) context.getSystemService(Context.POWER_SERVICE);
        pm.goToSleep(SystemClock.uptimeMillis());
    }

    public static  void toggleAirplane(Context context) {
        boolean z = false;
        boolean z2 = Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) == 1;
        Settings.Global.putInt(context.getContentResolver(), "airplane_mode_on", z2 ? 0 : 1);
        Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
        String str = "state";
        if (!z2) {
            z = true;
            mActionString.ActionToastSring(context,"airplane_mode_yes");
        } else {
            mActionString.ActionToastSring(context,"airplane_mode_no");
        }
        intent.putExtra(str, z);
        context.sendBroadcast(intent);
    }

    public static  void  toggleFloatingModel(Context context) {
        int Styel;
        Styel  = Settings.System.getInt(context.getContentResolver(), "leo_tweaks_ball_display", 0) ^ 1;
        Settings.System.putInt(context.getContentResolver(), "leo_tweaks_ball_display", Styel);
        if (Styel== 0){
            mActionString.ActionToastSring(context,"ball_mode_no");
        }else if(Styel== 1){
            mActionString.ActionToastSring(context,"ball_mode_yes");
        }
    }
    public static  void  isOutdoorModel(Context context) {
        int Styel;
        Styel  = Settings.System.getInt(context.getContentResolver(), "display_outdoor_mode", 0) ^ 1;
        Settings.System.putInt(context.getContentResolver(), "display_outdoor_mode", Styel);
        if (Styel== 0){
            mActionString.ActionToastSring(context,"outdoor_mode_no");
        }else if(Styel== 1){
            mActionString.ActionToastSring(context,"outdoor_mode_yes");
        }
    }
    public static  void  toggleMipopModel(Context context) {
        int Styel;
        Styel  = Settings.System.getInt(context.getContentResolver(), "leo_tweaks_minip_enable", 0) ^ 1;
        Settings.System.putInt(context.getContentResolver(), "leo_tweaks_minip_enable", Styel);
        if (Styel== 0){
            LeoGlobalAction.GlobalActionString.ActionToastSring(context,"mipop_mode_no");
        }else if(Styel== 1){
            LeoGlobalAction.GlobalActionString.ActionToastSring(context,"mipop_mode_yes");
        }
    }
    static GlobalActionString mActionString;
    public static Context getPackageContext(Context context, String packageName) {
        Context pkgContext = null;
        if (context.getPackageName().equals(packageName)) {
            pkgContext = context;
        } else {
            try {
                pkgContext = context.createPackageContext(packageName,
                        Context.CONTEXT_IGNORE_SECURITY
                                | Context.CONTEXT_INCLUDE_CODE);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return pkgContext;
    }
    public static void triggerVirtualKeypress( final int keyCode) {
        final AInputManager im =AInputManager.getInstance();
        final long now = SystemClock.uptimeMillis();
        int downflags = 0;

        if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT
                || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT
                || keyCode == KeyEvent.KEYCODE_DPAD_UP
                || keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
            downflags = KeyEvent.FLAG_SOFT_KEYBOARD | KeyEvent.FLAG_KEEP_TOUCH_MODE;
        } else {
            downflags = KeyEvent.FLAG_FROM_SYSTEM;
        }

        final KeyEvent downEvent = new KeyEvent(now, now, KeyEvent.ACTION_DOWN,
                keyCode, 0, 0, KeyCharacterMap.VIRTUAL_KEYBOARD, 0,
                downflags, InputDevice.SOURCE_KEYBOARD);
        final KeyEvent upEvent = KeyEvent.changeAction(downEvent, KeyEvent.ACTION_UP);
        final Handler handler = new Handler(Looper.getMainLooper());

        final Runnable downRunnable = () -> im.injectInputEvent(downEvent, AInputManager.INJECT_INPUT_EVENT_MODE_ASYNC);

        final Runnable upRunnable = () -> im.injectInputEvent(upEvent,AInputManager.INJECT_INPUT_EVENT_MODE_ASYNC);

        handler.post(downRunnable);
        handler.postDelayed(upRunnable, 10);
    }
    public static  String PACKAGE_SYSTEMUI = "com.android.systemui";
    public static class GlobalActionString {
       public static void ActionToastSring(Context context,String REC){
           String string=getStringIdentifier(context,REC);
           Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
           Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                   .show();
       }
    }
    public static void getRecentKeyEvent() {
        int[] iArr = new int[]{0, 1};
        for (int keyEvent : iArr) {
            long uptimeMillis = SystemClock.uptimeMillis();
            AInputManager.getInstance().injectInputEvent(new KeyEvent(uptimeMillis, uptimeMillis, keyEvent, 187, 0, 0, -1, 0, 268435464, 257), 0);
        }
    }

    public static void togglePowerManager(Context context,int i) {

        if (i==0) {
            ((aPowerManager)context.getSystemService(Context.POWER_SERVICE)).shutdown(false, null, false);
        } else if (i==1) {
            ((PowerManager)context.getSystemService(Context.POWER_SERVICE)).reboot(null);
        }else if (i==2) {
            try {
                IPowerManager.Stub.asInterface(ServiceManager.getService("power")).reboot(false, "recovery", false);
            } catch (RemoteException e) {

            }
        }else if (i==3) {
            try {
                IPowerManager.Stub.asInterface(ServiceManager.getService("power")).reboot(false, "download", false);
            } catch (RemoteException e) {

            }
        }else if (i==4) {
            try {
                Runtime.getRuntime().exec(new String[]{"setprop", "ctl.restart", "zygote"});
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

    public static void LeoComponetURL(Context context,String str) {


        String[] split = str.split("/");
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(split[0], split[1]));
        intent.setFlags(268435456);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            mActionString.ActionToastSring(context,"activity_no");
        }
    }

    public static void PreviousPiece() {
        for (int i : new int[]{0, 1}) {
            long uptimeMillis = SystemClock.uptimeMillis();
            AInputManager instance = AInputManager.getInstance();
            InputEvent keyEvent = new KeyEvent(uptimeMillis, uptimeMillis, i, 88, 0, 0, -1, 0, 268435464, 257);
            instance.injectInputEvent( keyEvent, 0);
        }
    }

    public static void NextTrack() {
        for (int i : new int[]{0, 1}) {
            long uptimeMillis = SystemClock.uptimeMillis();
            //InputEvent inputEvent = r4;
            AInputManager instance = AInputManager.getInstance();
            InputEvent keyEvent = new KeyEvent(uptimeMillis, uptimeMillis, i, 87, 0, 0, -1, 0, 268435464, 257);
            instance.injectInputEvent(keyEvent, 0);
        }
    }

    public static void playPause() {
        for (int i : new int[]{0, 1}) {
            long uptimeMillis = SystemClock.uptimeMillis();
            //  InputEvent inputEvent = r4;
            AInputManager instance = AInputManager.getInstance();
            InputEvent keyEvent = new KeyEvent(uptimeMillis, uptimeMillis, i, 85, 0, 0, -1, 0, 268435464, 257);
            instance.injectInputEvent(keyEvent, 0);
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
            if (!(packageName.equals(obj) || packageName.equals(PACKAGE_SYSTEMUI))) {
                i = ((ActivityManager.RunningTaskInfo) runningTasks.get(i2)).id;
            }
            i2++;
        }
        if (i != 0) {
            activityManager.moveTaskToFront(i, 2);
        }
    }


    public static void ClearMemory(Context context)  {
        ActivityManager am = (ActivityManager)context. getSystemService(Context.ACTIVITY_SERVICE);
        List<ActivityManager.RunningAppProcessInfo> infoList = am.getRunningAppProcesses();
        List<ActivityManager.RunningServiceInfo> serviceInfos = am.getRunningServices(100);

        long beforeMem = getAvailMemory(context);
        Log.d(TAG, "-----------before memory info : " + beforeMem);
        int count = 0;
        if (infoList != null) {
            for (int i = 0; i < infoList.size(); ++i) {
                ActivityManager.RunningAppProcessInfo appProcessInfo = infoList.get(i);
                Log.d(TAG, "process name : " + appProcessInfo.processName);
                //importance 该进程的重要程度  分为几个级别，数值越低就越重要。
                Log.d(TAG, "importance : " + appProcessInfo.importance);

                // 一般数值大于RunningAppProcessInfo.IMPORTANCE_SERVICE的进程都长时间没用或者空进程了
                // 一般数值大于RunningAppProcessInfo.IMPORTANCE_VISIBLE的进程都是非可见进程，也就是在后台运行着
                if (appProcessInfo.importance > ActivityManager.RunningAppProcessInfo.IMPORTANCE_VISIBLE) {
                    String[] pkgList = appProcessInfo.pkgList;
                    for (int j = 0; j < pkgList.length; ++j) {//pkgList 得到该进程下运行的包名
                        Log.d(TAG, "It will be killed, package name : " + pkgList[j]);
                        am.killBackgroundProcesses(pkgList[j]);
                        count++;
                    }
                }

            }
        }

        long afterMem = getAvailMemory(context);
        Log.d(TAG, "----------- after memory info : " + afterMem);
        Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
        String string=getStringIdentifier(context,"clear_no") + count + getStringIdentifier(context,"clear_yes")
                + (afterMem - beforeMem) + "M";
        Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                .show();
    }
   static long getAvailMemory(Context context) {
        // 获取android当前可用内存大小
        ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
        ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
        am.getMemoryInfo(mi);
        //mi.availMem; 当前系统的可用内存
        //return Formatter.formatFileSize(context, mi.availMem);// 将获取的内存大小规格化
        Log.d(TAG, "可用内存---->>>" + mi.availMem / (1024 * 1024));
        return mi.availMem / (1024 * 1024);
    }

   public static void KillRecentAppsAll(Context context) {
        List list = null;
        ActivityManager activityManager = (ActivityManager)context.getSystemService("activity");
        if (activityManager != null) {
            list = activityManager.getRunningTasks(99);
        }
        if (list != null && list.iterator().hasNext()) {
            for (int i = 0; i < list.size(); i++) {
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) list.get(i);
                String packageName = runningTaskInfo.topActivity.getPackageName();
                Object obj = null;
                for (String str : KillWhiteList) {
                    if (str != null && str.equals(packageName)) {
                        obj = 1;
                        break;
                    }
                }
                if (obj == null && !packageName.contains("systemui")) {
                    Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
                    String string=packageName+":"+getStringIdentifier(context,"kill_force_whitelist");
                    Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                            .show();
                    try {
                        ActivityManagerNative.getDefault().removeTask(runningTaskInfo.id);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }

            }
            Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
            String string=getStringIdentifier(context,"kill_force");
            Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                    .show();
        }
    }

   public static void KillCurrentApps(Context context) {
        List list = null;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null) {
            list = activityManager.getRunningTasks(1);
        }
        if (list != null && list.iterator().hasNext()) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) list.iterator().next();
            String packageName = runningTaskInfo.topActivity.getPackageName();
            IActivityManager iActivityManager = ActivityManagerNative.getDefault();
            Object obj = null;
            for (String str : KillWhiteList) {
                if (str != null && str.equals(packageName)) {
                    obj = 1;
                    break;
                }
            }
            if (obj != null || packageName.contains("systemui")) {
                Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
                String string=packageName+":"+getStringIdentifier(context,"kill_force_whitelist");
                Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                        .show();
                return;
            }
            try {
                iActivityManager.removeTask(runningTaskInfo.id);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
            String string=getStringIdentifier(context,"kill_force") + " " + packageName;
            Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                    .show();
        }
    }

    public static void toggleMobile(Context context) {
        int Styel=0;
        if (Styel==0){
            mActionString.ActionToastSring(context,"mobile_data_yes");

        }else if(Styel== 1){
            mActionString.ActionToastSring(context,"mobile_data_no");
        }
    }
    public static void getToday(Context ctx){
        android.icu.util.Calendar instance = android.icu.util.Calendar.getInstance();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd(EEE)");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy");// HH:mm:ss
        Date date = new Date(System.currentTimeMillis());
        Calendar cd = Calendar.getInstance();
        int yearOfNumber = cd.get(Calendar.DAY_OF_YEAR);//获得当天是一年中的第几天
        int week = cd.get(cd.WEEK_OF_YEAR);
        String str;

        if(isLunarSetting()==true){
          str="今天是"+simpleDateFormat.format(date)+"\n"+"农历:"+new LeoGlobalLunar(instance).toLunarChineseZodiacTimeSrting()+"\n"+"是"+simpleDateFormat2.format(date)+"年中的第"+" "+week+" 周"+" "+"第"+yearOfNumber+"天";
        }else {
            str="Today is "+simpleDateFormat.format(date)+"\n"+"are "+simpleDateFormat2.format(date)+" year"+" "+week+" week"+" "+"No."+yearOfNumber+"day";
        }
        Toast.makeText(ctx,  str, Toast.LENGTH_SHORT).show();
    }
}
