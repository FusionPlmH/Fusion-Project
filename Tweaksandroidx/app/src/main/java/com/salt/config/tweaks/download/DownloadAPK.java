package com.salt.config.tweaks.download;

import android.content.Context;

import com.salt.widget.DownloadUploadView;

import java.io.File;

import static com.salt.utils.network.isNetworkOTAChinese;
import static com.salt.utils.utils.DownloadPath;
import static com.salt.widget.DialogView.InstallAPPS;


public class DownloadAPK extends DownloadUploadView {
    private Context mContext;
	private	String APKSName;
	private	String APKSDialogName;
	private	String URLName;
	private final String downloadUrl= DownloadPath;
	public DownloadAPK(Context context) {
		mContext=context;

	}

	public void UpdatesDownloadAPKView(String APKName,String cn,String url){
		APKSName=APKName;
		APKSDialogName=cn;
		URLName=url;
		DownloadView(mContext);
	}



	@Override
	protected void initDownloadSuccess(File file) {
		InstallAPPS(mContext,APKSName,1000,"安装"+APKSDialogName);
	}

	@Override
	protected String initDownloadUri() {
		return isNetworkOTAChinese(URLName);
	}

	@Override
	protected String initDownloadTwiceUri() {
		return "http://os.leorom.cc/update/"+APKSName;
	}

	@Override
	protected String initDownloadpath() {
		return downloadUrl;
	}

	@Override
	protected String initProgressName() {
		return APKSDialogName;
	}

	@Override
	protected int initDownloadTaskCount() {
		return 3;
	}

	@Override
	protected String initDownloadName() {
		return APKSName;
	}
}