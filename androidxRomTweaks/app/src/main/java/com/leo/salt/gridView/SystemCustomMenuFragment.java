package com.leo.salt.gridView;




import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.app.Fragment;
import android.support.design.widget.Snackbar;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.FragUIActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.LineGridView;
import com.leo.salt.tweaks.view.widget.ListViewAdapter;
import com.leo.salt.tweaks.view.widget.ListViewFruit;
import com.leo.salt.tweaks.view.widget.ScrollListView;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import static com.leo.salt.tweaks.FragSettingActivity.FragmentType.*;
import static com.leo.salt.tweaks.FragSubActivity.FragmentType.*;
import static com.leo.salt.tweaks.FragUIActivity.FragmentType.*;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.appICON;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;

import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getCustomDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.SamsungGoodLock;
import static com.leo.salt.utils.PrefUtils.SettingMenuService;
import static com.leo.salt.utils.PrefUtils.SubMenuService;
import static com.leo.salt.utils.PrefUtils.UIMenuService;


public class SystemCustomMenuFragment extends Fragment  {
    private ScrollListView mStatusBarGridView;
    private ScrollListView mKeyguardGridView;
    public Context mContext;
    private View mView;
    private ScrollListView mPowerMenuGridView;
    private ScrollListView mNavigationBarGridView;
    private ScrollListView mTaskGridView;


