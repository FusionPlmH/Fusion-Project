package com.leo.global.tweaks.base;

import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.Snackbar;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.leo.global.tweaks.R;

import static com.leo.global.utils.Build.getLeoBuild;
public abstract class BaseFragActivity extends BaseActivity {


    public static  String KEY_TYPE;
    protected LinearLayout mCollapsingLinearLayout;

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
        mCollapsingLinearLayout=findViewById(R.id.CollapsingToolbarLayoutText);
    }
    Toolbar mToolbar;
    protected abstract int initLayout();
    private void initToolBar(){
        mToolbar = (Toolbar) findViewById(R.id.toolbar);
        if (mToolbar!=null){
            setSupportActionBar(mToolbar);
        }
        mCollapsingToolbarLayout = findViewById(R.id.toolbar_layout) ;
    }

    public Toolbar getToolbar() {
        return mToolbar;
    }

    public void setupToolBar(int title,boolean showHome){
        mCollapsingToolbarLayout.setTitle(mContext.getResources().getString(title));
        setDisplayHomeEnable(showHome);
    }

    private void setDisplayHomeEnable(boolean showHome){
        getSupportActionBar().setDisplayShowHomeEnabled(showHome);
        getSupportActionBar().setDisplayHomeAsUpEnabled(showHome);
    }

    private void setToolbarTitle(String title){

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