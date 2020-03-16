package com.salt.config.ui;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.salt.frame.saltview.ListViewAdapter;
import com.salt.frame.saltview.SaltListView;
import com.salt.config.R;
import com.salt.config.adapter.RecyclerItemDecoration;
import com.salt.config.adapter.RecyclerViewAdapter;
import com.salt.config.bean.DataBean;


import java.util.ArrayList;

import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.*;
import static com.salt.config.tweaks.activity.FragTabSubActivity.FragmentType.*;

import static com.salt.utils.SaltProper.appICON;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getCustomArrayDrawable;
import static com.salt.utils.startUtils.startSub;
import static com.salt.utils.startUtils.startTabSub;

public class CustomFragment extends Fragment {
    private SaltListView mPowerMenuGridView;
    public View mRootView;
    private ArrayList<DataBean>  SaltStatusBarList= new ArrayList<>();
    private ArrayList<DataBean>  SaltkeyguardList= new ArrayList<>();
    private ArrayList<DataBean>  SaltDesktopList= new ArrayList<>();
    private RecyclerView recyclerStatusBar,keyguardrecycler,Desktoprecycler;
    private RecyclerViewAdapter recyclerStatusBarViewAdapter,recyclerkeyguardViewAdapter,recyclerDesktopViewAdapter;
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        mRootView = inflater.inflate(R.layout.fragment_tweaks, container, false);
        initPowerMenuView(mRootView);
        recyclerStatusBar = (RecyclerView) mRootView.findViewById(R.id.recycler_status_bar);
        loadStatusBarListData(false,false);
        keyguardrecycler = (RecyclerView) mRootView.findViewById(R.id.recycler_keyguard);
        loadKeyguardListData(false,false);
        Desktoprecycler = (RecyclerView) mRootView.findViewById(R.id.recycler_nav);
        loadDesktopListData(false,false);

