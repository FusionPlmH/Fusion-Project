package com.salt.config.ui;


import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.icu.util.Calendar;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.salt.config.R;
import com.salt.config.adapter.RecyclerItemDecoration;
import com.salt.config.adapter.RecyclerViewAdapter;
import com.salt.config.adapter.RecyclerViewGridAdapter;
import com.salt.config.bean.DataBean;
import com.salt.config.tweaks.activity.user.UserManageActivity;
import com.salt.config.view.WeatherView;

import com.salt.setting.SaltSetting;
import com.salt.utils.LeoLunar;
import com.salt.widget.AndroidDialog;
import java.util.ArrayList;

import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.frame.LeadFrame.isChineseLanguage;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoCustomString;
import static com.salt.frame.utils.SaltUtils.SaltSettings.getLeoUri;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.HardwareInfo;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.Mail;
import static com.salt.utils.ExtraInfo.getOperator;
import static com.salt.utils.SaltProper.getApksStringInt;

import static com.salt.utils.SaltProper.getLeoBuild;
import static com.salt.utils.startUtils.startActivityIntent;
import static com.salt.utils.startUtils.startQQGroup;
import static com.salt.utils.startUtils.startSub;
import static com.salt.utils.startUtils.startURL;
import static com.salt.utils.utils.APP_UPDATE;
import static com.salt.utils.utils.AndroidInfo;
import static com.salt.utils.utils.AndroidInfoName;
import static com.salt.utils.utils.OTACode;
import static com.salt.utils.utils.PhoneInfo;
import static com.salt.utils.utils.getBusinessPromotion;
import static com.salt.utils.utils.phoneInfo;

import static com.salt.widget.DialogView.GlobaInfo;


public class HomeFragment extends Fragment implements View.OnClickListener{
    private TextView mCarrier;
    private TextView mData;
    public View mRootView;
    private LinearLayoutCompat mInfoView;
    public WeatherView mWeather;
    private LinearLayoutCompat mUserManageView;
    private  updateAPK mupdate;
    private SaltSetting mSaltSetting;
    private RecyclerView homerecyclerview;
    private RecyclerViewAdapter homeViewAdapter;
    private RecyclerView aboutrecyclerview;
    private RecyclerViewGridAdapter aboutViewAdapter;
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        mRootView = inflater.inflate(R.layout.fragment_home, container, false);;
        mSaltSetting=new SaltSetting(getActivity());
        initGridView(mRootView);
        homerecyclerview= (RecyclerView) mRootView.findViewById(R.id.recycler_home );
        aboutrecyclerview= (RecyclerView) mRootView.findViewById(R.id.grid_about);
        loadListData(false,false);
        GridLayout(getActivity());
        mupdate=new updateAPK( mRootView,getActivity());
        mupdate.intView();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(APP_UPDATE);
        getActivity().registerReceiver(mSaltAppsReceiver,intentFilter);

