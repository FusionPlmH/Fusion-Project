package com.salt.settings;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.SystemProperties;
import android.text.BidiFormatter;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;

public class SaltUtils{
    public static  String LEOFRAMEWORK= "com.leo.framework";

    public static String getSaltProper(String str) {
        return SystemProperties.get(str);
    }
    public static String getApksStringInt(Context context,String string){
        return getStringIdentifier(context, string);
    }
    public static String  getStringIdentifier(Context context , String RECnME){
        String pkgName=null;
        String toastMsg;
        int ident;
        try {
            Resources packRes = getResourcesForPackage(context, LEOFRAMEWORK);
            ident = packRes.getIdentifier(RECnME,"string", LEOFRAMEWORK);
            toastMsg = packRes.getString(ident, pkgName);
        } catch (Exception e) {
            e.printStackTrace();
            toastMsg="";
        }

        return toastMsg;
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

    public static String getVersionName(Context context)  {
        // 获取packagemanager的实例
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packInfo = null;
        try {
            packInfo = packageManager.getPackageInfo(LEOFRAMEWORK, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        String version = packInfo.versionName;
        return version;
    }
    public static String getLeoROMCustomizing() {
        String strvip="ro.saeo.taobao";
        String str="";
        String tb=getSaltProper("ro.saeo.taobao.name");
        String str2="";
        if(tb.equals("")){
            str2="";
        }else{
            str2=tb;
        }
        if(getSaltProper(strvip).equals("true")){
            str="["+str2+"]";
        }else if(getSaltProper(strvip).equals("false")){
            str="";
        }
        return str;
    }
    public static String getLeoROMdonate() {
        String strvip="ro.leo.os.vip.donate";
        String str="";
        if(getSaltProper(strvip).equals("true")){
            str=" №."+ getSaltProper("ro.leo.online.update.version")+getLeoROMCustomizing();
        }else if(getSaltProper(strvip).equals("0")){
            str="";
        }
        return BidiFormatter.getInstance().unicodeWrap(Build.DISPLAY)+str;
    }
    public static String getLeoROMState() {
        String strvip="ro.leo.os.vip.donate";
        String str="";
        if(getSaltProper(strvip).equals("true")){
            str="YES";
        }else if(getSaltProper(strvip).equals("0")){
            str="NO";
        }
        return str;
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

    public static int getLeoUIResource(Context C,String resource) {
        return C.getResources().getIdentifier(resource, null,"com.android.settings");
    }
    public static String getbusybox() {

        String linuxKernel;
        String readCommandOutput = readCommandOutput("busybox");
        if (!busyboxInstalled() || readCommandOutput == null || readCommandOutput.length() <= 0) {
            linuxKernel = "";
        } else {
            linuxKernel = readCommandOutput("busybox");
        }

        return linuxKernel;
    }
    public static boolean busyboxInstalled() {
        return existBinary("busybox");
    }
    private static boolean existBinary(String str) {
        String[] split = System.getenv("PATH").split(":");
        int length = split.length;
        int i = 0;
        while (i < length) {
            StringBuilder stringBuilder;
            String str2 = split[i];
            if (!str2.endsWith("/")) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(str2);
                stringBuilder.append("/");
                str2 = stringBuilder.toString();
            }
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(str2);
            stringBuilder2.append(str);
            if (!new File(stringBuilder2.toString()).exists()) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(str2);
                stringBuilder.append(str);

            }
            return true;
        }
        return false;
    }
    public static String readCommandOutput(String str) {
        try {
            Process exec = Runtime.getRuntime().exec(str);
            if (exec.waitFor() == 0) {
                exec.getInputStream();
            } else {
                exec.getErrorStream();
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            str = bufferedReader.readLine();
            bufferedReader.close();
            return str;
        } catch (Exception e) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("ERROR: ");
            stringBuilder.append(e.getMessage());
            return stringBuilder.toString();
        }
    }
}