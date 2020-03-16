package com.tweaks.leo.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;

import com.tweaks.leo.R;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.utils.root.RootUtils;
import com.tweaks.leo.wifi.ViewActivity;






public  class WifiPasswordActivity extends BaseActivity {
Context mContext;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext=this;

        Intent intent = new Intent();
        intent.setClass(mContext, ViewActivity.class);

        if (RootUtils.rootAccess()) {
            RootUtils.runCommand( "mkdir " + mContext.getExternalFilesDir("Backup").getPath());
            if (android.os.Build.VERSION.SDK_INT >= 26) {
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

    @Override
    protected int initLayout() {
        return R.layout.activity_wifi;
    }






}