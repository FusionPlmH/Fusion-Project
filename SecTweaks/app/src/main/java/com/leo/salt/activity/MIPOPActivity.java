/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.leo.salt.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;

import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.text.format.Formatter;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;


import com.leo.salt.R;
import com.leo.salt.base.BaseActivity;
import com.leo.salt.fragment.POPFragment;
import com.leo.salt.kt.ImgFragment;
import com.leo.salt.theme.Utils;

import static com.leo.salt.utils.AndroidUtils.clearmemory;
import static com.leo.salt.utils.Constants.LEO_ACTION_GLOBAL;
import static com.leo.salt.utils.Constants.LEO_ACTION_SERVICE;


public class MIPOPActivity extends BaseActivity {


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
        getSupportActionBar().setTitle(R.string.list_grid_pop);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        Utils.StatusBarColor(this);
        getFragmentManager().beginTransaction().replace(R.id.fragment_container, new POPFragment()).commit();
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