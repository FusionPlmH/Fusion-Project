package com.leo.global.service;


import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import android.util.Log;

import com.leo.global.tweaks.R;

@SuppressLint("NewApi")
public class LeoTweaksService extends TileService {

    private final int STATE_ON = 1;
    private final String LOG_TAG = "LeoTweaksService";
    private int toggleState = STATE_ON;
    //当用户从Edit栏添加到快速设定中调用
    @Override
    public void onTileAdded() {
        Log.d(LOG_TAG, "onTileAdded");
    }
    //当用户从快速设定栏中移除的时候调用
    @Override
    public void onTileRemoved() {
        Log.d(LOG_TAG, "onTileRemoved");
    }
    // 点击的时候


    public void LeoComponetURL(String str) {
        String[] split = str.split("/");
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(split[0], split[1]));
        intent.setFlags(268435456);
        try {
         startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();

        }
    }
    @Override
    public void onClick() {
        Log.d(LOG_TAG, "onClick state = " + Integer.toString(getQsTile().getState()));
        Icon icon = null;
        if (toggleState == STATE_ON) {
            //toggleState = STATE_ON;
            LeoComponetURL("com.leo.global.tweaks/com.leo.global.tweaks.MainActivity");

            icon =  Icon.createWithResource(getApplicationContext(), R.drawable.ic_leo);
            getQsTile().setState(Tile.STATE_ACTIVE);// 更改成非活跃状态
        }
        getQsTile().setIcon(icon);//设置图标
        getQsTile().updateTile();//更新Tile

    }
    @Override
    public void onStopListening () {
        Log.d(LOG_TAG, "onStopListening");
    }
    public void CloseStatusBar() {
        try {
            Class.forName("android.app.StatusBarManager").getMethod("collapsePanels", new Class[0]).invoke(getSystemService("statusbar"), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}