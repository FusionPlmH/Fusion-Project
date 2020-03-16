package com.leo.salt.tweaks.fota;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.support.annotation.Nullable;


import com.leo.download.provider.DUtil;
import com.leo.download.provider.callback.SimpleDownloadCallback;
import com.leo.download.provider.download.DownloadManger;
import com.leo.salt.tools.service.NotificationUtil;
import com.leo.salt.tweaks.R;

import java.io.File;

import static com.leo.salt.tweaks.fota.FotaUpdateActivity.*;


public class FotaService extends Service {

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
                           NotificationUtil.createProgressNotification(mContext, name, "Leo ROM", R.drawable.ic_settings_update, notifyId);
                           getFotaStart(currentSize , totalSize,progress);
                        }

                        @Override
                        public void onProgress(long currentSize, long totalSize, float progress) {
                           NotificationUtil.updateNotification(notifyId, currentSize , totalSize,progress);
                          getFotaProgress (currentSize , totalSize,progress);
                        }

                        @Override
                        public void onFinish(File file) {

                            getFotaFinish(file);
                        }

                        @Override
                        public void onWait() {

                        }
                        @Override
                        public void onError(String error) {
                          getFotaError(error);
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
