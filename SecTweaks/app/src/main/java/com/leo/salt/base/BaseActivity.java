package com.leo.salt.base;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.view.Window;
import android.view.WindowManager;

import com.leo.salt.R;
import com.leo.salt.theme.ThemeControl;
import com.leo.salt.utils.AndroidUtils;

import java.io.File;

import static com.leo.salt.theme.Utils.StatusBarColor;
import static com.leo.salt.utils.AndroidUtils.getAPPNAME;
import static com.leo.salt.utils.AndroidUtils.getLeoKernel;
import static com.leo.salt.utils.Constants.LeoROMCode;
import static com.leo.salt.utils.Constants.LeoROMName;
import static com.leo.salt.utils.Constants.safety;
import static com.leo.salt.utils.NetUtils.hasNetWork;
import static com.leo.salt.utils.root.Verify.get;


public abstract class BaseActivity extends AppCompatActivity  {
    protected ThemeControl mThemeUtils;
    protected Activity mContext;
    protected Intent mIntent;
    public ThemeControl getThemeUtils() {
        return mThemeUtils;
    }
    protected abstract int initLayout();
    protected abstract boolean initStatusBarColor();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
        if(initStatusBarColor()){
            StatusBarColor(this);
        }


        if (getLeoKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
            mThemeUtils = new ThemeControl(this);
            // 设置当前主题
            setTheme(mThemeUtils.getTheme(this));
            if(initLayout()>0){
                setContentView(initLayout());
            }
            mContext = this;
            if (getAPPNAME().equals("R28K136VAZJ")) {
                createSDCardDir();
            }else if(getAPPNAME().equals("R58J44F6B3D")){
                createSDCardDir();
            }else if(getAPPNAME().equals("RF8J52ELJFR")){
                createSDCardDir();
            }else if(getAPPNAME().equals("R28J51NJ0FD")){
                createSDCardDir();
            }else {
                MyCopyright( );
            }
        }

     }
  public  void MyCopyright( ) {
        if (AndroidUtils.getRomName().equals(LeoROMName)) {//验证ROM Name
            if (AndroidUtils.getCustomSystemVersion().equals(LeoROMCode)) { //验证leo源码版本
                if (AndroidUtils.getCustomOTA().equals(safety)) {//验证是否为捐赠版
                    get(mContext);
                }
                createSDCardDir();
            }else {
                warning();
            }
        }else {
            warning();
        }
    }


    private void  warning(){
        AlertDialog dialog = new AlertDialog.Builder(mContext)
                .setTitle(R.string.warning)//设置对话框的标题
                .setMessage(R.string.warning_summary)//设置对话框的内容
                //设置对话框的按钮
                .setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() {
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

      //  dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }
        public void createSDCardDir(){
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