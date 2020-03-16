package com.salt.config.tweaks.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;

import com.salt.globalactions.GridViewDialogPowerMenu;
import com.salt.globalactions.GridViewPowerMenu;
import com.salt.globalactions.GridViewPowerMenuSimplify;
import com.salt.globalactions.ListViewDialogPowerMenu;
import com.salt.globalactions.ListViewPowerMenu;
import com.salt.config.MainActivity;

import static com.salt.utils.startUtils.startActivityIntent;

public class GlobalactionsActivity extends Activity {
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        PowerMenu();
        finish();
    }
    public void PowerMenu(){
    int style= Settings.System.getInt(this.getContentResolver(), "leo_salt_global_power_globala_ctionsStyle_style", 0);
        if(style==0){
            startActivityIntent(this,GridViewPowerMenuSimplify.class);
        } if(style==1){
            startActivityIntent(this, GridViewPowerMenu.class);
        }else  if(style==2){
            startActivityIntent(this, GridViewDialogPowerMenu.class);
        }else  if(style==3){
            startActivityIntent(this, ListViewDialogPowerMenu.class);
        }else  if(style==4){
            startActivityIntent(this, ListViewPowerMenu.class);
        }
    }
}
