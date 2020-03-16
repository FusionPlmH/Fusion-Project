package com.salt.config.tweaks.download;

import android.content.Context;
import androidx.appcompat.app.AlertDialog;
import com.salt.module.shell.BackupRestoreUnit;
import com.salt.config.R;
import com.salt.script.DialogHelper;
import com.salt.widget.DownloadUploadView;
import java.io.File;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getLeoBuild;
import static com.salt.utils.UnzipFileInfo.UnzipFileInfo;
import static com.salt.utils.network.GithubDownloadMirror;
import static com.salt.utils.network.isNetworkOTAChinese;
import static com.salt.utils.utils.DownloadPath;
import static com.salt.utils.utils.UnzipFilePath;

public class EdXposed extends DownloadUploadView {
    private Context mContext;
	private	String EdXposedname="EdXposed.zip";
	private	String EdXName=getApksStringInt(R.string.edx_1);
	private final String downloadUrl=DownloadPath;
	public static String  unzipEdXposedPath= UnzipFilePath+"/.edXposedzip";//解压路径
	public EdXposed(Context context) {
		mContext=context;
		mRestoreUnit = new BackupRestoreUnit(mContext);
	}
	public void intView(){
		DialogHelper.Companion.animDialog(new AlertDialog.Builder(mContext)
				.setIcon(R.drawable.ic_info_icon)
				.setTitle(EdXName)
				.setMessage(getApksStringInt(R.string.edx_info))
				.setPositiveButton(R.string.update_ak, (dialog, which) -> {
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
						mRestoreUnit.EdXposedServicesInstall())
				.show()
		);

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