package com.leo.salt.tweaks.updates;





import android.content.Context;

import com.leo.salt.tools.constants.BackupRestoreUnit;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.view.widget.DownloadUploadView;

import java.io.File;

import static com.leo.salt.tweaks.resource.Resource.LeoDownloadPath;

import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;

import static com.leo.salt.utils.NetUtils.LeoServerDownloadMirror;
import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;

import static com.os.salt.OSBuild.SystemUrl.Phonebootloader;

public class UpdatesGoogle extends DownloadUploadView {
    public Context mContext;
    private final String downloadUrl= LeoDownloadPath+"/.google/";
    private	String GoogleName="Google.zip";

    public UpdatesGoogle(Context context) {
        mContext=context;


    }


    public BackupRestoreUnit mRestoreUnit;

    public void GoogleDownloadView(){
        mRestoreUnit = new BackupRestoreUnit(this.mContext);
        try {
            File file = new File("/sdcard/LeoTweaks/download/.google/Google.zip");
            if(file.exists()){
                mRestoreUnit.GoogleServicesInstall();
            }else{
                DownloadView(mContext);
            }
        } catch (Exception e) {
        }
    }
    @Override
    protected void initDownloadSuccess(File file) {
      mRestoreUnit.GoogleServicesInstall();
    }

    @Override
    protected String initDownloadUri() {
        String Url;
        if (Phonebootloader(3).equals("G97")) {
            Url="GBE86BVC";
        } else{
            Url="BYVmWKEk";
        }
        return isNetworkOTAChinese(Url);
    }

    @Override
    protected String initDownloadTwiceUri() {
        String Url;
        if (Phonebootloader(3).equals("G97")) {
            Url="Google10";
        } else{
            Url="Google9";
        }
        return LeoServerDownloadMirror(Url);
    }

    @Override
    protected String initDownloadpath() {
        return downloadUrl;
    }

    @Override
    protected String initProgressName() {
        return getApksStringInt(R.string.google_other_download_sumarry);
    }

    @Override
    protected int initDownloadTaskCount() {
        return 5;
    }

    @Override
    protected String initDownloadName() {
        return GoogleName;
    }
}