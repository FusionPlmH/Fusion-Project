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
import android.content.res.Resources;
import android.hardware.inputs.AInputManager;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IPowerManager;
import android.os.Looper;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Vibrator;
import android.os.aPowerManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.widget.Toast;



import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Pattern;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.fusionleo.LeoProvider.LeoGlobalSetting.*;


public class LeoConfig {

    static {
        System.loadLibrary(Config);
    }
    public static String TAG = LeoGlobalAction.class.getSimpleName();

    public static void setLeoHaptics(Context context,int of, int style) {
        boolean hapticsDisabled = false;
        if (of==1) {
            hapticsDisabled = true;
        }
        if (hapticsDisabled) {
            Vibrator   mVibrator = (Vibrator)context.getSystemService(Context.VIBRATOR_SERVICE);
            mVibrator.vibrate(style);
        }
    }
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

    public static  String PACKAGE_SYSTEMUI = "com.android.systemui";

       public static void ActionToastSring(Context context,String REC){
           String string=getStringIdentifier(context,REC);
           Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
           Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                   .show();
       }

    public static String  getStringIdentifier(Context context , String RECnME){
        String pkgName=null;
        int ident;
        Resources packRes = getResourcesForPackage(context,ConfigManager);
        ident = packRes.getIdentifier(RECnME,rt1001foleo("c3RyaW5n"),ConfigManager);
        String toastMsg = packRes.getString(ident, pkgName);
        return toastMsg;
    }
    public static int getIdentifier(Context context, String resName, String resType, String pkg) {
        try {
            Resources res = context.getPackageManager()
                    .getResourcesForApplication(pkg);
            int ident = res.getIdentifier(resName, resType, pkg);
            return ident;
        } catch (Exception e) {
            return -1;
        }
    }

    public static Resources getResourcesForPackage(Context ctx, String pkg) {
        try {
            Resources res = ctx.getPackageManager()
                    .getResourcesForApplication(pkg);
            return res;
        } catch (Exception e) {
            return ctx.getResources();
        }
    }


    public static String[] setKillWhiteList(){
        String List =mKillWhiteList;
        String str = "##";
        String systemString =mKillWhite;
        String[]  KillWhiteList = (systemString == null || systemString.isEmpty() || !systemString.contains(str)) ? List.split(str) : (systemString + List).split(str);
        return KillWhiteList;
    }
    public static String getLeoString(Context cxt,String key) {

        return Settings.System.getString(cxt.getContentResolver(), key);
    }
    public static Uri getLeoUri(String key) {
        return Settings.System.getUriFor( key);
    }
   private static  String mKillWhiteList= "com.android.systemui##com.android.phone##com.leo.salt.tweaks##com.sec.android.app.launcher";
    public static int getLeoInt(Context cxt, String key, int defaultValue) {

        return Settings.System.getInt(cxt.getContentResolver(), key, defaultValue);
    }
    public static void getLeoMobilemode(Context context,int style) {
        if (style==0){
          ActionToastSring(context,"mobile_data_yes");
        }else if(style== 1){
        ActionToastSring(context,"mobile_data_no");
        }
    }
    public static boolean EnablePowerGlobalService=true;
    public static void PowerMenuService(Context context,int str){
        try {
            EnablePowerGlobalService=true;
            Intent intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction(rt1001foleo(PowerMenuStyleService(str)));
            context. startActivity(intent);
        } catch (Exception e) {
            EnablePowerGlobalService=false;
        }
    }
    public static  String mAppsManager="com.leo.salt.tweaks/com.leo.salt.tweaks.amber.AppsActivity";
    public static  String mWIFIManager="com.leo.salt.tweaks/com.leo.salt.tweaks.amber.WifiPasswordActivity";
    public static  String mLeoManager="com.leo.salt.tweaks/com.leo.salt.tweaks.SplashActivity";
    public static  String mVideoManager="com.sec.app.screenrecorder/com.sec.app.screenrecorder.activity.LauncherActivity";
    public static  String mSearch="com.samsung.android.app.galaxyfinder/com.samsung.android.app.galaxyfinder.GalaxyFinderActivity";
    public static  float  mNavBar=(((float) SystemProperties.getInt("persist.sys.display_density", 420)) / 160.0f);
    public static void LeoManagerService(Context context,String style) {
        String[] split =style.split("/");
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(split[0], split[1]));
        intent.setFlags(268435456);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e4) {
            e4.printStackTrace();
            try {
            intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction(rt1001foleo("Y29tLmxlby5ST01fQ09OVFJPTA=="));
            context. startActivity(intent);
            }catch (Exception e) {
                LeoConfig.ActionToastSring(context, "activity_no");

            }
        }
    }
    public static  String  PowerMenuStyleService(int style) {
        switch (style) {
            case 1:
                return "Y29tLmxlby5BQ1RJT05fUE9XRVJfQQ==";
            case 2:
                return "Y29tLmxlby5BQ1RJT05fUE9XRVJfQg==";
            case 3:
                return "Y29tLmxlby5BQ1RJT05fUE9XRVJfQw==";
            case 4:
                return "Y29tLmxlby5BQ1RJT05fUE9XRVJfRA==";
            default:
                return "Y29tLmxlby5BQ1RJT05fUE9XRVJfU0lNUExJRlk=";

        }

    }
    public static void CleanProcesse(Context context) {
        try {
            Intent intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction(rt1001foleo("Y29tLmxlby5BQ1RJT05fQ0xFQU4="));
            context.startActivity(intent);
        } catch (Exception e) {
            Log.v(TAG, "error occurred");
        }
    }

    public static String rt1001foleo(String str) {
        return new String(Base64.decode(str.getBytes(), Base64.DEFAULT));
    }
    public static void setLeoKeypressAction(Context context,String Code,int style ) {
        Intent intent = new Intent();
        intent.setAction(mLeoGlobalService);
        intent.putExtra(rt1001foleo("bGVvX2FjdGlvbg=="), style);
        intent.putExtra(rt1001foleo("bGVvX2FwcA=="),Code);
        context.sendBroadcast(intent);
    }
}
