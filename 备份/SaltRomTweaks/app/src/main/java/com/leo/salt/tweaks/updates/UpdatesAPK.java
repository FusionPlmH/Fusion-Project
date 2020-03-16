package com.leo.salt.tweaks.updates;




import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

import com.leo.salt.down.DUtil;
import com.leo.salt.down.callback.DownloadCallback;
import com.leo.salt.down.download.DownloadManger;
import com.leo.salt.tweaks.R;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import static com.leo.salt.tweaks.base.BaseActivity.UPDATE_UI;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.updates.ServiceTaskActivity.OTADownloadPath;
import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;

public class UpdatesAPK {
    private Context mContext;
	private AlertDialog mDialog;
    private String mUpdatesInfo;
	private String mUpdatesVersion;
	private ProgressDialog progressDialog;
	private	String APKstring="dome"+ ".apk";
	private	String APKURLcn;
	private	String APKURLEN;
	public DownloadManger mDownloadManger;
	public UpdatesAPK(Context context) {
		mContext=context;
		sendRequestWithHttpURLConnection();
	}
	private void UpdatesjQuery(String jsonData) {
		try {
			JSONObject jsonObject=new JSONObject(jsonData);
			mUpdatesVersion= jsonObject.getString("versionName");
		    String info= jsonObject.getString("Changelog");
			String infoen= jsonObject.getString("Changelog_en");
			APKURLcn= jsonObject.getString("url_cn");
			APKURLEN= jsonObject.getString("url_en");
			if(isChineseLanguage() ){
				mUpdatesInfo=info;
				//string=isNetworkOTAChinese(url);
			}else {
			mUpdatesInfo=infoen;
				//string=urlen;
			}
			if(getVersionName().equals(mUpdatesVersion)){

			}else {
				intView();
			}

		} catch (JSONException e1) {
			e1.printStackTrace();
		}
	}
	public String getVersionName() {
		if (mContext != null) {
			try {
				return mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0).versionName;
			} catch (PackageManager.NameNotFoundException ignored) {
			}
		}

		return "";
	}
	private void progressDialogView(){
		Context context=mContext;
		progressDialog =  new ProgressDialog(context);
		progressDialog.setMax(100);//设置最大值
		progressDialog.setTitle(context.getString(R.string.app_down)+" "+context.getString(R.string.app_name));//设置标题
		progressDialog.setIcon(R.drawable.ic_ota);//设置标题小图标
		progressDialog.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
		progressDialog.incrementProgressBy(0);
		progressDialog.setIndeterminate(false);
		progressDialog.setCancelable(false);
		progressDialog.show();//显示对话框
		downView(progressDialog,context);
	}
	private void downView(ProgressDialog progressDialog,Context context){
			mDownloadManger= DUtil.init( context)
				.url(isNetworkOTAChinese(APKURLcn))
				.path(OTADownloadPath)
				.name(APKstring)
				.childTaskCount(3)
				.build()
				.start(new DownloadCallback() {
					@Override
					public void onStart(long currentSize, long totalSize, float progress) {
						progressDialog.setProgress((int) progress);
					}
					@Override
					public void onProgress(long currentSize, long totalSize, float progress) {
						progressDialog.setProgress((int) progress);
					}

					@Override
					public void onPause() {
					}

					@Override
					public void onCancel() {
					}

					@Override
					public void onFinish(File file) {
						progressDialog.cancel();
						intAPKInstall(file);
					}

					@Override
					public void onWait() {
					}

					@Override
					public void onError(String error) {
						progressDialog.cancel();
						Toast.makeText(mContext,R.string.permission_data_error,Toast.LENGTH_SHORT).show();
						downView2(progressDialog, context);
					}
				});

	}
	private void downView2(ProgressDialog progressDialog,Context context){
		progressDialog.show();
		mDownloadManger= DUtil.init(context)
				.url(APKURLEN)
				.path(OTADownloadPath)
				.name(APKstring)
				.childTaskCount(3)
				.build()
				.start(new DownloadCallback() {
					@Override
					public void onStart(long currentSize, long totalSize, float progress) {
						progressDialog.setProgress((int) progress);
					}
					@Override
					public void onProgress(long currentSize, long totalSize, float progress) {
						progressDialog.setProgress((int) progress);

					}
					@Override
					public void onPause() {

					}

					@Override
					public void onCancel() {
					}

					@Override
					public void onFinish(File file) {
						progressDialog.cancel();
						intAPKInstall(file);
					}

					@Override
					public void onWait() {

					}

					@Override
					public void onError(String error) {

					}
				});

	}
	private void intAPKInstall(File file){
		Uri uri = Uri.fromFile(file);
		Intent intent = new Intent(Intent.ACTION_VIEW);
		intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
		intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		intent.setDataAndType(uri, "application/vnd.android.package-archive");
		mContext.startActivity(intent);
	}
	private void intView(){
		mDialog= new AlertDialog.Builder(mContext)
				.setTitle(R.string.update_ak_update)
				.setMessage(mContext.getString(R.string.app_name)+mContext.getString(R.string.update_ak_update_sunerry)+"("+mUpdatesVersion+")"+"\n"+mUpdatesInfo)//设置对话框的内容
				//设置对话框的按钮
				.setNegativeButton(android.R.string.cancel, (dialog, which) -> dialog.dismiss())
				.setPositiveButton(R.string.update_ak, (dialog, which) -> {
					progressDialogView();
					dialog.dismiss();
				}).create();
		mDialog.setCancelable(false);
		mDialog.show();
	}
		//网路请求
	public void sendRequestWithHttpURLConnection() {
		//开启线程来发起网络请求

		new Thread(() -> {
			HttpURLConnection connection;
			try {
				URL url = new URL("http://os.leorom.cc/json/tweaksapps.json");
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

	Handler mHandler= new Handler() {
		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
				case UPDATE_UI:
					String response = (String) msg.obj;
					UpdatesjQuery(response);
			}
		}
	};


}