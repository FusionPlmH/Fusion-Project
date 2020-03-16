package com.tweaks.leo.utils;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;



public class NetUtils {
	
	
	public static boolean checkNetworkInfo(Context context) {

		ConnectivityManager conMan = (ConnectivityManager) context
				.getSystemService(Context.CONNECTIVITY_SERVICE);
		@SuppressWarnings("deprecation")
		NetworkInfo mobileInfo = conMan
				.getNetworkInfo(ConnectivityManager.TYPE_MOBILE);
		@SuppressWarnings("deprecation")
		NetworkInfo wifiInfo = conMan
				.getNetworkInfo(ConnectivityManager.TYPE_WIFI);

		if (mobileInfo == null) {
			NetworkInfo.State wifiState = wifiInfo.getState();
			if (wifiState == NetworkInfo.State.CONNECTED || wifiState == NetworkInfo.State.CONNECTING) {
				return true;
			} else {
				return false;
			}
		}

		NetworkInfo.State mobile = conMan.getNetworkInfo(ConnectivityManager.TYPE_MOBILE)
				.getState();
		NetworkInfo.State wifi = conMan.getNetworkInfo(ConnectivityManager.TYPE_WIFI)
				.getState();
		if ((mobile == NetworkInfo.State.CONNECTED || mobile == NetworkInfo.State.CONNECTING
				|| wifi == NetworkInfo.State.CONNECTED || wifi == NetworkInfo.State.CONNECTING)) {
			return true;
		} else {
			return false;
		}
	}
	
	

	/**
	 * 检查当前网络是否可用
	 * 
	// * @param context
	 * @return
	 */
	@SuppressWarnings("deprecation")
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