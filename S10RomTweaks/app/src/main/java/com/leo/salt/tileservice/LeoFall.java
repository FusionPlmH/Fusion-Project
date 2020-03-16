package com.leo.salt.tileservice;

import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Build;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

import static com.os.salt.globalactions.Utils.setLeoNavKeypressAction;

@TargetApi(Build.VERSION_CODES.N)
public class LeoFall extends TileService {
    public void onClick() {
        setLeoNavKeypressAction(getApplicationContext(),217);
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