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


public abstract class BaseCollapsingToolbarActivity extends BaseActivity  {

    protected LinearLayout mCollapsingLinearLayout;
    protected TextView CollapsingToolbarLayoutSubText;

    protected abstract int initCollapsingTextText();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        mCollapsingToolbarLayout = findViewById(R.id.toolbar_layout) ;
        if(initCollapsingTextText()>0){
            mCollapsingToolbarLayout.setTitle(mContext.getResources().getString(initCollapsingTextText()));
           // showSnack(mContext.getResources().getString(initCollapsingTextText()));
        }
        mCollapsingLinearLayout=findViewById(R.id.CollapsingToolbarLayoutText);

    }
    protected Toolbar toolbar;



    @Override
    protected void onResume() {
        super.onResume();

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