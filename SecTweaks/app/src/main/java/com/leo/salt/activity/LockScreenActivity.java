/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.leo.salt.activity;

import android.app.Activity;
import android.content.Intent;
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
import android.os.IBinder;


import com.leo.salt.utils.AndroidUtils;

import static com.leo.salt.utils.Constants.LEO_ACTION_GLOBAL;
import static com.leo.salt.utils.Constants.LEO_ACTION_SERVICE;
import static com.leo.salt.utils.Constants.safety;
import static com.leo.salt.widget.DialogUtil.Promptdonate;

public class LockScreenActivity extends Activity {
    private Context mContext;


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext=this;
        if (AndroidUtils.getCustomOTA().equals(safety)) {
            Intent intent = new Intent();
            intent.setAction(LEO_ACTION_SERVICE);
            intent.putExtra(LEO_ACTION_GLOBAL, "com.hitomileo.action.lock");
            mContext.  sendBroadcast(intent);
            //LeoUserString.LeoAction(mContext,100,null);//动画开始时杀死进程
            android.os.Process.killProcess(android.os.Process.myPid());//结束当前程序的进程
        }else {
            Promptdonate(this);
        }
    }


}