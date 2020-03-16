package com.leo.salt.tweaks.updates;





import android.app.ProgressDialog;
import android.content.Context;

import android.widget.Toast;


import com.leo.download.provider.DUtil;
import com.leo.download.provider.callback.DownloadCallback;
import com.leo.download.provider.download.DownloadManger;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.view.widget.DownloadUploadView;

import java.io.File;

import static com.leo.salt.tweaks.resource.Resource.LeoDownloadPath;

import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;

import static com.leo.salt.utils.PrefUtils.InstallAPPS;

public class DownloadAPK extends DownloadUploadView {
    private Context mContext;
	private	String APKSName;
	private	String APKSDialogName;
	private	String URLName;
	private final String downloadUrl= LeoDownloadPath;
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