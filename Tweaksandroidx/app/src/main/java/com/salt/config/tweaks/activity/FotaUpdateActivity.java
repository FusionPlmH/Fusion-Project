package com.salt.config.tweaks.activity;


import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;

import android.text.BidiFormatter;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;


import androidx.core.content.FileProvider;

import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.snackbar.Snackbar;
import com.salt.base.SaltActivity;
import com.salt.frame.saltview.FotaProgressBar;
import com.salt.frame.saltview.ShapeTextView;
import com.salt.frame.utils.Utils;
import com.salt.module.shell.BackupRestoreUnit;
import com.salt.config.R;
import com.salt.script.DialogHelper;
import com.salt.service.DownloadService;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import static com.salt.frame.LeadFrame.isChineseLanguage;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoInt;
import static com.salt.config.SaltApp.SaltApplication;
import static com.salt.config.tweaks.fragment.AppsSetting.mCheckMovingdataKey;
import static com.salt.config.tweaks.fragment.AppsSetting.mSkipChecksKey;
import static com.salt.utils.ExtraInfo.getSecurityPatch;
import static com.salt.utils.SaltProper.SystemProperties.getLeoSystemInt;
import static com.salt.utils.SaltProper.SystemProperties.getLeoSystemPropString;
import static com.salt.utils.SaltProper.SystemUrl.LeoDonateUnlock;
import static com.salt.utils.SaltProper.fileIsExists;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getColorInt;
import static com.salt.utils.SaltProper.getCustomArray;
import static com.salt.utils.UnzipFileInfo.UnzipFileInfo;
import static com.salt.utils.network.LeoFoatJsonServer;
import static com.salt.utils.network.hasNetWork;
import static com.salt.utils.network.isNetworkOTAChinese;
import static com.salt.utils.network.isNetworkOTAGlobal;
import static com.salt.utils.utils.APP_UPDATE;
import static com.salt.utils.utils.DownloadPath;
import static com.salt.utils.utils.UnzipFilePath;
import static org.salt.preference.colorpicker.Utils.getColorAttr;

public class FotaUpdateActivity extends SaltActivity implements View.OnClickListener{
    private ShapeTextView mCheckOnlineUpdate,mFoatPause,mFoatRestart,mFoatCancel,mFoatDownload, mFoatResume;
    private TextView mBuildDisplay,mBuildOnlineUpdate,mBuildSecurityPatch,mFoatUpdateInfo;
    private static TextView mFotaSize ,mFotaStateSize,mFotaCompleteSize;
    private LinearLayout mRecentUpdate,mDownButtonGroup;
    private int ONLINE_UPDATE_VERSION=getLeoSystemInt("ro.leo.online.update.version",0);
    private final static String ONLINE_UPDATE=getLeoSystemPropString("ro.leo.online.update");
    private int FOATVERSION;
    private static FotaProgressBar mFotaBar;
    private String  ChineseChangelog,GlobalChangelog,ChineseWarning,GlobalWarning,ChineseUrl,GlobalUrl,mFotaUrl;
    private DownloadService.DownloadBinder mFotaBinder;
    private  RelativeLayout mRelative;
     public static Activity mActivity;

    @Override
    protected int initLayout() {
        return R.layout.activity_fota_update;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected String initAppName() {
        return getApksStringInt("leo_slide_meun_update");
    }

    @Override
    protected void initData() {
        initView();
        Intent intent = new Intent(this, DownloadService.class);
        bindService(intent, mConnection, BIND_AUTO_CREATE);
        mActivity=this;
    }

    private ServiceConnection mConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            mFotaBinder = (DownloadService.DownloadBinder) service;
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {

        }
    };

