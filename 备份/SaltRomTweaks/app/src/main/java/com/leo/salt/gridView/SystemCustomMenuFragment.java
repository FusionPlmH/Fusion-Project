package com.leo.salt.gridView;




import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.app.Fragment;
import android.support.design.widget.Snackbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.FragUIActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.LineGridView;

import static com.leo.salt.tweaks.FragSettingActivity.FragmentType.*;
import static com.leo.salt.tweaks.FragSubActivity.FragmentType.*;
import static com.leo.salt.tweaks.FragUIActivity.FragmentType.*;

import static com.leo.salt.tweaks.resource.Resource.appICON;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;

import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.SamsungGoodLock;
import static com.leo.salt.utils.PrefUtils.SettingMenuService;
import static com.leo.salt.utils.PrefUtils.SubMenuService;
import static com.leo.salt.utils.PrefUtils.UIMenuService;


public class SystemCustomMenuFragment extends Fragment  {
    private LineGridView mStatusBarGridView;
    private TextView mStatusBarName;
    private LineGridView mPanelGridView;
    private TextView mPanelName;

    private LineGridView mKeyguardGridView;
    private TextView mKeyguardName;
    public Context mContext;
    private View mView;
    private LineGridView mPowerMenuGridView;
    private TextView mPowerMenuName;
    private LineGridView mNavigationBarGridView;
    private TextView mNavigationBarName;
    private LineGridView mTaskGridView;
    private TextView mTaskName;

