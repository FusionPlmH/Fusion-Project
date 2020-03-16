package com.leo.salt.tileservice;

import android.annotation.TargetApi;

import android.os.Build;

import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;



import static com.leo.salt.plug.Utils.collapseStatusBar;
import static com.leo.salt.plug.Utils.setLeoNavKeypressAction;

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