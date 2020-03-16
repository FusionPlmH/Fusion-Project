/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.leo.salt.tweaks.amber;


import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Base64;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.down.DUtil;
import com.leo.salt.down.callback.DownloadCallback;
import com.leo.salt.down.download.DownloadManger;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.AppBarStateChangeListener;
import com.leo.salt.tweaks.base.BaseCollapsingToolbarActivity;
import com.leo.salt.tweaks.resource.Resource;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import static com.leo.salt.tweaks.amber.DonateActivity.DonateMoney;
import static com.leo.salt.tweaks.resource.Resource.customization;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getProperty;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.Giving_Notice;
import static com.leo.salt.utils.safety.FirmwareSecurity.getURL;

public class UserActivity extends AppCompatActivity implements View.OnClickListener {

   private TextView mROMVersions,mVIPversions,mUnlock,mNumber,VIP,monateMoney;
   private String mVIPDonate,Donate,mUnlockStr;
   private LinearLayout mDonateButton,mUnlockButton;
   private ImageView mImageView;
    protected Context mContext;
    @Override
    public void onCreate(Bundle savedInstanceState) {
       // setTheme(R.style.AppTheme_Main_User);
        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        mContext=this;
     //   setContentView(R.layout.activity_user);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        setTitle(getStringIdentifier(mContext,"user_manage_title"));
        getdonateData();
        mROMVersions=(TextView)findViewById(R.id.rom_versions);
        mVIPversions=(TextView)findViewById(R.id.vip_versions);
        mUnlock=(TextView)findViewById(R.id.unlock);
        mNumber=(TextView)findViewById(R.id.device_code);
        VIP=(TextView)findViewById(R.id.donate_vip);
        mDonateButton=(LinearLayout)findViewById(R.id.donate);
        mUnlockButton=(LinearLayout)findViewById(R.id.unlock_permission);
        monateMoney =(TextView)findViewById(R.id.donate_no_info);
        monateMoney.setText( DonateMoney(mContext));
        infoData();
    }

    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    private void handleMaterialStatusBar() {
        // Not supported in APK level lower than 21
        if (android.os.Build.VERSION.SDK_INT < Build.VERSION_CODES.LOLLIPOP) return;
        Window window = this.getWindow();
        window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
        window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
        window.setStatusBarColor(0xff0074d4);

    }
    public void infoData(){
        handleMaterialStatusBar();
        mROMVersions.setText(getLeoBuild("ro.build.display.id"));
        mNumber.setText(getProperty("ril.serialnumber"));
        mDonateButton.setOnClickListener(this);
        mUnlockButton.setOnClickListener(this);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        switch (id) {
            case android.R.id.home:
                onBackPressed();
                break;
        }
        return super.onOptionsItemSelected(item);
    }


    private  String convertInputStreamToString(InputStream is) {
        byte[] byteArray = convertInputStreamToByteArray(is);
        if (byteArray == null)
            return null;
        return new String(byteArray);
    }

    private  byte[] convertInputStreamToByteArray(InputStream is) {
        ByteArrayOutputStream bos = null;
        try {
            int len = -1;
            byte[] buf = new byte[128];
            bos = new ByteArrayOutputStream();
            while ((len = is.read(buf)) != -1) {
                bos.write(buf, 0, len);
            }
            bos.flush();
            return bos.toByteArray();
        } catch (Exception e) {
        } finally {
            try {
                is.close();
                bos.close();
            } catch (IOException e) {
            }
        }
        return null;
    }

    private Handler mHandler = new Handler() {

        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    mDonateButton.setVisibility(View.GONE);
                    monateMoney.setVisibility(View.GONE);
                    mVIPDonate="YES";
                    if(Resource.getDonationData().equals("LeoROM［Donate］")){
                        mUnlockStr="YES";
                        mUnlockButton.setVisibility(View.GONE);
                    }else {
                        mUnlockStr=getString(R.string.permission_no);
                        mUnlockButton.setVisibility(View.VISIBLE);
                    }
                    Donate=customization(mContext);
                    break;
                case 2:
                    mUnlockButton.setVisibility(View.GONE);
                    mHandler.sendEmptyMessage(2);
                    mUnlockStr="NO";
                    mDonateButton.setVisibility(View.VISIBLE);
                    Donate=getString(R.string.bases_versions);
                    mVIPDonate="NO!";
                    monateMoney.setVisibility(View.VISIBLE);
                    break;

            }
            mUnlock.setText(mUnlockStr);
            VIP.setText(Donate);
            mVIPversions.setText(mVIPDonate);
        }
    };
    public void  getJSONObject(String strJson){
        try {
            JSONObject value = new JSONObject(strJson);
            String status = value.getString("status");
            if (status.equals("success")){
                mHandler.sendEmptyMessage(1);

            }else {
                mHandler.sendEmptyMessage(2);
            }

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
    private void getdonateData( ) {
        ExecutorService singleThreadExecutor = Executors.newSingleThreadExecutor();
        singleThreadExecutor.execute(() -> {
            HttpURLConnection conn;
            try {
                URL url = new URL(getURL());
                 conn = (HttpURLConnection) url.openConnection();
                conn.setConnectTimeout(5000);
                conn.setRequestMethod("GET");
                conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
                if (conn.getResponseCode() == HttpURLConnection.HTTP_OK) {
                    InputStream is = conn.getInputStream();
                    String strJson = convertInputStreamToString(is);
                    getJSONObject(strJson);
                    is.close();
                }
            } catch (MalformedURLException e) {
            } catch (IOException e) {
            }
        });
    }
    @Override
    public void onClick(View v) {
        int id = v.getId();
        switch (id) {
            case R.id.donate:
              //  Giving_Notice(ge);

                break;
            case R.id.unlock_permission:
                startActivity(new Intent(mContext, PermissionUnlock.class));
                break;
        }
    }



}