package com.salt.utils;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.util.Log;

import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;

import com.salt.config.R;
import com.salt.config.SaltApp;
import com.salt.config.tweaks.activity.FragSubActivity;

import java.io.File;

import static com.salt.config.SaltApp.SaltApplication;
import static com.salt.frame.LeadFrame.getVersionName;
import static com.salt.frame.utils.SaltUtils.getIpAddress;
import static com.salt.frame.utils.SaltUtils.isRooted;
import static com.salt.config.SaltApp.getContext;
import static com.salt.utils.ExtraInfo.getBaseband_Ver;
import static com.salt.utils.ExtraInfo.getIMEI;
import static com.salt.utils.ExtraInfo.getKenel;
import static com.salt.utils.ExtraInfo.getLeoROMdonate;
import static com.salt.utils.ExtraInfo.getMac;
import static com.salt.utils.ExtraInfo.getOperator;
import static com.salt.utils.ExtraInfo.getPhoneNumber;
import static com.salt.utils.ExtraInfo.getSecurityPatch;
import static com.salt.utils.ExtraInfo.getTimes;
import static com.salt.utils.ExtraInfo.getbusybox;
import static com.salt.utils.SaltProper.SystemUrl.Phonebootloader;
import static com.salt.utils.SaltProper.SystemUrl.SystemABUrl;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getLeoBuild;
import static com.salt.utils.SaltProper.getOneUIVersion;
import static java.lang.Boolean.getBoolean;

public class utils{
    public  static final String SCRIPTS_FOLDER = "scripts";
    public  static final String All_SCRIPTS_FOLDER = SystemABUrl()+"etc/salt/scripts";
    public static final String FILES_SCRIPTS_FOLDER_PATH = SaltApplication.getFilesDir().getPath() + File.separator + SCRIPTS_FOLDER;
    public static String getLeoSafetyID() {
        return  getLeoBuild("ril.serialnumber");
    }
    public static final String APP_UPDATE= "com.salt.config.update";
    public static final String APP_FOLDER_NAME = "LeoTweaks";
    public static final String TAG =APP_FOLDER_NAME;
    public static final String  ExternalStorage= Environment.getExternalStorageDirectory().getAbsolutePath();
    public static final String qrWeChat = ExternalStorage + File.separator + APP_FOLDER_NAME + File.separator +
            "leo_weixin.png";
    public static String DownloadPath =Environment.getExternalStorageDirectory()+"/LeoTweaks/download/";
    public static String UnzipFilePath =Environment.getExternalStorageDirectory()+ "/LeoTweaks/download/.UnZip";
    public static final String GoogleCalibration = "pm grant com.google.android.gms android.permission.BODY_SENSORS\n" +
            "pm grant com.google.android.gms android.permission.READ_EXTERNAL_STORAGE\n" +
            "pm grant com.google.android.gms android.permission.WRITE_EXTERNAL_STORAGE\n" +
            "pm grant com.google.android.gms android.permission.READ_CALENDAR\n" +
            "pm grant com.google.android.gms android.permission.CAMERA\n" +
            "pm grant com.google.android.gms android.permission.READ_CONTACTS\n" +
            "pm grant com.google.android.gms android.permission.WRITE_CONTACTS\n" +
            "pm grant com.google.android.gms android.permission.GET_ACCOUNTS\n" +
            "pm grant com.google.android.gms android.permission.ACCESS_FINE_LOCATION\n" +
            "pm grant com.google.android.gms android.permission.ACCESS_COARSE_LOCATION\n" +
            "pm grant com.google.android.gms android.permission.RECORD_AUDIO\n" +
            "pm grant com.google.android.gms android.permission.READ_PHONE_STATE\n" +
            "pm grant com.google.android.gms android.permission.CALL_PHONE\n" +
            "pm grant com.google.android.gms android.permission.READ_CALL_LOG\n" +
            "pm grant com.google.android.gms android.permission.PROCESS_OUTGOING_CALLS\n" +
            "pm grant com.google.android.gms android.permission.READ_SMS\n" +
            "pm grant com.google.android.gms android.permission.SEND_SMS\n" +
            "pm grant com.google.android.gms android.permission.RECEIVE_SMS\n" +
            "pm grant com.android.vending android.permission.BODY_SENSORS\n" +
            "pm grant com.android.vending android.permission.READ_EXTERNAL_STORAGE\n" +
            "pm grant com.android.vending android.permission.WRITE_EXTERNAL_STORAGE\n" +
            "pm grant com.android.vending android.permission.READ_CONTACTS\n" +
            "pm grant com.android.vending android.permission.WRITE_CONTACTS\n" +
            "pm grant com.android.vending android.permission.GET_ACCOUNTS\n" +
            "pm grant com.android.vending android.permission.ACCESS_FINE_LOCATION\n" +
            "pm grant com.android.vending android.permission.ACCESS_COARSE_LOCATION\n" +
            "pm grant com.android.vending android.permission.RECORD_AUDIO\n" +
            "pm grant com.android.vending android.permission.READ_PHONE_STATE\n" +
            "pm grant com.android.vending android.permission.CALL_PHONE\n" +
            "pm grant com.android.vending android.permission.READ_SMS\n" +
            "pm grant com.android.vending android.permission.SEND_SMS\n" +
            "pm grant com.android.vending android.permission.RECEIVE_SMS";
    public static String REboot(){
        String string;
        if(Phonebootloader(3).equals("G97")){
            string="reboot recovery";
        }else{
            string="reboot";
        }
        return string;
    }

