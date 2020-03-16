/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.tweaks.leo.activity;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;

import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.text.format.Formatter;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;


import com.os.leo.utils.LeoUserString;
import com.tweaks.leo.R;


public class CleanActivity extends Activity {
    private Context mContext;
    private ImageView rotateImage;
    private Animation animation;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_clean);
       hideBottomUIMenu();//
        mContext = this;
        rotateImage=(ImageView)findViewById(R.id.imageView_rotate);        
        animation=AnimationUtils.loadAnimation(CleanActivity.this, R.anim.clean_anim);//加载动画
        animation.setAnimationListener(new AnimationListener(){

            @Override
            public void onAnimationStart(Animation animation) {
                // TODO Auto-generated method stub
                LeoUserString.LeoAction(mContext,113,null);//动画开始时杀死进程
            }

            @Override
            public void onAnimationEnd(Animation animation) {
                // TODO Auto-generated method stub
                finish();//动画停止后结束当前activity
                android.os.Process.killProcess(android.os.Process.myPid());//结束当前程序的进程
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
                // TODO Auto-generated method stub
                
            }   
        });    
        rotateImage.setAnimation(animation);            
    }
    protected void hideBottomUIMenu() {
        if (Build.VERSION.SDK_INT > 11 && Build.VERSION.SDK_INT < 19) {
            View v = this.getWindow().getDecorView();
            v.setSystemUiVisibility(View.GONE);
        } else if (Build.VERSION.SDK_INT >= 19) {
            View decorView = getWindow().getDecorView();
            int uiOptions = View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY | View.SYSTEM_UI_FLAG_FULLSCREEN;
            decorView.setSystemUiVisibility(uiOptions);
        }
    }
}