package com.salt.config.tweaks.download;


import android.content.Context;

import androidx.appcompat.app.AlertDialog;

import com.salt.module.shell.BackupRestoreUnit;
import com.salt.config.R;
import com.salt.script.DialogHelper;
import com.salt.widget.DownloadUploadView;

import java.io.File;

import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.UnzipFileInfo.UnzipFileInfo;
import static com.salt.utils.network.GithubDownloadMirror;
import static com.salt.utils.network.isNetworkOTAChinese;
import static com.salt.utils.utils.DownloadPath;
import static com.salt.utils.utils.UnzipFilePath;


public class Magisk extends DownloadUploadView {
    private Context mContext;
	private final String downloadUrl=DownloadPath;
	public	final String MagiskPathname="magisk_path.zip";
	public static String  unzipMagiskPath= UnzipFilePath+"/.magisk";//解压路径
	private BackupRestoreUnit mRestoreUnit;

	public String DialogName=getApksStringInt(R.string.magisk_patch_title);
	public Magisk(Context context) {

		mContext=context;
		mRestoreUnit = new BackupRestoreUnit(mContext);
	}

	public void intView(){
		DialogHelper.Companion.animDialog(new AlertDialog.Builder(mContext)
				.setIcon(R.drawable.ic_info_icon)
				.setTitle(DialogName)
				.setMessage(R.string.magisk_patch_sumarry)
				.setPositiveButton(R.string.update_ak, (dialog, which) -> {
					try {
						File file = new File(unzipMagiskPath+"/adb/magisk.db");
						if(file.exists()){
							intSecondVarningView();
						}else{
							DownloadView(mContext);
						}
					} catch (Exception e) {
					}
				})
				.setNegativeButton(android.R.string.cancel, null)
				.show()
		);

	}

	public void intSecondVarningView(){
		DialogHelper.Companion.animDialog(new AlertDialog.Builder(mContext)

				.setTitle(R.string.zip_fileexists)
				.setMessage(R.string.zip_fileexists_info)
				.setPositiveButton(R.string.zip_fileexists_ok, (dialog, which) -> {
					DownloadView(mContext);
				})
				.setNegativeButton(R.string.zip_fileexists_no, (dialog, which) ->
						mRestoreUnit.MagiskPatch()
						)
				.show()
		);


	}

	@Override
	protected void initDownloadSuccess(File file) {
		UnzipFileInfo(downloadUrl+"/"+MagiskPathname,unzipMagiskPath);
		try {
			File fil2e = new File(unzipMagiskPath+"/adb/magisk.db");
			if(fil2e.exists()) {
				mRestoreUnit.MagiskPatch();
			}
		} catch (Exception e) {
		}
	}

	@Override
	protected String initDownloadUri() {
		return isNetworkOTAChinese("cSvZD3Sk");
	}

	@Override
	protected String initDownloadTwiceUri() {
		return isNetworkOTAChinese("cSvZD3Sk");
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
		return MagiskPathname;
	}

	@Override
	protected int initDownloadTaskCount() {
		return 5;
	}
}