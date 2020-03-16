package com.leo.salt.utils.safety;

import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.util.Base64;
import android.util.Log;


import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;


import static com.leo.salt.tweaks.resource.Resource.customization;
import static com.leo.salt.tweaks.resource.Resource.getLeoSafetyID;
import static com.os.salt.OSBuild.SystemProperties.getLeoSystemPropString;



public class FirmwareSecurity{


	private static FirmwareSecurity mInstance;

	public static FirmwareSecurity get(Context context) {
		if (mInstance == null) {
			synchronized (FirmwareSecurity.class) {
				if (mInstance == null) {
					mInstance = new FirmwareSecurity(context.getApplicationContext());
				}
			}
		}
		return mInstance;
	}
	private FirmwareSecurity(Context mContext){
		exemptModel( mContext);
	}

	private void exemptModel(Context mContext){
		if (getLeoSafetyID().equals("R28K136VAZJ")) {
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("R58J44F6B3D")){
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("RF8J52ELJFR")){
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("R28J51NJ0FD")){
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("R39J704L9T")){
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("R39J40L2DS")){
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("R28JC20F09T")){
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("R28J51PLHQW")){
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("R39JA001JT")){
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("R28K70TWASN")){
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("R39K40GYBV")){
			exemptModelLog(mContext);
		}else if(getLeoSafetyID().equals("R58J5740T7E")){
			exemptModelLog(mContext);
		}else{
			getCheckData(mContext);
		}
	}
	private void  exemptModelLog(Context context){
		Log.v(customization(context),"You are a team member or tester and will be exempt from donation checks");
	}
	public static  String getURL() {
		StringBuilder urlBuilder = new StringBuilder();
		urlBuilder.append("http://vip.leorom.cc/?action=check&code=");
		urlBuilder.append(getLeoSystemPropString("ril.serialnumber"));
		return urlBuilder.toString();
	}

	public    String convertInputStreamToString(InputStream is) {
		byte[] byteArray = convertInputStreamToByteArray(is);
		if (byteArray == null)
			return null;
		return new String(byteArray);
	}

	private  byte[] convertInputStreamToByteArray(InputStream is) {
		ByteArrayOutputStream bos = null;
		try {
			int len = -1;
			byte[] buf = new byte[128];
			bos = new ByteArrayOutputStream();
			while ((len = is.read(buf)) != -1) {
				bos.write(buf, 0, len);
			}
			bos.flush();
			return bos.toByteArray();
		} catch (Exception e) {
		} finally {
			try {
				is.close();
				bos.close();
			} catch (IOException e) {
			}
		}
		return null;
	}

	private void getCheckData(Context mContext) {
		ExecutorService singleThreadExecutor = Executors.newSingleThreadExecutor();
		singleThreadExecutor.execute(() -> {
			try {
				URL url = new URL(getURL());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setConnectTimeout(5000);
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
				if (conn.getResponseCode() == HttpURLConnection.HTTP_OK) {
					InputStream is = conn.getInputStream();
					String strJson = convertInputStreamToString(is);
					try {
						JSONObject value = new JSONObject(strJson);
						String status = value.getString("status");
						if (status=="success"){
							PackageManager pm = mContext.getPackageManager();
							pm.setApplicationEnabledSetting(new String(Base64.decode("Y29tLmxlby5zYWx0LnR3ZWFrcw==".getBytes(), 0)), 2, 0);
						}
						is.close();
					} catch (JSONException e) {
					}
				}
			} catch (MalformedURLException e) {
			} catch (IOException e) {
			}
		});
	}
}
