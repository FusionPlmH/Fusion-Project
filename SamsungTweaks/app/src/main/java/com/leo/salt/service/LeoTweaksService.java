package com.fusionleo.salt.service;


import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import android.util.Log;

import com.fusionleo.salt.R;

public class LeoTweaksService extends TileService {
    private  final Intent INTENT_SU = new Intent().setComponent(new ComponentName(
            "com.fusionleo.salt","com.fusionleo.salt.MainActivity"));
    private final int STATE_OFF = 0;
    private final int STATE_ON = 1;
    private final String LOG_TAG = "QuickFloatService";
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
    @Override
    public void onClick() {
        Icon icon;
        if (toggleState == STATE_ON) {
            toggleState = STATE_ON;
            icon = Icon.createWithResource(getApplicationContext(), R.drawable.ic_leo);
            getQsTile().setState(Tile.STATE_ACTIVE);
            startActivity(INTENT_SU);
            getQsTile().setIcon(icon);//设置图标
            getQsTile().updateTile();//更新Tile
        }


    }
    // 打开下拉菜单的时候调用,当快速设置按钮并没有在编辑栏拖到设置栏中不会调用
    //在TleAdded之后会调用一次
    @Override
    public void onStartListening () {
        Tile tile = getQsTile();
        tile.setIcon(Icon.createWithResource(this,
                R.drawable.ic_leo));
        tile.setLabel(getString(R.string.app_name));
        tile.setContentDescription(
                getString(R.string.app_name));
        tile.setState(Tile.STATE_ACTIVE);
        tile.updateTile();
    }
    // 关闭下拉菜单的时候调用,当快速设置按钮并没有在编辑栏拖到设置栏中不会调用
    // 在onTileRemoved移除之前也会调用移除
    @Override
    public void onStopListening () {
        Log.d(LOG_TAG, "onStopListening");
    }

}