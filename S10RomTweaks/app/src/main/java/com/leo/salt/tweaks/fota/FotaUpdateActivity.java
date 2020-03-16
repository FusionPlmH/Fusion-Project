package com.leo.salt.tweaks.fota;


import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;

import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.Snackbar;
import android.support.v7.widget.Toolbar;
import android.text.BidiFormatter;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.leo.SweetAlert.SweetAlertDialog;
import com.leo.download.provider.utils.Utils;
import com.leo.salt.tools.constants.BackupRestoreUnit;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.base.BaseActivity;

import com.leo.salt.tweaks.view.widget.ShapeTextView;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;

import static com.leo.salt.tweaks.resource.Resource.*;
import static com.leo.salt.utils.ExtraInfo.*;
import static com.leo.salt.utils.NetUtils.*;
import static com.os.salt.OSBuild.SystemProperties.*;
import static com.os.salt.OSBuild.SystemUrl.LeoDonateUnlock;


public class FotaUpdateActivity extends BaseActivity implements View.OnClickListener{
    private CollapsingToolbarLayout mCollapsingToolbarLayout;
    private ShapeTextView mCheckOnlineUpdate,mFoatPause,mFoatRestart,mFoatCancel,mFoatDownload, mFoatResume;
    private TextView mBuildDisplay,mBuildOnlineUpdate,mBuildSecurityPatch,mFoatUpdateInfo;
    private static TextView mFotaSize ,mFotaStateSize,mFotaCompleteSize;
    private LinearLayout mRecentUpdate,mDownButtonGroup;
    private int ONLINE_UPDATE_VERSION=getLeoSystemInt("ro.leo.online.update.version",0);
    private final static String ONLINE_UPDATE=getLeoSystemPropString("ro.leo.online.update");
    private int FOATVERSION;
    private static FotaProgressBar mFotaBar;
    private String  ChineseChangelog,GlobalChangelog,ChineseWarning,GlobalWarning,ChineseUrl,GlobalUrl,mFotaUrl;
    private FotaService.DownloadBinder mFotaBinder;
    private  RelativeLayout mRelative;
    public static BackupRestoreUnit mRestoreUnit;

