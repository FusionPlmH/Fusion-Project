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
import android.graphics.Point;
import android.graphics.PorterDuff;
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
import android.os.Looper;
import android.os.StatFs;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.app.Fragment;
import android.support.v7.widget.CardView;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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

import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.R;

import com.leo.salt.tweaks.amber.WebViewActivity;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.LineGridView;
import com.leo.salt.tweaks.view.widget.ScrollListView;
import static com.leo.salt.tweaks.resource.Resource.appICON;
import static com.leo.salt.tweaks.resource.Resource.getIpAddress;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
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
import static com.leo.salt.utils.ExtraInfo.getStockCarrier;
import static com.leo.salt.utils.ExtraInfo.getTimes;
import static com.leo.salt.utils.ExtraInfo.getbusybox;
import static com.leo.salt.utils.NetUtils.isNetworkLeoWebsites;
import static com.leo.salt.utils.PrefUtils.isRooted;


public class AboutMenuFragment extends Fragment implements View.OnClickListener {
    private LineGridView mGridView;
    public ScrollListView mListView;
    public Activity mContext;
    private View mView;
    private ImageView mLeoLOGOBG;
    private ImageView mLeoLOGO;
    private CardView mCardView;

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



            mLeoLOGO.setImageDrawable(Resource.getCustomDrawable(mContext,"leologo"));
            mLeoLOGOBG=mView.findViewWithTag("about_head");

            mLeoLOGOBG.setImageDrawable(Resource.getCustomDrawable(mContext, "about_leo"));
            mCardView=mView.findViewWithTag("about_cardview");
            mCardView.setOnClickListener(this);
        PermissionHome(mContext);
        return  mView;
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
        mListView.setOnItemClickListener(new ListViewItemOnClick());
        mListView.setAdapter(new AppAboutListAdapter(getActivity()));
    }
  String  versions=getStringIdentifier(getContext(),"android_versions");
    String[] AndroidInfoName={getStringIdentifier(getContext(),"rom_info"),
            getStringIdentifier(getContext(),"leo_info")+versions,
                    getStringIdentifier(getContext(),"basics_info")+versions,
            "Android"+getStringIdentifier(getContext(),"android_versions"),
            "SDK"+getStringIdentifier(getContext(),"android_versions"),
                    getStringIdentifier(getContext(),"compile_info"),
                            getStringIdentifier(getContext(),"kernel_info")+versions,
                                    getStringIdentifier(getContext(),"baseband_info")+versions,
            "Bootloader"+ versions,
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
    String[] AndroidInfoMessage={getLeoBuild("ro.build.display.id"),
            getVersionName(getContext()),
            getLeoBuild("ro.build.id")+"."+ getLeoBuild("ro.build.PDA"),
            getLeoBuild("ro.build.version.release"),
            getLeoBuild("ro.build.version.sdk"),
            getLeoBuild("ro.build.display.id"),
            getKenel(),
            getBaseband_Ver(),
            getLeoBuild("ro.bootloader"),
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
                    initInfoView(mContext,getStringIdentifier(getContext(),"android_info"), R.drawable.ic_android,AndroidInfoName,AndroidInfoMessage );
                    break;
                case 1:

                   initInfoView(mContext,getStringIdentifier(getContext(),"phone_info"),  R.drawable.ic_phone,phoneInfoName,phoneInfoMessage );
                    break;

                case 2:
                    Intent intentWechatHelper =  new Intent(mContext,FragSubActivity.class);
                    intentWechatHelper.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.HardwareInfo);
                    startActivity(intentWechatHelper);
                    break;
                case 3:
                    Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
                    intent.setData(Uri.parse("package:" + getContext().getPackageName()));
                    startActivity(intent);

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

                    joinQQGroup(mContext,"4zUqpP7ZnFnqswJGwuTDkCbK6zxOZp-5");
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


    public class AppAboutListAdapter extends BaseAdapter {
        public   String getVersionName()
        {
            // 获取packagemanager的实例
            PackageManager packageManager = getContext().getPackageManager();
            // getPackageName()是你当前类的包名，0代表是获取版本信息
            PackageInfo packInfo = null;
            try {
                packInfo = packageManager.getPackageInfo (getContext().getPackageName(),0);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
            String version = packInfo.versionName;
            return version;
        }
        private LayoutInflater inflater;
        int[] Icon = {
                R.drawable.ic_android,
                R.drawable.ic_phone,
                R.drawable.ic_hardware,
                R.mipmap.ic_launcher,

        };

        private String[] itemName = {getStringIdentifier(getContext(),"android_info"),
                getStringIdentifier(getContext(),"phone_info"),
                getStringIdentifier(getContext(),"device_info"),
                 applicationInfo.loadLabel(getContext().getPackageManager()).toString()};

        private String[] SumarryitemName = { getStringIdentifier(getContext(),"sumarry_android_info"),
                getStringIdentifier(getContext(),"sumarry_phone_info"),
                getStringIdentifier(getContext(),"sumarry_device_info"),
                getVersionName()};
        public AppAboutListAdapter(Context context){


            inflater = LayoutInflater.from(context);
        }
        private static final int COUNT = 4;
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
            View view = inflater.inflate(R.layout.about_items, null);
            ImageView iv = (ImageView) view.findViewById(R.id.appIcon);
            int Size=18;
            int Siz2e=14;
            iv.setImageResource(Icon[position]);

            TextView name = (TextView) view.findViewById(R.id.appName);
            name.setText(itemName[position]);
            name.setTextSize(Size);
            TextView Sumarry = (TextView) view.findViewById(R.id.appPackage);
            Sumarry.setTextSize(Siz2e);
            TextView Sumarry2 = (TextView) view.findViewById(R.id.appPath);
            Sumarry2.setVisibility(View.GONE);
            Sumarry.setText(SumarryitemName[position]);
            return view;
        }
    }


    public class AppAboutGridViewAdapter extends BaseAdapter {

        private static final int COUNT = 4;
        Drawable[] Icon = {Resource.getCustomDrawable(mContext,"ic_sina"),
                Resource.getCustomDrawable(mContext,"ic_email"),
                Resource.getCustomDrawable(mContext,"ic_qq"),
                Resource.getCustomDrawable(mContext,"ic_telegram")

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
}