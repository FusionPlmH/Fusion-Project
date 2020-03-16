package com.leo.service.plug.tileservice;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.app.StatusBarManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.RemoteException;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import android.view.View;
import android.view.WindowManager;

import java.lang.reflect.Method;

import static com.leo.service.plug.Utils.setLeoNavKeypressAction;

@TargetApi(Build.VERSION_CODES.N)
public class LeoOutdoors extends TileService {
    public void onClick() {
        setLeoNavKeypressAction(getApplicationContext(),218);
        getQsTile().setState(Tile.STATE_ACTIVE );
        getQsTile().updateTile();
    }

    public void onStartListening() {
        super.onStartListening();
        getQsTile().setState(Tile.STATE_ACTIVE );
        getQsTile().updateTile();
    }

    public void onTileAdded() {
        getQsTile().setState(Tile.STATE_ACTIVE );
        getQsTile().updateTile();
    }

}