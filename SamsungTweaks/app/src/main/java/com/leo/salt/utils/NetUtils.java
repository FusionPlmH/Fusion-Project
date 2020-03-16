package com.fusionleo.salt.utils;


import android.content.Context;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;


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



}