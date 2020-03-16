
package com.leo.fusionleo.kernel.ui;



import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Resources;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.SystemProperties;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.fusionleo.down.utils.Utils;
import com.leo.fusionleo.kernel.R;
import com.leo.fusionleo.kernel.root.DownloadService;
import com.leo.fusionleo.kernel.root.NotificationUtil;
import com.leo.fusionleo.kernel.ui.view.OverScrollListView;
import com.leo.fusionleo.utils.Install;

import org.json.JSONException;
import org.json.JSONObject;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import cn.refactor.lib.colordialog.PromptDialog;


import static com.leo.fusionleo.down.data.Consts.FINISH;
import static com.leo.fusionleo.kernel.root.NetUtils.URLString;
import static com.leo.fusionleo.kernel.root.NetUtils.isChineseLanguage;
import static com.leo.fusionleo.utils.Install.getLeoProperty;

public class KernelActivity extends AppCompatActivity implements View.OnClickListener{
    /**
     * 适配MIUI沉浸状态栏
     */
    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    private void handleMaterialStatusBar() {
        // Not supported in APK level lower than 21
        if (android.os.Build.VERSION.SDK_INT < Build.VERSION_CODES.LOLLIPOP) return;

        Window window = this.getWindow();

        window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);

        window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);

        window.setStatusBarColor(0xff0074d4);

    }
  public   Intent mDownloadintent;