    public static  String KEY_TYPE;
    public static boolean getBusinessPromotion(){
        return getBoolean("ro.leo.online.update");
    }
    public static final String  OTACode=getLeoBuild("ro.leo.online.update");
    public static final  String  versions=getApksStringInt("android_versions");
    public static String[] AndroidInfoName() {
        String[] AndroidInfoName={"One UI"+versions,
                getApksStringInt("rom_info"),
                getApksStringInt("leo_info")+versions,
                getApksStringInt("basics_info")+versions,
                "Android"+getApksStringInt("android_versions"),
                "SDK"+getApksStringInt("android_versions"),
                getApksStringInt("compile_info"),
                getApksStringInt("kernel_info")+versions,
                getApksStringInt("baseband_info")+versions,
                "Bootloader"+ versions,
                getApksStringInt(R.string.SecurityPatch_summary),
                "Busybox"+getApksStringInt("android_versions")
                ,
        };
        return AndroidInfoName;
    }
    public static String[] AndroidInfo(Context context) {
        String[] AndroidInfoMessage={getOneUIVersion(context),getLeoBuild("ro.leo.name"),
                getVersionName(context),
                getLeoBuild("ro.build.id")+"."+ getLeoBuild("ro.build.PDA"),
                getLeoBuild("ro.build.version.release")+" "+getAndroidSDKVersion(),
                getLeoBuild("ro.build.version.sdk"),
                getLeoROMdonate(),
                getKenel(context),
                getBaseband_Ver(),
                getLeoBuild("ro.boot.bootloader"),
                getSecurityPatch(),
                getbusybox()};
        return AndroidInfoMessage;
    }
    public static String getAndroidSDKVersion() {
        switch (Build.VERSION.SDK_INT) {
            case 22:
                return "Lollipop";
            case 23:
                return "Marshmallow";
            case 24:
            case 25:
                return "Nougat";
            case 26:
            case 27:
                return "Oreo";
            case 28:
                return "Pie";
            case 29:
                return "Q";
        }
        return "Unknown";
    }
    public static String[] phoneInfo() {
        String[] phoneInfoName={getApksStringInt("device_info_manufacturers"),
                getApksStringInt("device_info_model"),
                getApksStringInt("device_info_serial"),
                "IP",
                "WIFI MAC",
                getApksStringInt("device_info_carrier"),
                getApksStringInt("device_info_phonenumber"),
                "IMEI",
                getApksStringInt("device_info_runtime"),
                getApksStringInt("android_root"),

        };
        return phoneInfoName;
    }


    public static String[] PhoneInfo() {
        String TOOT=(isRooted() ? "ROOT" : "no");
        String[] phoneInfoMessage={Build.MANUFACTURER,
                getLeoBuild("ro.boot.em.model"),
                getLeoBuild("ril.serialnumber"),
                getIpAddress(true),
                getMac(getContext()),
                getOperator(),
                getPhoneNumber(),
                getIMEI(),
                getTimes(getContext()),
                TOOT
        };
        return phoneInfoMessage;
    }



}