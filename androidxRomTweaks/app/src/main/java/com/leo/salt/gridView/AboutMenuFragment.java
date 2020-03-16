package com.leo.salt.gridView;




import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;

import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.app.Fragment;
import android.support.design.widget.Snackbar;
import android.support.v7.widget.CardView;
import android.telephony.TelephonyManager;
import android.text.BidiFormatter;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.widget.AdapterView;

import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;


import com.leo.SweetAlert.SweetAlertDialog;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.amber.WebViewActivity;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.DownloadUploadView;
import com.leo.salt.tweaks.view.widget.GradientColorTextView;
import com.leo.salt.tweaks.view.widget.LineGridView;
import com.leo.salt.tweaks.view.widget.ListViewAdapter;
import com.leo.salt.tweaks.view.widget.ScrollListView;
import com.leo.salt.user.UserManageActivity;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.base.BaseActivity.UPDATE_UI;
import static com.leo.salt.tweaks.resource.Resource.LeoDownloadPath;
import static com.leo.salt.tweaks.resource.Resource.QQGroup;
import static com.leo.salt.tweaks.resource.Resource.ROMNAME;
import static com.leo.salt.tweaks.resource.Resource.appICON;
import static com.leo.salt.tweaks.resource.Resource.getAndroidSDKVersion;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getApksVersionName;
import static com.leo.salt.tweaks.resource.Resource.getColorAttr;
import static com.leo.salt.tweaks.resource.Resource.getColorInt;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomDrawable;
import static com.leo.salt.tweaks.resource.Resource.getDevice;
import static com.leo.salt.tweaks.resource.Resource.getIpAddress;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.getVersionCode;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.resource.Resource.isChineseMainlandLanguage;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionHome;
import static com.leo.salt.tweaks.view.widget.DialogView.ScienceHttp;
import static com.leo.salt.tweaks.view.widget.DialogView.initInfoView;
import static com.leo.salt.tweaks.view.widget.DialogView.joinQQGroup;
import static com.leo.salt.utils.ExtraInfo.getIMEI;
import static com.leo.salt.utils.ExtraInfo.getKenel;
import static com.leo.salt.utils.ExtraInfo.getMac;
import static com.leo.salt.utils.ExtraInfo.getOperator;
import static com.leo.salt.utils.ExtraInfo.getOperatorType;
import static com.leo.salt.utils.ExtraInfo.getPhoneNumber;
import static com.leo.salt.utils.ExtraInfo.getSecurityPatch;
import static com.leo.salt.utils.ExtraInfo.getStockCarrier;
import static com.leo.salt.utils.ExtraInfo.getTimes;
import static com.leo.salt.utils.ExtraInfo.getbusybox;
import static com.leo.salt.utils.NetUtils.LeoServerAPK;
import static com.leo.salt.utils.NetUtils.isNetworkLeoWebsites;
import static com.leo.salt.utils.NetUtils.isNetworkOTAChinese;
import static com.leo.salt.utils.PrefUtils.isRooted;
import static com.os.salt.OSBuild.SystemUrl.LeoDonateUnlock;
import static com.os.salt.OSBuild.getOneUIVersion;



public class AboutMenuFragment extends Fragment  implements View.OnClickListener {
    private LineGridView mGridView;
    public ScrollListView mListView;
    public Activity mContext;
    private View mView;
    private ImageView mLeoLOGOBG;
    private ImageView mLeoLOGO;
    private CardView mCardView;
    private CardView mUserManageView;
    private CardView mAppsView;
    private ImageView mUserManageImage;
    private String mUpdatesInfo;
    private String mUpdatesVersion;
    private	String APKName="LeoControl.apk";
    private	int  mUpdatesVersionCode;
    private final String downloadUrl= LeoDownloadPath;
    private  initDownloadApks mDownloadApks;
    public TextView mAppInfo;

