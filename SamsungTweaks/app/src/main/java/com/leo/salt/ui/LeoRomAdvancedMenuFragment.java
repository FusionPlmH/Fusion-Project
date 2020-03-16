package com.fusionleo.salt.ui;



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
import android.util.ArraySet;
import android.view.LayoutInflater;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;

import android.widget.Toast;


import com.fusionleo.salt.MainActivity;
import com.fusionleo.salt.R;
import com.fusionleo.salt.activity.SubActivity;
import com.fusionleo.salt.donate.DonateActivity;
import com.fusionleo.salt.kt.ProgressBarDialog;
import com.fusionleo.salt.utils.AndroidUtils;
import com.fusionleo.salt.utils.ktshell.KeepShellSync;
import com.fusionleo.salt.utils.root.Helpers;
import com.fusionleo.salt.widget.WebDialog;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import static com.fusionleo.salt.utils.Constants.mNewline;

import static com.fusionleo.salt.utils.Constants.safety;
import static com.fusionleo.salt.utils.Utils.VipDATA;


import static com.fusionleo.salt.utils.root.Verify.get;
import static com.fusionleo.salt.widget.DialogUtil.Promptdonate;
import static com.fusionleo.salt.widget.DialogUtil.SamsungGoodLock;
import static com.fusionleo.salt.widget.DialogUtil.saaaaaaaaaaaa;


public class LeoRomAdvancedMenuFragment extends Fragment {
    private Context mContext;
    private LineGridView gv;
    private LineGridView gvpulldown;
    private LineGridView gvtask;
    private LineGridView gvkeyguard;
    private LineGridView gvpower;
    private LineGridView gvcall;
    private LineGridView gvkeys;
    private LineGridView gvsystem;
    LinearLayout gridmode;
    LinearLayout listmode;
    private LineGridView listgv;
    private LineGridView listgvpulldown;
    private LineGridView listgvtask;
    private LineGridView listgvkeyguard;
    private LineGridView listgvpower;
    private LineGridView listgvcall;
    private LineGridView listgvkeys;
    private LineGridView listgvsystem;
    private Intent FragmentContainer;




    private View view;


