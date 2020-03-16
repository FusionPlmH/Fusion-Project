package com.salt.config.tweaks.download;





import android.content.Context;

import com.salt.module.shell.BackupRestoreUnit;
import com.salt.config.R;
import com.salt.widget.DownloadUploadView;

import java.io.File;

import static com.salt.utils.SaltProper.SystemUrl.Phonebootloader;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.network.LeoServerDownloadMirror;
import static com.salt.utils.network.isNetworkOTAChinese;
import static com.salt.utils.utils.DownloadPath;

public class UpdatesGoogle extends DownloadUploadView {
    public Context mContext;
    private final String downloadUrl= DownloadPath+"/.google/";
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