    @Override
    protected int initLayout() {
        return R.layout.activity_fota_update;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }
    private ServiceConnection mConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            mFotaBinder = (FotaService.DownloadBinder) service;
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {

        }
    };
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        mCollapsingToolbarLayout=(CollapsingToolbarLayout) findViewById(R.id.toolbar_layout);
        mCollapsingToolbarLayout.setTitle(getApksStringInt("leo_slide_meun_update"));
        initView();
        Intent intent = new Intent(this, FotaService.class);
        bindService(intent, mConnection, BIND_AUTO_CREATE);
        mRestoreUnit = new BackupRestoreUnit(mContext);
    }
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
    }
    public void BackPressed(int mms){
        Handler handler = new Handler();
        handler.postDelayed(() -> onBackPressed(), mms);//3秒后执行Runnable中的run方法
    }
    private void checkNetworkInf() {
        if (hasNetWork(getApplicationContext()) == 0) {
            Snackbar snackbar = Snackbar.make(mContext.findViewById(android.R.id.content),getApksStringInt("ota_network_no"), Snackbar.LENGTH_INDEFINITE).setAction(android.R.string.yes, view -> BackPressed(100));
            snackbar.setActionTextColor(Color.RED);
            snackbar.getView().setBackgroundColor(getColorAttr(mContext,R.attr.colorAccent));
            snackbar.show();
        } else if (hasNetWork(getApplicationContext()) == 1) {
            new SweetAlertDialog(mContext, SweetAlertDialog.WARNING_TYPE,true)

                    .setTitleText("\t\uD83D\uDE40\t\uD83D\uDE40\t\uD83D\uDE40\t\uD83D\uDE40")
                    .setContentText(getApksStringInt("ota_network_mobile"))
                    .setConfirmText(getApksStringInt("ota_network_mobile_yes"))
                    .setCancelText(getApksStringInt("ota_network_mobile_no"))
                    .showCancelButton(true)
                    .setShieldBckKyes(false)
                    .setCancelClickListener(sweetAlertDialog -> {
                        sweetAlertDialog.dismissWithAnimation();
                        startActivity(new Intent().setClassName("com.android.settings","com.android.settings.wifi.WifiSettings"));
                    })
                    .setConfirmClickListener(sDialog -> {
                        sDialog.dismissWithAnimation();
                        showLoadDialog(mContext);
                    })
                    .show();

        }else {
            showLoadDialog(mContext);
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

                FotaDownloadServer();
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
    public final static String FOTADOWNPTH= LeoDownloadPath+"/.fota";
    public final static String FOTANAME=getApksStringInt("ota_package_name")+".zip";
    public  static String FOTSTATIC=FOTADOWNPTH+"/"+FOTANAME;
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
                        mFotaUrl=isNetworkOTAChinese(ChineseUrl);
                    } else if (selectedPosition == 1) {
                        logicFotaDownload();
                        mFotaUrl=isNetworkOTAGlobal(GlobalUrl);
                    }
                    mFotaBinder.startDownload(FOTADOWNPTH,
                            FOTANAME,
                            mFotaUrl,
                            (int) System.currentTimeMillis());
                })
                .setNegativeButton(android.R.string.cancel, (dialog, which) -> dialog.dismiss());
        Dialog dialog = builder.create();
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();

    }

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

    private void OTACheck(String jsonData) {
        try {
            JSONObject jsonObject=new JSONObject(jsonData);
            FOATVERSION= jsonObject.getInt("versionCode");
            ChineseChangelog= jsonObject.getString("CNChangelog");
            GlobalChangelog= jsonObject.getString("ENChangelog");
            boolean pushstate= jsonObject.getBoolean("PushState");
           if(LeoDonateUnlock()){
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
                        if(isChineseLanguage() ){
                            string=ChineseWarning;
                        }else {
                            string=GlobalWarning;
                        }
                        FotaWarningDialog(mContext,string);
                    }else {
                        showSnacknAccent(getApksStringInt(R.string.fota_push_error));
                    }

                }else {
                    showSnacknAccent(getApksStringInt(R.string.fota_checkingfor_update_newest));
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
        new SweetAlertDialog(context,SweetAlertDialog.WARNING_TYPE,true)
                .setTitleText(context.getString(R.string.security_reminder))
                .setContentText(str)
                .setShieldBckKyes(false)
                .setConfirmText(context.getString(android.R.string.ok))
                .showCancelButton(true)
                .setCancelText(getApksStringInt(R.string.fota_later))
                .setCancelClickListener(sweetAlertDialog -> {
                    sweetAlertDialog.dismissWithAnimation();
                    BackPressed(2000);
                })
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();

                        mRecentUpdate.setVisibility(View.VISIBLE);
                        mFoatDownload.setVisibility(View.VISIBLE);


                })
                .show();
    }

    public  static void getFotaStart(long currentSize, long totalSize, float progress) {
        mFotaBar.setProgress((int) progress);
        mFotaSize.setText( Utils.formatSize(totalSize));
        mFotaStateSize.setText(getApksStringInt("download_file_size")+Utils.formatSize(totalSize));
        mFotaCompleteSize.setText(getApksStringInt("download_progress")+Utils.formatSize(currentSize));

    }
    public static void getFotaProgress(long currentSize, long totalSize, float progress) {
        mFotaBar.setProgress((int) progress);
        mFotaSize.setText( Utils.formatSize(totalSize));
        mFotaStateSize.setText(getApksStringInt("download_file_size")+Utils.formatSize(totalSize));
        mFotaCompleteSize.setText(getApksStringInt("download_progress")+Utils.formatSize(currentSize));
    }
    public static void getFotaFinish(File file) {
        try {
            File fil2e = new File(FOTSTATIC);
            if(fil2e.exists()) {
                mRestoreUnit.InstalFotaZIP();
            }
        } catch (Exception e) {
        }

    }
    public static void getFotaError(String error) {

    }


}