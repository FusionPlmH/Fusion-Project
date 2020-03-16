/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.leo.salt.tweaks.amber;


import android.app.Activity;
import android.os.Bundle;

import android.support.v7.widget.Toolbar;

import android.view.MenuItem;

import com.leo.salt.fragment.StatusBarClockFragment;
import com.leo.salt.tools.apps.FragmentApps;
import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BaseActivity;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.PrefUtils.PowerMenuService;


public class GlobalActionsActivity extends MainActivity {




    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        int style=GradientBgStyle;
        if(style==0){
            PowerMenuService(mContext,"com.leo.ACTION_POWER_SIMPLIFY");
        } if(style==1){
            PowerMenuService(mContext,"com.leo.ACTION_POWER_A");
        }else  if(style==2){
            PowerMenuService(mContext,"com.leo.ACTION_POWER_B");
        }else  if(style==3){
            PowerMenuService(mContext,"com.leo.ACTION_POWER_C");
        }else  if(style==4){
            PowerMenuService(mContext,"com.leo.ACTION_POWER_D");
        }

    }

}