package com.leo.global.tweaks.base;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.app.AlertDialog;
import android.provider.Settings;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.leo.global.tweaks.R;

import java.io.File;

import static com.leo.global.utils.Constants.DayNight;


public abstract class BaseActivity extends AppCompatActivity  {
    protected CollapsingToolbarLayout mCollapsingToolbarLayout;
    protected Activity mContext;
    protected abstract int initLayout();
    protected Window window;
    protected Drawable upArrow;

    protected abstract int initAppBarLayout();
    protected AppBarLayout mAppBarLayout;
//    protected boolean DayNight;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);

    setLeoTheme();
            mContext = this;
        if(initLayout()>0){
            setContentView(initLayout());
        }
        if(initAppBarLayout()>0){
            mAppBarLayout = findViewById(initAppBarLayout());
        }



      //  setLeoStatusbars();
    }

   public void setLeoTheme(){




        if(DayNight(getApplicationContext())){
            setTheme(R.style.AppTheme_Main_Dark);
        } else {
            setTheme(R.style.AppTheme_Main);
        }
}


    @Override
    protected void onResume() {
        super.onResume();

    }
    public void reload() {
        Intent intent = getIntent();
        overridePendingTransition(0, 0);
        intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
        finish();
        overridePendingTransition(0, 0);
        startActivity(intent);

//      recreate();
    }

}