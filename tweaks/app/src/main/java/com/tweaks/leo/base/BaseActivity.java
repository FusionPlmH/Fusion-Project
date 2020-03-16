package com.tweaks.leo.base;

import android.app.Activity;
import android.app.FragmentManager;
import android.app.ProgressDialog;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Environment;

import android.preference.PreferenceManager;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;

import android.util.Log;
import android.view.View;
import android.widget.Toast;

import java.io.File;


import com.tweaks.leo.R;

import com.tweaks.leo.theme.ThemeControl;


import com.tweaks.leo.utils.AndroidUtils;


import static com.tweaks.leo.utils.AndroidUtils.getCustomDateSystemVersion;



public abstract class BaseActivity extends AppCompatActivity  {
        protected ThemeControl mThemeUtils;

    protected Activity mContext;


        @Override
    protected void onCreate(Bundle savedInstanceState) {


            super.onCreate(savedInstanceState);
          //  setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        // setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);

            mThemeUtils = new ThemeControl(this);
                // 设置当前主题
                setTheme(mThemeUtils.getTheme(this));
                if(initLayout()>0){
                        setContentView(initLayout());
                }
                mContext = this;




         //if (MyCopyright.equals(stringFromJNI())) {
           //   return;
           //}

            MyCopyright( );

        }
    public  void MyCopyright( ) {
        if (getCustomDateSystemVersion().equals("Leo ROM")) {
            if (AndroidUtils.getCustomSystemVersion().equals("v3.0")) {
                deleteFile();
                createSDCardDir();
            }else {
                AlertDialog dialog = new AlertDialog.Builder(mContext)
                        .setTitle(R.string.warning)//设置对话框的标题
                        .setMessage("很抱歉,检测到当前ROM并非"+"Leo ROM"+"或者当前ROM版本不匹配,将无法使用"+mContext.getResources().getString(R.string.app_name))//设置对话框的内容
                        //设置对话框的按钮
                        .setPositiveButton("确定", new DialogInterface.OnClickListener() {

                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                // TODO Auto-generated method stub
                                System.exit(0);
                                finish();
                                dialog.dismiss();
                            }
                        })
                        .create();
                dialog.show();
                //屏幕定格在此对话框
                dialog.setCanceledOnTouchOutside(false);
                //屏蔽返回键
                dialog.setCancelable(false);

                dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            }
        }else {
            AlertDialog dialog = new AlertDialog.Builder(mContext)
                    .setTitle(R.string.warning)//设置对话框的标题
                    .setMessage("很抱歉,检测到当前ROM并非"+"Leo ROM"+"或者当前ROM版本不匹配,讲无法使用"+mContext.getResources().getString(R.string.app_name))//设置对话框的内容
                    //设置对话框的按钮
                    .setPositiveButton("确定", new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            // TODO Auto-generated method stub
                            System.exit(0);
                            finish();
                            dialog.dismiss();
                        }
                    })
                    .create();
            dialog.show();
            //屏幕定格在此对话框
            dialog.setCanceledOnTouchOutside(false);
            //屏蔽返回键
            dialog.setCancelable(false);

            dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        }

    }

    public void deleteFile(){
        File file = new File("/sdcard/grx/");
        if(file.exists()){
            file.delete();
        }
    }


 public ThemeControl getThemeUtils() {
     return mThemeUtils;
 }


        protected abstract int initLayout();



        



        public void createSDCardDir(){
         // if (Version.equals(leoversion())) {
             //  getCopyrightAlertDialog();
           //   return;
          //  }
      //  Copyright ( );
                if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){
                        // 创建一个文件夹对象，赋值为外部存储器的目录
                    // 创建一个文件夹对象，赋值为外部存储器的目录
                    File sdcardDir =Environment.getExternalStorageDirectory();
                    //得到一个路径，内容是sdcard的文件夹路径和名字
                    String path=sdcardDir.getPath()+"/LeoTweaks/Log";
                    File path1 = new File(path);
                        if (!path1.exists()) {
                                //若不存在，创建目录，可以在应用启动的时候创建
                                path1.mkdirs();
                                setTitle("paht ok,path:"+path);
                        }
                }
                else{
                        setTitle("false");
                        return;

                }
            createSDCardDirimg();
        }


    public void createSDCardDirimg(){
        // if (Version.equals(leoversion())) {
        //  getCopyrightAlertDialog();
        //   return;
        //  }
        //  Copyright ( );
        if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){
            // 创建一个文件夹对象，赋值为外部存储器的目录
            // 创建一个文件夹对象，赋值为外部存储器的目录
            File sdcardDir =Environment.getExternalStorageDirectory();
            //得到一个路径，内容是sdcard的文件夹路径和名字
            String path=sdcardDir.getPath()+"/LeoFlashImg";
            File path1 = new File(path);
            if (!path1.exists()) {
                //若不存在，创建目录，可以在应用启动的时候创建
                path1.mkdirs();
                setTitle("paht ok,path:"+path);
            }
        }
        else{
            setTitle("false");
            return;

        }

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
        overridePendingTransition(0, 0);
        intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
        finish();
        overridePendingTransition(0, 0);
        startActivity(intent);

//      recreate();
    }

    @Override
    protected void onPause() {
        Runtime.getRuntime().gc();
        super.onPause();
    }

    @Override
    public void onPointerCaptureChanged(boolean hasCapture) {

    }
}