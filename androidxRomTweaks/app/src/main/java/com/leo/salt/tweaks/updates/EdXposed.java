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

import com.leo.SweetAlert.SweetAlertDialog;

import com.leo.download.provider.DUtil;
import com.leo.download.provider.callback.DownloadCallback;
import com.leo.download.provider.download.DownloadManger;
import com.leo.salt.tools.constants.BackupRestoreUnit;

import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.view.widget.DownloadUploadView;
import com.leo.script.KeepShellPublic;

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
import static com.leo.salt.tweaks.resource.Resource.LeoDownloadPath;
import static com.leo.salt.tweaks.resource.Resource.UnzipFilePath;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;

import static com.leo.salt.utils.NetUtils.GithubDownloadMirror;
import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;
import static com.leo.salt.utils.PrefUtils.InstallAPPS;
import static com.leo.salt.utils.UnzipFileInfo.UnzipFileInfo;
import static com.os.salt.OSBuild.SystemUrl.Phonebootloader;

public class EdXposed extends DownloadUploadView {
    private Context mContext;
	private	String EdXposedname="EdXposed.zip";
	private	String EdXName=getApksStringInt(R.string.edx_1);
	private final String downloadUrl= LeoDownloadPath;

	public static String  unzipEdXposedPath= UnzipFilePath+"/.edXposedzip";//解压路径
	public EdXposed(Context context) {
		mContext=context;
		mRestoreUnit = new BackupRestoreUnit(mContext);
	}
	public void intView(){
		new SweetAlertDialog(mContext, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
				.setCustomImage(R.drawable.ic_info_icon)
				.setTitleText(EdXName)
				.setContentText(getApksStringInt(R.string.edx_info))
				.showCancelButton(true)
				.setCancelText(getApksStringInt(android.R.string.cancel))
				.setConfirmText(getApksStringInt(R.string.update_ak))
				.setConfirmClickListener(sDialog -> {
					sDialog.dismissWithAnimation();

					try {
						File fil2e	 = new File("/sdcard/LeoTweaks/download/.UnZip/.edXposedzip/EdXposed_Installer.apk");
						if(fil2e.exists()){
							intSecondVarningView();
						}else{
							DownloadView(mContext);
						}
					} catch (Exception e) {
					}
				})
				.show();
	}
	public void intSecondVarningView(){
		new SweetAlertDialog(mContext, SweetAlertDialog.ERROR_TYPE,true)
				.setTitleText(getApksStringInt(R.string.zip_fileexists))
				.setContentText(getApksStringInt(R.string.zip_fileexists_info))
				.setConfirmText(getApksStringInt(R.string.zip_fileexists_ok))
				.setCancelText(getApksStringInt(R.string.zip_fileexists_no))
				.showCancelButton(true)
				.setShieldBckKyes(true)
				.setCancelClickListener(sweetAlertDialog -> {
					sweetAlertDialog.dismissWithAnimation();
					mRestoreUnit.EdXposedServicesInstall();
				})
				.setConfirmClickListener(sDialog -> {
					sDialog.dismissWithAnimation();
					DownloadView(mContext);
				})
				.show();

	}
	public BackupRestoreUnit mRestoreUnit;

   public void EdXposedPatch(){
	   mRestoreUnit.EdXposedServicesPatchInstall();
   }
	public void EdXposedUninstall(){
		mRestoreUnit.EdXposedUninstallerInstall();
	}
	@Override
	protected void initDownloadSuccess(File file) {
		UnzipFileInfo(downloadUrl+"/"+EdXposedname,unzipEdXposedPath);
		mRestoreUnit.EdXposedServicesInstall();
		try {
			File fil2e	 = new File("/sdcard/LeoTweaks/download/.UnZip/.edXposedzip/EdXposed_Installer.apk");
			if(fil2e.exists()){
				mRestoreUnit.EdXposedServicesInstall();
			}
		} catch (Exception e) {
		}
	}

	@Override
	protected String initDownloadUri() {
		String Url;
		if (getLeoBuild("ro.csc.sales_code").equals("CHC")) {
			Url=isNetworkOTAChinese("bTrr9Elt");
		} else{
			Url=GithubDownloadMirror("Riru_-_EdXposed");
		}
		return Url;
	}

	@Override
	protected String initDownloadTwiceUri() {
		String Url;
		if (getLeoBuild("ro.csc.sales_code").equals("CHC")) {
			Url=GithubDownloadMirror("Riru_-_EdXposed");
		} else{
			Url=isNetworkOTAChinese("bTrr9Elt");
		}
		return Url;
	}

	@Override
	protected String initDownloadpath() {
		return downloadUrl;
	}

	@Override
	protected String initProgressName() {
		return EdXName;
	}

	@Override
	protected int initDownloadTaskCount() {
		return 3;
	}

	@Override
	protected String initDownloadName() {
		return EdXposedname;
	}
}