package com.salt.frame.utils;


import android.content.Context;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.text.BidiFormatter;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.List;

import dalvik.system.DexFile;

import static com.salt.frame.LeadFrame.isChineseLanguage;


public class SaltUtils {

    public static void createSDCardDupdateirimg(){
        if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){

            File sdcardDir =Environment.getExternalStorageDirectory();

            String path=sdcardDir.getPath()+"/LeoTweaks/download/.UnZip";
            File path1 = new File(path);
            if (!path1.exists()) {
                path1.mkdirs();
            }
        }
        else{
            return;
        }

    }
    public static String rt100foleo(String str) {
        return new String(Base64.decode(str.getBytes(), Base64.DEFAULT));
    }
    public static boolean DrawerCarrier(Context context){
        return SaltSettings.getLeoInt(context, "leo_salt_drawer_carrier", 0) == 1;
    }
    public static String DrawerCarrierString(Context context){
        return SaltSettings.getLeoString(context, "leo_salt_drawer_carrier_string");
    }
    public static String DrawerCardView(Context context){
        return SaltSettings.getLeoString(context, "leo_salt_drawer_card_wallpaper_url");
    }
    public static boolean DrawerCard(Context context){
        return Settings.System.getInt(context.getContentResolver(), "leo_salt_drawer_card",0)==1;
    }
    public static  class  SaltSettings {
        static Settings.System LeoSettings;
        public static String getLeoString(Context cxt,String key) {
            return LeoSettings.getString(cxt.getContentResolver(), key);
        }
        public static Uri getLeoUri(String key) {
            return  LeoSettings.getUriFor( key);
        }
        public static int getLeoInt(Context cxt, String key, int defaultValue) {
            return LeoSettings.getInt(cxt.getContentResolver(), key, defaultValue);
        }
        public static boolean getLeoBoolean(Context cxt, String key, int defaultValue) {
            return LeoSettings.getInt(cxt.getContentResolver(), key, defaultValue)==1;
        }

        public static String getLeoCustomString (String str2)
        {
            String str ="";
            if (!TextUtils.isEmpty(str2)) {
                str=(str2);
            } else {
                str=(TextUtils.isEmpty(str)? "Leo ROM" : str);
            }
            return str;
        }
    }
    public static  class  SaltWallpaper{
        static Drawable ddd;
        public static Drawable getLeoWallpaper(Context cxt,String str){
            if (str != null) {
                File backgroundwallpaper = new File(Uri.parse(str).getPath());
                if (backgroundwallpaper != null) {
                    ddd = new BitmapDrawable(cxt.getResources(), BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath()));
                }
            }

            return ddd;
        }
    }
    private static String exec(String[] exec) {
        String ret = "";
        ProcessBuilder processBuilder = new ProcessBuilder(exec);
        try {
            Process process = processBuilder.start();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                ret += line;
            }
            process.getInputStream().close();
            process.destroy();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ret;
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
    public static boolean isRooted() {
        // nexus 5x "/su/bin/"
        String[] paths = {"/system/xbin/", "/system/bin/", "/system/sbin/", "/sbin/", "/vendor/bin/", "/su/bin/"};
        try {
            for (int i = 0; i < paths.length; i++) {
                String path = paths[i] + "su";
                if (new File(path).exists()) {
                    String execResult = exec(new String[]{"ls", "-l", path});
                    Log.d("cyb", "isRooted=" + execResult);
                    if (TextUtils.isEmpty(execResult) || execResult.indexOf("root") == execResult.lastIndexOf("root")) {
                        return false;
                    }
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

  public static class NetUtils{
      public static String LicenseInfo(){
          String INFON ;
          if (isChineseLanguage()==true) {
              INFON="License.html";
          }else {
              INFON="License_en.html";
          }
          return "file:///android_asset/html/"+INFON;
      }
  }

    public static  boolean isLeoAvilible(Context context, String packageName) {
        final PackageManager packageManager = context.getPackageManager();
        // 获取所有已安装程序的包信息
        List<PackageInfo> pinfo = packageManager.getInstalledPackages(0);
        for ( int i = 0; i < pinfo.size(); i++ )
        {
            if(pinfo.get(i).packageName.equalsIgnoreCase(packageName))
                return true;
        }
        return false;
    }
}