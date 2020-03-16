/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.salt.config.tweaks.activity;

import android.view.MenuItem;

import com.salt.base.SaltActivity;
import com.salt.module.AppsManageFragment;
import com.salt.config.R;

import static com.salt.frame.LeadFrame.getStringIdentifier;


public class AppsActivity extends SaltActivity {


    @Override
    protected int initLayout() {
        return R.layout.activity_ui;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected String initAppName() {
        return getStringIdentifier(mContext,"app_manage_name");
    }

    @Override
    protected void initData() {
        getSupportFragmentManager().beginTransaction().replace(R.id.container_fragment, new AppsManageFragment()).commit();
    }


    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        /* 获取菜单项的ID */
        int id = item.getItemId();
        switch (id) {
            case android.R.id.home:
                onBackPressed();
                break;

        }
        /* 响应消息 方法回调 */
        return super.onOptionsItemSelected(item);
    }
}