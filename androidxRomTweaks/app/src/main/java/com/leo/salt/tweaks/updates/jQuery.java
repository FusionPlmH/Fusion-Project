package com.leo.salt.tweaks.updates;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.Snackbar;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.AppBarStateChangeListener;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.BannerLayout;
import com.leo.salt.tweaks.view.imageloader.GlideImageLoader;
import com.leo.salt.tweaks.view.widget.GradientColorTextView;
import com.leo.salt.tweaks.view.widget.WeatherView;
import com.leo.salt.user.info.UserNotificationActivity;
import org.json.JSONException;
import org.json.JSONObject;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.base.BaseActivity.UPDATE_UI;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getColorAttr;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.os.salt.OSBuild.SystemUrl.ChineseCSC;


public class jQuery{
	private void getLinKingView(){
		new Thread(() -> {
			try {
				URL url = new URL("http://api.guaqb.cn/v1/onesaid/");
				//2.  HttpURLConnection
				HttpURLConnection conn=(HttpURLConnection)url.openConnection();
				//3.  set(GET)
				conn.setRequestMethod("GET");
				//4.  getInputStream
				InputStream is = conn.getInputStream();
				//5.  解析is，获取responseText，这里用缓冲字符流
				BufferedReader reader = new BufferedReader(new InputStreamReader(is));
				StringBuilder sb = new StringBuilder();
				String line = null;
				while((line=reader.readLine()) != null){
					sb.append(line);
				}
				LinKing=sb.toString();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}).start();
	}
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
	public void getVData(){
		sendRequestWithHttpURLConnection();
		getLinKingView();
	}
	public MainActivity mActivity;
	public Context mContext;
	public GradientColorTextView mTextView;
	public void rollingPicture(MainActivity Activity,Context context,AppBarLayout mAppBarLayout){
		mActivity=Activity;
		mContext=context;
		bannerLayout = (BannerLayout) mActivity.findViewById(R.id.banner);
		bannerLayout.setBackground(Resource.getCustomDrawable(getContext(),"leo_timg"));
		mWeatherRec=new WeatherView.WeatherClient();
		LinearLayout mLinearLayout = (LinearLayout)mActivity.findViewById(R.id.CollapsingToolbarLayoutText);
		mTextView = (GradientColorTextView)mActivity.findViewById(R.id.CollapsingToolbarLayoutSubText);
		mAppBarLayout.addOnOffsetChangedListener(new AppBarStateChangeListener() {
			@Override
			public void onStateChanged(AppBarLayout appBarLayout, State state) {
				if( state == State.EXPANDED ) {

					//展开状态
					mLinearLayout.setVisibility(View.VISIBLE);

					mTextView.setVisibility(View.VISIBLE);
					getVData();
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
	String proclamation,proclamationen,LinKing;


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
					mContext.startActivity(new Intent(mContext, UserNotificationActivity.class));
				});
			} else {
				if(ChineseCSC()){
					if(Settings.System.getInt(mContext.getContentResolver(), "leo_home_weather_info", 0) == 1){
						if (mWeatherRec.isWeatherTrue(mContext)) {
							mTextView.setTextColor(Color.WHITE);
							mTextView.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
							String string2 ="｜"+mWeatherRec.getChinaAQI(mContext);
							String str2 = mWeatherRec.getLocation(mContext)+"｜"+ Settings.System.getString(mContext.getContentResolver(), "StateWeather")+" "+mWeatherRec.getCurrentTemperature(mContext, mWeatherRec.getTempScale(mContext)) + mWeatherRec.getTempScaleText(mContext)+string2;
							str=(TextUtils.isEmpty(str)?str2 : str);
						}
					}else{
						bannerLayout.setOnBannerItemClickListener(position -> {
							String str1;
							if(Settings.System.getInt(mContext.getContentResolver(), "leo_home_linking_info", 0) == 1){
								str1 =LinKing;
							}else{
								str1 =LinKing+" 来自 "+getApksStringInt(R.string.app_name);

							}
							copyToClipboard(mContext, str1);
							showSnacknAME("复制分享:"+"\n"+"["+LinKing+"]");
						});

						str=LinKing;
					}
				}else{
					if (mWeatherRec.isWeatherTrue(mContext)) {
						mTextView.setTextColor(Color.WHITE);
						mTextView.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
						String string2 ="｜"+mWeatherRec.getChinaAQI(mContext);
						String str2 = mWeatherRec.getLocation(mContext)+"｜"+ Settings.System.getString(mContext.getContentResolver(), "StateWeather")+" "+mWeatherRec.getCurrentTemperature(mContext, mWeatherRec.getTempScale(mContext)) + mWeatherRec.getTempScaleText(mContext)+string2;
						str=(TextUtils.isEmpty(str)?str2 : str);
					}
				}
			}
			mTextView.setText(str);

		} catch (JSONException e1) {
			e1.printStackTrace();
		}
	}
	public void showSnacknAME(String mensaje){
		Snackbar snackbar = Snackbar.make(mActivity.findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
				.setAction("Action", null);
		snackbar.getView().setBackgroundColor(getColorAttr(mContext,R.attr.colorAccent));
		snackbar.show();

	}

	public static void copyToClipboard(Context context, CharSequence content) {
		ClipboardManager clipboard = (ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);
		if (clipboard != null) {
			clipboard.setPrimaryClip(ClipData.newPlainText(null, content));//参数一：标签，可为空，参数二：要复制到剪贴板的文本
			if (clipboard.hasPrimaryClip()) {
				clipboard.getPrimaryClip().getItemAt(0).getText();
			}
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