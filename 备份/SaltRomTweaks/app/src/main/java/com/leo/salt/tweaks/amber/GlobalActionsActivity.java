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
        switch (GradientBgStyle) {
            case 0:
                PowerMenuService(this,"com.leo.ACTION_POWER_A");
                finish();
                break;
            case 1:
                PowerMenuService(this,"com.leo.ACTION_POWER_B");
                finish();
                break;
            case 2:
                PowerMenuService(this,"com.leo.ACTION_POWER_C");
                finish();
                break;
            case 3:
                PowerMenuService(this,"com.leo.ACTION_POWER_D");
                finish();
                break;

        }

    }

}