    private	String APKDialog=getApksStringInt(R.string.app_name);
    public   ApplicationInfo applicationInfo;



    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.about_meun, container, false);
            mContext=getActivity();
          //  mContext.registerReceiver(mBatInfoReceiver, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
            applicationInfo = null;
            try {
                applicationInfo =getContext().getPackageManager().getApplicationInfo(getContext().getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        initValues(mView);
            initGridView(mView);
            mLeoLOGO=mView.findViewWithTag("about_logo");



            mLeoLOGO.setImageDrawable(getCustomDrawable(mContext,"leologo"));
            mLeoLOGOBG=mView.findViewWithTag("about_head");

            mLeoLOGOBG.setImageDrawable(getCustomDrawable(mContext, "about_leo"));
            mCardView=mView.findViewWithTag("about_cardview");
            mCardView.setOnClickListener(this);
            mUserManageView=mView.findViewWithTag("userManage");
            mUserManageView.setOnClickListener(new UserManage());
        mUserManageImage=mView.findViewWithTag("userImage");
        int user;
        if(LeoDonateUnlock()){
            user=R.drawable.nv_user_donate;
        }else {
            user=R.drawable.nv_user;
        }
        mUserManageImage.setImageDrawable(getResources().getDrawable(user));
            PermissionHome(mContext);

        mAppInfo=mView.findViewWithTag("versionCode");
        mAppsView=mView.findViewWithTag("apps_info");
        mDownloadApks= new  initDownloadApks(mContext);
        sendRequestWithHttpURLConnection();
     //   getLinKingView();

        mAppInfo.setText(getApksVersionName(mContext)+"."+getAndroidSDKVersion()+"["+getVersionCode(mContext)+"]");
        return  mView;
    }

    public class initDownloadApks extends DownloadUploadView{
        public Context mContext;
        public initDownloadApks(Context context){
            mContext=context;

        }

        @Override
        protected void initDownloadSuccess(File file) {
            Uri uri = Uri.fromFile(file);
            Intent intent = new Intent(Intent.ACTION_VIEW);
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            intent.setDataAndType(uri, "application/vnd.android.package-archive");
            mContext.startActivity(intent);
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
            return downloadUrl;
        }

        @Override
        protected String initProgressName() {
            return APKDialog;
        }

        @Override
        protected int initDownloadTaskCount() {
            return 5;
        }

        @Override
        protected String initDownloadName() {
            return APKName;
        }
    }




    public class UserManage implements View.OnClickListener{

        @Override
        public void onClick(View v) {
            startActivity(new Intent(mContext, UserManageActivity.class));
        }
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
    public static final int ANIMATION_TIME = 4000;
    private void initValues(View v) {

        ScaleAnimation scaleAnimation = new ScaleAnimation(0,1,0,1);//x轴0倍，x轴1倍，y轴0倍，y轴1倍
       // scaleAnimation.setDuration(1000);
       // v.startAnimation(scaleAnimation);
        //渐变时间
        scaleAnimation.setDuration(ANIMATION_TIME);
        //展示图片渐变动画
        v.findViewById(R.id.about_leo_logo).startAnimation(scaleAnimation);
        //渐变过程监听
        scaleAnimation.setAnimationListener(new Animation.AnimationListener() {

            /**
             * 动画开始时
             */
            @Override
            public void onAnimationStart(Animation animation) {
                // System.out.println("动画开始...");
            }

            /**
             * 重复动画时
             */
            @Override
            public void onAnimationRepeat(Animation animation) {
                //   System.out.println("动画重复...");
            }

            /**
             * 动画结束时
             */
            @Override
            public void onAnimationEnd(Animation animation) {
                //   System.out.println("动画结束...");
            }
        });
    }

    public static String getVersionName(Context context)  {
        // 获取packagemanager的实例
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packInfo = null;
        try {
            packInfo = packageManager.getPackageInfo("com.leo.framework", 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        String version = packInfo.versionName;
        return version;
    }
    public String GridTextView(String STR){

        return getStringIdentifier(getContext(),STR);
    }

    private void initGridView(View v) {
        mGridView = (LineGridView) v.findViewById(R.id.grid_about);
      TextView  AboutTitle = (TextView) v.findViewWithTag("grid_about_tag");AboutTitle.setText(GridTextView("about_title"));
        mGridView.setAdapter(new AppAboutGridViewAdapter(getActivity()));
        mGridView.setOnItemClickListener(new GridViewItemOnClick());
        mListView = (ScrollListView)v.findViewById(R.id.list_about);
        Drawable[] Icon = {
                getCustomDrawable(mContext,"ic_android"),
                getCustomDrawable(mContext,"ic_phone"),
                getCustomDrawable(mContext,"ic_hardware"),
                getCustomDrawable(mContext,"ic_android")

        };

         String[] itemName = {getStringIdentifier(getContext(),"android_info"),
                getStringIdentifier(getContext(),"phone_info"),
                getStringIdentifier(getContext(),"device_info"),
                getString(R.string.stock_log),
                applicationInfo.loadLabel(getContext().getPackageManager()).toString()};

       String[] SumarryitemName = { getStringIdentifier(getContext(),"sumarry_android_info"),
                getStringIdentifier(getContext(),"sumarry_phone_info"),
                getStringIdentifier(getContext(),"sumarry_device_info"),
                getString(R.string.stock_log_sumarry)};
        mListView.setOnItemClickListener(new  ListViewItemOnClick());
        mListView.setAdapter(new  ListViewAdapter(getActivity(),4,itemName,SumarryitemName,Icon));
    }
  String  versions=getStringIdentifier(getContext(),"android_versions");
    String[] AndroidInfoName={"One UI"+versions,
            getStringIdentifier(getContext(),"rom_info"),
            getStringIdentifier(getContext(),"leo_info")+versions,
                    getStringIdentifier(getContext(),"basics_info")+versions,
            "Android"+getStringIdentifier(getContext(),"android_versions"),
            "SDK"+getStringIdentifier(getContext(),"android_versions"),
                    getStringIdentifier(getContext(),"compile_info"),
                            getStringIdentifier(getContext(),"kernel_info")+versions,
                                    getStringIdentifier(getContext(),"baseband_info")+versions,
            "Bootloader"+ versions,
            getContext().getString(R.string.SecurityPatch_summary),
            "Busybox"+getStringIdentifier(getContext(),"android_versions")
            ,
    };
    public static String getBaseband_Ver(){
        String baseband = getLeoBuild("gsm.version.baseband");
        if (baseband.contains(",")){
            String[] baseband_parts = baseband.split(",");
            if (baseband_parts.length > 0 && baseband_parts[0].equals(baseband_parts[1])){
                baseband = baseband_parts[0];
            }
        }
        return baseband;
    }
    public static String getLeoROMdonate() {
        String strvip="ro.leo.os.vip.donate";
        String str="";
        if(getLeoBuild(strvip).equals("true")){
            str=" №."+ getLeoBuild("ro.leo.online.update.version");
        }else if(getLeoBuild(strvip).equals("0")){
            str="";
        }
        return BidiFormatter.getInstance().unicodeWrap(Build.DISPLAY)+str;
    }

    String[] AndroidInfoMessage={getOneUIVersion(getContext()),ROMNAME,
            getVersionName(getContext()),
            getLeoBuild("ro.build.id")+"."+ getLeoBuild("ro.build.PDA"),
            getLeoBuild("ro.build.version.release")+" (Pie)",
            getLeoBuild("ro.build.version.sdk"),
            getLeoROMdonate(),
            getKenel(getContext()),
            getBaseband_Ver(),
            getLeoBuild("ro.boot.bootloader"),
            getSecurityPatch(),
            getbusybox()};

    @Override
    public void onClick(View v) {
        Intent webViewIntent = new Intent(mContext.getApplicationContext(), WebViewActivity.class);
        webViewIntent.putExtra("url", "https://www.leorom.cc");
        mContext.startActivity(webViewIntent);

    }

    public class ListViewItemOnClick implements AdapterView.OnItemClickListener {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:
                    initInfoView(mContext,getStringIdentifier(getContext(),"android_info"), getCustomDrawable(mContext,"ic_android"),AndroidInfoName,AndroidInfoMessage );
                    break;
                case 1:

                   initInfoView(mContext,getStringIdentifier(getContext(),"phone_info"),  getCustomDrawable(mContext,"ic_android"),phoneInfoName,phoneInfoMessage );
                    break;

                case 2:
                    Intent intentWechatHelper =  new Intent(mContext,FragSubActivity.class);
                    intentWechatHelper.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.HardwareInfo);
                    startActivity(intentWechatHelper);
                    break;
                case 3:
                    String str=getLeoBuild("ro.boot.em.model")+"/"+getLeoBuild("ro.boot.carrierid");
                    Intent webViewIntent = new Intent(mContext.getApplicationContext(), WebViewActivity.class);
                    webViewIntent.putExtra("url", "https://doc.samsungmobile.com/" +str+"/doc.html");
                    mContext.startActivity(webViewIntent);
                    break;

            }
        }
    }

    public class GridViewItemOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机

                    Intent webViewIntent = new Intent(mContext.getApplicationContext(), WebViewActivity.class);
                    webViewIntent.putExtra("url", "https://weibo.com/leorom");
                    mContext.startActivity(webViewIntent);
                    break;
                case 1:// 关机
                    Intent intentWechatHelper =  new Intent(mContext,FragSubActivity.class);
                    intentWechatHelper.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.Mail);
                    startActivity(intentWechatHelper);
                    break;
                case 2:// 关机

                    QQGroup(mContext);
                    break;
                case 3:// 关机
                    if(isChineseMainlandLanguage()==true){
                        ScienceHttp(mContext);
                    }else {
                        openUrl("https://t.me/joinchat/EJAScg_-vxG8Ppj2HvUifw");
                    }

                    break;
            }

        }

    }
    public  void openUrl(String url) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
    }
    String[] phoneInfoName={getStringIdentifier(getContext(),"device_info_manufacturers"),
            getStringIdentifier(getContext(),"device_info_model"),
            getStringIdentifier(getContext(),"device_info_serial"),
            "IP",
            "WIFI MAC",
            getStringIdentifier(getContext(),"device_info_carrier"),
            getStringIdentifier(getContext(),"device_info_phonenumber"),
            "IMEI",
            getStringIdentifier(getContext(),"device_info_runtime"),
            getStringIdentifier(getContext(),"android_root"),

    };
    String TOOT=(isRooted() ? "ROOT" : "no");
    String[] phoneInfoMessage={Build.MANUFACTURER,
            getLeoBuild("ro.boot.em.model"),
            getLeoBuild("ril.serialnumber"),
            getIpAddress(true),
            getMac(getContext()),
            getOperator(),
            getPhoneNumber(),
            getIMEI(),
            getTimes(LeoAmberApplication.getContext()),
            TOOT
    };





    public class AppAboutGridViewAdapter extends BaseAdapter {

        private static final int COUNT = 4;
        Drawable[] Icon = {getCustomDrawable(mContext,"ic_sina"),
                getCustomDrawable(mContext,"ic_email"),
                getCustomDrawable(mContext,"ic_qq"),
                getCustomDrawable(mContext,"ic_telegram")

        };
        private String[] itemName = { getStringIdentifier(getContext(),"about_sina"),
                getStringIdentifier(getContext(),"about_service"),
                getStringIdentifier(getContext(),"about_qq"),
                getStringIdentifier(getContext(),"about_telegram")};
        private LayoutInflater inflater;
        public AppAboutGridViewAdapter(Context context){
            inflater = LayoutInflater.from(context);
        }

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
            View view = inflater.inflate(R.layout.grid_item, null);
            ImageView iv = (ImageView) view.findViewById(R.id.grid_item_icon);

            iv.setImageDrawable(Icon[position]);

            TextView name = (TextView) view.findViewById(R.id.grid_item_name);
            name.setText(itemName[position]);
            return view;
        }
    }



    private void UpdatesjQuery(String jsonData) {
        try {
            JSONObject jsonObject=new JSONObject(jsonData);
            mUpdatesVersion= jsonObject.getString("versionName");
            mUpdatesVersionCode= jsonObject.getInt("versionCode");
            String info= jsonObject.getString("Changelog");
            String infoen= jsonObject.getString("Changelog_en");
            if(isChineseLanguage() ){
                mUpdatesInfo=info;
                //string=isNetworkOTAChinese(url);
            }else {
                mUpdatesInfo=infoen;
                //string=urlen;
            }
            String APPINFO;

            if(mUpdatesVersionCode>getVersionCode(mContext)){
                if(Settings.System.getInt(mContext.getContentResolver(), "leo_apks_check_info", 0) == 1){
                    intView();
                }else {
                    mAppsView.setOnClickListener(v -> intView());
                }
                mAppInfo.setTextColor(getColorInt(R.color.lightPink));
                APPINFO=getApksStringInt(R.string.update_ak_update_sunerry);
               // mAppsView.setOnClickListener(v -> intView());
                mAppInfo.setText(APPINFO);
            }else {
                mAppsView.setOnClickListener(v -> {
                    Snackbar snackbar = Snackbar.make(getActivity().findViewById(android.R.id.content),getStringIdentifier(getContext(),"ota_state_info_null"), Snackbar.LENGTH_SHORT);
                    snackbar.getView().setBackgroundColor(getColorAttr(getActivity(),R.attr.colorAccent));
                    snackbar.show();
                });
                mAppsView.setOnLongClickListener(v -> {
                    Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
                    intent.setData(Uri.parse("package:" + getContext().getPackageName()));
                    startActivity(intent);
                    return false;
                });
               // APPINFO=getApksVersionName(mContext)+"."+getAndroidSDKVersion()+"["+getVersionCode(mContext)+"]";
            }

        } catch (JSONException e1) {
            e1.printStackTrace();
        }
    }



    //网路请求
    public void sendRequestWithHttpURLConnection() {
        //开启线程来发起网络请求

        new Thread(() -> {
            HttpURLConnection connection;
            try {
                URL url = new URL("http://os.leorom.cc/json/json_tweaks.json");
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
    private void intView(){
        new SweetAlertDialog(mContext, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
                .setCustomImage(R.drawable.ic_settings_update)
                .setTitleText(getApksStringInt(R.string.update_ak_update))
                .setContentText(getApksStringInt(R.string.app_name)+"\n"+getApksStringInt(R.string.update_ak_update_sunerry)+"( "+mUpdatesVersion+"."+getAndroidSDKVersion()+"["+mUpdatesVersionCode+"] )"+"\n"+mUpdatesInfo)
                .showCancelButton(true)
                .setCancelText(getApksStringInt(android.R.string.cancel))
                .setConfirmText(getApksStringInt(R.string.update_ak))
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                    mDownloadApks.DownloadView(mContext);
                })
                .show();

    }



}