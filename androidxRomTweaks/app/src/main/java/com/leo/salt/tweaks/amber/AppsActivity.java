/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.leo.salt.tweaks.amber;


import android.os.Bundle;


import android.view.MenuItem;


import androidx.appcompat.widget.Toolbar;

import com.leo.salt.tools.apps.FragmentApps;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BaseActivity;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;


public class AppsActivity extends BaseActivity {


    @Override
    protected int initLayout() {
        return R.layout.activity_ui;
    }

    @Override
    protected int initAppBarLayout() {
        return 0;
    }


    @Override
    public void onCreate(Bundle savedInstanceState) {
       // setLeoTheme();
        super.onCreate(savedInstanceState);
        Toolbar toolbar = (Toolbar) mContext.findViewById(R.id.t);
        setSupportActionBar(toolbar);
        getSupportActionBar().setTitle(getStringIdentifier(mContext,"app_manage_name"));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getFragmentManager().beginTransaction().replace(R.id.fragment_container, new FragmentApps()).commit();


    }
    public void setLeoTheme(){

        String string="AppTheme.Main.Dark";
        if (string.equals("AppTheme.Main.Dark")) {
            string = ((getResources().getConfiguration().uiMode & 48) == 32 ? 1 : null) != null ? "AppTheme.Main.Dark" : "AppTheme.Main.UI";
        }
        int identifier = getResources().getIdentifier(string, "style", getApplicationContext().getPackageName());
        if (identifier != 0) {
            setTheme(identifier);
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