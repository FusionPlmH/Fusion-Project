package com.leo.salt.tileservice;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;


import com.leo.salt.tweaks.R;

import java.util.List;

import static com.leo.salt.fragment.SystemGoogleFragment.mGoogleServiceFreezeKEY;
import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.ActionToastSring;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.ToastALL;
import static com.os.salt.OSBuild.SystemUrl.LeoDonateUnlock;
import static com.os.salt.globalactions.Utils.collapseStatusBar;
import static com.os.salt.globalactions.Utils.setLeoNavKeypressAction;

@TargetApi(Build.VERSION_CODES.N)
public class LeoGoogle extends TileService {
    public void onClick() {
        if(LeoDonateUnlock()){
            if(isLeoAvilible(getApplicationContext(),"com.google.android.gms")){
                freezeGoogleService(getApplicationContext());
            }else{
                ToastALL("没有发现谷歌服务");
            }
        }else{
            ToastALL(getApksStringInt(R.string.you_unusable_info));
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
            ToastALL(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_no"));
        }else if(Styel== 1){
            ToastALL(getStringIdentifier(getContext(),"google_services")+getStringIdentifier(getContext(),"freeze_yes"));
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