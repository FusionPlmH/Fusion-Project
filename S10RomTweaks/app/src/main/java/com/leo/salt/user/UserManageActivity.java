package com.leo.salt.user;


import android.content.Intent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

import android.provider.Settings;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.leo.SweetAlert.SweetAlertDialog;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.amber.DonateActivity;

import com.leo.salt.tweaks.base.BaseActivity;
import com.leo.salt.tweaks.fota.FotaUpdateActivity;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.user.info.UserNotificationActivity;

import org.json.JSONException;
import org.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.amber.DonateActivity.DonateMoney;
import static com.leo.salt.tweaks.resource.Resource.customization;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getColorInt;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.safety.FirmwareSecurity.getURL;

import static com.os.salt.OSBuild.SystemProperties.getLeoSystemPropString;
import static com.os.salt.OSBuild.SystemUrl.ChineseCSC;
import static com.os.salt.OSBuild.SystemUrl.FloatingFature;
import static com.os.salt.OSBuild.SystemUrl.LeoDonateUnlock;


public class UserManageActivity extends BaseActivity implements View.OnClickListener, SwipeRefreshLayout.OnRefreshListener {
    private CardView mCardView,mTools,mFeedBack,mTranslate;
    private ImageView mToolsView;
    private PermissionUnlock mPermissionUnlock;
    private TextView mVIPversions,mUnlock,mNumber,VIP,monateMoney,mROMversions, mToolsName,mDeviceName,mDeviceModel;
    private String mVIPDonate,Donate,mUnlockStr;
    private LinearLayout mDonateButton,mUnlockButton;

