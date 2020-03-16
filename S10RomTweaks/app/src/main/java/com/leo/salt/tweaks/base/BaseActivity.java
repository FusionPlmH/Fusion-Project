package com.leo.salt.tweaks.base;

import android.app.Activity;
import android.app.UiModeManager;
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
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.app.AppCompatDelegate;
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
import static com.leo.salt.tweaks.resource.Resource.getColorAttr;


public abstract class BaseActivity extends AppCompatActivity  {
    protected CollapsingToolbarLayout mCollapsingToolbarLayout;
    protected Activity mContext;
    public static final int  UPDATE_UI=0;
    protected abstract int initLayout();
    protected abstract int initAppBarLayout();
    protected AppBarLayout mAppBarLayout;


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
    public static boolean LightStatusBar;
    public void setLeoTheme(){

        String string="AppTheme.Main.Dark";
        if (string.equals("AppTheme.Main.Dark")) {
            LightStatusBar=false;
            string = ((getResources().getConfiguration().uiMode & 48) == 32 ? 1 : null) != null ? "AppTheme.Main.Dark" : "AppTheme.Main";
        }
        if (string.equals("AppTheme.Main")) {
            LightStatusBar=true;
        }
        int identifier = getResources().getIdentifier(string, "style", getApplicationContext().getPackageName());
        if (identifier != 0) {
            setTheme(identifier);
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

    public void showSnacknAccent(String mensaje){
        Snackbar snackbar = Snackbar.make(mContext.findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);
        snackbar.getView().setBackgroundColor(getColorAttr(mContext,R.attr.colorAccent));
        snackbar.show();

    }
}