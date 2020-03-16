package com.leo.salt.tweaks.base;

import android.app.Activity;
import android.os.Bundle;

import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.R;


import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;


public abstract class BaseSettingUIActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

       // fixStatusBarFg();
        if(initLayout()>0){
            setContentView(initLayout());
        }
        initToolBar();
       // mCollapsingLinearLayout=findViewById(R.id.CollapsingToolbarLayoutText);
    }

    Toolbar mToolbar;
    protected abstract int initLayout();
    private void initToolBar(){
        mToolbar = (Toolbar) findViewById(R.id.toolbar);
        if (mToolbar!=null){
            setSupportActionBar(mToolbar);
        }
        //mCollapsingToolbarLayout = findViewById(R.id.toolbar_layout) ;
    }

    public Toolbar getToolbar() {
        return mToolbar;
    }

    public void setupToolBar(String title,boolean showHome){
        setTitle(getApksStringInt(title));
        setToolbarTitle(getApksStringInt(title));
        setDisplayHomeEnable(showHome);
    }

    private void setDisplayHomeEnable(boolean showHome){
        getSupportActionBar().setDisplayShowHomeEnabled(showHome);
        getSupportActionBar().setDisplayHomeAsUpEnabled(showHome);
    }

    private void setToolbarTitle(String title){
        showSnack(title);
    }
    public void showSnack(String mensaje){

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