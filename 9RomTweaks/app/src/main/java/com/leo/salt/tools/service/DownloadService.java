package com.leo.salt.tools.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.widget.Toast;


import com.leo.salt.down.DUtil;
import com.leo.salt.down.callback.SimpleDownloadCallback;
import com.leo.salt.down.download.DownloadManger;
import com.leo.salt.down.utils.Utils;
import com.leo.salt.tweaks.R;



import java.io.File;

import static com.leo.salt.tweaks.updates.ServiceTaskActivity.onDownloadFinish;
import static com.leo.salt.tweaks.updates.ServiceTaskActivity.onDownloadProgress;
import static com.leo.salt.tweaks.updates.ServiceTaskActivity.onDownloadStart;


public class DownloadService extends Service {
   public  Context mContext;

    private DownloadBinder mBinder = new DownloadBinder();



   public  class DownloadBinder extends Binder {
        public void startDownload(String path, final String name, String url, final int notifyId) {
            DUtil.init(mContext)
                    .path(path)
                    .name(name)
                    .url(url)
                    .childTaskCount(5)
                    .build()
                    .start(new SimpleDownloadCallback() {
                        @Override
                        public void onStart(long currentSize, long totalSize, float progress) {
                            NotificationUtil.createProgressNotification(mContext, name, "Leo ROM", R.drawable.ic_ota, notifyId);
                            onDownloadStart(currentSize , totalSize,progress);
                        }

                        @Override
                        public void onProgress(long currentSize, long totalSize, float progress) {
                            NotificationUtil.updateNotification(notifyId, currentSize , totalSize,progress);
                            onDownloadProgress(currentSize , totalSize,progress);
                        }

                        @Override
                        public void onFinish(File file) {
                            NotificationUtil.cancelNotification(notifyId);
                            Toast.makeText(mContext, "下载完成", Toast.LENGTH_SHORT).show();
                            onDownloadFinish(file);
                        }

                        @Override
                        public void onWait() {

                        }

                        @Override
                        public void onError(String error) {
                           // super.onError(error);
                        }
                    });

        }


        public void pauseDownload(String url) {
            DownloadManger.getInstance(mContext).pause(url);
        }

        public void resumeDownload(String url) {
            DownloadManger.getInstance(mContext).resume(url);
        }

        public void cancelDownload(String url) {
            DownloadManger.getInstance(mContext).cancel(url);
        }

        public void restartDownload(String url) {
            DownloadManger.getInstance(mContext).restart(url);
        }

        public float getProgress(String url) {
            if (DownloadManger.getInstance(mContext).getCurrentData(url) != null) {
                return DownloadManger.getInstance(mContext).getCurrentData(url).getPercentage();
            }
            return -1;
        }
    }







    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return mBinder;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        mContext = this;

    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return super.onStartCommand(intent, flags, startId);
    }
}
