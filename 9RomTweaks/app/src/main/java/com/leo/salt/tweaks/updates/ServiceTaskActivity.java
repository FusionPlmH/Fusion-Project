package com.leo.salt.tweaks.updates;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.support.design.widget.Snackbar;

import android.os.Bundle;

import android.support.v7.widget.CardView;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.leo.SweetAlert.SweetAlertDialog;
import com.leo.salt.down.utils.Utils;
import com.leo.salt.tools.service.DownloadService;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.amber.WebViewActivity;
import com.leo.salt.tweaks.base.BaseCollapsingToolbarActivity;
import com.leo.salt.tweaks.resource.Resource;

import org.json.JSONException;
import org.json.JSONObject;


import java.io.BufferedReader;

import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

import java.net.URL;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;

import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.OTAUrlView;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomDrawable;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;

import static com.leo.salt.tweaks.resource.Resource.mDonateCode;
import static com.leo.salt.tweaks.view.widget.DialogView.OTApatch;
import static com.leo.salt.tweaks.view.widget.DialogView.SafetyDonateDialogView;
import static com.leo.salt.tweaks.view.widget.DialogView.checkUpdateError;

import static com.leo.salt.utils.NetUtils.getOTAJson;
import static com.leo.salt.utils.NetUtils.hasNetWork;

import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;
import static com.leo.salt.utils.NetUtils.isNetworkOTAGlobal;



public class ServiceTaskActivity extends BaseCollapsingToolbarActivity  implements View.OnClickListener {

