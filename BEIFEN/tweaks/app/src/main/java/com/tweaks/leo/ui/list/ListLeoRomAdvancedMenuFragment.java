package com.tweaks.leo.ui.list;



;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.SwitchCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;


import com.tweaks.leo.MainActivity;
import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.donate.DonateActivity;
import com.tweaks.leo.ui.LineGridView;
import com.tweaks.leo.utils.AndroidUtils;
import com.tweaks.leo.utils.Constants;
import com.tweaks.leo.utils.root.Helpers;

import static com.tweaks.leo.utils.Constants.mNewline;
import static com.tweaks.leo.utils.Utils.killPackage;


import static com.tweaks.leo.widget.DialogUtil.BatteryTips;

import static com.tweaks.leo.widget.DialogUtil.Promptdonate;
import static com.tweaks.leo.widget.DialogUtil.SamsungGoodLock;


public class ListLeoRomAdvancedMenuFragment extends Fragment {
    private Context mContext;
    private LineGridView gv;
    private LineGridView gvpulldown;
    private LineGridView gvtask;
    private LineGridView gvkeyguard;
    private LineGridView gvpower;
    private LineGridView gvcall;
    private LineGridView gvkeys;
    private LineGridView gvsystem;
    private Intent FragmentContainer;
    private Button mStatusBarTheme;
    public static final String KEY_TYPE = "type";
    public String alert="温馨提醒";
    public String mURL="file:///android_asset/LeoRom_donate.html";
    public String mURL2="> ";
    public String Model="当前:";
    public String systemModel="系统主题模式";
    public String customModel="自定义模式";
    public String LeoModel="你已将 ";
    public String LeoModel2=" 模式修改为 "+mURL2;

