package com.leo.salt.tweaks.base;

import android.app.Activity;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;

import com.leo.salt.tweaks.R;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.getColorAttr;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

public abstract class BaseSubActivity extends AppCompatActivity {

    protected Activity mContext;
    public static  String KEY_TYPE;
    protected CollapsingToolbarLayout mCollapsingToolbarLayout;
    protected abstract int initAppBarLayout();

  //  protected LinearLayout mCollapsingLinearLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        //  setTheme(R.style.perference_set_activity);

        super.onCreate(savedInstanceState);
        mContext=this;
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
        mCollapsingToolbarLayout = findViewById(R.id.toolbar_layout) ;
    }

    public Toolbar getToolbar() {
        return mToolbar;
    }

    public void setupToolBar(String title,boolean showHome){
        String string=getStringIdentifier(mContext,title);

        mCollapsingToolbarLayout.setTitle(string);
        setToolbarTitle(string);
        setDisplayHomeEnable(showHome);
    }
    public void showSnack(String mensaje){
        Snackbar snackbar = Snackbar.make(mContext.findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);

        snackbar.show();

    }
    private void setDisplayHomeEnable(boolean showHome){
        getSupportActionBar().setDisplayShowHomeEnabled(showHome);
        getSupportActionBar().setDisplayHomeAsUpEnabled(showHome);
    }

    private void setToolbarTitle(String title){
        showSnack(title);
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