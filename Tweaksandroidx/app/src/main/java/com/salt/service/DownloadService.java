package com.salt.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.salt.frame.callback.SimpleDownloadCallback;
import com.salt.frame.download.DUtil;
import com.salt.frame.download.DownloadManger;
import com.salt.module.shell.BackupRestoreUnit;
import com.salt.config.R;
import com.salt.utils.DownNotificationUtil;
import java.io.File;

import static com.salt.config.tweaks.activity.FotaUpdateActivity.getFotaFinish;
import static com.salt.config.tweaks.activity.FotaUpdateActivity.getFotaProgress;
import static com.salt.config.tweaks.activity.FotaUpdateActivity.getFotaStart;

public class DownloadService extends Service {
    private Context mContext;
    private DownloadBinder mBinder = new DownloadBinder();
    public class DownloadBinder extends Binder {
        public void startDownload(String path, final String name, String url, final int notifyId ,final String  otaname) {
            DUtil.init(mContext)
                    .path(path)
                    .name(name)
                    .url(url)
                    .childTaskCount(3)
                    .build()
                    .start(new SimpleDownloadCallback() {
                        @Override
                        public void onStart(long currentSize, long totalSize, float progress) {
                            DownNotificationUtil.createProgressNotification(mContext, name, otaname, R.mipmap.ic_launcher, notifyId);
                            getFotaStart(currentSize,totalSize,progress);
                        }

                        @Override
                        public void onProgress(long currentSize, long totalSize, float progress) {
                            DownNotificationUtil.updateNotification(notifyId, progress);
                            getFotaProgress(currentSize,totalSize,progress);
                        }

                        @Override
                        public void onFinish(File file) {
                            DownNotificationUtil.cancelNotification(notifyId);
                           getFotaFinish(file);

                        }

                        @Override
                        public void onWait() {

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