    public String GridTextView(String STR){
        return getStringIdentifier(getContext(),STR);
    }
        public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.system_custom_meun, container, false);
            mContext=getActivity();
            initValues(mView);

        return  mView;
    }

    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

    private void initValues(View v) {
        UI(v);
        Keyguard(v);
        initPowerMenuView(v);
        initNavigationBarView(v);

        mTaskGridView= (ScrollListView)v.findViewById(R.id.list_task);
        Drawable[] Icon = {
                getCustomDrawable(mContext,"ic_storage"),
                getCustomDrawable(mContext,"ic_picture"),
        };
      String[] itemName = {
                GridTextView("storage_name"),
                GridTextView("grid_system_task_bg_title")
        };
        mTaskGridView.setAdapter(new  ListViewAdapter(getActivity(),2,itemName,getCustomArray("task_summary"),Icon));
        mTaskGridView.setOnItemClickListener(new TaskGridViewOnClick());
    }
    private void initNavigationBarView(View v) {
        mNavigationBarGridView= (ScrollListView)v.findViewById(R.id.list_nav);
        Drawable[] Icon = {
                getCustomArrayDrawable("android","menu_ic_assistant_menu"),
                getCustomDrawable(mContext,"ic_picture"),
                appICON("com.sec.android.wallpapercropper2")
        };
        String[] itemName = {
                GridTextView("grid_navigation_bar_title"),
                GridTextView("grid_navigation_bar_bg_title"),
                GridTextView("grid_system_launcher_home_title")
        };

        mNavigationBarGridView.setAdapter(new  ListViewAdapter(getActivity(),3,itemName,getCustomArray("home_summary"),Icon));

        mNavigationBarGridView.setOnItemClickListener(new NavigationBarGridViewOnClick());
    }
    private void initPowerMenuView(View v) {
        mPowerMenuGridView = (ScrollListView)v.findViewById(R.id.list_power);
        Drawable[] Icon = {getCustomArrayDrawable("android","tw_ic_do_restart")};
        String[] itemName = {GridTextView("grid_powermenu_title")};
        String[] itemsummary = {GridTextView("grid_powermenu_title_summary")};
        mPowerMenuGridView.setAdapter(new  ListViewAdapter(getActivity(),1,itemName,itemsummary,Icon));
        mPowerMenuGridView.setOnItemClickListener(new PowerMenuGridViewOnClick());
    }

    public Drawable Bearer(){
        Drawable Bearer ;
        TelephonyManager tm = (TelephonyManager) getContext().getSystemService(Context.TELEPHONY_SERVICE);
        String operator = tm.getNetworkOperator();
        // 中国联通
        if ("46001".equals(operator) || "46006".equals(operator) || "46009".equals(operator)) {
            Bearer=getCustomDrawable(mContext,"ic_unicom_icon");

            // 中国移动
        } else if ("46000".equals(operator) || "46002".equals(operator) || "46004".equals(operator) || "46007".equals(operator)) {
            Bearer=getCustomDrawable(mContext,"ic_cmcc_icon");
            // 中国电信
        } else if ("46003".equals(operator) || "46005".equals(operator) || "46011".equals(operator)||"46012".equals(operator) ) {
            Bearer=getCustomDrawable(mContext,"ic_telecom_icon");
        } else {
            Bearer=getCustomDrawable(mContext,"ic_cmcc_icon");
        }
        return Bearer;
    }
    public void  Keyguard(View v){
        Drawable appIcon;
        try {
            ApplicationInfo applicationInfo = getContext().getPackageManager().getApplicationInfo("com.samsung.android.dynamiclock", 0);
            appIcon = applicationInfo.loadIcon(getContext().getPackageManager());
        } catch (PackageManager.NameNotFoundException e) {
            ApplicationInfo applicationInfo = null;
            try {
                applicationInfo = getContext().getPackageManager().getApplicationInfo("com.samsung.android.app.aodservice", 0);
            } catch (PackageManager.NameNotFoundException ex) {
                ex.printStackTrace();
            }
            appIcon = applicationInfo.loadIcon(getContext().getPackageManager());
        }
        Drawable[] Icon = {
                appICON("com.sec.android.daemonapp"),
                getCustomDrawable(mContext,"ic_alarm_icon"),
                appIcon,
        };
        String[] itemName = {
                GridTextView("widget_name"),
                GridTextView("grid_keyguard_alarm"),
                GridTextView("lock_detail"),
        };
        mKeyguardGridView = (ScrollListView) v.findViewById(R.id.list_keyguard);
        mKeyguardGridView.setAdapter(new  ListViewAdapter(getActivity(),3,itemName,getCustomArray("keyguard_summary"),Icon));
        mKeyguardGridView.setOnItemClickListener(new KeyguardGridViewOnClick());
    }

    public void  UI(View v){

        Drawable[] Icon = {
                getCustomDrawable(mContext,"ic_clock"),
                Bearer(),
                getCustomDrawable(mContext,"ic_signal_logo"),
                getCustomDrawable(mContext,"ic_speed"),
                getCustomDrawable(mContext,"ic_temp"),
                getCustomDrawable(mContext,"ic_battery"),
                getCustomDrawable(mContext,"ic_deviceinfo"),
                getCustomDrawable(mContext,"ic_qs_button"),
                getCustomDrawable(mContext,"ic_datausage"),
                getCustomDrawable(mContext,"ic_picture")
        };
        mStatusBarGridView = (ScrollListView) v.findViewById(R.id.list_status_bar);
        mStatusBarGridView.setAdapter(new  ListViewAdapter(getActivity(),10, getCustomArray("system_ui_title"),getCustomArray("system_ui_summary"),Icon));
        mStatusBarGridView.setOnItemClickListener(new StatusBarGridViewOnClick());
    }

    public class KeyguardGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机
                    SubMenuService(mContext,weatherwidget);
                    break;
                case 1:// 关机

                    SubMenuService(mContext,alarm);
                    break;
                case 2:// 关机
                    SubMenuService(mContext,LockDetail);
                    break;
            }
        }
    }

    public class StatusBarGridViewOnClick implements AdapterView.OnItemClickListener {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机
                    SettingMenuService(mContext,QSDATE);
                    break;
                case 1:// 关机
                    SettingMenuService(mContext,Carrier);
                   // SettingMenuService(mContext,Icon);
                    break;
                case 2:// 关机
                    SettingMenuService(mContext,Icon);
               //     SettingMenuService(mContext,Battery);
                    break;
                case 3:// 关机
                    UIMenuService(mContext,NetworkTraffic);
                    break;
                case 4:// 关机
                    UIMenuService(mContext,Temp);
                    break;
                case 5:// 关机
                    SettingMenuService(mContext,Battery);
                    break;
                case 6:// 关机
                    SettingMenuService(mContext,PulldownDeviceInfo);
                    break;
                case 7:// 关机
                    SettingMenuService(mContext,QSbutton);
                    break;
                case 8:// 关机
                    SubMenuService(mContext,SIM);
                    break;
                case 9:// 关机
                    SettingMenuService(mContext,StatusBarBG);
                    break;
            }
        }
    }

    public class TaskGridViewOnClick implements AdapterView.OnItemClickListener {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机

                    SettingMenuService(mContext,Storage);
                    break;

                case 1:// 关机

                    SettingMenuService(mContext,TaskBG);
                    break;
            }
        }
    }

    public class PowerMenuGridViewOnClick implements AdapterView.OnItemClickListener {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机

                    SettingMenuService(mContext,PowerMenu);
                    break;
            }
        }
    }

    public class NavigationBarGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机
                    SettingMenuService(mContext,NavigationBar);

                    break;
                case 1:// 关机

                    UIMenuService(mContext,Navbg);
                    break;
                case 2:// 关机

                    SubMenuService(mContext,wallpaper);
                    break;
            }
        }
    }

}