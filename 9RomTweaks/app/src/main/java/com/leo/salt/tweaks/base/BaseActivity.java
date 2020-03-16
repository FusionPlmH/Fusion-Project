package com.leo.salt.tweaks.base;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.app.AlertDialog;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.updates.UpdatesMessage;
import com.leo.salt.utils.FileUtils;
import com.leo.salt.utils.safety.FirmwareSecurity;


import static com.leo.salt.tweaks.resource.Resource.APP_FOLDER_NAME;
import static com.leo.salt.tweaks.resource.Resource.safety;
import static com.leo.salt.utils.PrefUtils.DayNight;
import static com.leo.salt.utils.PrefUtils.ota;


public abstract class BaseActivity extends AppCompatActivity  {
    protected CollapsingToolbarLayout mCollapsingToolbarLayout;
    protected Activity mContext;
    public static final int  UPDATE_UI=0;
    protected abstract int initLayout();
    protected abstract int initAppBarLayout();
    protected AppBarLayout mAppBarLayout;
    public static void  StatusBarColor(final Activity context) {
        Window window = context.getWindow();
        //取消设置透明状态栏,使 ContentView 内容不再覆盖状态栏
        window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
        //需要设置这个 flag 才能调用 setStatusBarColor 来设置状态栏颜色
        window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);

        window.setStatusBarColor(Color.TRANSPARENT);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        setLeoTheme();
            super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
       // StatusBarColor(this);
       // fixStatusBarFg();
        mContext = this;
        if(initLayout()>0){
            setContentView(initLayout());
        }
        if(initAppBarLayout()>0){
            mAppBarLayout = findViewById(initAppBarLayout());
        }

        FileUtils.getInstance(getApplicationContext()).copyAssetsToSD("ota",APP_FOLDER_NAME+"/ota");

        FirmwareSecurity.get(this);
    }
   public void fixStatusBarFg() {
        int oldSystemUiFlags = getWindow().getDecorView().getSystemUiVisibility();
        int newSystemUiFlags = oldSystemUiFlags;
        int[] attrs = new int[] {
                android.R.attr.windowLightStatusBar,
                android.R.attr.windowLightNavigationBar,
        };
        TypedArray ta = getTheme().obtainStyledAttributes(attrs);
        boolean lightStatusBar = ta.getBoolean(0, false);
        boolean lightNavigationBar = ta.getBoolean(1, false);
        ta.recycle();
        if (lightStatusBar) {
            newSystemUiFlags |= View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR;
        } else {
            newSystemUiFlags &= ~(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
        }
        if (lightNavigationBar) {
            newSystemUiFlags |= View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR;
        } else {
            newSystemUiFlags &= ~(View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR);
        }

        if (newSystemUiFlags != oldSystemUiFlags) {
            getWindow().getDecorView().setSystemUiVisibility(newSystemUiFlags);
        }
    }

    public void setLeoTheme(){

        if (DayNight(getApplicationContext())) {
            setTheme(R.style.AppTheme_Main_Dark);
        } else {
            setTheme(R.style.AppTheme_Main);
        }


    }



    @Override
    protected void onResume() {
        super.onResume();

    }
    public UpdatesMessage mCheckUpdates;
    public void reload() {
        Intent intent = getIntent();
        overridePendingTransition(0, 0);
        intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
        finish();
        overridePendingTransition(0, 0);
        startActivity(intent);

//      recreate();
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

    public   Handler  mHandler;


}