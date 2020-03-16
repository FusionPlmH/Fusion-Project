package com.leo.global.utils.safety;

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


import static com.leo.global.utils.Build.getProperty;


public class VerifySafety {
	

public static String getURL() {
		StringBuilder urlBuilder = new StringBuilder();
		urlBuilder.append("http://vip.leorom.cc/?action=check&code=");
		urlBuilder.append(getProperty("ril.serialnumber"));
		return urlBuilder.toString();
	}

	static  String convertInputStreamToString(InputStream is) {
		byte[] byteArray = convertInputStreamToByteArray(is);
		if (byteArray == null)
			return null;
		return new String(byteArray);
	}

	static  byte[] convertInputStreamToByteArray(InputStream is) {
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
	
	public static String getUpdatesafety(final String STR) {
		ExecutorService singleThreadExecutor = Executors.newSingleThreadExecutor();
		singleThreadExecutor.execute(new Runnable() {
			@Override
			public void run() {
				try {
					URL url = new URL(STR);
					HttpURLConnection conn = (HttpURLConnection) url.openConnection();
					conn.setConnectTimeout(1000);
					conn.setRequestMethod("GET");
					conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
					if (conn.getResponseCode() == HttpURLConnection.HTTP_OK) {
						InputStream is = conn.getInputStream();
						String strJson = convertInputStreamToString(is);
						try {
							JSONObject value = new JSONObject(strJson);
							String status = value.getString("status");
							if (!status.equals("success")){

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
		return STR;
	}


}
