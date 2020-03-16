package com.leo.salt.user;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;
import com.leo.download.provider.DUtil;
import com.leo.download.provider.callback.DownloadCallback;
import com.leo.download.provider.download.DownloadManger;
import com.leo.salt.tools.constants.BackupRestoreUnit;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.view.widget.DownloadUploadView;

import java.io.File;
import static com.leo.salt.tweaks.resource.Resource.LeoDownloadPath;
import static com.leo.salt.tweaks.resource.Resource.UnzipFilePath;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.NetUtils.GithubDownloadMirror;
import static com.leo.salt.utils.NetUtils.getpermissionJson;
import static com.leo.salt.utils.NetUtils.grouppermissionJson;
import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;
import static com.leo.salt.utils.NetUtils.isNetworkOTAGlobal;
import static com.leo.salt.utils.UnzipFileInfo.UnzipFileInfo;
import static com.os.salt.OSBuild.SystemUrl.Phonebootloader;

public class PermissionUnlock extends DownloadUploadView {
    public Context mContext;

    private final String Flai=LeoDownloadPath;
    private String zipPtath = Flai+"/"+UnlockName;//压缩包路径
    private String  unzipPath = UnzipFilePath+"/.unlockPro";//解压路径
    private String  DialogName = "UnlockProCode";//解压路径
    public PermissionUnlock(Context context) {
        mContext=context;
        mRestoreUnit = new BackupRestoreUnit(this.mContext);

    }
public void  progressDialogView(){
    DownloadView(mContext);
}
    public static final String UnlockName = "Unlock.zip";

    public BackupRestoreUnit mRestoreUnit;

    @Override
    protected void initDownloadSuccess(File file2) {
        UnzipFileInfo(zipPtath,unzipPath);
        if (Phonebootloader(3).equals("G97")) {
            File file = new File(unzipPath+"/10XUnlockPro.sh");
            if(file.exists()){
                mRestoreUnit.UnlockProLeo();
            }
        } else{
            File file = new File(unzipPath+"/9XUnlockPro.sh");
            if(file.exists()){
              mRestoreUnit.UnlockProLeo();
            }
        }
    }

    @Override
    protected String initDownloadUri() {
        String Url;
        if (getLeoBuild("ro.csc.sales_code").equals("CHC")) {
            Url=isNetworkOTAChinese("AQCrng6W");
        } else{
            Url=isNetworkOTAGlobal("UnlockPro");
        }
        return Url;
    }

    @Override
    protected String initDownloadTwiceUri() {
        String Url;
        if (getLeoBuild("ro.csc.sales_code").equals("CHC")) {
            Url=isNetworkOTAGlobal("UnlockPro");
        } else{
            Url=isNetworkOTAChinese("AQCrng6W");
        }
        return Url;
    }

    @Override
    protected String initDownloadpath() {
        return Flai;
    }

    @Override
    protected String initProgressName() {
        return DialogName;
    }

    @Override
    protected int initDownloadTaskCount() {
        return 3;
    }

    @Override
    protected String initDownloadName() {
        return UnlockName;
    }


}