    public String GridTextView(String STR){
        return getStringIdentifier(getContext(),STR);
    }
        public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.system_custom_meun, container, false);
            mContext=getActivity();
            initValues(mView);
            initGridView(mView);
        return  mView;
    }

    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

    private void initValues(View v) {
        mStatusBarName = (TextView) v.findViewWithTag("grid_system_statusbar");
        mStatusBarName.setText( GridTextView("grid_status_bar_title"));
        mPanelName = (TextView) v.findViewWithTag("grid_system_notificationpanel");
        mPanelName.setText( GridTextView("grid_notificationpanel_title"));
        mKeyguardName = (TextView) v.findViewWithTag("grid_system_keyguard");
        mKeyguardName.setText( GridTextView("grid_keyguard_title"));
        mPowerMenuName = (TextView) v.findViewWithTag("grid_system_powermenu");
        mPowerMenuName.setText( GridTextView("grid_powermenu_title"));
        mNavigationBarName = (TextView) v.findViewWithTag("grid_system_navigationbar");
        mNavigationBarName.setText( GridTextView("grid_navigation_bar_title"));
        mTaskName = (TextView) v.findViewWithTag("grid_system_task");
        mTaskName.setText( GridTextView("grid_system_task"));
        mPowerMenuGridView = (LineGridView) v.findViewWithTag("grid_powermenu");
        mPowerMenuGridView.setAdapter(new PowerMenuGridAdapter(getActivity()));
        mPowerMenuGridView.setOnItemClickListener(new PowerMenuGridViewOnClick());
        mNavigationBarGridView= (LineGridView) v.findViewWithTag("grid_navigationbar");
        mNavigationBarGridView.setAdapter(new NavigationBarGridAdapter(getActivity()));
        mNavigationBarGridView.setOnItemClickListener(new NavigationBarGridViewOnClick());
        mTaskGridView= (LineGridView) v.findViewWithTag("grid_task");
        mTaskGridView.setAdapter(new TaskGridAdapter(getActivity()));
        mTaskGridView.setOnItemClickListener(new TaskGridViewOnClick());
    }
    private void initGridView(View v) {
        mStatusBarGridView = (LineGridView) v.findViewWithTag("grid_statusbar");
        mStatusBarGridView.setAdapter(new StatusBarGridAdapter(getActivity()));
        mStatusBarGridView.setOnItemClickListener(new StatusBarGridViewOnClick());
        mPanelGridView = (LineGridView) v.findViewWithTag("grid_notificationpanel");
        mPanelGridView.setAdapter(new PanelGridAdapter(getActivity()));
        mPanelGridView.setOnItemClickListener(new PanelGridViewOnClick());
        mKeyguardGridView = (LineGridView) v.findViewWithTag("grid_keyguard");
        mKeyguardGridView.setAdapter(new KeyguardGridAdapter(getActivity()));
        mKeyguardGridView.setOnItemClickListener(new KeyguardGridViewOnClick());
    }
    public class KeyguardGridAdapter extends BaseAdapter {

        private static final int COUNT =3;
        Drawable[] Icon = {
                Resource.getCustomDrawable(mContext,"ic_cmcc_icon"),
                appICON("com.sec.android.daemonapp"),
                Resource.getCustomDrawable(mContext,"ic_alarm_icon"),
                Resource.getCustomDrawable(mContext,"ic_clock"),
                Resource.getCustomDrawable(mContext,"ic_speed"),

        };
        private String[] itemName = {
                GridTextView("grid_keyguard_carrier"),
                GridTextView("widget_name"),
                GridTextView("grid_keyguard_alarm"),
                GridTextView("grid_analogclock_title"),
                GridTextView("grid_info_title"),
        };
        private LayoutInflater inflater;
        public KeyguardGridAdapter(Context context){
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
    public class KeyguardGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机


                    SettingMenuService(mContext,KeyguardCarrier);
                    break;
                case 1:// 关机

                    SubMenuService(mContext,weatherwidget);
                    break;
                case 2:// 关机

                    SubMenuService(mContext,alarm);
                    break;
                case 3:// 关机

                    break;

            }

        }

    }

    public class PanelGridAdapter extends BaseAdapter {

        private static final int COUNT =6;
        Drawable[] Icon = {
                appICON("com.sec.android.app.clockpackage"),
                Resource.getCustomDrawable(mContext,"ic_cmcc_icon"),
                Resource.getCustomDrawable(mContext,"ic_clock"),
                Resource.getCustomDrawable(mContext,"ic_speed"),
                Resource.getCustomDrawable(mContext,"ic_qs_button"),
                Resource.getCustomDrawable(mContext,"ic_datausage"),


        };
        private String[] itemName = {
                GridTextView("grid_clockdate_title"),
                GridTextView("grid_carrier_title"),
                GridTextView("grid_analogclock_title"),
                GridTextView("grid_info_title"),
                GridTextView("grid_button"),
                GridTextView("grid_datausage_more"),
               };
        private LayoutInflater inflater;
        public PanelGridAdapter(Context context){
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
    public class PanelGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机
                    SettingMenuService(mContext,QSDATE);
                    break;
                case 1:// 关机
                    SubMenuService(mContext,PulldownCarrier);
                    break;
                case 2:// 关机
                    SubMenuService(mContext,analogclock);
                    break;
                case 3:// 关机
                    SettingMenuService(mContext,PulldownDeviceInfo);
                    break;
                case 4:// 关机
                    SubMenuService(mContext,QSbutton);
                    break;
                case 5:// 关机
                    SubMenuService(mContext,SIM);
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


                    UIMenuService(mContext,CLOCK);
                    break;
                case 1:// 关机

                    SettingMenuService(mContext,Icon);
                    break;
                case 2:// 关机

                    SettingMenuService(mContext,Battery);
                    break;
                case 3:// 关机
                    UIMenuService(mContext,NetworkTraffic);
                    break;
                case 4:// 关机
                    UIMenuService(mContext,Temp);
                    break;
                case 5:// 关机
                    SettingMenuService(mContext,StatusBarBG);
                    break;
            }

        }

    }


    public class  StatusBarGridAdapter extends BaseAdapter {

        private static final int COUNT =6;
        Drawable[] Icon = {
                appICON("com.sec.android.app.clockpackage"),
                Resource.getCustomDrawable(mContext,"ic_signal_logo"),
                Resource.getCustomDrawable(mContext,"ic_battery"),
                Resource.getCustomDrawable(mContext,"ic_speed"),
                Resource.getCustomDrawable(mContext,"ic_temp"),
                Resource.getCustomDrawable(mContext,"ic_picture")

        };
        private String[] itemName = {
                GridTextView("grid_clock"),
                GridTextView("grid_signal_logo"),
                GridTextView("grid_battery"),
                GridTextView("grid_network_speed"),
                GridTextView("grid_temp"),
                GridTextView("grid_status_bar_background")};
        private LayoutInflater inflater;
        public  StatusBarGridAdapter(Context context){
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
    public class  TaskGridAdapter extends BaseAdapter {

        private static final int COUNT =3;
        Drawable[] Icon = {
                Resource.getCustomDrawable(mContext,"ic_storage"),
                Resource.getCustomDrawable(mContext,"ic_recents"),
                Resource.getCustomDrawable(mContext,"ic_picture"),
        };
        private String[] itemName = {
                GridTextView("storage_name"),
                getCustomArray("goodLock_items")[2],
                GridTextView("grid_system_task_bg_title")
        };
        private LayoutInflater inflater;
        public  TaskGridAdapter(Context context){
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

    public class TaskGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机

                    SettingMenuService(mContext,Storage);
                    break;
                case 1:// 关机
                    SamsungGoodLock(getActivity(),"com.samsung.android.pluginrecents","com.samsung.android.pluginrecents.setting.SettingsActivity",GridTextView("goodlock_item_3"));
                    break;
                case 2:// 关机

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


    public class  PowerMenuGridAdapter extends BaseAdapter {

        private static final int COUNT =1;
        Drawable[] Icon = {
                // Resource.getCustomDrawable(mContext,"tw_ic_do_restart"),
                getCustomArrayDrawable("android","tw_ic_do_restart")
        };
        private String[] itemName = {
                GridTextView("grid_powermenu_title"),
        };
        private LayoutInflater inflater;
        public  PowerMenuGridAdapter(Context context){
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



    public class  NavigationBarGridAdapter extends BaseAdapter {

        private static final int COUNT =3;
        Drawable[] Icon = {
                getCustomArrayDrawable("android","menu_ic_assistant_menu"),
                Resource.getCustomDrawable(mContext,"ic_picture"),
                appICON("com.sec.android.wallpapercropper2")
        };
        private String[] itemName = {
                GridTextView("grid_navigation_bar_title"),
                GridTextView("grid_navigation_bar_bg_title"),
                GridTextView("grid_system_launcher_home_title")
        };
        private LayoutInflater inflater;
        public  NavigationBarGridAdapter(Context context){
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