package com.leo.salt.tweaks.updates;




import android.annotation.SuppressLint;
import android.content.Context;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import static com.leo.salt.tools.service.NotificationUtil.showOTANotification;
import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.base.BaseActivity.UPDATE_UI;
import static com.leo.salt.tweaks.resource.Resource.OTAUrlView;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.NetUtils.getOTAJson;
import static com.leo.salt.utils.NetUtils.isNetworkJson;
import static com.leo.salt.utils.PrefUtils.ota;


public class UpdatesMessage{
	public Handler mHandler;
	public int  mI;

	public UpdatesMessage(OnOTAListener listener, Handler handler , int i){
		sendRequestWithHttpURLConnection();
		mHandler=handler;
		mListener=listener;
		mI=i;
		mHandler= new Handler() {
			@Override
			public void handleMessage(Message msg) {
				switch (msg.what) {
					case UPDATE_UI:
						String response = (String) msg.obj;
						mListener.OTACheck(response);
				}
			}
		};

	}

	//网路请求
	public void sendRequestWithHttpURLConnection() {
		//开启线程来发起网络请求

		new Thread(() -> {
			HttpURLConnection connection;
			try {
				//URL url = new URL("http://os.leorom.cc/json/"+getOTAJson()+".json");
				connection = (HttpURLConnection) isNetworkJson .openConnection();
				connection.setRequestMethod("GET");
				connection.setConnectTimeout(1000);
				connection.setReadTimeout(1000);
				InputStream inputStream = connection.getInputStream();
				//下面对获取到的输入流读取
				BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
				StringBuilder response = new StringBuilder();
				String line;
				while ((line = reader.readLine()) != null) {
					response.append(line);
				}
				Message message = new Message();
				message.what =mI;
				//将服务器返回的结果存放到message中
				message.obj = response.toString();
				mHandler.sendMessage(message);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}).start();
	}


	public interface OnOTAListener {
		void OTACheck(String jsonData);
	}
	public OnOTAListener mListener;

}