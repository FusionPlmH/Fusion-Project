package com.salt.config.tweaks.activity.user;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import com.salt.module.shell.BackupRestoreUnit;
import com.salt.config.adapter.RecyclerViewGridAdapter;
import com.salt.config.bean.DataBean;
import com.salt.config.tweaks.activity.DonateActivity;
import com.salt.base.SaltActivity;
import com.salt.config.R;
import com.salt.config.tweaks.activity.FotaUpdateActivity;
import com.salt.widget.DownloadUploadView;

import org.json.JSONException;
import org.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import static com.salt.check.FirmwareSecurity.getURL;
import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.frame.LeadFrame.isChineseLanguage;
import static com.salt.config.tweaks.activity.FotaUpdateActivity.FOTADOWNPTH;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.Apps;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.HardwareInfo;
import static com.salt.utils.SaltProper.BuildSecuritycheck;
import static com.salt.utils.SaltProper.Securitycheck;
import static com.salt.utils.SaltProper.SystemProperties.getLeoSystemPropString;
import static com.salt.utils.SaltProper.SystemUrl.FloatingFature;
import static com.salt.utils.SaltProper.SystemUrl.Phonebootloader;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getColorInt;
import static com.salt.utils.SaltProper.getLeoBuild;
import static com.salt.utils.UnzipFileInfo.UnzipFileInfo;
import static com.salt.utils.network.isNetworkOTAChinese;
import static com.salt.utils.network.isNetworkOTAGlobal;
import static com.salt.utils.startUtils.startActivityIntent;
import static com.salt.utils.startUtils.startSub;
import static com.salt.utils.startUtils.startURL;
import static com.salt.utils.startUtils.startWebViewIntent;
import static com.salt.utils.utils.UnzipFilePath;


public class UserManageActivity extends SaltActivity implements View.OnClickListener, SwipeRefreshLayout.OnRefreshListener{
    private TextView mPermission,mPermissionInfo,mDonateInfo,mFotainfo, mUnlock,mSN,mDeviceModel,mDeviceName,mDonateTitle,mDonateSumarry;
    private Drawable mRight,mUnlockDrawable;
    public String DonateInfo,mUnlockInfo;
    private AppCompatImageView appCompatImageView,DonateCompatImageView,Unlock,mDonatehelp,mDonateIcon;
    private int Color;
    private Button mUnlockButton;
    private LinearLayout mDonateLayout;
    private RecyclerView GridLayoutrecyclerview;
    private RecyclerViewGridAdapter recyclerViewGridAdapter;
    ArrayList<DataBean> SaltGridLayoutList= new ArrayList<>();
    @Override
    protected int initLayout() {
        return R.layout.activity_user;
    }
    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected String initAppName() {
        return null;
    }


    @Override
    protected void initData() {
        mCollapsingToolbar= findViewById(R.id.toolbar_layout);
        mCollapsingToolbar.setTitle(getApksStringInt(R.string.nav_tab_tools));
        SwipeLayout(R.id.swipe_layout);
        mSwipeLayout.setOnRefreshListener(this);
        intDisplayView();
        GridLayout(mContext);
    }
    @Override
    public void onRefresh() {
        getServerData();
        Drawable info=getDrawable(R.drawable.ic_help);
        DonateCompatImageView.setImageDrawable(info);
        appCompatImageView.setImageDrawable(info);
        Unlock.setImageDrawable(info);
    }


