package com.tweaks.leo.base;


import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

import com.tweaks.leo.R;
import com.tweaks.leo.theme.ThemeControl;
import com.tweaks.leo.theme.Utils;


public abstract class BaseSubActivity extends BaseActivity {


    private Toolbar mToolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
      //  setTheme(R.style.perference_set_activity);

        super.onCreate(savedInstanceState);
        // 设置是否对日志信息进行加密, true 加密
        // 设置布局
        if(initLayout()>0){
            setContentView(initLayout());
        }
        initToolBar();
        Utils.StatusBarColor(this);
    }
    protected abstract int initLayout();
    private void initToolBar(){
        mToolbar = (Toolbar) findViewById(R.id.toolbar);
        if (mToolbar!=null){
            setSupportActionBar(mToolbar);
        }
    }

    public Toolbar getToolbar() {
        return mToolbar;
    }




    /**
     * 设置toolbar属性
     * @param title 标题
     * @param showHome 是否返回
     */
    public void setupToolBar(int title,boolean showHome){
        setTitle(getString(title));
        setDisplayHomeEnable(showHome);
    }

    private void setDisplayHomeEnable(boolean showHome){
        getSupportActionBar().setDisplayShowHomeEnabled(showHome);
        getSupportActionBar().setDisplayHomeAsUpEnabled(showHome);
    }

    private void setToolbarTitle(String title){
        if(mToolbar!=null){
            mToolbar.setTitle(title);
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