package com.leo.salt.utils;



import android.content.Context;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.concurrent.atomic.AtomicReference;

import static com.leo.salt.tweaks.resource.Resource.FusionLeo100;
import static com.leo.salt.tweaks.resource.Resource.OTAUrlView;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;


public class NetUtils {
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
	public static String getOTAJson(){
		String json="josn_";
		String str="";
		String otacode=OTAUrlView("ota_code");
		if (getLeoBuild(otacode).equals("Qualcomm_S9")) {
			str="josn_QualcommS9";
		}else if (getLeoBuild(otacode).equals("Qualcomm_S8_N8")) {
			str="josn_QualcommS8";
		}else if (getLeoBuild(otacode).equals("Exynos_S9")) {
			str="josn_ExynosS9";
		}else if (getLeoBuild(otacode).equals("Exynos_S8_N8")) {
			str="josn_ExynosS8";
		}else  if (getLeoBuild(otacode).equals("Qualcomm_S8_JP")){
			str="josn_QualcommS8-JP";
		}
		return str;
	}

	public static String isNetworkOTAGlobal(String str) {
		return "http://ota"+OTAUrlView("global_url")+str+".zip";
	}
	public static String isNetworkOTAChinese(String str) {
		return "http://leorom.f3322.net"+OTAUrlView("chinese_URL")+str+"?dl=1";
	}
	public static String isNetworkLeoWebsites(String str) {


		return "https://www.leorom.cc/index.php/"+str;
	}
	public static URL isNetworkJson;

	static {
		try {
			isNetworkJson= new URL("http://os.leorom.cc/json/"+getOTAJson()+".json");
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
	}
	public static String getpermissionJson(){
		String str="";
		String otacode="ro.build.rom.name";
		if (getLeoBuild(otacode).equals("Leo ROM")) {
			str="ii_7mWIa";
		}
		return str;
	}
	public static String grouppermissionJson(){
		String str="";
		String otacode="ro.build.rom.name";
		if (getLeoBuild(otacode).equals("Leo ROM")) {
			str="http://os.leorom.cc/update/Unlock_donate10.zip";
		}
		return str;
	}

	public static String EdXposedCN(){
		String str;
		if(isChineseLanguage() ){
			str=isNetworkOTAChinese("EkXjR7fs");
			//string=isNetworkOTAChinese(url);
		}else {
			str="https://raw.githubusercontent.com/FusionLeoProject/FusionLeo/master/xposed/EdXposed_Installer.zip";
			//string=urlen;
		}
		return str;
	}
	public static String EdXposedEN(){
		String str;
		if(isChineseLanguage() ){
			str="https://raw.githubusercontent.com/FusionLeoProject/FusionLeo/master/xposed/EdXposed_Installer.zip";
		}else {
			str=isNetworkOTAChinese("EkXjR7fs");
		}
		return str;
	}
    public static String fingerprint(int style){
        String str;
        if(style==1){
            str="https://raw.githubusercontent.com/FusionLeoProject/FusionLeo/master/xposed/fingerprint.zip";
        }else {
            str=isNetworkOTAChinese("La6njNkv");
        }
        return str;
    }
}