package com.leo.global.amber;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.widget.Toast;

import com.leo.global.tools.wifi.ViewActivity;
import com.leo.global.tweaks.R;
import com.leo.global.tweaks.base.BaseCollapsingToolbarActivity;

import java.io.File;


public class WifiPasswordActivity extends BaseCollapsingToolbarActivity {
Context mContext;

    @Override
    protected int initCollapsingTextText() {
        return 0;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext=this;
        Intent intent = new Intent();
        intent.setClass(mContext, ViewActivity.class);
        if (true) {
            createSDCardDirimg();
            if (Build.VERSION.SDK_INT >= 26) {
                intent.putExtra("path", "/data/misc/wifi/WifiConfigStore.xml");
                startActivity(intent);
                finish();
            } else {
                intent.putExtra("path", "/data/misc/wifi/wpa_supplicant.conf");
                startActivity(intent);
                finish();
            }
        } else {
            Toast.makeText(mContext, "无法获取ROOT", Toast.LENGTH_LONG).show();
        }

    }
    public void createSDCardDirimg(){
        // if (Version.equals(leoversion())) {
        //  getCopyrightAlertDialog();
        //   return;
        //  }
        //  Copyright ( );
        if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){
            // 创建一个文件夹对象，赋值为外部存储器的目录
            // 创建一个文件夹对象，赋值为外部存储器的目录
            File sdcardDir =Environment.getExternalStorageDirectory();
            //得到一个路径，内容是sdcard的文件夹路径和名字
            String path=sdcardDir.getPath()+"/LeoTweaks/backups";
            File path1 = new File(path);
            if (!path1.exists()) {
                //若不存在，创建目录，可以在应用启动的时候创建
                path1.mkdirs();
                setTitle("paht ok,path:"+path);
            }
        }
        else{
            setTitle("false");
            return;

        }

    }

    @Override
    protected int initLayout() {
        return R.layout.activity_wifi;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }


}