package com.leo.global.utils;


import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.ImageView;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

import static com.leo.global.utils.Constants.safety;

public class Build{
    public static String executeCommandWithOutput(boolean root, String command) {
        DataOutputStream dos;
        InputStream is;
        try {
            Process process;
            process = root ? Runtime.getRuntime().exec("su") : Runtime.getRuntime().exec("sh");
            if (process == null) return "";
            dos = new DataOutputStream(process.getOutputStream());
            dos.write(command.getBytes("UTF-8"));
            dos.writeBytes("\nexit \n");
            dos.flush();
            dos.close();
            if (process.waitFor() == 0) {
                is = process.getInputStream();
                StringBuilder builder = new StringBuilder();
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                String line;
                while ((line = br.readLine()) != null)
                    builder.append(line.trim()).append("\n");
                return builder.toString().trim();
            } else {
                is = process.getErrorStream();
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                String line;
                while ((line = br.readLine()) != null) Log.d("error", line);
            }

        } catch (IOException | InterruptedException | IllegalArgumentException e) {
            e.printStackTrace();
        }
        return "";
    }
    
    private static final String UNKNOWN = "unknown";
    public static String getProperty(String str) {
        String str3 =UNKNOWN;
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{str, UNKNOWN});
        } catch (Exception e) {
            e.printStackTrace();
            return str3;
        } catch (Throwable th) {
            return str3;
        }
    }

    public static String getLeoBuild(String srt) {
        return  getProperty(srt);
    }
    public static void StartWebActivity(int time, final Activity activity, final String str){
        Handler mHandler= new Handler();
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {

            }
        },  time);
    }
    public static void StartActivity(int time, final Activity activity, final Class<? extends Activity> cls){
        Handler mHandler= new Handler();
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                Intent intent = new Intent(activity, cls);
                activity.startActivity(intent);
            }
        },  time);
    }
    public static String getLeoSafety() {
        return  getProperty("ro.build.leo");
    }
    public static String getLeoSafetyData() {

        String NAME;
        if(getLeoSafety().equals(safety)){
            NAME="捐赠用户" +"("+getLeoSafetyID()+")";
        }else if(getLeoSafety().equals(safety)){
            NAME=customization();
        }else {
            NAME="未捐赠";
        }
        return NAME;
    }
    public static String customization(){
        String NAME="";
        if (getLeoSafetyID().equals("R28K136VAZJ")) {
            NAME="不咸的盐巴"+" 内部版";
        }else if(getLeoSafetyID().equals("R58J44F6B3D")){
            NAME="深見　ひとみ"+" 内部版";
        }else if(getLeoSafetyID().equals("RF8J52ELJFR")){
            NAME="深見　ひとみ"+" 内部版";
        }else if(getLeoSafetyID().equals("R28J51NJ0FD")){
            NAME="夏天"+" 内部版";
        }else if(getLeoSafetyID().equals("R39J704L9T")){
            NAME="Bright"+"内部版";
        }else if(getLeoSafetyID().equals("R39J40L2DS")){
            NAME="打酱油的"+" 内部版";
        }else if(getLeoSafetyID().equals("R28JC20F09T")){
            NAME="咸鱼"+" 内部版";
        }else if(getLeoSafetyID().equals("R28J51PLHQW")){
            NAME="Plmh"+"内部版";
        }else if(getLeoSafetyID().equals("R39JA001JT")){
            NAME="罒_▁肥籽"+" 内部版";
        }
        return NAME;

    }
    public static String getLeoSafetyID() {
        return  getProperty("ril.serialnumber");
    }
  public static String getIpAddress(boolean ipv4) {
        try {
            List<NetworkInterface> interfaces = Collections.list(NetworkInterface.getNetworkInterfaces());
            for (NetworkInterface intf : interfaces) {
                List<InetAddress> addrs = Collections.list(intf.getInetAddresses());
                for (InetAddress addr : addrs) {
                    if (!addr.isLoopbackAddress()) {
                        String sAddr = addr.getHostAddress();
                        boolean isIPv4 = sAddr.indexOf(':') < 0;
                        if (ipv4) {
                            if (isIPv4) {
                                return sAddr;
                            }
                        } else {
                            if (!isIPv4) {
                                // drop ip6 zone suffix
                                int delim = sAddr.indexOf('%');
                                return delim < 0 ? sAddr.toUpperCase() : sAddr.substring(0, delim).toUpperCase();
                            }
                        }
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "";
    }


    public static boolean isLunarCN() {
        String language = getLanguageEnv();
        if (language != null
                && (language.trim().equals("zh-CN") ))
            return true;
        else
            return false;
    }
    static String getLanguageEnv() {
        Locale l = Locale.getDefault();
        String language = l.getLanguage();
        String country = l.getCountry().toLowerCase();
        if ("zh".equals(language)) {
            if ("cn".equals(country)) {
                language = "zh-CN";//中国大陆
            }
        }

        return language;
    }
    public static void openUrl(String url,Context context) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        context.startActivity(intent);
    }
    public  static  String getDevice() {
        return getProperty("ro.boot.em.model");
    }
    public static String getBasicsSystemVersion() {
        return  getProperty("ro.build.PDA");
    }

    public static Drawable getCustomDrawable(Context context,String recName,String rec) {
        Drawable d;
        try {
            Context otherAppContext =context.createPackageContext("com.leo.framework", 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(recName, rec,"com.leo.framework"));
            return d.getCurrent();
        } catch (Exception e) {
            d = context.getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }


}