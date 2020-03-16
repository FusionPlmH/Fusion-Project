/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.leo.salt.activity;


import android.os.Bundle;

import android.support.v7.widget.Toolbar;

import android.view.MenuItem;


import com.leo.salt.R;
import com.leo.salt.base.BaseActivity;
import com.leo.salt.kt.FragmentApplistions;
import com.leo.salt.theme.Utils;
import com.leo.salt.utils.AndroidUtils;
import static com.leo.salt.utils.Constants.safety;
import static com.leo.salt.widget.DialogUtil.Promptdonate;


public class AppsActivity extends BaseActivity {


    @Override
    protected int initLayout() {
        return R.layout.activity_simple_container;
    }

    @Override
    protected boolean initStatusBarColor() {
        return true;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setTitle(R.string.assist_grid_apps);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        Utils.StatusBarColor(this);
        if (AndroidUtils.getCustomOTA().equals(safety)) {
            getFragmentManager().beginTransaction().replace(R.id.fragment_container, new FragmentApplistions()).commit();
        }else {
            Promptdonate(this);
        }

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