package com.leo.salt.tweaks.updates;




import android.content.Context;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.support.design.widget.AppBarLayout;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;
import com.bumptech.glide.util.Util;
import com.leo.salt.down.utils.Utils;
import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.amber.WebViewActivity;
import com.leo.salt.tweaks.base.AppBarStateChangeListener;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.BannerLayout;
import com.leo.salt.tweaks.view.imageloader.GlideImageLoader;
import com.leo.salt.tweaks.view.widget.GradientColorTextView;
import com.leo.salt.tweaks.view.widget.WeatherView;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import static com.leo.salt.tools.service.NotificationUtil.showOTANotification;
import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.OTAUrlView;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.updates.ServiceTaskActivity.OTAProgressTextView;
import static com.leo.salt.tweaks.updates.ServiceTaskActivity.UPDATE_UI;
import static com.leo.salt.utils.NetUtils.getOTAJson;
import static com.leo.salt.utils.PrefUtils.DayNight;
import static com.leo.salt.utils.PrefUtils.ota;


public class jQuery{
	public WeatherView.WeatherClient mWeatherRec;
	BannerLayout bannerLayout;
	Handler mHandler= new Handler() {
		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
				case UPDATE_UI:
					String response = (String) msg.obj;
					jQuery(response);
			}
		}
	};

	public Context mContext;
	public GradientColorTextView mTextView;
	public void rollingPicture(MainActivity Activity,Context context,AppBarLayout mAppBarLayout){
		sendRequestWithHttpURLConnection();
		mContext=context;
		bannerLayout = (BannerLayout) Activity.findViewById(R.id.banner);
		bannerLayout.setBackground(Resource.getCustomDrawable(getContext(),"leo_timg"));

		mWeatherRec=new WeatherView.WeatherClient();
		LinearLayout mLinearLayout = (LinearLayout)Activity.findViewById(R.id.CollapsingToolbarLayoutText);
		mTextView = (GradientColorTextView)Activity.findViewById(R.id.CollapsingToolbarLayoutSubText);
		mAppBarLayout.addOnOffsetChangedListener(new AppBarStateChangeListener() {
			@Override
			public void onStateChanged(AppBarLayout appBarLayout, State state) {
				if( state == State.EXPANDED ) {

					//展开状态
					mLinearLayout.setVisibility(View.VISIBLE);

					mTextView.setVisibility(View.VISIBLE);
				}else if(state == State.COLLAPSED){

					mLinearLayout.setVisibility(View.GONE);
				}else {

					mLinearLayout.setVisibility(View.GONE);
				}
			}
		});
	}
	String img ;
	String img1 ;
	String img2 ;
	String img3;
	String img4;
	String proclamation,proclamationen;


	public void jQuery(String jsonData) {
		try {
			JSONObject jsonObject=new JSONObject(jsonData);
			img= jsonObject.getString("img");
			img1 = jsonObject.getString("img1");
			img2 = jsonObject.getString("img2");
			img3 = jsonObject.getString("img3");
			img4 = jsonObject.getString("img4");
			proclamation = jsonObject.getString("proclamation");
			proclamationen = jsonObject.getString("proclamation_EN");
        	String	https  = jsonObject.getString("https_url");
			bannerLayout.setImageLoader(new GlideImageLoader());
			final List<String> urls = new ArrayList<>();
			urls.add(img );
			urls.add(img1);
			urls.add(img2);
			urls.add(img3);
			urls.add(img4);
			bannerLayout.setViewUrls(urls);
			String procl;
			if(isChineseLanguage() ){
				procl=proclamation;
			}else {
				procl=proclamationen ;
			}
			String str ="";
			if (!TextUtils.isEmpty(procl)) {
				str=(procl);
				bannerLayout.setOnBannerItemClickListener(position -> {
					Intent webViewIntent = new Intent(mContext.getApplicationContext(), WebViewActivity.class);
					webViewIntent.putExtra("url", https);
					mContext.startActivity(webViewIntent);
				});
			} else {
				if (mWeatherRec.isWeatherTrue(mContext)) {
					mTextView.setTextColor(Color.WHITE);
					mTextView.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
					String string2 ="｜"+mWeatherRec.getChinaAQI(mContext);
					String str2 = mWeatherRec.getLocation(mContext)+"｜"+ Settings.System.getString(mContext.getContentResolver(), "StateWeather")+" "+mWeatherRec.getCurrentTemperature(mContext, mWeatherRec.getTempScale(mContext)) + mWeatherRec.getTempScaleText(mContext)+string2;
					str=(TextUtils.isEmpty(str)?str2 : str);
				}
			}
			mTextView.setText(str);

		} catch (JSONException e1) {
			e1.printStackTrace();
		}
	}




	//网路请求
	public void sendRequestWithHttpURLConnection() {
		//开启线程来发起网络请求

		new Thread(() -> {
			HttpURLConnection connection;
			try {
				URL url = new URL("http://os.leorom.cc/json/jQuery.json");
				connection = (HttpURLConnection) url .openConnection();
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
				message.what =UPDATE_UI;
				//将服务器返回的结果存放到message中
				message.obj = response.toString();
				mHandler.sendMessage(message);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}).start();
	}




}