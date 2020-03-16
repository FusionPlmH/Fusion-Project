package com.othershe.dutiltest;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

public class ServiceTaskActivity extends AppCompatActivity implements View.OnClickListener {

    private TextView mStart;
    private TextView mPause;
    private TextView mResume;
    private TextView mCancel;
    private TextView mRestart;

    private DownloadService.DownloadBinder downloadBinder;

    private String url = "http://os.leorom.cc/kernel/FusionLeo-Kernel(Exynos)1_v0.9.0.zip";

    private ServiceConnection connection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            downloadBinder = (DownloadService.DownloadBinder) service;
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {

        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_service_task);

        mStart = (TextView) findViewById(R.id.start);
        mPause = (TextView) findViewById(R.id.pause);
        mResume = (TextView) findViewById(R.id.resume);
        mCancel = (TextView) findViewById(R.id.cancel);
        mRestart = (TextView) findViewById(R.id.restart);
        mStart.setOnClickListener(this);
        mPause.setOnClickListener(this);
        mResume.setOnClickListener(this);
        mCancel.setOnClickListener(this);
        mRestart.setOnClickListener(this);

        Intent intent = new Intent(this, DownloadService.class);
        bindService(intent, connection, BIND_AUTO_CREATE);
    }


    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.start:

                downloadBinder.startDownload(Environment.getExternalStorageDirectory() + "/DUtil/",
                        "高德地图.apk",
                        url,
                        (int) System.currentTimeMillis());
                break;
            case R.id.pause:
                downloadBinder.pauseDownload(url);
                break;
            case R.id.resume:
                downloadBinder.resumeDownload(url);

                break;
            case R.id.cancel:
                downloadBinder.cancelDownload(url);

                break;
            case R.id.restart:
                downloadBinder.restartDownload(url);
                break;
            default:
                Toast.makeText(this, "下载完成", Toast.LENGTH_SHORT).show();
                break;
        }
    }

    @Override
    protected void onDestroy() {
        unbindService(connection);
        super.onDestroy();
    }
}
