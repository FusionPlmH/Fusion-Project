package com.leo.service.plug.tileservice;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import com.android.layoutlib.bridge.impl.GcSnapshot;
import com.leo.service.plug.ListViewPowerMenu;
import com.leo.service.plug.OverScrollListView;
import com.leo.service.plug.R;
import com.leo.service.plug.Resource;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.leo.service.plug.LeoApp.getContext;
import static com.leo.service.plug.Resource.PACKAGE_SYSTEMUI;
import static com.leo.service.plug.Resource.appICON;
import static com.leo.service.plug.Resource.getCustomArray;
import static com.leo.service.plug.Resource.getCustomArrayDrawable;
import static com.leo.service.plug.Resource.getStringIdentifier;
import static com.leo.service.plug.Utils.collapseStatusBar;
import static com.leo.service.plug.Utils.setLeoNavKeypressAction;

@TargetApi(Build.VERSION_CODES.N)
public class LeoBoot extends TileService {


    public void onClick() {
        initInfoView(getApplicationContext(),R.string.action_reboot,getCustomArrayDrawable("android","tw_ic_do_restart"));
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


    public  void initInfoView(Context context, int Titlename, Drawable icon) {


        AlertDialog dialog = new AlertDialog.Builder((new ContextThemeWrapper(context, R.style.DialogStyleLight)))
                .setTitle(Titlename)//设置对话框的标题
                .setIcon(icon)
                .setItems(getCustomArray("restart_style_values"), (dialog1, which) -> {
                    Handler handler = new Handler();
                    handler.postDelayed(() -> {
                        switch (which) {
                            case 0:
                                setLeoNavKeypressAction(getApplicationContext(),2002);
                                break;
                            case 1:
                                setLeoNavKeypressAction(getApplicationContext(),2005);
                                break;
                            case 2:
                                setLeoNavKeypressAction(getApplicationContext(),2004);
                                break;
                            case 3:
                                setLeoNavKeypressAction(getApplicationContext(),2003);
                                break;
                        }
                    }, 500);
                    dialog1.dismiss();
                })
                .setNegativeButton(android.R.string.cancel, (dialog12, which) -> dialog12.dismiss())
                .create();
        dialog.getWindow().setType(2003);
        dialog.show();
    }


}