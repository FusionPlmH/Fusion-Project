package com.leo.salt.tweaks.updates;




import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;

import com.leo.SweetAlert.SweetAlertDialog;


import com.leo.download.provider.DUtil;
import com.leo.download.provider.callback.DownloadCallback;
import com.leo.download.provider.download.DownloadManger;
import com.leo.salt.tools.constants.BackupRestoreUnit;

import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.view.widget.DownloadUploadView;
import com.leo.salt.utils.Consts;
import com.leo.script.KeepShellPublic;


import java.io.File;

import static com.leo.salt.tweaks.resource.Resource.LeoDownloadPath;
import static com.leo.salt.tweaks.resource.Resource.UnzipFilePath;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;


import static com.leo.salt.utils.NetUtils.GithubDownloadMirror;
import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;
import static com.leo.salt.utils.UnzipFileInfo.UnzipFileInfo;


public class Fingerprint extends DownloadUploadView {
    private Context mContext;
	private final String downloadUrl= LeoDownloadPath;
	public	final String EdXposedname="Fing.zip";
	public static String  unzipFingerprintPath= UnzipFilePath+"/.fingerzip";//解压路径
	private BackupRestoreUnit mRestoreUnit;

	public String DialogName=getApksStringInt(R.string.fingerprint_mod);
	public Fingerprint(Context context) {

		mContext=context;
		mRestoreUnit = new BackupRestoreUnit(mContext);
	}

	public void intView(){
		new SweetAlertDialog(mContext, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
				.setCustomImage(R.drawable.ic_info_icon)
				.setTitleText(DialogName)
				.setContentText(getApksStringInt(R.string.fingerprint_mod_info)+getApksStringInt(R.string.fingerprint_uninstall))
				.setConfirmText(getApksStringInt(R.string.update_ak))
				.setCancelText(getApksStringInt(android.R.string.cancel))
				.showCancelButton(true)
				.setShieldBckKyes(true)
				.setCancelClickListener(sweetAlertDialog -> {
					sweetAlertDialog.dismissWithAnimation();
				})
				.setConfirmClickListener(sDialog -> {
					sDialog.dismissWithAnimation();
					try {
						File file = new File(unzipFingerprintPath+"/openrecoveryscript");
						if(file.exists()){
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
					mRestoreUnit.FingerprintInstall();;
				})
				.setConfirmClickListener(sDialog -> {
					sDialog.dismissWithAnimation();
					DownloadView(mContext);
				})
				.show();

	}

	@Override
	protected void initDownloadSuccess(File file) {
		UnzipFileInfo(downloadUrl+"/"+EdXposedname,unzipFingerprintPath);
		try {
			File fil2e = new File(unzipFingerprintPath+"/openrecoveryscript");
			if(fil2e.exists()) {
				mRestoreUnit.FingerprintInstall();
			}
		} catch (Exception e) {
		}
	}

	@Override
	protected String initDownloadUri() {
		return isNetworkOTAChinese("La6njNkv");
	}

	@Override
	protected String initDownloadTwiceUri() {
		return GithubDownloadMirror("Salt_fingerprint");
	}

	@Override
	protected String initDownloadpath() {
		return downloadUrl;
	}

	@Override
	protected String initProgressName() {
		return DialogName;
	}

	@Override
	protected String initDownloadName() {
		return EdXposedname;
	}

	@Override
	protected int initDownloadTaskCount() {
		return 5;
	}
}