    public void ClickData(){
        mNumber.setText(getLeoSystemPropString("ril.serialnumber"));
        mDonateButton.setOnClickListener(this);
        mUnlockButton.setOnClickListener(this);
        mCardView.setOnClickListener(this);
        mTools.setOnClickListener(this);
        mFeedBack.setOnClickListener(this);
        mTranslate.setOnClickListener(this);
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
                    mCardView.setVisibility(View.VISIBLE);
                    monateMoney.setVisibility(View.GONE);
                    mVIPDonate="YES";
                    if(LeoDonateUnlock()){
                        mDeviceModel.setTextColor(getColorInt(R.color.material_deep_teal_500));
                        mVIPversions.setTextColor(getColorInt(R.color.lightPink));
                        VIP.setTextColor(getColorInt(R.color.violet));
                        mUnlock.setTextColor(getColorInt(R.color.pretty));
                        mUnlockStr="YES";
                        mUnlockButton.setVisibility(View.GONE);
                    }else {
                        mUnlockStr=getString(R.string.permission_no);
                        mUnlockButton.setVisibility(View.VISIBLE);
                    }
                    Donate=customization(mContext);
                    break;
                case 2:
                    mCardView.setVisibility(View.GONE);
                    mUnlockButton.setVisibility(View.GONE);
                    mHandler.sendEmptyMessage(2);
                    mUnlockStr="NO";
                    mDonateButton.setVisibility(View.VISIBLE);
                    Donate=getString(R.string.bases_versions);//有错误
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
            runOnUiThread(() -> {
                if (mSwipeLayout.isRefreshing()) {
                    mSwipeLayout.setRefreshing(false);
                }
            });
          // mSwipeLayout.setRefreshing(false);
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
                startActivity(new Intent(mContext, DonateActivity.class));
                break;
            case R.id.unlock_permission:
                mPermissionUnlock.progressDialogView();
                break;
            case R.id.otaLayout:
                startActivity(new Intent(mContext, FotaUpdateActivity.class));
                break;
            case R.id.tools:
               Intent  intent =  new Intent(mContext, FragSettingActivity.class);
                intent.putExtra(FragSettingActivity.KEY_TYPE, FragSettingActivity.FragmentType.AppSetting);
                mContext.startActivity(intent);
                break;
            case R.id.vip_feedback:
                startActivity(new Intent(mContext, com.leo.salt.feedback.FeedBackChina.class));
                break;
            case R.id.translate_feedback:
                efdsfd(null);
                break;
        }

    }

    private void dfdsfd(){
        String key="translate";
        final int off= Settings.System.getInt(mContext.getContentResolver(), key, 1);
        boolean hapticsDisabled = false;
        if (off==1) {
            hapticsDisabled = true;
        }
        if (hapticsDisabled) {
            efdsfd(key);
        }
    }
    public void  efdsfd(String key){
        new SweetAlertDialog(mContext, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
                .setCustomImage(R.drawable.ic_info_icon)
                .setTitleText(mContext.getString(R.string.translate_all))
                .setContentText(mContext.getString(R.string.translate_all2))
                .setConfirmText(mContext.getString(android.R.string.ok))
                .setCancelText(mContext.getString(android.R.string.cancel))
                .showCancelButton(true)
                .setCancelClickListener(sweetAlertDialog -> sweetAlertDialog.dismissWithAnimation())
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                    Intent intent = new Intent(Intent.ACTION_VIEW);
                    intent.setData(Uri.parse("https://www.leorom.cc/index.php/translate.html"));
                    mContext.startActivity(intent);
                    Settings.System.putInt(mContext.getContentResolver(), key, 0);
                })
                .show();
    }
    private SwipeRefreshLayout mSwipeLayout;
    private void intView(){
        mPermissionUnlock= new  PermissionUnlock(mContext);
        mVIPversions=(TextView)findViewById(R.id.vip_versions);
        mUnlock=(TextView)findViewById(R.id.unlock);
        mNumber=(TextView)findViewById(R.id.device_code);
        VIP=(TextView)findViewById(R.id.donate_vip);
        mDonateButton=(LinearLayout)findViewById(R.id.donate);
        mUnlockButton=(LinearLayout)findViewById(R.id.unlock_permission);
        monateMoney =(TextView)findViewById(R.id.donate_no_info);
        mCardView=(CardView)findViewById(R.id.otaLayout);
        monateMoney.setText( DonateMoney());
        mROMversions=(TextView)findViewById(R.id.os);
        mROMversions.setText(getLeoSystemPropString("ro.build.display.id"));
        mTools=(CardView)findViewById(R.id.tools);
        mTranslate=(CardView)findViewById(R.id.translate_feedback);
        mToolsView=(ImageView)findViewById(R.id.tools_icon);
        mToolsView.setImageDrawable(Resource.getCustomDrawable(mContext,"ic_settings"));
        mToolsName=(TextView)findViewById(R.id.tools_name);
        mToolsName.setText(getStringIdentifier(getContext(),"leo_slide_meun_settings"));
        mDeviceName=(TextView)findViewById(R.id.device_name);
        mDeviceName.setText(  getStringIdentifier(getContext(),"device_info_model"));
        mDeviceModel=(TextView)findViewById(R.id.device_model);
        mDeviceModel.setText(FloatingFature("SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME")+" "+"【 "+getLeoSystemPropString("ro.boot.em.model")+" 】");
        dfdsfd();
        mFeedBack=(CardView)findViewById(R.id.vip_feedback);
        if (LeoDonateUnlock()) {
            if(ChineseCSC()){
                mFeedBack.setVisibility(View.VISIBLE);
            }else {
                mFeedBack.setVisibility(View.GONE);
            }
        } else {
            mFeedBack.setVisibility(View.GONE);
        }

        ClickData();
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        CollapsingToolbarLayout collapsingToolbarLayout=(CollapsingToolbarLayout) findViewById(R.id.toolbar_layout);
        collapsingToolbarLayout.setTitle(getApksStringInt(R.string.nav_tab_tools));
        mSwipeLayout = (SwipeRefreshLayout) findViewById(R.id.swipe_ly);
        mSwipeLayout .setColorSchemeResources(R.color.colorAccentMain,
               R.color.violet, R.color.pretty, R.color.pink);
        mSwipeLayout .setProgressViewEndTarget(true, 150);
        mSwipeLayout .setOnRefreshListener(this);
        intView();
    }
    @Override
    public void onRefresh() {
        getdonateData( );

    }
    @Override
    protected int initLayout() {
        return R.layout.activity_user;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        getdonateData( );
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.inform, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_inform) {
            startActivity(new Intent(mContext, UserNotificationActivity.class));
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}