package com.salt.tileservice;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import android.widget.Toast;


import com.salt.config.R;

import java.util.List;

import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.config.SaltApp.getContext;
import static com.salt.config.tweaks.fragment.SystemGoogleFragment.mGoogleServiceFreezeKEY;
import static com.salt.utils.SaltProper.SystemUrl.LeoDonateUnlock;


@TargetApi(Build.VERSION_CODES.N)
public class LeoGoogle extends TileService {
    public void onClick() {
        if(LeoDonateUnlock()){
            if(isLeoAvilible(getApplicationContext(),"com.google.android.gms")){
                freezeGoogleService(getApplicationContext());
            }else{

                Toast.makeText(getApplicationContext(),"没有发现谷歌服务",Toast.LENGTH_SHORT).show();
            }
        }else{
            Toast.makeText(getApplicationContext(),"普通版无法使用此功能!",Toast.LENGTH_SHORT).show();
        }
        getQsTile().setState(Tile.STATE_ACTIVE );
        getQsTile().updateTile();
    }
    public static  void  freezeGoogleService(Context context) {
        int Styel;
        String key=mGoogleServiceFreezeKEY;
        Styel  = Settings.System.getInt(context.getContentResolver(), key, 0) ^ 1;
        Settings.System.putInt(context.getContentResolver(), key, Styel);
        if (Styel== 0){
            Toast.makeText(context,getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_no"),Toast.LENGTH_SHORT).show();
        }else if(Styel== 1){
            Toast.makeText(context,getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_yes"),Toast.LENGTH_SHORT).show();
        }
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

    public   boolean isLeoAvilible(Context context, String packageName) {
        final PackageManager packageManager = context.getPackageManager();
        // 获取所有已安装程序的包信息
        List<PackageInfo> pinfo = packageManager.getInstalledPackages(0);
        for ( int i = 0; i < pinfo.size(); i++ )
        {
            if(pinfo.get(i).packageName.equalsIgnoreCase(packageName))
                return true;
        }
        return false;
    }
}