    public void initView(){
        mFotaSize=(TextView)findViewById(R.id.fota_size);
        mBuildDisplay=(TextView)findViewById(R.id.compile_version);
        mBuildDisplay.setText(getApksStringInt("compile_info")+": "+BidiFormatter.getInstance().unicodeWrap(Build.DISPLAY));
        mBuildOnlineUpdate=(TextView)findViewById(R.id.delta_updates);
        mBuildOnlineUpdate.setText(getApksStringInt(R.string.fota_bulking)+":  V"+ONLINE_UPDATE_VERSION+".0"+getApksStringInt("android_versions"));
        mBuildSecurityPatch=(TextView)findViewById(R.id.security_patch);
        mBuildSecurityPatch.setText(getApksStringInt(R.string.SecurityPatch_summary)+": "+getSecurityPatch());
        mCheckOnlineUpdate=(ShapeTextView) findViewById(R.id.online_update_check);
        mCheckOnlineUpdate.setOnClickListener(this);
        mRecentUpdate=(LinearLayout) findViewById(R.id.online_update_log);
        mFoatUpdateInfo=(TextView)findViewById(R.id.online_update_json);
        mDownButtonGroup=(LinearLayout) findViewById(R.id.update_group_down);
        mDownButtonGroup.setVisibility(View.GONE);
        mFoatPause=(ShapeTextView) findViewById(R.id.fota_pause);//暂停
        mFoatPause.setOnClickListener(this);
        mFoatPause.setText(getApksStringInt(R.string.fota_pause));
        mFoatRestart=(ShapeTextView) findViewById(R.id.fota_restart);//重新开始
        mFoatRestart.setOnClickListener(this);
        mFoatRestart.setText(getApksStringInt(R.string.fota_restart));
        mFoatCancel=(ShapeTextView) findViewById(R.id.fota_cancel);//取消
        mFoatCancel.setOnClickListener(this);
        mFoatCancel.setText(getApksStringInt(R.string.fota_cancel));
        mFoatDownload=(ShapeTextView) findViewById(R.id.fota_down);//下载
        mFoatDownload.setOnClickListener(this);
        mFoatDownload.setText(getApksStringInt(R.string.fota_dwon));
        mFoatResume=(ShapeTextView) findViewById(R.id.fota_resume);//继续
        mFoatResume.setOnClickListener(this);
        mFoatResume.setText(getApksStringInt(R.string.fota_resume));
        mFotaBar=(FotaProgressBar) findViewById(R.id.progress_down);//进度条
        mFotaStateSize=(TextView)findViewById(R.id.fota_size_info);
        mFotaCompleteSize=(TextView)findViewById(R.id.fota_complete_size);
        mRelative=(RelativeLayout)findViewById(R.id.fota_progress_string);
        BetterInspection();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(APP_UPDATE);
        mContext.registerReceiver(mSaltAppsReceiver,intentFilter);
    }
    private final BroadcastReceiver mSaltAppsReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(APP_UPDATE)) {
                BetterInspection();
            }
        }
    };
    public void BackPressed(int mms){
        Handler handler = new Handler();
        handler.postDelayed(() -> onBackPressed(), mms);//3秒后执行Runnable中的run方法
    }
    private void BetterInspection(){
        boolean inspect=getLeoInt(mContext,
                mSkipChecksKey, 0)==1;
        if(inspect){
            checkNetworkInf();
        }

    }
    private void checkNetworkInf() {
        boolean mobile=getLeoInt(mContext,
                mCheckMovingdataKey, 0)==1;
        if (hasNetWork(getApplicationContext()) == 0) {
            Snackbar snackbar = Snackbar.make(mContext.findViewById(android.R.id.content),getApksStringInt("ota_network_no"), Snackbar.LENGTH_INDEFINITE).setAction(android.R.string.yes, view -> BackPressed(100));
            snackbar.setActionTextColor(Color.RED);
            snackbar.getView().setBackgroundColor(getColorAttr(mContext,R.attr.colorAccent));
            snackbar.show();
        } else {
            if (hasNetWork(getApplicationContext()) == 1){
                if(mobile){
                    showLoadDialog(mContext);
                }else {
                    showSnackn("当前是移动数据无法进行更新",mContext);
                }
            }else {
                showLoadDialog(mContext);
            }

        }

    }
    @Override
    public void onClick(View v) {
        int id = v.getId();
        doOnlineGroup(id);
    }
    private void logicFotaDownload(){
        mFoatDownload.setVisibility(View.GONE);
        mFoatPause.setVisibility(View.VISIBLE);
        mFoatCancel.setVisibility(View.VISIBLE);
        mFotaBar.setVisibility(View.VISIBLE);
        mRelative.setVisibility(View.VISIBLE);
        mFotaSize.setVisibility(View.VISIBLE);
    }
    private void doOnlineGroup(int id) {
        switch (id) {
            case R.id.online_update_check:
                //检查更新
                checkNetworkInf();
                break;
            case R.id.fota_restart:
           //重新下载
                mRelative.setVisibility(View.VISIBLE);
                mFoatRestart.setVisibility(View.GONE);
                mFoatDownload.setVisibility(View.GONE);
                mFoatPause.setVisibility(View.VISIBLE);
                mFoatCancel.setVisibility(View.VISIBLE);
                mFotaBar.setVisibility(View.VISIBLE);
                mFotaBinder.restartDownload(mFotaUrl);
                mFotaSize.setVisibility(View.VISIBLE);

                break;
            case R.id.fota_down:
                //下载
              //  FotaDownloadServer();
                if(PushPackage){
                    FotaDownloadpackage();
                 }else {
                     FotaDownloadServer();
                 }
                break;
            case R.id.fota_pause:
                //暂停
                mFoatPause.setVisibility(View.GONE);
                mFoatResume.setVisibility(View.VISIBLE);
                mFotaBar.setVisibility(View.VISIBLE);
                mFotaBinder.pauseDownload(mFotaUrl);
                break;
            case R.id.fota_resume:
               //继续
                mFoatResume.setVisibility(View.GONE);
                mFoatPause.setVisibility(View.VISIBLE);
                mFoatCancel.setVisibility(View.VISIBLE);
                mFotaBar.setVisibility(View.VISIBLE);
                mFotaBinder.resumeDownload(mFotaUrl);
                break;
            case R.id.fota_cancel:
                mFoatPause.setVisibility(View.GONE);
                mFoatResume.setVisibility(View.GONE);
                mFoatRestart.setVisibility(View.VISIBLE);
                mFoatDownload.setVisibility(View.GONE);
                mFotaBar.setVisibility(View.GONE);
                mFotaBinder.cancelDownload(mFotaUrl);
                mRelative.setVisibility(View.GONE);
                mFotaSize.setVisibility(View.GONE);

               //取消
                break;
        }
    }
    public final static String FOTADOWNPTH= DownloadPath+".fota";
    public final static String FOTANAME=getApksStringInt("ota_package_name")+".zip";
    public  static String  unzipFotaPath=FOTADOWNPTH+"/"+FOTANAME;//解压路径

    private void FotaDownloadpackage(){
        logicFotaDownload();
        mFotaBinder.startDownload(FOTADOWNPTH,
                FOTANAME,
                mFotaUrl=PushPackageUrl,
                (int) System.currentTimeMillis(),"LeoFota");
    }

    public  static void getFotaStart(long currentSize, long totalSize, float progress) {
        mFotaBar.setProgress((int) progress);
        mFotaSize.setText( Utils.formatSize(totalSize));
        mFotaStateSize.setText(getApksStringInt("download_file_size")+Utils.formatSize(totalSize));
        mFotaCompleteSize.setText(getApksStringInt("download_progress")+Utils.formatSize(currentSize));

    }
    public static void  getFotaFinish(File file) {
        new BackupRestoreUnit(mActivity).InstalFotaZIP();
    }
    public static void getFotaProgress(long currentSize, long totalSize, float progress) {
        mFotaBar.setProgress((int) progress);
        mFotaSize.setText( Utils.formatSize(totalSize));
        mFotaStateSize.setText(getApksStringInt("download_file_size")+Utils.formatSize(totalSize));
        mFotaCompleteSize.setText(getApksStringInt("download_progress")+Utils.formatSize(currentSize));
    }
    private void FotaDownloadServer(){
        AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
        builder.setIcon(R.drawable.ic_settings_update)//设置标题的图片
                .setTitle(getApksStringInt(R.string.fota_url))
                .setSingleChoiceItems(getCustomArray("ota_name"), 0, (dialog, which) -> {
                })
                .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                    int selectedPosition = ((AlertDialog) dialog).getListView().getCheckedItemPosition();
                    if (selectedPosition == 0) {
                        logicFotaDownload();
                        mFotaUrl=ChineseUrl;
                    } else if (selectedPosition == 1) {
                        logicFotaDownload();
                        mFotaUrl=GlobalUrl;
                    }
                    mFotaBinder.startDownload(FOTADOWNPTH,
                            FOTANAME,
                            mFotaUrl,
                            (int) System.currentTimeMillis(),"LeoFota");
                })
                .setNegativeButton(android.R.string.cancel, (dialog, which) -> dialog.dismiss());
        Dialog dialog = builder.create();
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();

    }
    public   Handler  mHandler;
    public  void showLoadDialog(Context a) {
        HttpNetworkRequestTask mHttpURLC= new HttpNetworkRequestTask(mHandler) {
            private ProgressDialog dialog;
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                dialog = new ProgressDialog(a);
                dialog.setMessage(getApksStringInt(R.string.fota_checkingfor_update_info));
                dialog.setCancelable(false);
                dialog.setIndeterminate(true);
                dialog.show();
            }
            @Override
            protected Void doInBackground(Context... params) {
                // Give the user a second to see the dialog
                try {
                    Thread.sleep(1500);
                } catch (InterruptedException e) {
                    // Ignore
                }


                super.doInBackground(params);
                return null;
            }
            @Override
            protected void onPostExecute(Void param) {
                super.onPostExecute(param);
                dialog.dismiss();

                mHandler= new Handler() {
                    @Override
                    public void handleMessage(Message msg) {
                        switch (msg.what) {
                            case UPDATE_UI:
                                String response = (String) msg.obj;
                                OTACheck(response);
                        }
                    }
                };
            }
        };
        mHttpURLC.execute(a);
    }
    public boolean PushPackage;
    public String PushPackageUrl;
    private void OTACheck(String jsonData) {
        try {
            JSONObject jsonObject=new JSONObject(jsonData);
            FOATVERSION= jsonObject.getInt("versionCode");
            ChineseChangelog= jsonObject.getString("CNChangelog");
            GlobalChangelog= jsonObject.getString("ENChangelog");
            boolean pushstate= jsonObject.getBoolean("PushState");
            PushPackage= jsonObject.getBoolean("Push_Package");
           if(LeoDonateUnlock()){
               PushPackageUrl=jsonObject.getString("Complete_Package");
               ChineseUrl= jsonObject.getString("CNurl");
               GlobalUrl= jsonObject.getString("ENurl");
               ChineseWarning= jsonObject.getString("CNwarning");
               GlobalWarning= jsonObject.getString("ENwarning");
           }
            if(pushstate){
                if(FOATVERSION>ONLINE_UPDATE_VERSION){
                    mCheckOnlineUpdate.setVisibility(View.GONE);
                    mBuildOnlineUpdate.setText(getApksStringInt(R.string.fota_bulking_info)+FOATVERSION+".0"+getApksStringInt("android_versions")+getApksStringInt(R.string.fota_use_info));
                    mBuildOnlineUpdate.setTextColor(getColorInt(R.color.pretty));
                    mDownButtonGroup.setVisibility(View.VISIBLE);
                    String string;
                    if(LeoDonateUnlock()){
                        if(PushPackage){

                                string=getApksStringInt(R.string.security_package_all);

                        }else {
                            if(isChineseLanguage() ){
                                string=ChineseWarning;
                            }else {
                                string=GlobalWarning;
                            }
                        }

                        FotaWarningDialog(mContext,string);
                    }else {
                        showSnackn(getApksStringInt(R.string.fota_push_error),mContext);
                    }

                }else {
                    showSnackn(getApksStringInt(R.string.fota_checkingfor_update_newest),mContext);
                }
            }else {
                Snackbar snackbar = Snackbar.make(mContext.findViewById(android.R.id.content),getApksStringInt(R.string.fota_push_newest), Snackbar.LENGTH_INDEFINITE).setAction(android.R.string.yes, view -> BackPressed(100));
                snackbar.setActionTextColor(Color.RED);
                snackbar.getView().setBackgroundColor(getColorAttr(mContext,R.attr.colorAccent));
                snackbar.show();
            }
            String infofaot;
            if(isChineseLanguage() ){
                infofaot=ChineseChangelog;
            }else {
                infofaot=GlobalChangelog;
            }
            mFoatUpdateInfo.setText(infofaot);


        } catch (JSONException e1) {
            e1.printStackTrace();
        }
    }

    //异步线程实现网络请求
    public  class HttpNetworkRequestTask extends AsyncTask<Context, Void, Void> {
        Handler mHandler;
        public HttpNetworkRequestTask(Handler h) {
            super();
            mHandler=h;
        }
        @Override
        protected Void doInBackground(Context... params) {
            new Thread(() -> {
                HttpURLConnection connection;
                try {
                    URL url = new URL(LeoFoatJsonServer(ONLINE_UPDATE));
                    connection = (HttpURLConnection)url  .openConnection();
                    connection.setRequestMethod("GET");
                    connection.setConnectTimeout(1000);
                    connection.setReadTimeout(1000);
                    InputStream inputStream = connection.getInputStream();
                    //下面对获取到的输入流读取
                    BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
                    StringBuilder response = new StringBuilder();
                    String line;
                    while ((line = reader.readLine()) != null) {
                        response.append(line);
                    }
                    Message message = new Message();
                    message.what =UPDATE_UI;
                    //将服务器返回的结果存放到message中
                    message.obj = response.toString();
                    mHandler.sendMessage(message);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }).start();
            return null;
        }
    }
    @Override
    protected void onDestroy() {
        unbindService(mConnection );
        super.onDestroy();
    }
    public  void FotaWarningDialog(Context context,String str){
        DialogHelper.Companion.animDialog(new androidx.appcompat.app.AlertDialog.Builder(context)
                .setTitle(R.string.security_reminder)
                .setMessage(str)
                .setCancelable(false)
               .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                   mRecentUpdate.setVisibility(View.VISIBLE);
                   mFoatDownload.setVisibility(View.VISIBLE);
               })
                .setNegativeButton(getApksStringInt(R.string.fota_later), (dialog, which) -> BackPressed(2000))
        );
    }





}