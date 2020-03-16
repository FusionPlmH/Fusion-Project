package com.ixuea.android.downloader.simple;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

import com.ixuea.android.common.activity.BaseActivity;
import com.ixuea.android.downloader.DownloadService;
import com.ixuea.android.downloader.config.Config;
import com.ixuea.android.downloader.simple.activity.DownloadManagerActivity;
import com.ixuea.android.downloader.simple.activity.ListActivity;
import com.ixuea.android.downloader.simple.activity.SimpleActivity;

/**
 * sample main activity.
 */
public class MainActivity extends BaseActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }

    @Override
    protected void initData() {
        super.initData();

        try {
            //custom download database.
            //      DBController dbController = DBController.getInstance(getApplicationContext());

            Config config = new Config();
            //set database path.
            //    config.setDatabaseName("/sdcard/a/d.db");
            //      config.setDownloadDBController(dbController);

            //set download quantity at the same time.
            config.setDownloadThread(1);

            //set each download info thread number
            config.setEachDownloadThread(2);

            // set connect timeout,unit millisecond
            config.setConnectTimeout(10000);

            // set read data timeout,unit millisecond
            config.setReadTimeout(10000);
            DownloadService.getDownloadManager(this.getApplicationContext(), config);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }


    public void downloadAFile(View view) {
        startActivity(new Intent(this, SimpleActivity.class));
    }

    public void useInList(View view) {
        startActivity(new Intent(this, ListActivity.class));
    }

    public void downloadManager(View view) {
        startActivity(new Intent(this, DownloadManagerActivity.class));
    }




}