@Override
public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
    mTaskActivity=this;
    setContentView(R.layout.activity_download);
    showLoadDialog(this);
    mDownloadintent = new Intent(this, DownloadService.class);
    bindService(mDownloadintent, mConnection, BIND_AUTO_CREATE);

    handleMaterialStatusBar();

		}
    private OverScrollListView mScrollListView;

    private void initGridView() {
        mScrollListView = (OverScrollListView)findViewById(R.id.listView);
        mScrollListView.setAdapter( new mListAdapter(this));
    }
    public class mListAdapter extends BaseAdapter {
        private LayoutInflater inflater;
        Resources resources = getResources();
        String[] SumarryitemName =
                resources.getStringArray(R.array.modelName);
        public  mListAdapter(Context context){
            inflater = LayoutInflater.from(context);
        }
        private static final int COUNT = 27;
        public int getCount() {
            return COUNT;
        }
        public Object getItem(int position) {
            return null;
        }
        public long getItemId(int position) {
            return position;
        }
        public View getView(int position, View convertView, ViewGroup parent) {
            View view = inflater.inflate(R.layout.model_listview, null);
            TextView Sumarry = (TextView) view.findViewWithTag("model");
            Sumarry.setTextSize(13);
            Sumarry.setText(SumarryitemName[position]);
            return view;
        }
    }
    public View mRelativeLayout;


    @Override
	public boolean onOptionsItemSelected(MenuItem item) {
		/* 获取菜单项的ID */
		int id = item.getItemId();
		switch (id) {
			case android.R.id.home:
				onBackPressed();
				break;

		}
		/* 响应消息 方法回调 */
		return super.onOptionsItemSelected(item);
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
    @Override
   protected void onDestroy() {
      unbindService(mConnection );
        super.onDestroy();
    }
    private DownloadService.DownloadBinder mDownloadBinder;



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
                        URL url =  new URL("http://os.leorom.cc/json/"+mJson+".json");
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
                        message.what =0;
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
        private  String  mJson="kernel";
        public Handler mHandler;
        public  void showLoadDialog(Context a) {
            HttpURLCTask  mHttpURLC= new HttpURLCTask(mHandler) {
                private ProgressDialog dialog;
                @Override
                protected void onPreExecute() {
                    super.onPreExecute();
                    dialog = new ProgressDialog(a);
                    dialog.setMessage(getString(R.string.data_loading));
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
                    initGridView();
                    mKernelName=findViewById(R.id.kernel_name_info);
                    mChangelog=findViewById(R.id.changelog_info);
                    mInfo=findViewById(R.id.detail_info);
                    mRelativeLayout=findViewById(R.id.DownloadLayoutbutton);

                    mUpdatesProgress = (TextView)findViewById(R.id.progress_text);
                    mUpdatesBar = (ProgressBar) findViewById(R.id.progress_bar);
                    ClipDrawable d = new ClipDrawable(new ColorDrawable(mTaskActivity.getColor(R.color.colorAccentMain)), Gravity.LEFT, ClipDrawable.HORIZONTAL);
                    mUpdatesBar.setProgressDrawable(d);
                   // mLoadFailed=findViewById(R.id.Loadfailed);
                    Download();

                    mHandler= new Handler() {
                        @Override
                        public void handleMessage(Message msg) {
                            switch (msg.what) {
                                case 0:
                                    String response = (String) msg.obj;
                                    OTACheck(response);
                            }
                        }
                    };
                }
            };
            mHttpURLC.execute(a);
        }


        public TextView mKernelName,mChangelog,mInfo,mDownload,mPause,mCancel,mRestart,mContinue;
        public String mQualcommS8url,mQualcommS9Url,mQualcommS8JPUrl,mExynosS8,mExynosS9,mQualcommS8Stop,mQualcommS9Stop,mQualcommS8JPStop,mExynosS9Stop,mExynosS8Stop;
        private void OTACheck(String jsonData) {
            try {
                JSONObject jsonObject=new JSONObject(jsonData);
                String	kernelname = jsonObject.getString("title");
                String	Changelog = jsonObject.getString("Changelog");
                String	Changelogen = jsonObject.getString("Changelog_en");
                String	versionName = jsonObject.getString("versionName");
                String	more = jsonObject.getString("MoreInfo_CN");
                String	moreen= jsonObject.getString("MoreInfo_EN");
                mQualcommS8url= jsonObject.getString("QualcommS8");
                mQualcommS9Url= jsonObject.getString("QualcommS9");
                mQualcommS8JPUrl= jsonObject.getString("QualcommS8_JP");
                mExynosS8= jsonObject.getString("ExynosS8");
                mExynosS9= jsonObject.getString("ExynosS9");
                mQualcommS8Stop= jsonObject.getString("QualcommS8_Stop");
                mQualcommS9Stop= jsonObject.getString("QualcommS9_Stop");
                mQualcommS8JPStop= jsonObject.getString("QualcommS8_JP_Stop");
                mExynosS8Stop= jsonObject.getString("ExynosS8_Stop");
                mExynosS9Stop= jsonObject.getString("ExynosS9_Stop");
                mKernelName.setText(kernelname+" "+versionName);
                mRelativeLayout.setVisibility(View.VISIBLE);
           //     mLoadFailed.setVisibility(View.GONE);

                String Changelogstr;
                if(isChineseLanguage() ){
                    Changelogstr= Changelog;
                }else {
                    Changelogstr=Changelogen;
                }
                String info;
                if(isChineseLanguage() ){
                    info=more;
                }else {
                    info=moreen;
                }
                mChangelog.setText(Changelogstr);
                mInfo.setText(info);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

    public void Download(){
        mDownload=findViewById(R.id.Download);
        mDownload.setOnClickListener(this);
        mPause=findViewById(R.id.Pause);
        mPause.setOnClickListener(this);
        mCancel=findViewById(R.id.Cancel);
        mCancel.setOnClickListener(this);
        mRestart=findViewById(R.id.Restart);
        mRestart.setOnClickListener(this);
        mContinue=findViewById(R.id.resume);
        mContinue.setOnClickListener(this);
    }
    public String  url;
    @Override
    public void onClick(View view) {
        int id = view.getId();

        switch (id) {
            case R.id.Download:
                DownloadServer();
                mDownload.setVisibility(View.GONE);
                mPause.setVisibility(View.VISIBLE);
                break;
            case R.id.Pause:
                mDownloadBinder.pauseDownload(url);
                mPause.setVisibility(View.GONE);
                mContinue.setVisibility(View.VISIBLE);
                break;
            case R.id.resume:
                mDownloadBinder.resumeDownload(url);
                mPause.setVisibility(View.VISIBLE);
                mContinue.setVisibility(View.GONE);
                break;
            case R.id.Restart:
                mDownloadBinder.restartDownload(url);
                break;
            case R.id.Cancel:
                mUpdatesProgress.setVisibility(View.GONE);
                mDownloadBinder.cancelDownload(url);
                mPause.setVisibility(View.GONE);
                mContinue.setVisibility(View.GONE);
                mDownload.setVisibility(View.VISIBLE);

                break;
        }
    }
    public final static String DownloadPath= Environment.getExternalStorageDirectory()+"/LeoTweaks/FusionLeo/";
    public final static String DOWNLOADNAME="boot.zip";
    private void  DownloadServer(){
        if (SystemProperties.get("ro.boot.em.model").equals("SM-G9500")){
            DownloadQualcommS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G9550")){
            DownloadQualcommS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G9508")){
            DownloadQualcommS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-N9500")){
            DownloadQualcommS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G9650")){
            DownloadQualcommS9();
        }else if ( SystemProperties.get("ro.boot.em.model").equals("SM-G9608")) {
            DownloadQualcommS9();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G9600")){
            DownloadQualcommS9();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G960N")){
            DownloadExynosS9();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G965N")){
            DownloadExynosS9();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G965F")){
            DownloadExynosS9();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G960F")){
            DownloadExynosS9();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G965FD")){
            DownloadExynosS9();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G960FD")){
            DownloadExynosS9();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G950N")){
            DownloadExynosS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G955N")){
            DownloadExynosS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G950F")){
            DownloadExynosS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G955F")){
            DownloadExynosS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G950FD")){
            DownloadExynosS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-G955FD")){
            DownloadExynosS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-N950N")){
            DownloadExynosS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-N950F")){
            DownloadExynosS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SM-N950FD")){
            DownloadExynosS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SCV35")) {
            DownloadQualcommS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SCV36")) {
            DownloadQualcommS8();
        }else if (SystemProperties.get("ro.boot.em.model").equals("SC-02J")) {
            DownloadQualcommS8();
        }else if ( SystemProperties.get("ro.boot.em.model").equals("SC-03J")) {
            DownloadQualcommS8();
        }else if ( SystemProperties.get("ro.boot.em.model").equals("SM-N9508")) {
            DownloadQualcommS8();
        }else{
            NoDevicesDialog();
        }
    }
    String modelyes="yes";
    String modelno="no";
    private void  DownloadExynosS8(){
        if (mExynosS8Stop.equals(modelyes)) {
            WrongDialog();
        }else if (mExynosS8Stop.equals( modelno)) {
            url=URLString(mExynosS8);
        }
        mDownloadBinder.startDownload(DownloadPath,
                DOWNLOADNAME,
                url,
                (int) System.currentTimeMillis());
    }
    private void  DownloadExynosS9(){
        if (mExynosS9Stop.equals(modelyes)) {
            WrongDialog();
        }else if (mExynosS9Stop.equals( modelno)) {
            url=URLString(mExynosS9);
        }
        mDownloadBinder.startDownload(DownloadPath,
                DOWNLOADNAME,
                url,
                (int) System.currentTimeMillis());
    }
    private void  DownloadQualcommS8(){
        if (mQualcommS8Stop.equals(modelyes)) {
            WrongDialog();
        }else if (mQualcommS8Stop.equals( modelno)) {
            url=URLString(mQualcommS8url);
        }
        mDownloadBinder.startDownload(DownloadPath,
                DOWNLOADNAME,
                url,
                (int) System.currentTimeMillis());
    }
    private void  DownloadQualcommS9(){
        if (mQualcommS9Stop.equals(modelyes)) {
            WrongDialog();
        }else if (mQualcommS9Stop.equals( modelno)) {
            url=URLString(mQualcommS9Url);
        }
        mDownloadBinder.startDownload(DownloadPath,
                DOWNLOADNAME,
                url,
                (int) System.currentTimeMillis());
    }

    public void NoDevicesDialog(){
        new PromptDialog(this)
                .setDialogType(PromptDialog.DIALOG_TYPE_WRONG)
                .setAnimationEnable(true)
                .setTitleText(R.string.sorry)
                .setContentText(R.string.devices_no)
                .setPositiveListener("OK", dialog -> dialog.dismiss()).show();

    }
    public void WrongDialog(){
        new PromptDialog(this)
                .setDialogType(PromptDialog.DIALOG_TYPE_WRONG)
                .setAnimationEnable(true)
                .setTitleText(R.string.sorry)
                .setContentText(R.string.download_no)
                .setPositiveListener("OK", dialog -> dialog.dismiss()).show();

    }
    public void reminderDialog(){
        new PromptDialog(this)
                .setDialogType(PromptDialog.DIALOG_TYPE_INFO)
                .setAnimationEnable(true)
                .setContentText(R.string.reminder)
                .setPositiveListener("OK", dialog -> dialog.dismiss()).show();

    }
    public static Activity mTaskActivity;
    public void StrUrl(String sul){
        mDownloadBinder.startDownload(DownloadPath,
                DOWNLOADNAME,
                sul,
                (int) System.currentTimeMillis());
    }
    public void onHelp(View view) {
        reminderDialog();
    }
   public static  Install mInstal;
    public static void onDownloadFinish(File files,int notifyId){
        mInstal=new Install();

        mUpdatesProgress.setVisibility(View.GONE);
        mInstal.sudoBzImageInstall(mTaskActivity);
    }
    public void performBack(View view) {
        super.onBackPressed();
    }
    public static void  onDownloadStart(long currentSize, long totalSize, float progress){
        mUpdatesBar.setProgress((int) progress);

        mUpdatesBar.setVisibility(View.VISIBLE);
        mUpdatesProgress.setVisibility(View.VISIBLE);
        mUpdatesProgress.setText(progress + "%" + "/" + Utils.formatSize(currentSize) );
    }
    public static void  onDownloadProgress(long currentSize, long totalSize, float progress){
        mUpdatesBar.setProgress((int) progress);
        mUpdatesProgress.setVisibility(View.VISIBLE);
        mUpdatesBar.setVisibility(View.VISIBLE);
        mUpdatesProgress.setText(progress + "%" + "/" + Utils.formatSize(currentSize) );
    }
    private  static TextView  mUpdatesProgress;
    private  static ProgressBar mUpdatesBar;
}