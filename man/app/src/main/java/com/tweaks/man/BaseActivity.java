package com.tweaks.man;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import com.tweaks.man.theme.ThemeControl;

import static com.tweaks.man.theme.Utils.StatusBarColor;


public abstract class BaseActivity extends AppCompatActivity  {
    protected ThemeControl mThemeUtils;
    protected Activity mContext;
    public ThemeControl getThemeUtils() {
        return mThemeUtils;
    }
    protected abstract int initLayout();

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        mThemeUtils = new ThemeControl(this);
        // 设置当前主题
        setTheme(mThemeUtils.getTheme(this));
            super.onCreate(savedInstanceState);
          //  setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        // setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);


                if(initLayout()>0){
                        setContentView(initLayout());
                }
                mContext = this;



        }




    @Override
    protected void onResume() {
        super.onResume();
        if (mThemeUtils.isChanged()) {
            reload();
        }
    }




    /**
     * 重启Activity，重新执行一次Activity的生命周期
     */
    public void reload() {
        Intent intent = getIntent();
        overridePendingTransition(0,android.R.anim.slide_in_left);
        intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
        overridePendingTransition(android.R.anim.slide_out_right,0);
        finish();

        startActivity(intent);

//      recreate();
    }

    @Override
    protected void onPause() {
        Runtime.getRuntime().gc();
        super.onPause();
    }


}