        return mRootView;
    }


    public String GridTextView(String STR){
        return getStringIdentifier(getContext(),STR);
    }

    private void initTextView() {
        mSaltSetting.SettingSalt();
        mInfoView = (LinearLayoutCompat)mRootView.findViewById(R.id.home_info);
        mInfoView.setOnClickListener(this);
        mWeather=(WeatherView)mRootView.findViewById(R.id.home_weather);
        mCarrier = (TextView) mRootView.findViewById(R.id.app_carrier);
        mData = (TextView) mRootView.findViewById(R.id.app_date);
        mData.setText(new LeoLunar(Calendar.getInstance(),getActivity()).getToday(getActivity()));
        if (mSaltSetting.drawercarrier){
            mCarrier.setText(getLeoCustomString(mSaltSetting.DrawerCarrierString));
        } else {
            String Str =getOperator();
            String str3;
            if(mSaltSetting.G5Style){
                str3=Str.replaceAll("4G", "5G" );
            } else {
                str3=Str;
            }
            mCarrier.setText(str3);
        }
        mInfoView.setVisibility(mSaltSetting.HOMEINFO?View.GONE:View.VISIBLE);
    }
    private void UserManageView() {
        mUserManageView = (LinearLayoutCompat)mRootView.findViewById(R.id.userManage);
        mUserManageView.setOnClickListener(this);
    }
    private void initGridView(View v) {
        initTextView();
        UserManageView();

        TextView  AboutTitle = (TextView) v.findViewWithTag("grid_about_tag");AboutTitle.setText(GridTextView("about_title"));

    }

    @Override
    public void onClick(View v) {
        int ids =  v.getId();
        switch (ids) {
            case R.id.home_info:
                ApplicationInfo applicationInfo = null;
                try {
                    applicationInfo = getActivity().getPackageManager().getApplicationInfo("com.sec.android.daemonapp", 0);
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                }
                String appLabel = applicationInfo.loadLabel(getActivity().getPackageManager()).toString();
                Drawable appIcon = applicationInfo.loadIcon(getActivity().getPackageManager());
                GlobaInfo(getActivity(),appLabel,mWeather.Weather(),appIcon);
                break;
            case R.id.userManage:
                startActivityIntent(getActivity(), UserManageActivity.class);
                break;

        }

    }
    private final BroadcastReceiver mSaltAppsReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(APP_UPDATE)) {
                initTextView();
            }
        }
    };


    public String cnName(){
        String str;
        if(isChineseLanguage()){
            str="about_qq";
        }else{
            str="about_telegram";
        }
        return str;
    }public String cnIcon(){
        String str;
        if(isChineseLanguage()){
            str="ic_qq";
        }else{
            str="ic_telegram";
        }
        return str;
    }
    ArrayList<DataBean>  SaltGridLayoutList= new ArrayList<>();
    @SuppressLint("WrongConstant")
    public void GridLayout(Context context){
        Drawable[] Icon = {getCustomDrawable(getActivity(),"ic_sina"),
                getCustomDrawable(getActivity(),"ic_email"),
                getCustomDrawable(getActivity(),cnIcon()),
                getCustomDrawable(getActivity(),"ic_web")
        };

        String[] itemName = { getStringIdentifier(getContext(),"about_sina"),
                getStringIdentifier(getContext(),"about_service"),
                getStringIdentifier(getContext(),cnName()),
                getStringIdentifier(getContext(),"FusionLeo_Group")
        };
        DataBean dataBean = new DataBean(Icon[0],
                itemName[0]
        );
        SaltGridLayoutList.add(dataBean);
        DataBean dataBean2 = new DataBean(Icon[1],
                itemName[1]
        );
        SaltGridLayoutList.add(dataBean2);
        DataBean dataBean3 = new DataBean(Icon[2],
                itemName[2]);
        SaltGridLayoutList.add(dataBean3);
        DataBean dataBean4 = new DataBean(Icon[3],
                itemName[3]);
        SaltGridLayoutList.add(dataBean4);
        if(getBusinessPromotion()){
            DataBean dataBean5 = new DataBean(getActivity().getDrawable(R.drawable.ic_taobao),
                    " 精灵丶数码");
            SaltGridLayoutList.add(dataBean5);
        }

        aboutViewAdapter= new RecyclerViewGridAdapter(context,SaltGridLayoutList);
        aboutrecyclerview.setAdapter(aboutViewAdapter);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context,4);
        aboutrecyclerview.setLayoutManager(gridLayoutManager);
        gridLayoutManager.setReverseLayout(false);
        aboutrecyclerview.setNestedScrollingEnabled(false);
        gridLayoutManager.setOrientation(GridLayout.VERTICAL);
        aboutViewAdapter.setRecyclerItemClickListener((Position, dataBeanList) -> {
            GridViewItemOnClick(Position);
        });
    }
    private void GridViewItemOnClick  (int position) {
            switch (position) {
                case 0:// 关机
                    //startWebViewIntent(getActivity(),"https://weibo.com/leorom",null);
                    startURL(getActivity(),"https://weibo.com/leorom",null);
                    break;
                case 1:// 关机
                    startSub(getActivity(),Mail);
                    break;
                case 2:// 关机
                    if(isChineseLanguage()){
                        startQQGroup(getActivity());
                    }else{
                        startURL(getActivity(),"https://t.me/joinchat/EJAScg_-vxG8Ppj2HvUifw",null);
                    }
                    break;
                case 3:// 关机

                    startURL(getActivity(),"https://www.leorom.cc/",null);
                    break;
                case 4:// 关机
                    if(getBusinessPromotion()){
                        startURL(getActivity(),"https://xmsj520.taobao.com/?spm=a1z10.1-c.0.0.5917230dwl7UOC",null);
                    }
                    break;
        }
    }

    ArrayList<DataBean>  SaltDataList= new ArrayList<>();
    private void loadListData( boolean inversion,boolean oritation) {
            DataBean dataBean = new DataBean(getCustomDrawable(getActivity(),"ic_android"),getStringIdentifier(getContext(),"android_info"),getStringIdentifier(getContext(),"sumarry_android_info"));
            SaltDataList.add(dataBean);
            DataBean dataBean2 = new DataBean(getCustomDrawable(getActivity(),"ic_phone"),getStringIdentifier(getContext(),"phone_info"),getStringIdentifier(getContext(),"sumarry_phone_info"));
            SaltDataList.add(dataBean2);
            DataBean dataBean3 = new DataBean(getCustomDrawable(getActivity(),"ic_hardware"),getStringIdentifier(getContext(),"device_info"),getStringIdentifier(getContext(),"sumarry_device_info"));
            SaltDataList.add(dataBean3);
            DataBean dataBean4 = new DataBean(getCustomDrawable(getActivity(),"ic_android"),getString(R.string.stock_log),getString(R.string.stock_log_sumarry));
            SaltDataList.add(dataBean4);
        homeViewAdapter = new RecyclerViewAdapter(getActivity(),SaltDataList);
        homerecyclerview.setAdapter(homeViewAdapter);
        homerecyclerview.setNestedScrollingEnabled(false);
        homerecyclerview.addItemDecoration( new  RecyclerItemDecoration(getActivity()));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        homerecyclerview.setLayoutManager(linearLayoutManager);
        linearLayoutManager.setReverseLayout(inversion);
        linearLayoutManager.setOrientation(oritation ?LinearLayoutManager.HORIZONTAL:LinearLayoutManager.VERTICAL);
        homeViewAdapter.setRecyclerItemClickListener((Position, dataBeanList) -> {
            switch (Position) {
                case 0:
                    new AndroidDialog(getActivity(), getApksStringInt("android_info"),AndroidInfoName(),AndroidInfo(getActivity()));
                    break;
                case 1:
                    new AndroidDialog(getActivity(), getApksStringInt("phone_info"),phoneInfo(),PhoneInfo());
                    break;
                case 2:
                    startSub(getActivity(),HardwareInfo);
                    break;
                case 3:
                    String online=OTACode;
                    String carrier=getLeoBuild("ro.boot.carrierid");
                    String product=getLeoBuild("ro.product.model");
                    String str=getLeoBuild("ro.boot.em.model")+"/"+carrier;
                    if(carrier.equals("")){
                        if(online.equals("G977EX")){
                            str=product+"/DBT";
                        }else if(online.equals("GN95Q")){
                            str=product+"/CHC";
                        }else if(online.equals("GN95E")){
                            str=product+"/DBT";
                        }else if(online.equals("GN96Q")){
                            str=product+"/CHC";
                        }else if(online.equals("GN96E")){
                            str=product+"/DBT";
                        }else if(online.equals("G97EX")){
                            str=product+"/DBT";
                        }
                    }
                    startURL(getActivity(),"https://doc.samsungmobile.com/"+str+"/doc.html", getApksStringInt(R.string.stock_log));
                    break;

            }
        });

    }

}