    @Override
    protected String initCollapsingTextText() {
        return "leo_slide_meun_update";
    }
    @Override
    protected int initLayout() {
        return R.layout.activity_ota_service;
    }
    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }
    private ServiceConnection mConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            mDownloadBinder = (DownloadService.DownloadBinder) service;
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {

        }
    };
    private DownloadService.DownloadBinder mDownloadBinder;
    public TextView mOSname;
  //  public  TextView mNseText;
    public TextView  mDetailInfo;
    public TextView  mState;
    private  static TextView  mUpdatesProgress;
    private  static ProgressBar mUpdatesBar;
    private View mDownloadLayoutButton;
    private TextView mFabPause,mFabRestart,mFabCancel,mFabDownload, mFabResume;
    private CardView mCardView;
    public static Activity mTaskActivity;
    private final String mQCS9CODE="Qualcomm_S9";
    private final String mESS8N8CODE="Exynos_S8_N8";
    private final String mMODEL="ro.boot.em.model";
    private final String mOTACODE="ro.leo.ota.code";
    private final String mQCS8N8CODE="Qualcomm_S8_N8";
    private final String mESS9CODE="Exynos_S9";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mTaskActivity=this;
        if(DonatePermission()){
            OTACODECHECK();
        }else {
            SafetyDonateDialogView(mContext);
        }
        Intent intent = new Intent(this, DownloadService.class);
        bindService(intent, mConnection, BIND_AUTO_CREATE);
    }
   private void OTACODECHECK(){
       if(getLeoBuild(mMODEL).equals("SM-G9650")){
           if(getLeoBuild(mOTACODE).equals(mQCS9CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G9600")){
           if(getLeoBuild(mOTACODE).equals(mQCS9CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G9608")){
           if(getLeoBuild(mOTACODE).equals(mQCS9CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-N950N")){
           if(getLeoBuild(mOTACODE).equals(mESS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-N950F")){
           if(getLeoBuild(mOTACODE).equals(mESS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-N950FD")){
           if(getLeoBuild(mOTACODE).equals(mESS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G950N")){
           if(getLeoBuild(mOTACODE).equals(mESS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G950F")){
           if(getLeoBuild(mOTACODE).equals(mESS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G950FD")){
           if(getLeoBuild(mOTACODE).equals(mESS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G955N")){
           if(getLeoBuild(mOTACODE).equals(mESS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G955F")){
           if(getLeoBuild(mOTACODE).equals(mESS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G955FD")){
           if(getLeoBuild(mOTACODE).equals(mESS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G9550")){
           if(getLeoBuild(mOTACODE).equals(mQCS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G9500")){
           if(getLeoBuild(mOTACODE).equals(mQCS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G9508")){
           if(getLeoBuild(mOTACODE).equals(mQCS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-N9500")){
           if(getLeoBuild(mOTACODE).equals(mQCS8N8CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-N960N")){
           if(getLeoBuild(mOTACODE).equals(mESS9CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-N960F")){
           if(getLeoBuild(mOTACODE).equals(mESS9CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G960F")){
           if(getLeoBuild(mOTACODE).equals(mESS9CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G960N")){
           if(getLeoBuild(mOTACODE).equals(mESS9CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G965N")){
           if(getLeoBuild(mOTACODE).equals(mESS9CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else if(getLeoBuild(mMODEL).equals("SM-G965F")){
           if(getLeoBuild(mOTACODE).equals(mESS9CODE)){
               checkNetworkInf();
           }else{
               OTApatch(mContext);
           }
       }else {
           checkNetworkInf();
       }
   }
    public void DownloadFab(){
        mDownloadLayoutButton =findViewById(R.id.DownloadLayoutbutton);
        mFabDownload = (TextView) findViewById(R.id.ota_download);
        mFabPause= (TextView) findViewById(R.id.ota_pause);
        mFabRestart= (TextView) findViewById(R.id.ota_restart);
        mFabCancel = (TextView) findViewById(R.id.ota_cancel);
        mFabResume = (TextView) findViewById(R.id.ota_resume);
        mFabDownload.setOnClickListener(this);
        mFabPause.setOnClickListener(this);
        mFabRestart.setOnClickListener(this);
        mFabCancel.setOnClickListener(this);
        mFabDownload.setText(OTATextView("ota_download"));
        mFabPause.setText(OTATextView("ota_pause"));
        mFabRestart.setText(OTATextView("ota_continue"));
        mFabCancel.setText(R.string.ota_cancel);
        mFabResume.setOnClickListener(this);
        mFabResume.setText(R.string.ota_resume);
        mCardView= (CardView) findViewById(R.id.progress_cardview);
    }
    private void checkNetworkInf() {
        if (hasNetWork(getApplicationContext()) == 0) {
            Snackbar snackbar = Snackbar.make(mContext.findViewById(android.R.id.content),OTATextView("ota_network_no"), Snackbar.LENGTH_INDEFINITE).setAction(android.R.string.yes, view -> BackPressed(100));
            snackbar.show();
        } else if (hasNetWork(getApplicationContext()) == 1) {
            AlertDialog dialog = new AlertDialog.Builder(this)
                    .setTitle("\t\uD83D\uDE40\t\uD83D\uDE40\t\uD83D\uDE40\t\uD83D\uDE40")
                    .setMessage(OTATextView("ota_network_mobile"))//设置对话框的内容
                    //设置对话框的按钮
                    .setNeutralButton(OTATextView("ota_network_mobile_no"), (dialog12, which) -> {
                        startActivity(new Intent().setClassName("com.android.settings","com.android.settings.wifi.WifiSettings"));
                        dialog12.dismiss();
                    })
                    .setPositiveButton(OTATextView("ota_network_mobile_yes"), (dialog1, which) -> {
                        checkOTAInfo(true);
                        dialog1.dismiss();
                    }).create();
            dialog.show();
            dialog.setCanceledOnTouchOutside(false);
            dialog.setCancelable(false);
        }else {
            checkOTAInfo(true);
        }
    }




    public void BackPressed(int mms){
        Handler handler = new Handler();
        handler.postDelayed(() -> onBackPressed(), mms);//3秒后执行Runnable中的run方法
    }



    public static String OTAProgressTextView(String STR){

        return getStringIdentifier(getContext(),STR);
    }

    @Override
    protected void onDestroy() {
        unbindService(mConnection );
        super.onDestroy();
    }


    public String OTATextView(String STR){
        return OTAUrlView(STR);
    }
    public TextView mDetailText,ROMINFO;
   public String mROMTitle,mChangelog,mChangelogEN,mROMversion,mDownloadUrl,mDownloadUrlZH,mDetail,mDetailEN;

    public String  url;
    private void DownloadServer(){
        AlertDialog dialog = new AlertDialog.Builder(this)
                .setIcon(R.drawable.ic_ota)//设置标题的图片
                .setTitle("下载站点")
                .setItems(getCustomArray("ota_name"),  (dialog1, which) -> {
                    switch ( which) {
                        case 0:
                            url=isNetworkOTAChinese(mDownloadUrlZH);
                            mFabDownload.setVisibility(View.GONE);
                            mFabPause.setVisibility(View.VISIBLE);
                            mState.setText(OTATextView("ota_state_info_download"));
                            break;
                        case 1://境外下载
                            url=isNetworkOTAGlobal(mDownloadUrl);
                            mFabDownload.setVisibility(View.GONE);
                            mFabPause.setVisibility(View.VISIBLE);
                            mState.setText(OTATextView("ota_state_info_download"));
                            break;
                    }
                    mDownloadBinder.startDownload(OTADownloadPath,
                            OTADOWNLOADNAME,
                            url,
                            (int) System.currentTimeMillis());
                })
                .create();
        dialog.show();
    }

    @Override
    public void onClick(View  view) {
        int id = view.getId();
        switch (id) {
            case R.id.ota_download:
                mFabCancel.setVisibility(View.VISIBLE);
                DownloadServer();
                break;
            case R.id.ota_pause:
                mFabResume.setVisibility(View.VISIBLE);
                mFabPause.setVisibility(View.GONE);
                mState.setText(OTATextView("ota_state_info_pause"));
                mDownloadBinder.pauseDownload(url);
             //   showSnack(OTATextView("ota_state_info_pause"));
                break;
            case R.id.ota_restart:
                mState.setText(OTATextView("ota_state_info_continue"));
                mDownloadBinder.restartDownload(url);
              //  showSnack(OTATextView("ota_state_info_continue"));
                break;
            case R.id.ota_resume:
                mFabPause.setVisibility(View.VISIBLE);
                mFabResume.setVisibility(View.GONE);
                mState.setText(R.string.ota_resume_state);
                mDownloadBinder.resumeDownload(url);
            //    showSnack(getString(R.string.ota_resume_state));
                break;
            case R.id.ota_cancel:
                mFabPause.setVisibility(View.GONE);
                mFabResume.setVisibility(View.GONE);
                mFabDownload.setVisibility(View.VISIBLE);
                mState.setText(OTATextView("ota_state_info_cancel"));
                mDownloadBinder.cancelDownload(url);
             //   showSnack(OTATextView("ota_state_info_cancel"));
                break;
        }

    }



    public  class HttpURLCTask extends AsyncTask<Context, Void, Void> {
      	Handler mHandler;

        public HttpURLCTask(Handler h) {
            super();
            mHandler=h;
        }
        @Override
        protected Void doInBackground(Context... params) {
            new Thread(() -> {
                HttpURLConnection connection;
                try {
                    URL url =  new URL("http://os.leorom.cc/json/"+getOTAJson()+".json");
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
    public  void showLoadDialog(Context a) {
        HttpURLCTask  mHttpURLC= new HttpURLCTask(mHandler) {
            private ProgressDialog dialog;
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                dialog = new ProgressDialog(a);
                dialog.setMessage(getStringIdentifier(a,"load_data"));
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
                 mState = (TextView)findViewById(R.id.ota_state);
                mUpdatesProgress = (TextView)findViewById(R.id.progress);
                mUpdatesBar = (ProgressBar) findViewById(R.id.progress_bar);
                ClipDrawable d = new ClipDrawable(new ColorDrawable(mContext.getColor(R.color.error_stroke_color)), Gravity.LEFT, ClipDrawable.HORIZONTAL);
                mUpdatesBar.setProgressDrawable(d);
                DownloadFab();
                mOSname = (TextView) findViewById(R.id.rom_text);
                //mNseText = (TextView) findViewById(R.id.response_text_info);
                mDetailInfo = (TextView) findViewById(R.id.detail);
               // responseText = (TextView) findViewById(R.id.response_text);
                mDetailText = (TextView) findViewById(R.id.detail_info);
                ROMINFO = (TextView) findViewById(R.id.rom_text_info);
                mDetailInfo.setText(OTATextView("ota_list_push"));
             //   mNseText.setText(OTATextView("ota_list_versions_trait"));
                mOSname.setText(OTATextView("ota_list_versions_info"));
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



    private void checkOTAInfo(boolean z) {
        if (z) {
            showLoadDialog(mContext);
        }
    }

    private void OTACheck(String jsonData) {
        try {
            JSONObject jsonObject=new JSONObject(jsonData);
            mROMversion = jsonObject.getString("versionName");
            String ota_push_state= jsonObject.getString("push_state");
            if(ota_push_state.equals("1")){
                if(getLeoBuild("ro.build.display.id").equals(mROMversion)){
                    checkUpdateError(mContext);
                }else {
                    mDownloadLayoutButton.setVisibility(View.VISIBLE);

                    mROMTitle = jsonObject.getString("title");
                    mChangelog = jsonObject.getString("Changelog");
                    mChangelogEN = jsonObject.getString("Changelog_en");
                    String model= jsonObject.getString("devices_model");
                    mROMversion = jsonObject.getString("versionName");
                    mDownloadUrl = jsonObject.getString("DownloadUrl");
                    mDownloadUrlZH = jsonObject.getString("ZH_DownloadUrl");
                    mDetail = jsonObject.getString("MoreInfo_CN");
                    mDetailEN= jsonObject.getString("MoreInfo_EN");
                    String  Security= jsonObject.getString("Danger_warning");
                    String  SecurityEN= jsonObject.getString("Danger_warning_en");
                    String  SecurityreminderN= jsonObject.getString("SecurityReminder");
                    ROMINFO.setText("Title: "+mROMTitle+"\n"+ "Version: "+ mROMversion+"\n"+"Model: "+model+"\n");
                    mState.setText(OTATextView("ota_state_info_usable"));
                    String Detail;
                    String Securityreminder;
                    String Changelog;
                    if(isChineseLanguage() ){
                        Detail=mDetail;
                        Changelog= mChangelog;
                        Securityreminder=Security;
                    }else {
                        Detail=mDetailEN;
                        Changelog= mChangelogEN;
                        Securityreminder= SecurityEN;
                    }
                    if(SecurityreminderN.equals("1")){
                        importantHintDialog(mContext,Securityreminder,Changelog);
                    }
                    mDetailText.setText(Detail);
                    mDetailText.setOnClickListener(v -> {
                        Intent webViewIntent = new Intent(mContext.getApplicationContext(), WebViewActivity.class);
                        webViewIntent.putExtra("url", Detail);
                        mContext.startActivity(webViewIntent);
                    });
                   // responseText.setText(Changelog+"\n");
                }
            }else  if(ota_push_state.equals("0")) {
                checkUpdateError(mContext);
            }
        } catch (JSONException e1) {
            e1.printStackTrace();
        }
    }
    public  void importantHintDialog(Context context,String info,String Chenglong){
        new SweetAlertDialog(context,SweetAlertDialog.WARNING_TYPE)
                .setTitleText(context.getString(R.string.security_reminder))
                .setContentText(info)
                .setConfirmText(context.getString(android.R.string.ok))
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                    ChenglongDialog(context,Chenglong);
                })
                .show();
    }
    public  void ChenglongDialog(Context context,String info){
        new SweetAlertDialog(context,SweetAlertDialog.NORMAL_TYPE)
                .setTitleText(OTATextView("ota_list_versions_trait"))
                .setContentText(info)
                .setConfirmText(context.getString(android.R.string.ok))
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                    mCardView.setVisibility(View.VISIBLE);
                })
                .show();
    }

    public final static String OTADownloadPath= Environment.getExternalStorageDirectory()+"/LeoTweaks/update/";
    public final static String OTADOWNLOADNAME=OTAProgressTextView("ota_package_name");
    public final static String OTAFinalNAME=OTADownloadPath+"ota.zip";

    public  static PackageInstall mInstallOS;
    public static void  onDownloadStart(long currentSize, long totalSize, float progress){
        mUpdatesBar.setProgress((int) progress);
        mUpdatesProgress.setText(OTAProgressTextView("download_file_size")+ Utils.formatSize(totalSize)+"［"+OTAProgressTextView("download_progress")+progress + "%" + "～" + Utils.formatSize(currentSize)+"］" );
    }
    public static void  onDownloadProgress(long currentSize, long totalSize, float progress){
        mUpdatesBar.setProgress((int) progress);
        mUpdatesProgress.setText(OTAProgressTextView("download_file_size")+Utils.formatSize(totalSize)+"［"+OTAProgressTextView("download_progress")+progress + "%" + "～" + Utils.formatSize(currentSize)+"］" );
    }

    public static void onDownloadFinish(File file){
        file= new File(OTADownloadPath+OTADOWNLOADNAME);
        file.renameTo(new File(OTAFinalNAME));
        mUpdatesProgress.setText(OTAProgressTextView("ota_state_info_ok"));
        mInstallOS=new PackageInstall();
        mInstallOS.ZipInstall(mTaskActivity);
    }

}