    @Override
    public void onClick(View v) {
        int id = v.getId();
        switch (id) {
            case R.id.donatelayout:
                startActivityIntent(mContext, DonateActivity.class);
              //  Navigation.findNavController(mContext).navigate(R.id.action_fragmentA_to_fragmentB,null,options);
            break;
            case R.id.donatehelp:
                startWebViewIntent(mContext,"file:///android_asset/html/donate.html",getApksStringInt(R.string.donation_equities));
                break;
        }
    }
    private class onListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            boolean z=Securitycheck==true;
            if(z){
                lislayout(z);
            }
        }
    }
    private void lislayout(boolean z){
        if(z){
            UploadView uploadView= new UploadView(mContext);
            uploadView.progressDialogView();
        }

    }
    private Handler mHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    DonateInfo="YES";
                    mRight=getDrawable(R.drawable.ic_correct);
                    Color=getColorInt(R.color.success_stroke_color);
                    mUnlockButton.setVisibility(BuildSecuritycheck()?View.GONE:View.VISIBLE);
                    if(BuildSecuritycheck()){
                        mUnlockDrawable=mRight;
                        mUnlockInfo=DonateInfo;
                    }else {
                        mUnlockButton.setOnClickListener(new onListener());
                        showSnackn(getApksStringInt(R.string.unlock_button_info),mContext);
                        mUnlockDrawable=getDrawable(R.drawable.ic_error);
                        mUnlockInfo="NO";
                    }
                    break;
                case 2:
                    mUnlockButton.setVisibility(View.GONE);
                    Color=getColorInt(R.color.error_stroke_color);
                    DonateInfo="NO";
                    mRight=getDrawable(R.drawable.ic_error);
                    mUnlockDrawable=mRight;
                    mUnlockInfo=DonateInfo;
                    break;
            }
            Unlock.setImageDrawable(mUnlockDrawable);
            DonateCompatImageView.setImageDrawable(mRight);
            appCompatImageView.setImageDrawable(mRight);
            mFotainfo.setText("["+"V"+getLeoSystemPropString("ro.leo.online.update.version")+"]");
            mFotainfo.setTextColor(Color);
            mDonateInfo.setText(DonateInfo);
            mDonateInfo.setTextColor(Color);
            mUnlock.setText( mUnlockInfo);
            mUnlock.setTextColor(Color);
        }
    };
    private void intDisplayView(){
        mDonateIcon=(AppCompatImageView)findViewById(R.id.donate_icon);
        mDonateIcon.setImageDrawable(getCustomDrawable(mContext,"ic_donate"));
        mDonateLayout=(LinearLayout)findViewById(R.id.donatelayout);
        mDonateLayout.setOnClickListener(this);
        mDonatehelp=(AppCompatImageView)findViewById(R.id.donatehelp);
        mDonatehelp.setOnClickListener(this);
        mDonateTitle=(TextView)findViewById(R.id.donate_name);
        mDonateTitle.setText(getApksStringInt("leo_slide_meun_donate"));
        mDonateSumarry=(TextView)findViewById(R.id.donate_sumarry);
        mDonateSumarry.setText(getApksStringInt("leo_slide_meun_donate_sumarry"));
        Unlock=(AppCompatImageView)findViewById(R.id.unlock_status_icon);
        DonateCompatImageView=(AppCompatImageView)findViewById(R.id.donate_status_icon);
        appCompatImageView=(AppCompatImageView)findViewById(R.id.foat_status_icon);
        mPermission=(TextView)findViewById(R.id.os_state);
        mPermission.setText(getApksStringInt("compile_info"));
        mPermissionInfo=(TextView)findViewById(R.id.os_info);
        mPermissionInfo.setText(getLeoSystemPropString("ro.build.display.id"));
        mFotainfo=(TextView)findViewById(R.id.foat_info);
        mDonateInfo=(TextView)findViewById(R.id.donate_info);
        mUnlock=(TextView)findViewById(R.id.unlock_info);
        mSN=(TextView)findViewById(R.id.sn_info);
        mSN.setText(getLeoSystemPropString("ril.serialnumber"));
        mDeviceName=(TextView)findViewById(R.id.model_state);
        mDeviceName.setText(getApksStringInt("device_info_model"));
        mDeviceModel=(TextView)findViewById(R.id.model_info);
        mDeviceModel.setText(FloatingFature("SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME")+" "+"【 "+getLeoSystemPropString("ro.boot.em.model")+" 】");
        GridLayoutrecyclerview = (RecyclerView)findViewById(R.id.grid_user);
        mUnlockButton=(Button)findViewById(R.id.unlock_button);

    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        getServerData( );
    }
    private void getServerData( ) {
        ExecutorService singleThreadExecutor = Executors.newSingleThreadExecutor();
        singleThreadExecutor.execute(() -> {
            HttpURLConnection conn;
            try {
                URL url = new URL(setURL());
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
    public   String setURL() {

        return getURL();
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

    public void  getJSONObject(String strJson){
        try {
            JSONObject value = new JSONObject(strJson);
            String status = value.getString("status");
            if (status.equals("success")){
                mHandler.sendEmptyMessage(1);
                Securitycheck=true;
            }else {
                mHandler.sendEmptyMessage(2);
                Securitycheck=false;
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




    public void onGridItemClick( int position) {
        switch (position) {
            case 0:// 关机
                startActivityIntent(mContext, FotaUpdateActivity.class);
                break;
            case 1:// 关机
                startSub(mContext,Apps);
                break;

            case 2:// 关机
                String str;
                if(isChineseLanguage()){
                    str="CN.html";
                }else {
                    str="EN.html";
                }

                startURL(mContext,"https://www.leorom.cc/index.php/Changelog-"+str,null);
                break;
        }
    }



    @SuppressLint("WrongConstant")
    public void GridLayout(Context context){
        String[]   items = getResources().getStringArray(R.array.grid_user_items);
        DataBean dataBean = new DataBean(getDrawable(R.drawable.ic_settings_update),
                items[0]
        );
        SaltGridLayoutList.add(dataBean);
        DataBean dataBean2 = new DataBean(getDrawable(R.drawable.ic_settings),
                items[1]
        );
        SaltGridLayoutList.add(dataBean2);
        DataBean dataBean3 = new DataBean(getDrawable(R.drawable.log),
                items[2]);
        SaltGridLayoutList.add(dataBean3);
        recyclerViewGridAdapter = new RecyclerViewGridAdapter(context,SaltGridLayoutList);
        GridLayoutrecyclerview.setAdapter(recyclerViewGridAdapter);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context,3);
        GridLayoutrecyclerview.setLayoutManager(gridLayoutManager);
        gridLayoutManager.setReverseLayout(false);
        GridLayoutrecyclerview.setNestedScrollingEnabled(false);
        gridLayoutManager.setOrientation(GridLayout.VERTICAL);
        recyclerViewGridAdapter.setRecyclerItemClickListener((Position, dataBeanList) -> {
            onGridItemClick(Position);
        });
    }

    public class UploadView extends DownloadUploadView {
        public Context mContext;

        private final String Flai=FOTADOWNPTH;
        private String zipPtath = Flai+"/"+UnlockName;//压缩包路径
        private String  unzipPath = UnzipFilePath+"/.unlockPro";//解压路径
        private String  DialogName = "UnlockProCode";//解压路径
        public UploadView(Context context) {
            mContext=context;
            mRestoreUnit = new BackupRestoreUnit(this.mContext);

        }
        public void  progressDialogView(){
            DownloadView(mContext);
        }
        public static final String UnlockName = "Unlock.zip";

        public BackupRestoreUnit mRestoreUnit;

        @Override
        protected void initDownloadSuccess(File file2) {
            UnzipFileInfo(zipPtath,unzipPath);
            if (Phonebootloader(3).equals("G97")) {
                File file = new File(unzipPath+"/10XUnlockPro.sh");
                if(file.exists()){
                    mRestoreUnit.UnlockProLeo();
                }
            } else{
                File file = new File(unzipPath+"/9XUnlockPro.sh");
                if(file.exists()){
                    mRestoreUnit.UnlockProLeo();
                }
            }
        }

        @Override
        protected String initDownloadUri() {
            String Url;
            if (getLeoBuild("ro.csc.sales_code").equals("CHC")) {
                Url=isNetworkOTAChinese("AQCrng6W");
            } else{
                Url=isNetworkOTAGlobal("UnlockPro");
            }
            return Url;
        }

        @Override
        protected String initDownloadTwiceUri() {
            String Url;
            if (getLeoBuild("ro.csc.sales_code").equals("CHC")) {
                Url=isNetworkOTAGlobal("UnlockPro");
            } else{
                Url=isNetworkOTAChinese("AQCrng6W");
            }
            return Url;
        }

        @Override
        protected String initDownloadpath() {
            return Flai;
        }

        @Override
        protected String initProgressName() {
            return DialogName;
        }

        @Override
        protected int initDownloadTaskCount() {
            return 5;
        }

        @Override
        protected String initDownloadName() {
            return UnlockName;
        }
    }

}