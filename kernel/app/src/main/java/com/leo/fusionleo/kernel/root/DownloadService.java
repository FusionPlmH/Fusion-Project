package com.leo.fusionleo.kernel.root;


import java.io.File;


import android.app.Service;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.os.Binder;
import android.os.CountDownTimer;
import android.os.Environment;

import android.os.IBinder;

import android.support.annotation.Nullable;

import android.widget.Toast;

import com.leo.fusionleo.down.DUtil;
import com.leo.fusionleo.down.callback.SimpleDownloadCallback;
import com.leo.fusionleo.down.download.DownloadManger;
import com.leo.fusionleo.kernel.R;


import static com.leo.fusionleo.kernel.ui.KernelActivity.onDownloadFinish;
import static com.leo.fusionleo.kernel.ui.KernelActivity.onDownloadProgress;
import static com.leo.fusionleo.kernel.ui.KernelActivity.onDownloadStart;
import static com.leo.fusionleo.utils.Install.getLeoProperty;


/**
 * 为了保证下载任务可以一直在后台运行，我们创建一个下载的服务
 */
public class DownloadService extends Service {
    private Context mContext;

    private DownloadBinder mBinder = new DownloadBinder();

    public class DownloadBinder extends Binder {
        public void startDownload(String path, final String name, String url, final int notifyId) {
            DUtil.init(mContext)
                    .path(path)
                    .name(name)
                    .url(url)
                    .childTaskCount(3)
                    .build()
                    .start(new SimpleDownloadCallback() {
                        @Override
                        public void onStart(long currentSize, long totalSize, float progress) {
                            NotificationUtil.createProgressNotification(mContext, getLeoProperty("ro.boot.em.model")+" "+name, "已下载", R.drawable.fab_download, notifyId);
                           onDownloadStart(currentSize , totalSize,progress);
                        }

                        @Override
                        public void onProgress(long currentSize, long totalSize, float progress) {
                            NotificationUtil.updateNotification(notifyId, progress);
                            onDownloadProgress(currentSize , totalSize,progress);
                        }

                        @Override
                        public void onFinish(File file) {
                            NotificationUtil.cancelNotification(notifyId);

                            onDownloadFinish(file,notifyId);
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