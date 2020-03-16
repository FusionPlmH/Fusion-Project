package com.salt.widget;

import android.annotation.SuppressLint;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.PowerManager;

import android.widget.Toast;


import com.salt.frame.callback.DownloadCallback;
import com.salt.frame.download.DUtil;
import com.salt.frame.download.DownloadManger;
import com.salt.config.R;

import java.io.File;

import static com.salt.frame.utils.SaltUtils.createSDCardDupdateirimg;


public abstract class DownloadUploadView  {
    public DownloadManger mDownloadManger;
    private ProgressDialog progressDialog;
    private Context mContext;
    protected abstract void initDownloadSuccess(File file);
    protected abstract String initDownloadUri();
    protected abstract String initDownloadTwiceUri();
    protected abstract String initDownloadpath();
    protected abstract String initProgressName();

    protected abstract int  initDownloadTaskCount();
    protected abstract String initDownloadName();

    public DownloadUploadView(){

    }


    public void  DownloadView(Context context) {
        progressDialog =  new ProgressDialog(context);
        progressDialog.setMax(100);//设置最大值
        progressDialog.setTitle("下载"+initProgressName());//设置标题
        progressDialog.setIcon(R.drawable.ic_settings_update);//设置标题小图标
        progressDialog.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
        progressDialog.incrementProgressBy(0);
        progressDialog.setIndeterminate(false);
        progressDialog.setCancelable(false);
        progressDialog.show();//显示对话框
        mContext=context;
        createSDCardDupdateirimg();
        DownloadUpload(mContext, progressDialog);
    }

    private void DownloadUpload( Context context,ProgressDialog progressDialog){
        progressDialog.show();
        acquireWakeLock();
        mDownloadManger= DUtil.init(context)
                .url(initDownloadUri())
                .path(initDownloadpath())
                .name(initDownloadName())
                .childTaskCount(initDownloadTaskCount())
                .build()
                .start(new DownloadCallback() {
                    @Override
                    public void onStart(long currentSize, long totalSize, float progress) {

                        DownloadToast("正在启动下载");
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

                        DownloadToast("下载成功");
                        progressDialog.cancel();
                        intDownload(file) ;
                        releaseWakeLock();
                    }

                    @Override
                    public void onWait() {

                    }

                    @Override
                    public void onError(String error) {

                        DownloadToast("下载失败切换线路重新下载")
;                        progressDialog.cancel();
                        DownloadTwiceUpload(mContext,progressDialog);

                    }
                });

    }
   public void DownloadToast(String mDownloadState){
       Toast.makeText(mContext,mDownloadState,Toast.LENGTH_SHORT).show();
   }
    protected void  intDownload(File file) {

        initDownloadSuccess(file);


    }
    private void DownloadTwiceUpload(Context context,ProgressDialog progressDialog){
        progressDialog.show();
        acquireWakeLock();
        mDownloadManger= DUtil.init(context)
                .url(initDownloadTwiceUri())
                .path(initDownloadpath())
                .name(initDownloadName())
                .childTaskCount(initDownloadTaskCount())
                .build()
                .start(new DownloadCallback() {
                    @Override
                    public void onStart(long currentSize, long totalSize, float progress) {
                        DownloadToast("正在启动下载");
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

                        DownloadToast("成功下载");
                        intDownload(file) ;
                        progressDialog.cancel();
                        releaseWakeLock();
                    }

                    @Override
                    public void onWait() {
                    }

                    @Override
                    public void onError(String error) {
                        DownloadToast("多条下载线路失败请稍后重试");
                        progressDialog.cancel();
                        releaseWakeLock();
                    }
                });

    }
    PowerManager.WakeLock mWakeLock;
    public String TAG="Leo Download Tasks";
    @SuppressLint("InvalidWakeLockTag")
    private void acquireWakeLock() {
        if (null == mWakeLock) {
            PowerManager pm = (PowerManager)mContext.getSystemService(Context.POWER_SERVICE);
            mWakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK|PowerManager.ON_AFTER_RELEASE,"");
            if (null != mWakeLock) {
                mWakeLock.acquire();
            }
        }
    }

    private void releaseWakeLock() {
        if (null != mWakeLock) {
            mWakeLock.release();
            mWakeLock = null;
        }
    }

}