    public void uuThemeView() {
        gv = (LineGridView) view.findViewById(R.id.grid_statusbar);
        gv.setAdapter(new StatusBarMenuGridViewAdapter(getActivity()));
        gvpulldown = (LineGridView) view.findViewById(R.id.grid_pulldown);
        gvpulldown.setAdapter(new NotificationPanelGridViewAdapter(getActivity()));
        gvtask = (LineGridView) view.findViewById(R.id.grid_task);
        gvtask.setAdapter(new TaskGridViewAdapter(getActivity()));
        gvkeyguard = (LineGridView) view.findViewById(R.id.grid_keyguard);
        gvkeyguard.setAdapter(new KeyguardGridViewAdapter(getActivity()));
        gvpower = (LineGridView) view.findViewById(R.id.grid_power);
        gvpower.setAdapter(new PowerGridViewAdapter(getActivity()));
        gvcall = (LineGridView) view.findViewById(R.id.grid_launcher);
        gvcall.setAdapter(new CallGridViewAdapter(getActivity()));
        gvkeys = (LineGridView) view.findViewById(R.id.grid_keys);
        gvkeys.setAdapter(new GesturesFragmentGridViewAdapter(getActivity()));
        gvsystem = (LineGridView) view.findViewById(R.id.grid_system);
        gvsystem.setAdapter(new SystemGridViewAdapter(getActivity()));

        listgv = (LineGridView) view.findViewById(R.id.list_grid_statusbar);
        listgv.setAdapter(new com.fusionleo.salt.ui.list.StatusBarMenuGridViewAdapter(getActivity()));
        listgvpulldown = (LineGridView) view.findViewById(R.id.list_grid_pulldown);
        listgvpulldown.setAdapter(new com.fusionleo.salt.ui.list.NotificationPanelGridViewAdapter(getActivity()));
        listgvtask = (LineGridView) view.findViewById(R.id.list_grid_task);
        listgvtask.setAdapter(new com.fusionleo.salt.ui.list.TaskGridViewAdapter(getActivity()));
        listgvkeyguard = (LineGridView) view.findViewById(R.id.list_grid_keyguard);
        listgvkeyguard.setAdapter(new com.fusionleo.salt.ui.list.KeyguardGridViewAdapter(getActivity()));
        listgvpower = (LineGridView) view.findViewById(R.id.list_grid_power);
        listgvpower.setAdapter(new com.fusionleo.salt.ui.list.PowerGridViewAdapter(getActivity()));
        listgvcall = (LineGridView) view.findViewById(R.id.list_grid_launcher);
        listgvcall.setAdapter(new com.fusionleo.salt.ui.list.CallGridViewAdapter(getActivity()));
        listgvkeys = (LineGridView) view.findViewById(R.id.list_grid_keys);
        listgvkeys.setAdapter(new com.fusionleo.salt.ui.list.GesturesFragmentGridViewAdapter(getActivity()));
        listgvsystem = (LineGridView) view.findViewById(R.id.list_grid_system);
        listgvsystem.setAdapter(new com.fusionleo.salt.ui.list.SystemGridViewAdapter(getActivity()));
        listmode=(LinearLayout) view.findViewById(R.id.list_mode);
        gridmode=(LinearLayout) view.findViewById(R.id.grid_mode);
        ContentResolver mLeoResolver=mContext.getContentResolver();
        int   Carrierstyle =Settings.System.getInt(mLeoResolver,
                "leo_tweaks_ui_style" ,0);
        if (Carrierstyle== 0){
            gridmode.setVisibility( gridmode.VISIBLE);
            listmode.setVisibility(listmode.GONE);
            // mAbout.setVisibility(View.VISIBLE);
        }else if(Carrierstyle== 1){
            listmode.setVisibility(listmode.VISIBLE);
            gridmode.setVisibility(gridmode.GONE);
        }
    }



    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        mContext=getActivity();
        view= inflater.inflate(R.layout.grid_meun, container, false);
        uuThemeView();
        saaaaaaaaaaaa(mContext);
        gv.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                statusbarItem(i);
            }
        });

        gvpulldown.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                pulldownItem(i);
            }
        });

        gvtask.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                taskItem(i);
            }
        });

        gvkeyguard.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                keyguardItem(i);
            }
        });

        gvpower.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                powerItem(i);
            }
        });

        gvcall.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                callItem(i);
            }
        });

        gvkeys.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                keysItem(i);
            }
        });

        gvsystem.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                systemItem(i);
            }
        });

        /////////////////////////////////////////////////////////////////////
        listgv.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                statusbarItem(i);
            }
        });

        listgvpulldown.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                pulldownItem(i);
            }
        });

        listgvtask.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                taskItem(i);
            }
        });

        listgvkeyguard.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                keyguardItem(i);
            }
        });

        listgvpower.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                powerItem(i);
            }
        });

        listgvcall.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                callItem(i);
            }
        });

        listgvkeys.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                keysItem(i);
            }
        });

        listgvsystem.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                systemItem(i);
            }
        });
        return view;
    }


    private  int systemItem(int i){
            switch (i) {
                case 0:
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Animation);
                    mContext.startActivity(FragmentContainer);
                    break;
                case 1:
                    SamsungGoodLuck();
                //    BatteryTips(getActivity(),DB_MAIN_BATTERY,BatterName,Batteryurl);
                    new WebDialog(mContext, BatterName, Batteryurl, DB_MAIN_BATTERY,false);
                    break;
                case 2:
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.POP);
                    mContext.startActivity(FragmentContainer);
                    break;
                case 3:
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Floating);
                    mContext.startActivity(FragmentContainer);
                    break;
                case 4:
                    if (AndroidUtils.getCustomOTA().equals(safety)) {
                        VipDATA(mContext);
                        FragmentContainer = new Intent(mContext, SubActivity.class);
                        FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Sound);
                        mContext.startActivity(FragmentContainer);
                    }else {
                        Promptdonate(getActivity());
                    }

                    break;
                case 5:
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.CallBackground);
                    mContext.startActivity(FragmentContainer);
                    break;
            }


        return i;

    }
    private  int keysItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.GestureStatusBar);
                mContext.startActivity(FragmentContainer);
                break;
            case 1:
                if (AndroidUtils.getCustomOTA().equals(safety)) {
                    VipDATA(mContext);
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.GestureKeys);
                    mContext.startActivity(FragmentContainer);
                }else {
                    Promptdonate(getActivity());
                }

                break;
            case 2:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.GestureAwake);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.GestureFinger);
                mContext.startActivity(FragmentContainer);
                break;
        }
        return i;
    }
    private  int callItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.CallLocation);
                mContext.startActivity(FragmentContainer);
                break;

            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Launcher);
                mContext.startActivity(FragmentContainer);
                break;
            case 2:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.LauncherBackground);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType. NavBar);
                mContext.startActivity(FragmentContainer);
                break;
        }
        return i;
    }
    private  int powerItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Power);
                mContext.startActivity(FragmentContainer);
                break;

            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.powerBG);
                mContext.startActivity(FragmentContainer);
                break;
        }
        return i;
    }
    private  int keyguardItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.KeyguardTime);
                mContext.startActivity(FragmentContainer);
                break;
            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.KeyguardWeather);
                mContext.startActivity(FragmentContainer);
                break;
            case 2:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.KeyguardCarrier);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.KeyguardMore);
                mContext.startActivity(FragmentContainer);
                break;
        }
        return i;
    }
    private  int taskItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.TaskBackground);
                mContext.startActivity(FragmentContainer);
                break;

            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.TaskOthers);
                mContext.startActivity(FragmentContainer);
                break;
        }
        return i;
    }
       private  int statusbarItem(int i){
           switch (i) {
               case 0:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarTime);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 1:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarIcon);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 2:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarLabel);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 3:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarNetworkspeed);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 4:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarTemperature);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 5:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarWeather);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 6:
                   FragmentContainer = new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarBattery);
                   mContext.startActivity(FragmentContainer);
                   break;

               case 7:
                   FragmentContainer= new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarBackground);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 8:
                   FragmentContainer = new Intent(getActivity(), SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelTime);
                   mContext.startActivity(FragmentContainer);
                   break;

           }
           return i;
       }
    private    int pulldownItem(int i){
        switch (i) {
            case 0:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelTime);
                mContext.startActivity(FragmentContainer);
                break;
            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType. NotificationPanelButton);
                mContext.startActivity(FragmentContainer);
                break;
            case 2:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelItems);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelCarrier);
                mContext.startActivity(FragmentContainer);
                break;
            case 4:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelOther);
                mContext.startActivity(FragmentContainer);
                break;
            case 5:
                FragmentContainer= new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelBackground);
                mContext.startActivity(FragmentContainer);
                break;
            case 6:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.TaskApps);
                mContext.startActivity(FragmentContainer);
                break;
            case 7:
                if (AndroidUtils.getCustomOTA().equals(safety)) {
                    VipDATA(mContext);
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.poweritems);
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