package com.leo.salt.tweaks.updates;





import android.app.ProgressDialog;
import android.content.Context;

import android.widget.Toast;

import com.leo.salt.down.DUtil;
import com.leo.salt.down.callback.DownloadCallback;
import com.leo.salt.down.download.DownloadManger;

import com.leo.salt.tweaks.R;

import java.io.File;

import static com.leo.salt.tweaks.updates.ServiceTaskActivity.OTADownloadPath;
import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;

import static com.leo.salt.utils.PrefUtils.InstallAPPS;

public class DownloadAPK {
    private Context mContext;
	private ProgressDialog progressDialog;
	public DownloadManger mDownloadManger;
	public DownloadAPK(Context context) {
		mContext=context;

	}

	public void UpdatesDownloadAPKView(String APKName,String urla,String cn){
		Context context=mContext;
		progressDialog =  new ProgressDialog(context);
		progressDialog.setMax(100);//设置最大值

		progressDialog.setTitle(context.getString(R.string.update_ak)+cn);//设置标题
		progressDialog.setIcon(R.drawable.ic_ota);//设置标题小图标
		progressDialog.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
		progressDialog.incrementProgressBy(0);
		progressDialog.setIndeterminate(false);
		progressDialog.setCancelable(false);
		progressDialog.show();//显示对话框
		downView(progressDialog,context,APKName,urla,cn);
	}
	private void downView(ProgressDialog progressDialog,Context context,String apkbane,String urla,String cn){
		mDownloadManger= DUtil.init( context)
				.url(isNetworkOTAChinese(urla))
				.path(OTADownloadPath)
				.name(apkbane)
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
						InstallUnlock(file,apkbane,cn);
					}

					@Override
					public void onWait() {
					}

					@Override
					public void onError(String error) {
						progressDialog.cancel();
						Toast.makeText(mContext,R.string.permission_data_error,Toast.LENGTH_SHORT).show();
						downView2(progressDialog, context,apkbane,cn);
					}
				});

	}
	private void downView2(ProgressDialog progressDialog,Context context,String apkbane,String cn){
		progressDialog.show();
		mDownloadManger= DUtil.init(context)
				.url("http://os.leorom.cc/update/"+apkbane)
				.path(OTADownloadPath)
				.name(apkbane)
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
						InstallUnlock(file,apkbane,cn);
					}

					@Override
					public void onWait() {

					}

					@Override
					public void onError(String error) {

					}
				});

	}


	private void  InstallUnlock(File file,String urla2,String cn){
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append(OTADownloadPath);
		stringBuilder.append("Google");
		file = new File(stringBuilder.toString());
		StringBuilder stringBuilder2 = new StringBuilder();
		stringBuilder2.append(OTADownloadPath);
		stringBuilder2.append(urla2);
		file.renameTo(new File(stringBuilder2.toString()));
		InstallAPPS(mContext, urla2,1000,"安装"+cn);
	}



}