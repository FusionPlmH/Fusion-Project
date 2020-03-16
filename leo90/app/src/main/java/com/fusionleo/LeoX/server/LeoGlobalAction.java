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

package com.fusionleo.LeoX.server;


import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.inputs.AInputManager;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.net.ConnectivityManager;
import android.net.Uri;
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
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.widget.Toast;

import com.android.internal.statusbar.IStatusBarService;


import com.android.server.LocalServices;
import com.android.server.policy.PolicyControl;
import com.android.server.statusbar.StatusBarManagerInternal;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.HashSet;
import java.util.List;


import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;

import static com.fusionleo.LeoProvider.LeoGlobalSetting.*;
import static com.fusionleo.LeoX.server.LeoConfig.*;

public class LeoGlobalAction  {
    static {
        System.loadLibrary(Config);
    }

    public static String TAG = LeoGlobalAction.class.getSimpleName();
    public static void startAppsActivity(Context context,String str,boolean launch) {
        String string2 = Settings.System.getString(context.getContentResolver(),str+"_short");

        if(launch){
            Intent intent = getIntent(string2);
            if (intent == null) {
                return;
            }
            launchShortcut(context, intent);
        } else  {
            launchActivity(context,str);

        }
    }
    public static Intent getIntent(String uri) {
        if (uri == null || uri.startsWith("0")) {
            return null;
        }

        Intent intent = null;
        try {
            intent = Intent.parseUri(uri, 0);
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
        return intent;
    }
    static void launchActivity(Context context,String appName) {
        Intent intent;
        String packageName = Settings.System.getString(context.getContentResolver(), appName+"_apps");
        String activity = Settings.System.getString(context.getContentResolver(), appName+"_activity");
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

            Log.i(TAG , "Unable to launch activity " + e);
        }


    }
    private static void launchShortcut(Context context, Intent intent) {
        try {
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            context.startActivity(intent);
        } catch (Exception e) {
            Log.i(TAG , "Unable to launch activity " + e);
        }
    }
    static LeoConfig mActionString;


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
    public static void toggleclearAllNotifications(Context context) {
        LeoAction.clearAllNotifications();
        ActionToastSring(context,"clear_notification");
    }
    public static void WeChatScan(Context context) {
        LeoAction.WeChatScan(context);
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
        private static void clearAllNotifications() {
            IStatusBarService service = getStatusBarService();
            if (service != null) {
                //  service.onClearAllNotifications(ActivityManager.getCurrentUser());
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
            intent.setAction(rt1001foleo("bGVvX2ZsYXNobGlnaHRfYWN0aW9u"));
            context.sendBroadcast(intent);
        }
        private static void WeChatScan(Context context) {
            Intent intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction(rt1001foleo("Y29tLmxlby5BQ1RJT05fUEFZ"));
            context. startActivity(intent);
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
        if (newVal.equals("com.leo.salt.tweaks")) {
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
        String key=getStringIdentifier(context,"prefe_name")+rt1001foleo("cXNfZmxvYXRiYWxsX2VuYWJsZWQ=");
        Styel  = Settings.System.getInt(context.getContentResolver(), key, 0) ^ 1;
        Settings.System.putInt(context.getContentResolver(), key, Styel);
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
        String key=getStringIdentifier(context,"prefe_name")+rt1001foleo("cXNfbWluaXBvcF9lbmFibGVk");
        Styel  = Settings.System.getInt(context.getContentResolver(), key, 0) ^ 1;
        Settings.System.putInt(context.getContentResolver(), key, Styel);
        if (Styel== 0){
            mActionString.ActionToastSring(context,"mipop_mode_no");
        }else if(Styel== 1){
            mActionString.ActionToastSring(context,"mipop_mode_yes");
        }
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

    public static void getRecentKeyEvent() {
        int[] iArr = new int[]{0, 1};
        for (int keyEvent : iArr) {
            long uptimeMillis = SystemClock.uptimeMillis();
            AInputManager.getInstance().injectInputEvent(new KeyEvent(uptimeMillis, uptimeMillis, keyEvent, 187, 0, 0, -1, 0, 268435464, 257), 0);
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
                HashSet hashSet = new HashSet();
                String string = getLeoString(context, LEOPREFE+rt1001foleo("a2lsbGVyX3doaXRlX2xpc3Q="));
                if (string != null) {
                    for (Object add : string.split("\\|")) {
                        hashSet.add(add);
                    }
                }
                String obj = appProcessInfo.processName.split(":")[0];
                if (appProcessInfo.importance > ActivityManager.RunningAppProcessInfo.IMPORTANCE_VISIBLE&& !hashSet.contains(obj)) {
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
        ActivityManager activityManager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
        if (activityManager != null) {
            list = activityManager.getRunningTasks(1);
        }
        if (list != null && list.iterator().hasNext()) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) list.iterator().next();
            String packageName = runningTaskInfo.topActivity.getPackageName();
            IActivityManager iActivityManager = ActivityManagerNative.getDefault();
            Integer num = null;
            for (String str : setKillWhiteList()) {
                if (str != null && str.equals(packageName)) {
                    num = Integer.valueOf(1);
                    break;
                }
            }
            Context packageContext;
            StringBuilder stringBuilder;
            if (num != null || packageName.contains("systemui")) {
                packageContext = LeoConfig.getPackageContext(context, LeoConfig.PACKAGE_SYSTEMUI);
                stringBuilder = new StringBuilder();

                stringBuilder.append(getApplicationName(packageName,context)+":"+LeoConfig.getStringIdentifier(context, "kill_force_whitelist"));
                Toast.makeText(packageContext != null ? packageContext : context, stringBuilder.toString(), Toast.LENGTH_SHORT).show();
                return;
            }
            try {
                iActivityManager.removeTask(runningTaskInfo.id);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            packageContext = LeoConfig.getPackageContext(context, LeoConfig.PACKAGE_SYSTEMUI);
            stringBuilder = new StringBuilder();
            stringBuilder.append(LeoConfig.getStringIdentifier(context, "kill_force"));
            stringBuilder.append(" ");
            stringBuilder.append(getApplicationName(packageName,context));
            Toast.makeText(packageContext != null ? packageContext : context, stringBuilder.toString(), 0).show();
        }

    }
    private static String getApplicationName(String str,Context context) {
        ApplicationInfo applicationInfo;
        CharSequence applicationLabel;
        PackageManager packageManager = context.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            applicationLabel = packageManager.getApplicationLabel(applicationInfo);
            if (applicationLabel != null) {
            }
        } else {
            applicationLabel = "Unknown";
        }
        return (String) applicationLabel;
    }


    public static void wakeUpDevice(Context context) {
        aPowerManager powerManager =
                (aPowerManager) context.getSystemService(Context.POWER_SERVICE);
        if (!powerManager.isScreenOn()) {
            powerManager.wakeUp(SystemClock.uptimeMillis());
        }
    }



    public static  void toggleBluetooth(Context context) {
        BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if (!mBluetoothAdapter.isEnabled()) {
            mBluetoothAdapter.enable();
            mActionString.ActionToastSring(context,"bluetooth_mode_yes");
        }else if (mBluetoothAdapter.isEnabled()) {
            mBluetoothAdapter.disable();//关闭蓝牙
            mActionString.ActionToastSring(context,"bluetooth_mode_yes");
        }
    }
    public static void toggleMobile(Context context) {

        int Styel=0;
        if (Styel==0){
            getLeoMobilemode(context,0);
        }else if(Styel== 1){
            mActionString.ActionToastSring(context,"mobile_data_no");
        }
    }
    public static void toggleWifiAP(Context context) {
        mActionString.ActionToastSring(context,"hotspot_mode_yes");

    }


}
