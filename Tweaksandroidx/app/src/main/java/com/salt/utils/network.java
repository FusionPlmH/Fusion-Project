package com.salt.utils;

import android.Manifest;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;

import com.salt.config.R;

import java.io.File;
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
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getLeoBuild;
import static com.salt.utils.SaltProper.getOneUIVersion;

public class network{

    public static String GithubDownloadMirror(String name){

        return "https://raw.githubusercontent.com/FusionLeoProject/FusionLeo/master/xposed/"+name+".zip";
    }
    public static String LeoServerAPK(String name){

        return "http://download1979.mediafire.com/vkkiy62yyzzg/fak6lybemwznbaa/"+name+".apk";
    }
    public static String isNetworkOTAGlobal(String str) {
        return "http://ota"+getApksStringInt("global_url")+str;
    }
    public static String isNetworkOTAChinese(String str) {
        return "http://leorom.f3322.net"+getApksStringInt("chinese_URL")+str+"?dl=1";
    }
    public static String LeoServerDownloadMirror(String name){

        return "http://download1979.mediafire.com/vkkiy62yyzzg/fak6lybemwznbaa/"+name+".zip";
    }
    public static String LeoFoatJsonServer(String json){
        return "https://www.leorom.cc/usr/uploads/json/json_"+json+".json";
    }

    public static int netWorkState;
    public static int hasNetWork(Context context) {
        /*
         * 0 没有网络 1 移动网络 2 WIFI
         */
        // 链接管理器
        ConnectivityManager cm = (ConnectivityManager) context
                .getSystemService(Context.CONNECTIVITY_SERVICE);
        // 获取激活的网络信息 // 需要权限
        NetworkInfo activeNetworkInfo = cm.getActiveNetworkInfo();

        if (activeNetworkInfo == null) {
            netWorkState = 0;// 没有网络
        } else {
            if (activeNetworkInfo.getType() == ConnectivityManager.TYPE_MOBILE) {
                netWorkState = 1;
            } else if (activeNetworkInfo.getType() == ConnectivityManager.TYPE_WIFI) {
                netWorkState = 2;
            }
        }
        return netWorkState;
    }


    public static boolean isNetworkAvailable(Context activity) {
        //得到应用上下文
        Context context = activity.getApplicationContext();
        // 获取手机所有连接管理对象（包括对wi-fi,net等连接的管理）  notificationManager /alarmManager
        ConnectivityManager connectivityManager = (ConnectivityManager) context
                .getSystemService(Context.CONNECTIVITY_SERVICE);

        if (connectivityManager == null) {
            return false;
        } else {
            // 获取NetworkInfo对象
            NetworkInfo[] networkInfo = connectivityManager.getAllNetworkInfo();

            if (networkInfo != null && networkInfo.length > 0) {
                for (int i = 0; i < networkInfo.length; i++) {
                    // 判断当前网络状态是否为连接状态
                    if (networkInfo[i].getState() == NetworkInfo.State.CONNECTED) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}