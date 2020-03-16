package com.leo.salt.tileservice;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

import static com.leo.salt.plug.Utils.collapseStatusBar;


@TargetApi(Build.VERSION_CODES.N)
public class Leo extends TileService {
    public void onClick() {

        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {

                    Intent intent = new Intent();
                    intent.setAction("com.leo.ROM_CONTROL");

                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    startActivity(intent);

            }
        },500) ;

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