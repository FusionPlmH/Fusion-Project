package com.salt.config;
import android.content.Intent;
import android.view.KeyEvent;

import com.google.android.material.bottomnavigation.BottomNavigationView;

import com.salt.base.SaltActivity;
import com.salt.config.view.JsonImage;


import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;



public class MainActivity extends SaltActivity {
   private JsonImage mJsonImage;
    private BottomNavigationView navView;

    @Override
    protected int initLayout() {
        return R.layout.activity_main;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected String initAppName() {
        return getString(R.string.app_name);
    }

    private AppBarConfiguration mAppBarConfiguration;
    @Override
    protected void initData() {
        navView = findViewById(R.id.nav_view);

        mAppBarConfiguration = new AppBarConfiguration.Builder(
                R.id.navigation_home,R.id.navigation_tweaks, R.id.navigation_gesture, R.id.navigation_more)
                .build();
        NavController navController = Navigation.findNavController(this, R.id.mainNavFragment);
        NavigationUI.setupActionBarWithNavController(this, navController,  mAppBarConfiguration);
        NavigationUI.setupWithNavController(navView, navController);
       mJsonImage=new JsonImage(this);
      mJsonImage.loadData(mAppBarLayout);
      //  copyAssetFolder();
    }
    @Override
    protected void onStart() {
        super.onStart();
        //开始轮播
   mJsonImage.onStart();
    }

    @Override
    protected void onStop() {
        super.onStop();
        //结束轮播
       mJsonImage.onStop();
    }
    @Override
    public void onBackPressed() {


            Intent setIntent = new Intent(Intent.ACTION_MAIN);
            setIntent.addCategory(Intent.CATEGORY_HOME);
            setIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(setIntent);


    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        //当按下键盘上返回按钮，给出退出对话框
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            onBackPressed();
            return false;
        } else {
            return super.onKeyDown(keyCode, event);
        }
    }


}
