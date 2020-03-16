package com.leo.salt.tweaks.amber;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.down.DUtil;
import com.leo.salt.down.callback.DownloadCallback;
import com.leo.salt.down.download.DownloadManger;
import com.leo.salt.tools.constants.BackupRestoreUnit;
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.updates.PackageInstall;

import java.io.File;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.updates.ServiceTaskActivity.OTADownloadPath;
import static com.leo.salt.utils.NetUtils.getpermissionJson;
import static com.leo.salt.utils.NetUtils.grouppermissionJson;
import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;

public class PermissionUnlock  {
    public Context mContext;
    public DownloadManger mDownloadManger;
    private ProgressDialog progressDialog;
    public PermissionUnlock(Context context) {
        mContext=context;
        mRestoreUnit = new BackupRestoreUnit(this.mContext);

    }
    public void progressDialogView(){
        Context context=mContext;
        progressDialog =  new ProgressDialog(context);
        progressDialog.setMax(100);//设置最大值
        progressDialog.setTitle(context.getString(R.string.permission_data));//设置标题
        progressDialog.setIcon(R.drawable.ic_ota);//设置标题小图标
        progressDialog.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
        progressDialog.incrementProgressBy(0);
        progressDialog.setIndeterminate(false);
        progressDialog.setCancelable(false);
        progressDialog.show();//显示对话框
        downView(progressDialog,context);
    }
    private void downView(ProgressDialog progressDialog,Context context){
        mDownloadManger= DUtil.init( context)
                .url(isNetworkOTAChinese(getpermissionJson()))
                .path(OTADownloadPath)
                .name(UnlockName)
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
                        InstallUnlock(file);
                    }

                    @Override
                    public void onWait() {
                    }

                    @Override
                    public void onError(String error) {
                        progressDialog.cancel();
                        Toast.makeText(mContext,R.string.permission_data_error,Toast.LENGTH_SHORT).show();
                        downView2(progressDialog, context);
                    }
                });

    }
    private void downView2(ProgressDialog progressDialog,Context context){
        progressDialog.show();
        mDownloadManger= DUtil.init(context)
                .url(grouppermissionJson())
                .path(OTADownloadPath)
                .name(UnlockName)
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
                        InstallUnlock(file);
                    }

                    @Override
                    public void onWait() {

                    }

                    @Override
                    public void onError(String error) {

                    }
                });

    }
    public static final String UnlockName = "Unlock.zip";

    private void  InstallUnlock(File file){
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(OTADownloadPath);
      stringBuilder.append("Unlock");
      file = new File(stringBuilder.toString());
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append(OTADownloadPath);
      stringBuilder2.append(UnlockName);
      file.renameTo(new File(stringBuilder2.toString()));
  showUnlockDialog();

  }

    public void showUnlockDialog() {
        new permissionTask(this.mContext) {
            private ProgressDialog dialog;
            public void onPreExecute() {
                super.onPreExecute();
                this.dialog = new ProgressDialog(PermissionUnlock.this.mContext);
                this.dialog.setMessage(getStringIdentifier(PermissionUnlock.this.mContext, "execute_wait"));
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
    public BackupRestoreUnit mRestoreUnit;

    private class permissionTask extends AsyncTask<Context, Void, Void> {
        public permissionTask(Context context) {
            mRestoreUnit = new BackupRestoreUnit(context);
        }
        public Void doInBackground(Context... contextArr) {
            try {
                PermissionUnlock.this.mRestoreUnit.UnlockPermissions();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }

}
