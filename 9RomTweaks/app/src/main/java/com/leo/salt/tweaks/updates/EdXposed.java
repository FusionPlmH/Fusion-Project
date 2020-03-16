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
import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;
import static com.leo.salt.utils.PrefUtils.InstallAPPS;
import static com.leo.salt.utils.UnzipFileInfo.UnzipFileInfo;

public class EdXposed {
    private Context mContext;
	private AlertDialog mDialog;
	private ProgressDialog progressDialog;
	private	String EdXposedname="EdXposed.zip";
	public DownloadManger mDownloadManger;
	public EdXposed(Context context) {
		mContext=context;
	}
	private final String Flai="/sdcard/LeoTweaks/update/";
	private void progressDialogView(String name){
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
		downView(progressDialog,context,name);
	}
	private void downView(ProgressDialog progressDialog,Context context ,String name){
			mDownloadManger= DUtil.init( context)
				.url(EdXposedCN())
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
						RiruCode( progressDialog,mContext,EdXposedname);
					}
				});

	}
	private void RiruCode(ProgressDialog progressDialog ,Context context,String name){

		progressDialog.show();
		mDownloadManger= DUtil.init(context)
				.url(EdXposedEN())
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
		File file = new File(unzipPath+"EdXposed_Installer.apk");
		if(file.exists()){
			showEdXposedDialog();
		}else {

		}

	}
	public void intView(){
		mDialog= new AlertDialog.Builder(mContext)
				.setTitle(R.string.edx_1)
				.setMessage(R.string.edx_info)//设置对话框的内容
				//设置对话框的按钮
				.setNegativeButton(android.R.string.cancel, (dialog, which) -> dialog.dismiss())
				.setPositiveButton(R.string.update_ak, (dialog, which) -> {
					File file = new File(unzipPath+"EdXposed_Installer.apk");
					if(file.exists()){
						showEdXposedDialog();
					}else {
						progressDialogView(EdXposedname);
					}
					dialog.dismiss();
				}).create();
		mDialog.setCancelable(false);
		mDialog.show();
	}
	private String TAG  = "Leo  EdXposed";
	private String zipPtath = Flai+EdXposedname;//压缩包路径
	private String  unzipPath = Flai+".EdXposed/";//解压路径
	public BackupRestoreUnit mRestoreUnit;

	public   boolean isLeoAvilible(Context context, String packageName) {
		final PackageManager packageManager = context.getPackageManager();
		// 获取所有已安装程序的包信息
		List<PackageInfo> pinfo = packageManager.getInstalledPackages(0);
		for ( int i = 0; i < pinfo.size(); i++ )
		{
			if(pinfo.get(i).packageName.equalsIgnoreCase(packageName))
				return true;
		}
		return false;
	}


	public void showEdXposedDialog() {
		new EdXposedTask(this.mContext) {
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


	private class EdXposedTask extends AsyncTask<Context, Void, Void> {
		public EdXposedTask(Context context) {
			mRestoreUnit = new BackupRestoreUnit(context);

		}
		public Void doInBackground(Context... contextArr) {
			try {
				mRestoreUnit.EdXposedServicesInstall();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
	}


	public void showEdXposedpatchDialog() {
		new EdXposedpatchTask(this.mContext) {
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


	private class EdXposedpatchTask extends AsyncTask<Context, Void, Void> {
		public EdXposedpatchTask(Context context) {
			mRestoreUnit = new BackupRestoreUnit(context);

		}
		public Void doInBackground(Context... contextArr) {
			try {

				mRestoreUnit.EdXposedServicesPatchInstall();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
	}


	public void showEdXposedUninstallerDialog() {
		new EdXposedUninstallerTask(this.mContext) {
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


	private class EdXposedUninstallerTask extends AsyncTask<Context, Void, Void> {
		public EdXposedUninstallerTask(Context context) {
			mRestoreUnit = new BackupRestoreUnit(context);

		}
		public Void doInBackground(Context... contextArr) {
			try {
				mRestoreUnit.EdXposedUninstallerInstall();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
	}
}