package com.othershe.dutiltest;

import android.content.Context;
import android.os.Environment;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

import com.othershe.baseadapter.ViewHolder;
import com.othershe.baseadapter.interfaces.OnItemChildClickListener;
import com.othershe.dutil.data.DownloadData;
import com.othershe.dutil.db.Db;
import com.othershe.dutil.download.DownloadManger;

import java.util.ArrayList;
import java.util.List;

public class TaskManageActivity extends AppCompatActivity {
    private String url1 = "http://os.leorom.cc/kernel/FusionLeo-Kernel(Exynos)_v0.9.0.zip";//欢乐斗地主
    private String url2 = "http://os.leorom.cc/kernel/FusionLeo-Kernel(Exynos)_v0.9.0.zip";//球球大作战
    private String url3 = "http://os.leorom.cc/kernel/FusionLeo-Kernel(Exynos)_v0.9.0.zip";//节奏大师
    private String url4 = "http://os.leorom.cc/kernel/FusionLeo-Kernel(Exynos)_v0.9.0.zip";//部落冲突
    private String url5 = "http://os.leorom.cc/kernel/FusionLeo-Kernel(Exynos)_v0.9.0.zip";//捕鱼达人

    private String path = Environment.getExternalStorageDirectory() + "/DUtil/";

    private RecyclerView downloadList;
    private DownloadListAdapter downloadListAdapter;

    private Context mContext;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_task_manage);

        mContext = this;

//        DownloadManger.getInstance(mContext).setTaskPoolSize(2, 10);

        downloadList = (RecyclerView) findViewById(R.id.download_list);
        final List<DownloadData> datas = new ArrayList<>();
        if (Db.getInstance(mContext).getData(url1) != null){
            datas.add(Db.getInstance(mContext).getData(url1));
        }else{
            datas.add(new DownloadData(url1, path, "欢乐斗地主.apk"));
        }

        if (Db.getInstance(mContext).getData(url2) != null){
            datas.add(Db.getInstance(mContext).getData(url2));
        }else{
            datas.add(new DownloadData(url2, path, "球球大作战.apk"));
        }

        if (Db.getInstance(mContext).getData(url3) != null){
            datas.add(Db.getInstance(mContext).getData(url3));
        }else{
            datas.add(new DownloadData(url3, path, "节奏大师.apk"));
        }

        if (Db.getInstance(mContext).getData(url4) != null){
            datas.add(Db.getInstance(mContext).getData(url4));
        }else{
            datas.add(new DownloadData(url4, path, "部落冲突.apk"));
        }

        if (Db.getInstance(mContext).getData(url5) != null){
            datas.add(Db.getInstance(mContext).getData(url5));
        }else{
            datas.add(new DownloadData(url5, path, "捕鱼达人.apk"));
        }

        downloadListAdapter = new DownloadListAdapter(this, datas, false);

        //开始
        downloadListAdapter.setOnItemChildClickListener(R.id.start, new OnItemChildClickListener<DownloadData>() {
            @Override
            public void onItemChildClick(final ViewHolder viewHolder, final DownloadData data, int position) {
                DownloadManger.getInstance(mContext).start(data.getUrl());
            }
        });

        //暂停
        downloadListAdapter.setOnItemChildClickListener(R.id.pause, new OnItemChildClickListener<DownloadData>() {
            @Override
            public void onItemChildClick(ViewHolder viewHolder, DownloadData data, int position) {
                DownloadManger.getInstance(mContext).pause(data.getUrl());
            }
        });

        //继续
        downloadListAdapter.setOnItemChildClickListener(R.id.resume, new OnItemChildClickListener<DownloadData>() {
            @Override
            public void onItemChildClick(ViewHolder viewHolder, DownloadData data, int position) {
                DownloadManger.getInstance(mContext).resume(data.getUrl());
            }
        });

        //取消
        downloadListAdapter.setOnItemChildClickListener(R.id.cancel, new OnItemChildClickListener<DownloadData>() {
            @Override
            public void onItemChildClick(ViewHolder viewHolder, DownloadData data, int position) {
                DownloadManger.getInstance(mContext).cancel(data.getUrl());
            }
        });

        //重新开始
        downloadListAdapter.setOnItemChildClickListener(R.id.restart, new OnItemChildClickListener<DownloadData>() {
            @Override
            public void onItemChildClick(ViewHolder viewHolder, DownloadData data, int position) {
                DownloadManger.getInstance(mContext).restart(data.getUrl());
            }
        });

        final LinearLayoutManager layoutManager = new LinearLayoutManager(this);
        layoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        downloadList.setLayoutManager(layoutManager);
        downloadList.setAdapter(downloadListAdapter);
    }

    @Override
    protected void onDestroy() {
        DownloadManger.getInstance(mContext).destroy(url1, url2, url3, url4, url5);
        super.onDestroy();
    }
}