    public TextView mode;
    public TextView  pulldownmode;
    String    mSnackbar;
    public static  String mkey = "leo_alert_help";
    private Button mPulldownTheme;
    public void StatusBarThemeView(final View V) {
        mStatusBarTheme=V.findViewById(R.id.select_statusbar_mode);
        mStatusBarTheme.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int defaultValue;
                ContentResolver   leo=mContext.getContentResolver();
                defaultValue  = Settings.System.getInt(leo, "mode_style", 0) ^ 1;
                Settings.System.putInt(leo, "mode_style", defaultValue);

                if (defaultValue== 0){
                    Helpers.Companion.StatusInt(mContext,0);
                    mSnackbar=LeoModel+mContext.getResources().getString( R.string.ui_title)+LeoModel2+systemModel;
                }else if(defaultValue== 1){
                    Helpers.Companion.StatusInt(mContext,1);
                    mSnackbar=LeoModel+mContext.getResources().getString( R.string.ui_title)+LeoModel2+customModel;
                }
                Snackbar.make(getActivity().findViewById(android.R.id.content), mSnackbar, Snackbar.LENGTH_SHORT).show();
            }
        });
    }

    public void pulldownThemeView(final View V) {
        mPulldownTheme=V.findViewById(R.id.select_pulldown_mode);
        mPulldownTheme.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int defaultValue;
                ContentResolver mLeoResolver=mContext.getContentResolver();
                defaultValue  = Settings.System.getInt(mLeoResolver, "mode_style", 0) ^ 1;
                Settings.System.putInt(mLeoResolver, "mode_style", defaultValue);
                if (defaultValue== 0){
                    Helpers.Companion.PulldownInt(mContext,0);
                    mSnackbar=LeoModel+mContext.getResources().getString( R.string.pulldown_title)+LeoModel2+systemModel;

                }else if(defaultValue== 1){
                    Helpers.Companion.PulldownInt(mContext,1);
                    mSnackbar=LeoModel+mContext.getResources().getString( R.string.pulldown_title)+LeoModel2+customModel;

                }
                Toast.makeText(mContext,  mSnackbar+"部分功能需要热重启!",
                        Toast.LENGTH_SHORT).show();
                Snackbar snackbar=Snackbar.make(getActivity().findViewById(android.R.id.content),mSnackbar,Snackbar.LENGTH_LONG);
                snackbar.setAction("热重启", new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        killPackage("com.android.systemui");

                    }
                });

                snackbar.show();


            }
        });
    }
    private LeoRomObserver mLeoRomObserver;
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mContext=getActivity();
        View view = inflater.inflate(R.layout.list_grid_meun, container, false);
        mLeoRomObserver=new LeoRomObserver(new Handler());
        mLeoRomObserver.observe();
        gv = (LineGridView) view.findViewById(R.id.grid_statusbar);
        StatusBarThemeView(view);
        pulldownThemeView(view);
        setHasOptionsMenu(true);
        mode= view.findViewById(R.id.mode);
        pulldownmode= view.findViewById(R.id.pulldown_mode);
        saaaaaaaaaaaa();
        gv.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                statusbarItem(i);
            }
        });
        gv.setAdapter(new StatusBarMenuGridViewAdapter(getActivity()));
        gvpulldown = (LineGridView) view.findViewById(R.id.grid_pulldown);
        gvpulldown.setAdapter(new NotificationPanelGridViewAdapter(getActivity()));
        gvpulldown.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                pulldownItem(i);
            }
        });
        gvtask = (LineGridView) view.findViewById(R.id.grid_task);
        gvtask.setAdapter(new TaskGridViewAdapter(getActivity()));
        gvtask.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                taskItem(i);
            }
        });
        gvkeyguard = (LineGridView) view.findViewById(R.id.grid_keyguard);
        gvkeyguard.setAdapter(new KeyguardGridViewAdapter(getActivity()));
        gvkeyguard.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                keyguardItem(i);
            }
        });
        gvpower = (LineGridView) view.findViewById(R.id.grid_power);
        gvpower.setAdapter(new PowerGridViewAdapter(getActivity()));
        gvpower.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                powerItem(i);
            }
        });
        gvcall = (LineGridView) view.findViewById(R.id.grid_launcher);
        gvcall.setAdapter(new CallGridViewAdapter(getActivity()));
        gvcall.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                callItem(i);
            }
        });
        gvkeys = (LineGridView) view.findViewById(R.id.grid_keys);
        gvkeys.setAdapter(new GesturesFragmentGridViewAdapter(getActivity()));
        gvkeys.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                keysItem(i);
            }
        });
        gvsystem = (LineGridView) view.findViewById(R.id.grid_system);
        gvsystem.setAdapter(new SystemGridViewAdapter(getActivity()));
        gvsystem.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                systemItem(i);
            }
        });

        return view;
    }

    class LeoRomObserver extends ContentObserver {
        LeoRomObserver(Handler handler) {
            super(handler);
        }
        ContentResolver contentResolver ;
        void observe() {
            contentResolver= mContext.getContentResolver();
            contentResolver.registerContentObserver(Settings.System.getUriFor("leo_tweaks_switch_donate"), false,this);
            contentResolver.registerContentObserver(Settings.System.getUriFor("mode_style"), false,this);
        }
        @Override
        public void onChange(boolean selfChange) {
         saaaaaaaaaaaa();
        }


    }

   String mMode;
    AlertDialog dialog;
   public void saaaaaaaaaaaa(){
       ContentResolver mLeoResolver=mContext.getContentResolver();
        int   Carrierstyle =Settings.System.getInt(mLeoResolver,
                "leo_tweaks_switch_donate" ,0);
       int colorstyle=Settings.System.getInt(mLeoResolver, "mode_style", 0);
       if(colorstyle==0){
           mMode=Model+systemModel;
       }else if(colorstyle==1){
           mMode=Model+customModel;
       }
       mode.setText(mMode);
       pulldownmode.setText(mMode);
        if ( Carrierstyle == 0) {
            if (AndroidUtils.getCustomOTA().equals(Helpers.Companion.getCODE())) {
            }else {
                dialog = new AlertDialog.Builder(getActivity())
                        .setTitle("未捐赠用户")//设置对话框的标题
                        .setMessage("很抱歉,由于你是未捐赠下列功能将受到限制"+mNewline+"OTA在线升级"+mNewline+"日志抓取分享"+mNewline+"亮度控制自定义"+mNewline+"按键动作")//设置对话框的内容
                        //设置对话框的按钮
                        .setPositiveButton("马上捐赠", new DialogInterface.OnClickListener() {

                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                startActivity(new Intent(getActivity(),DonateActivity.class));
                                dialog.dismiss();
                            }
                        })
                        .setNegativeButton("取消", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                Toast.makeText(getActivity(), "你可以在工具设置中隐藏提示", Toast.LENGTH_SHORT).show();
                                dialog.dismiss();
                            }
                        })

                        .create();
                dialog.show();
                dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            }
        }else if ( Carrierstyle == 1) {

        }

    }
    private  int systemItem(int i){
            switch (i) {
                case 0:
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Animation);
                    mContext.startActivity(FragmentContainer);
                    break;
                case 1:
                    SamsungGoodLuck();
                    BatteryTips(getActivity(),DB_MAIN_BATTERY,BatterName,Batteryurl);
                    break;
                case 2:
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.POP);
                    mContext.startActivity(FragmentContainer);
                    break;
                case 3:
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.CallBackground);
                    mContext.startActivity(FragmentContainer);
                    break;
            }


        return i;

    }
    private  int keysItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.GestureStatusBar);
                mContext.startActivity(FragmentContainer);
                break;
            case 1:
                if (AndroidUtils.getCustomOTA().equals(Helpers.Companion.getCODE())) {

                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.GestureKeys);
                    mContext.startActivity(FragmentContainer);
                }else {
                    Promptdonate(getActivity());
                }

                break;
            case 2:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.GestureAwake);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.GestureFinger);
                mContext.startActivity(FragmentContainer);
                break;
        }
        return i;
    }
    private  int callItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.CallLocation);
                mContext.startActivity(FragmentContainer);
                break;

            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Launcher);
                mContext.startActivity(FragmentContainer);
                break;
            case 2:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.LauncherBackground);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType. NavBar);
                mContext.startActivity(FragmentContainer);
                break;
        }
        return i;
    }
    private  int powerItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Power);
                mContext.startActivity(FragmentContainer);
                break;

            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.powerBG);
                mContext.startActivity(FragmentContainer);
                break;
        }
        return i;
    }
    private  int keyguardItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.KeyguardTime);
                mContext.startActivity(FragmentContainer);
                break;
            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.KeyguardWeather);
                mContext.startActivity(FragmentContainer);
                break;
            case 2:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.KeyguardCarrier);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.KeyguardMore);
                mContext.startActivity(FragmentContainer);
                break;
        }
        return i;
    }
    private  int taskItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.TaskBackground);
                mContext.startActivity(FragmentContainer);
                break;

            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.TaskOthers);
                mContext.startActivity(FragmentContainer);
                break;
        }
        return i;
    }
       private  int statusbarItem(int i){
           switch (i) {
               case 0:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarTime);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 1:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarIcon);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 2:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarLabel);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 3:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarNetworkspeed);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 4:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarTemperature);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 5:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarWeather);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 6:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarBattery);
                   mContext.startActivity(FragmentContainer);
                   break;

               case 7:
                   FragmentContainer= new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.StatusBarBackground);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 8:
                   FragmentContainer = new Intent(getActivity(), SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.NotificationPanelTime);
                   mContext.startActivity(FragmentContainer);
                   break;

           }
           return i;
       }
    private    int pulldownItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.NotificationPanelTime);
                mContext.startActivity(FragmentContainer);
                break;
            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType. NotificationPanelButton);
                mContext.startActivity(FragmentContainer);
                break;
            case 2:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.NotificationPanelItems);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.NotificationPanelCarrier);
                mContext.startActivity(FragmentContainer);
                break;
            case 4:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.NotificationPanelOther);
                mContext.startActivity(FragmentContainer);
                break;
            case 5:
                FragmentContainer= new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.NotificationPanelBackground);
                mContext.startActivity(FragmentContainer);
                break;
            case 6:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.TaskApps);
                mContext.startActivity(FragmentContainer);
                break;
            case 7:
                if (AndroidUtils.getCustomOTA().equals(Helpers.Companion.getCODE())) {
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.poweritems);
                    mContext.startActivity(FragmentContainer);
                }else {
                    Promptdonate(getActivity());
                }

                break;
        }
        return i;
    }

    private void  SamsungGoodLuck(){

        AlertDialog dialog = new AlertDialog.Builder(mContext)
                .setTitle(R.string.list_grid_goodlock)//设置对话框的标题
                .setItems(R.array.GoodLock_entries, new DialogInterface.OnClickListener() {

                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        switch (i) {
                            case 0:
                                SamsungGoodLock(getActivity(),edgelightingeffectunit,EdgeLightingUnitActivity,Edge ,edgelightingeffectunit );
                                break;
                            case 1:
                                SamsungGoodLock(getActivity(),Recentslightingeffectunit,RecentsLightingUnitActivity,Recents ,Recentslightingeffectunit);
                                break;
                            case 2:
                                SamsungGoodLock(getActivity(),Gesturelightingeffectunit,GestureLightingUnitActivity,Gesture,Gesturelightingeffectunit);
                                break;
                        }
                    }
                })
                .create();
        dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();
    }

    private static final String Gesturelightingeffectunit = "com.samsung.android.sidegesturepad";
    private static final String GestureLightingUnitActivity = "com.samsung.android.sidegesturepad.settings.SGPSettingsActivity";
    private static final String Gesture = "单手操作";
    private static final String edgelightingeffectunit = "com.samsung.android.edgelightingeffectunit";
    private static final String EdgeLightingUnitActivity = "com.samsung.android.edgelightingeffectunit.activity.EdgeLightingUnitActivity";
    private static final String Edge = "侧屏闪光";
    private static final String Recentslightingeffectunit = "com.samsung.android.pluginrecents";
    private static final String RecentsLightingUnitActivity = "com.samsung.android.pluginrecents.setting.SettingsActivity";
    private static final String Recents = "多任务切换";
    public String BatterName="GoodLock组件图标";
    public String Batteryurl="file:///android_asset/Samsung.html";
    public static final String DB_MAIN_BATTERY = "leo_battery_GoodLock";






}