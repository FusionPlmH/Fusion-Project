package com.salt.config.ui;



import android.app.Activity;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;

import android.os.IBinder;
import android.os.Message;

import android.view.View;

import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.appcompat.widget.AppCompatImageView;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.frame.saltview.ShapeTextView;

import com.salt.config.R;
import com.salt.script.KeepShellPublic;
import com.salt.service.DownloadService;
import com.salt.widget.DownloadUploadView;


import org.json.JSONException;
import org.json.JSONObject;
import java.io.BufferedReader;

import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;


import static com.salt.base.SaltActivity.UPDATE_UI;

import static com.salt.frame.LeadFrame.getVersion;
import static com.salt.frame.LeadFrame.getVersionCode;
import static com.salt.frame.LeadFrame.isChineseLanguage;

import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoInt;
import static com.salt.utils.SaltProper.getApksStringInt;


import static com.salt.utils.SaltProper.getLeoBuild;
import static com.salt.utils.network.LeoFoatJsonServer;
import static com.salt.utils.network.LeoServerAPK;
import static com.salt.utils.network.isNetworkOTAChinese;
import static com.salt.utils.utils.DownloadPath;
import static com.salt.widget.DialogView.InstallLeoX;
import static com.salt.widget.DialogView.updateAPPInfo;
import static org.salt.preference.colorpicker.Utils.getColorAttr;


public class updateAPK  extends DownloadUploadView implements View.OnClickListener{
    private View mGrandParentView;
    private Activity mContext;
    private AppCompatImageView mAppCompatImageView;
    private LinearLayout linearLayout;
    private TextView APPversions,UpdatesInfo;
    public updateAPK( View viewGroup,Activity context) {
        this.mContext = context;
        this.mGrandParentView = viewGroup;
        sendRequestWithHttpURLConnection();
    }

    @Override
    public void onClick(View v) {
        int ids =  v.getId();
        switch (ids) {
            case R.id.Checkupdateshelp:
                linearLayout.setVisibility(View.VISIBLE);
                sendRequestWithHttpURLConnection();
                break;
            case R.id.fota_down:
                DownloadView(mContext);
                break;
        }
    }
   public String url=isNetworkOTAChinese("ZB8GBAgJ");
    private ShapeTextView mFoatDownload;
    public void intView(){
        mAppCompatImageView=(AppCompatImageView) mGrandParentView.findViewById(R.id.Checkupdateshelp);//取消
        mAppCompatImageView.setOnClickListener(this);
        linearLayout=(LinearLayout) mGrandParentView.findViewById(R.id.update_info_group);//取消
        linearLayout.setVisibility(View.GONE);
        mFoatDownload=(ShapeTextView)mGrandParentView.findViewById(R.id.fota_down);//下载
        mFoatDownload.setOnClickListener(this);
        mFoatDownload.setVisibility(View.GONE);
        UpdatesInfo=(TextView)mGrandParentView.findViewById(R.id.update_info);//下载
        APPversions=(TextView)mGrandParentView.findViewById(R.id.apps_v);//下载
        APPversions.setText(getVersion(mContext)+"【"+getVersionCode(mContext)+"】");
    }

    public int mUpdatesVersionCode;
    public String mUpdatesVersion, mUpdatesInfo ;
    private void UpdatesjQuery(String jsonData) {
        try {
            JSONObject jsonObject=new JSONObject(jsonData);
            mUpdatesVersion= jsonObject.getString("versionName");
            mUpdatesVersionCode= jsonObject.getInt("versionCode");
            String info= jsonObject.getString("Changelog");
            String infoen= jsonObject.getString("Changelog_en");
            if(isChineseLanguage() ){
                mUpdatesInfo=info;
            }else {
                mUpdatesInfo=infoen;
            }
            UpdatesInfo.setText(mUpdatesInfo);
            String APPINFO;

            if(mUpdatesVersionCode>getVersionCode(mContext)){
                APPversions.setTextColor(getColorAttr(mContext,R.attr.colorAccent));
                APPINFO=getApksStringInt(R.string.update_ak_update_sunerry);

                updateAPPInfo(mContext, getLeoInt(mContext,
                       "leo_apps_info_update", 0));
                APPversions.setText(APPINFO);
                mFoatDownload.setVisibility(View.VISIBLE);
                mAppCompatImageView.setImageDrawable(mContext.getDrawable(R.drawable.ic_download));
            }else {
                APPversions.setText(getVersion(mContext)+"【"+getVersionCode(mContext)+"】");
                mFoatDownload.setVisibility(View.GONE);
                mAppCompatImageView.setImageDrawable(mContext.getDrawable(R.drawable.ic_search));
            }

        } catch (JSONException e1) {
            e1.printStackTrace();
        }
    }
    //网路请求
    public   void sendRequestWithHttpURLConnection() {
        //开启线程来发起网络请求

        new Thread(() -> {
            HttpURLConnection connection;
            try {
                URL url = new URL(LeoFoatJsonServer("tweaks"));
                connection = (HttpURLConnection) url .openConnection();
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
    }

    Handler mHandler= new Handler() {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case UPDATE_UI:
                    String response = (String) msg.obj;
                    UpdatesjQuery(response);
            }
        }
    };

    @Override
    protected void initDownloadSuccess(File file) {
        InstallLeoX(mContext,DownloadPath+"LeoX.apk",1000,getApksStringInt(R.string.start_install)+" "+getApksStringInt(R.string.app_name),"com.salt.config/com.salt.config.SplashActivity");

    }

    @Override
    protected String initDownloadUri() {
        String Url;
        if (getLeoBuild("ro.csc.sales_code").equals("CHC")) {
            Url=isNetworkOTAChinese("ZB8GBAgJ");
        } else{
            Url=LeoServerAPK("app-release");
        }
        return Url;
    }

    @Override
    protected String initDownloadTwiceUri() {
        String Url;
        if (getLeoBuild("ro.csc.sales_code").equals("CHC")) {
            Url=isNetworkOTAChinese("ZB8GBAgJ");
        } else{
            Url=LeoServerAPK("app-release");
        }
        return Url;
    }

    @Override
    protected String initDownloadpath() {
        return DownloadPath;
    }

    @Override
    protected String initProgressName() {
        return "LeoX.apk";
    }

    @Override
    protected int initDownloadTaskCount() {
        return 5;
    }

    @Override
    protected String initDownloadName() {
        return "LeoX.apk";
    }
}