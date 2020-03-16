package com.salt.tileservice;

import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Build;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

import static com.salt.globalactions.Utils.collapseStatusBar;
import static com.salt.globalactions.Utils.setLeoNavKeypressAction;


@TargetApi(Build.VERSION_CODES.N)
public class LeoFll extends TileService {
    public void onClick() {
        setLeoNavKeypressAction(getApplicationContext(),221);
        collapseStatusBar(this);
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