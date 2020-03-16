package com.leo.salt.tweaks.updates;




import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;

import com.leo.salt.down.DUtil;
import com.leo.salt.down.callback.DownloadCallback;
import com.leo.salt.down.download.DownloadManger;
import com.leo.salt.tools.constants.BackupRestoreUnit;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.R;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import static com.leo.salt.tweaks.base.BaseActivity.UPDATE_UI;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.updates.ServiceTaskActivity.OTADownloadPath;
import static com.leo.salt.utils.NetUtils.EdXposedCN;
import static com.leo.salt.utils.NetUtils.EdXposedEN;
import static com.leo.salt.utils.NetUtils.fingerprint;
import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;
import static com.leo.salt.utils.PrefUtils.InstallAPPS;
import static com.leo.salt.utils.UnzipFileInfo.UnzipFileInfo;

public class Fingerprint {
    private Context mContext;
	private AlertDialog mDialog;
	private final String Flai="/sdcard/LeoTweaks/update/";
	private ProgressDialog progressDialog;
	private	String EdXposedname="Fingerprint.zip";
	public DownloadManger mDownloadManger;
	private String zipPtath = Flai+EdXposedname;//压缩包路径
	private String  unzipPath = Flai+".Fingerprint/";//解压路径
	public BackupRestoreUnit mRestoreUnit;
	public Fingerprint(Context context) {
		mContext=context;
	}

	private void FingerprintDialogView(String name){
		Context context=mContext;
		progressDialog =  new ProgressDialog(context);
		progressDialog.setMax(100);//设置最大值
		progressDialog.setTitle(context.getString(R.string.app_down)+" "+name);//设置标题
		progressDialog.setIcon(R.drawable.ic_ota);//设置标题小图标
		progressDialog.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
		progressDialog.incrementProgressBy(0);
		progressDialog.setIndeterminate(false);
		progressDialog.setCancelable(false);
		progressDialog.show();//显示对话框
		downFingerprintView(progressDialog,context,name);
	}
	private void downFingerprintView(ProgressDialog progressDialog,Context context ,String name){
			mDownloadManger= DUtil.init( context)
				.url(fingerprint(0))
				.path(Flai)
				.name(name)
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
						InstallView();
					}

					@Override
					public void onWait() {
					}

					@Override
					public void onError(String error) {
						progressDialog.cancel();
						RiruFingerprint( progressDialog,mContext,EdXposedname);
					}
				});

	}
	private void RiruFingerprint(ProgressDialog progressDialog ,Context context,String name){

		progressDialog.show();
		mDownloadManger= DUtil.init(context)
				.url(fingerprint(1))
				.path(Flai)
				.name(name)
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
						InstallView();
					}

					@Override
					public void onWait() {

					}

					@Override
					public void onError(String error) {

					}
				});

	}
	public void InstallView(){
		UnzipFileInfo(zipPtath,unzipPath);
		showFingerprintDialog();

	}
	public void intView(){
		mDialog= new AlertDialog.Builder(mContext)
				.setTitle(R.string.fingerprint_mod)
				.setMessage(R.string.fingerprint_mod_info)//设置对话框的内容
				//设置对话框的按钮
				.setNegativeButton(android.R.string.cancel, (dialog, which) -> dialog.dismiss())
				.setPositiveButton(R.string.update_ak, (dialog, which) -> {
					FingerprintDialogView(EdXposedname);
					dialog.dismiss();
				}).create();
		mDialog.setCancelable(false);
		mDialog.show();
	}




	public void showFingerprintDialog() {
		new FingerprintTask(this.mContext) {
			private ProgressDialog dialog;
			public void onPreExecute() {
				super.onPreExecute();
				this.dialog = new ProgressDialog(mContext);
				this.dialog.setMessage(mContext.getString(R.string.su_progress_sumarry));
				this.dialog.setCancelable(false);
				this.dialog.setIndeterminate(true);
				this.dialog.show();
			}
			public Void doInBackground(Context... contextArr) {
				try {
					Thread.sleep(5000);
				} catch (InterruptedException unused) {
				}
				super.doInBackground(contextArr);
				return null;
			}


			public void onPostExecute(Void voidR) {
				super.onPostExecute(voidR);
				this.dialog.dismiss();

			}
		}.execute(new Context[]{this.mContext});
	}


	private class FingerprintTask extends AsyncTask<Context, Void, Void> {
		public FingerprintTask(Context context) {
			mRestoreUnit = new BackupRestoreUnit(context);

		}
		public Void doInBackground(Context... contextArr) {
			try {
				mRestoreUnit.FingerprintInstall();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
	}


}