package com.leo.salt.tweaks.base;

import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.Snackbar;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;

import com.leo.salt.tweaks.R;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.getColorAttr;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

public abstract class BaseSettingActivity extends BaseActivity {


    public static  String KEY_TYPE;
  //  protected LinearLayout mCollapsingLinearLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        //  setTheme(R.style.perference_set_activity);

        super.onCreate(savedInstanceState);
        fixStatusBarFg();
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
        setTitle(getStringIdentifier(mContext,title));
        setToolbarTitle(getStringIdentifier(mContext,title));
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
        Snackbar snackbar = Snackbar.make(mContext.findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);
        snackbar.getView().setBackgroundColor(getColorAttr(mContext,R.attr.colorAccent));
        snackbar.show();

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