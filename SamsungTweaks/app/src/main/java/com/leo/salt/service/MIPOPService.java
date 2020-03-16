package com.fusionleo.salt.service;


import android.content.BroadcastReceiver;
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
import android.widget.Toast;

import com.fusionleo.salt.R;

import static com.fusionleo.salt.utils.Constants.mNewline;


public class MIPOPService extends TileService {

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
        Log.d(LOG_TAG, "onClick state = " + Integer.toString(getQsTile().getState()));
        Icon icon;
        if (toggleState == STATE_ON) {
            toggleState = STATE_OFF;
            icon =  Icon.createWithResource(getApplicationContext(), R.drawable.ic_mi_pop);
            getQsTile().setState(Tile.STATE_INACTIVE);// 更改成非活跃状态
            isOmipopModel(getApplicationContext(),1);
        } else {
            toggleState = STATE_ON;
            icon = Icon.createWithResource(getApplicationContext(), R.drawable.ic_mi_pop);
            getQsTile().setState(Tile.STATE_ACTIVE);//更改成活跃状态
            isOmipopModel(getApplicationContext(),0);
        }

        getQsTile().setIcon(icon);//设置图标
        getQsTile().updateTile();//更新Tile
    }

    public static  void  isOmipopModel(Context ctx,int b) {
     int style;
        style = Settings.System.getInt(ctx.getContentResolver(), "leo_tweaks_minip_enable", b) ^ 1;
        Settings.System.putInt(ctx.getContentResolver(), "leo_tweaks_minip_enable",  style);
        if ( style== 0){
            Toast.makeText(ctx, "☹ "+"禁用屏幕助手", 0).show();

        }else if( style== 1){
            Toast.makeText(ctx, "☺ "+"启用屏幕助手"+mNewline+"这是一个不错的全面屏工具哦", 0).show();
        }
    }
    @Override
    public void onStartListening () {


    }

    @Override
    public void onStopListening () {
        Log.d(LOG_TAG, "onStopListening");
    }

}