        return mRootView;
    }

    private void initPowerMenuView(View v) {
        mPowerMenuGridView = (SaltListView)v.findViewById(R.id.list_power);
        Drawable[] Icon = {getCustomDrawable(getActivity(),"ic_power_setting")};
        String[] itemName = {GridTextView("grid_powermenu_title")};
        String[] itemsummary = {GridTextView("grid_powermenu_title_summary")};
        mPowerMenuGridView.setAdapter(new  ListViewAdapter(getActivity(),1,itemName,itemsummary,Icon));
        mPowerMenuGridView.setOnItemClickListener(new PowerMenuGridViewOnClick());

    }
    public String GridTextView(String STR){
        return getStringIdentifier(getContext(),STR);
    }
    public Drawable Bearer(){
        Drawable Bearer ;
        TelephonyManager tm = (TelephonyManager) getContext().getSystemService(Context.TELEPHONY_SERVICE);
        String operator = tm.getNetworkOperator();
        // 中国联通
        if ("46001".equals(operator) || "46006".equals(operator) || "46009".equals(operator)) {
            Bearer=getCustomDrawable(getActivity(),"ic_unicom_icon");
            // 中国移动
        } else if ("46000".equals(operator) || "46002".equals(operator) || "46004".equals(operator) || "46007".equals(operator)) {
            Bearer=getCustomDrawable(getActivity(),"ic_cmcc_icon");
            // 中国电信
        } else if ("46003".equals(operator) || "46005".equals(operator) || "46011".equals(operator)||"46012".equals(operator) ) {
            Bearer=getCustomDrawable(getActivity(),"ic_telecom_icon");
        } else {
            Bearer=getCustomDrawable(getActivity(),"ic_cmcc_icon");
        }
        return Bearer;
    }


    public class PowerMenuGridViewOnClick implements AdapterView.OnItemClickListener {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机

                    startSub(getActivity(),PowerMenu);
                    break;
            }
        }
    }


    private void loadDesktopListData( boolean inversion,boolean oritation) {
        DataBean dataBean = new DataBean(getCustomDrawable(getActivity(),"ic_storage_setting"),
                getApksStringInt("storage_name"),
                getApksStringInt("storage_info_summary")
        );
        SaltDesktopList.add(dataBean);

        DataBean dataBean3 = new DataBean(getCustomDrawable(getContext(),"ic_home_setting"),
                getApksStringInt("grid_navigation_bar_title"),
                getApksStringInt("grid_navigation_bar_title_summary"));
        SaltDesktopList.add(dataBean3);
        recyclerDesktopViewAdapter = new RecyclerViewAdapter(getActivity(),SaltDesktopList);
        Desktoprecycler.setAdapter(recyclerDesktopViewAdapter);
        Desktoprecycler.setNestedScrollingEnabled(false);
        Desktoprecycler.addItemDecoration( new RecyclerItemDecoration(getActivity()));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        Desktoprecycler.setLayoutManager(linearLayoutManager);
        linearLayoutManager.setReverseLayout(inversion);
        linearLayoutManager.setOrientation(oritation ?LinearLayoutManager.HORIZONTAL:LinearLayoutManager.VERTICAL);
        recyclerDesktopViewAdapter.setRecyclerItemClickListener((Position, dataBeanList) -> {
            switch (Position) {
                case 0:// 关机
                    startSub(getActivity(),TaskStorage);
                    break;
                case 1:// 关机
                    startSub(getActivity(),NavigationBarHOME);
                    break;
            }
        });

    }

    private void loadKeyguardListData( boolean inversion,boolean oritation) {

        DataBean dataBean = new DataBean(getCustomDrawable(getActivity(),"ic_weather_setting"),
                getApksStringInt("widget_name"),
                getApksStringInt("grid_widget_name_summary")
        );
        SaltkeyguardList.add(dataBean);
        DataBean dataBean2 = new DataBean(getCustomDrawable(getActivity(),"ic_alarm_setting"),
                getApksStringInt("grid_keyguard_alarm"),
                getApksStringInt("grid_keyguard_alarm_summary")
        );
        SaltkeyguardList.add(dataBean2);
        DataBean dataBean3 = new DataBean(getCustomDrawable(getActivity(),"ic_lock_png"),
                getApksStringInt("lock_detail"),
                getApksStringInt("grid_lock_detail_summary"));
        SaltkeyguardList.add(dataBean3);

        recyclerkeyguardViewAdapter = new RecyclerViewAdapter(getActivity(),SaltkeyguardList);
        keyguardrecycler.setAdapter(recyclerkeyguardViewAdapter);
        keyguardrecycler.setNestedScrollingEnabled(false);
        keyguardrecycler.addItemDecoration( new RecyclerItemDecoration(getActivity()));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        keyguardrecycler.setLayoutManager(linearLayoutManager);
        linearLayoutManager.setReverseLayout(inversion);
        linearLayoutManager.setOrientation(oritation ?LinearLayoutManager.HORIZONTAL:LinearLayoutManager.VERTICAL);
        recyclerkeyguardViewAdapter.setRecyclerItemClickListener((Position, dataBeanList) -> {
            switch (Position) {
                case 0:// 关机
                    startSub(getActivity(),KeyguardWeather);
                    break;
                case 1:// 关机
                    startSub(getActivity(),KeyguardAlarm);
                    break;
                case 2:// 关机
                    startSub(getActivity(),KeyguardDetail);
                    break;
            }

        });

    }

    private void loadStatusBarListData( boolean inversion,boolean oritation) {
        DataBean dataBean = new DataBean(getCustomDrawable(getActivity(),"ic_clock_setting"),
            getApksStringInt("grid_clock"),
            getApksStringInt("grid_clock_summary"));
        SaltStatusBarList.add(dataBean);
        DataBean dataBean2 = new DataBean(Bearer(),
                getApksStringInt("grid_carrier"),
                getApksStringInt("grid_carrier_summary")
        );
        SaltStatusBarList.add(dataBean2);
        DataBean dataBean3 = new DataBean(getCustomDrawable(getActivity(),"ic_signal_setting"),
                getApksStringInt("grid_signal_logo"),
                getApksStringInt("grid_signal_logo_summary"));
        SaltStatusBarList.add(dataBean3);
        DataBean dataBean4 = new DataBean(getCustomDrawable(getActivity(),"ic_speed_setting"),getApksStringInt("grid_network_speed"),
                getApksStringInt("grid_network_speed_summary"));
        SaltStatusBarList.add(dataBean4);
        DataBean dataBean5 = new DataBean(getCustomDrawable(getActivity(),"ic_temp_setting"),getApksStringInt("grid_temp"),
                getApksStringInt("grid_temp_summary"));
        SaltStatusBarList.add(dataBean5);
        DataBean dataBean6 = new DataBean(getCustomDrawable(getActivity(),"ic_battery_setting"),getApksStringInt("grid_battery"),
                getApksStringInt("grid_battery_summary"));
        SaltStatusBarList.add(dataBean6);
        DataBean dataBean7 = new DataBean(getCustomDrawable(getActivity(),"ic_deviceinfo_setting"),getApksStringInt("grid_info_title"),
                getApksStringInt("grid_info_title_summary"));
        SaltStatusBarList.add(dataBean7);

        DataBean dataBean9 = new DataBean(getCustomDrawable(getActivity(),"ic_qsmodule_setting"),getApksStringInt("grid_datausage_more"),
                getApksStringInt("grid_datausage_more_summary"));
        SaltStatusBarList.add(dataBean9);
        DataBean dataBean10= new DataBean(getCustomDrawable(getActivity(),"ic_picture_setting"),getApksStringInt("grid_status_bar_background"),
                getApksStringInt("grid_status_bar_background_summary"));
        SaltStatusBarList.add(dataBean10);
        recyclerStatusBarViewAdapter = new RecyclerViewAdapter(getActivity(),SaltStatusBarList);
        recyclerStatusBar.setAdapter(recyclerStatusBarViewAdapter);
        recyclerStatusBar.setNestedScrollingEnabled(false);
        recyclerStatusBar.addItemDecoration( new RecyclerItemDecoration(getActivity()));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        recyclerStatusBar.setLayoutManager(linearLayoutManager);
        linearLayoutManager.setReverseLayout(inversion);
        linearLayoutManager.setOrientation(oritation ?LinearLayoutManager.HORIZONTAL:LinearLayoutManager.VERTICAL);
        recyclerStatusBarViewAdapter.setRecyclerItemClickListener((Position, dataBeanList) -> {
            switch (Position) {
                case 0:// 关机
                    startTabSub(getActivity(),ClockTabLayout);
                    break;
                case 1:// 关机
                    startTabSub(getActivity(),CarrierTabLayout);
                    break;
                case 2:// 关机
                    startTabSub(getActivity(),IconTabLayout);
                    break;
                case 3:// 关机
                    startSub(getActivity(), StatusBarNetworkTraffic);
                    break;
                case 4:// 关机
                    startSub(getActivity(), StatusBarTemp);
                    break;
                case 5:// 关机
                    startTabSub(getActivity(),BatteryTabLayout);
                    break;
                case 6:// 关机
                    startSub(getActivity(), PulldownDeviceInfo);
                    break;

                case 7:// 关机
                    startTabSub(getActivity(), PulldownDataUsage);
                    break;
                case 8:// 关机
                    startSub(getActivity(), NotificationFuzzy);
                    break;
            }
        });
    }
}