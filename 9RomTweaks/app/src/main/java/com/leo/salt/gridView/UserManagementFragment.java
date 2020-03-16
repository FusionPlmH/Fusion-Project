package com.leo.salt.gridView;

import android.content.Context;
import android.content.Intent;
import android.app.Fragment;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.leo.salt.feedback.FeedBackChina;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.amber.DonateActivity;
import com.leo.salt.tweaks.amber.PermissionUnlock;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.updates.ServiceTaskActivity;

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
import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.customization;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getProperty;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.Giving_Notice;
import static com.leo.salt.utils.safety.FirmwareSecurity.getURL;


public class UserManagementFragment extends Fragment  implements View.OnClickListener{
    private View mView;
    private CardView mCardView,mTools,mFeedBack;
    private ImageView mToolsView;
    private PermissionUnlock mPermissionUnlock;
    private Context  mContext;
    private TextView mVIPversions,mUnlock,mNumber,VIP,monateMoney,mROMversions, mToolsName,mDeviceName,mDeviceModel;
    private String mVIPDonate,Donate,mUnlockStr;
    private LinearLayout mDonateButton,mUnlockButton;
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.user_management, container, false);
        mContext=getActivity();
        mPermissionUnlock= new  PermissionUnlock(mContext);
        getdonateData( );
        mVIPversions=(TextView)mView.findViewById(R.id.vip_versions);
        mUnlock=(TextView)mView.findViewById(R.id.unlock);
        mNumber=(TextView)mView.findViewById(R.id.device_code);
        VIP=(TextView)mView.findViewById(R.id.donate_vip);
        mDonateButton=(LinearLayout)mView.findViewById(R.id.donate);
        mUnlockButton=(LinearLayout)mView.findViewById(R.id.unlock_permission);
        monateMoney =(TextView)mView.findViewById(R.id.donate_no_info);
        mCardView=(CardView)mView.findViewById(R.id.otaLayout);
        monateMoney.setText( DonateMoney(mContext));
        mROMversions=(TextView)mView.findViewById(R.id.os);
        mROMversions.setText(getProperty("ro.build.display.id"));
        mTools=(CardView)mView.findViewById(R.id.tools);
        mToolsView=(ImageView)mView.findViewById(R.id.tools_icon);
        mToolsView.setImageDrawable(Resource.getCustomDrawable(mContext,"ic_settings"));
        mToolsName=(TextView)mView.findViewById(R.id.tools_name);
        mToolsName.setText(getStringIdentifier(getContext(),"leo_slide_meun_settings"));
        mDeviceName=(TextView)mView.findViewById(R.id.device_name);
        mDeviceName.setText(  getStringIdentifier(getContext(),"device_info_model"));
        mDeviceModel=(TextView)mView.findViewById(R.id.device_model);
        mDeviceModel.setText(getProperty("ro.boot.em.model"));

        mFeedBack=(CardView)mView.findViewById(R.id.vip_feedback);
        if (DonatePermission()) {
            if(isChineseLanguage()){
                mFeedBack.setVisibility(View.VISIBLE);
            }else {
                mFeedBack.setVisibility(View.GONE);
            }
        } else {
            mFeedBack.setVisibility(View.GONE);
        }

        infoData();
        return  mView;
    }
    public void infoData(){
        mNumber.setText(getProperty("ril.serialnumber"));
        mDonateButton.setOnClickListener(this);
        mUnlockButton.setOnClickListener(this);
        mCardView.setOnClickListener(this);
        mTools.setOnClickListener(this);
        mFeedBack.setOnClickListener(this);
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
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
                startActivity(new Intent(mContext, ServiceTaskActivity.class));
                break;
            case R.id.tools:
               Intent  intent =  new Intent(mContext, FragSettingActivity.class);
                intent.putExtra(FragSettingActivity.KEY_TYPE, FragSettingActivity.FragmentType.AppSetting);
                mContext.startActivity(intent);
                break;
            case R.id.vip_feedback:
                startActivity(new Intent(mContext, com.leo.salt.feedback.FeedBackChina.class));
                break;
        }
    }


}