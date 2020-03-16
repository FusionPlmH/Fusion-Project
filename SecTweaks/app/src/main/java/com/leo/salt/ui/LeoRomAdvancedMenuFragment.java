package com.leo.salt.ui;



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


import com.leo.salt.MainActivity;
import com.leo.salt.R;
import com.leo.salt.activity.SubActivity;

import com.leo.salt.kt.ProgressBarDialog;
import com.leo.salt.utils.AndroidUtils;
import com.leo.salt.utils.ktshell.KeepShellSync;
import com.leo.salt.utils.root.Helpers;
import com.leo.salt.widget.WebDialog;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import static com.leo.salt.utils.Constants.mNewline;

import static com.leo.salt.utils.Constants.safety;

import static com.leo.salt.utils.Utils.isLunarSettingdonate;
import static com.leo.salt.widget.DialogUtil.EnglishDonate;
import static com.leo.salt.widget.DialogUtil.Promptdonate;
import static com.leo.salt.widget.DialogUtil.SamsungGoodLock;
import static com.leo.salt.widget.DialogUtil.saaaaaaaaaaaa;


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
        gvkeyguard = (LineGridView) view.findViewById(R.id.grid_keyguard);
        gvkeyguard.setAdapter(new KeyguardGridViewAdapter(getActivity()));
    gvkeys = (LineGridView) view.findViewById(R.id.grid_keys);
        gvkeys.setAdapter(new GesturesFragmentGridViewAdapter(getActivity()));
        listgv = (LineGridView) view.findViewById(R.id.list_grid_statusbar);
        listgv.setAdapter(new com.leo.salt.ui.list.StatusBarMenuGridViewAdapter(getActivity()));
        listgvpulldown = (LineGridView) view.findViewById(R.id.list_grid_pulldown);
        listgvpulldown.setAdapter(new com.leo.salt.ui.list.NotificationPanelGridViewAdapter(getActivity()));
        listgvkeyguard = (LineGridView) view.findViewById(R.id.list_grid_keyguard);
        listgvkeyguard.setAdapter(new com.leo.salt.ui.list.KeyguardGridViewAdapter(getActivity()));
        listgvkeys = (LineGridView) view.findViewById(R.id.list_grid_keys);
        listgvkeys.setAdapter(new com.leo.salt.ui.list.GesturesFragmentGridViewAdapter(getActivity()));
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

        gvkeyguard.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                keyguardItem(i);
            }
        });
        listgvkeys.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                keysItem(i);
            }
        });
        gvkeys.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                keysItem(i);
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


        listgvkeyguard.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                keyguardItem(i);
            }
        });

        return view;
    }



    private  int keyguardItem(int i){
        switch (i) {
            case 0:

                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.KeyguardCarrier);
                mContext.startActivity(FragmentContainer);
                break;

                case 1:
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.PowerMeun );
                    mContext.startActivity(FragmentContainer);
                break;
            case 2:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.KeyguardMore);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Alarm);
                mContext.startActivity(FragmentContainer);
                break;
            case 4:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Weather);
                mContext.startActivity(FragmentContainer);
                break;
            case 5:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Recents);
                mContext.startActivity(FragmentContainer);
                break;
            case 6:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Launcher);
                mContext.startActivity(FragmentContainer);
                break;
            case 7:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.City);
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
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarBattery);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 6:
                   FragmentContainer= new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.StatusBarBackground);
                   mContext.startActivity(FragmentContainer);
                   break;
               case 7:
                   FragmentContainer= new Intent(mContext, SubActivity.class);
                   FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Voltage);
                   mContext.startActivity(FragmentContainer);
                   break;
           }
           return i;
       }
	   
	       private  int keysItem(int i){
        switch (i) {
            
            case 0:
                if (AndroidUtils.getCustomOTA().equals(safety)) {

                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.GestureKeys);
                    mContext.startActivity(FragmentContainer);
                }else {
                    Promptdonate(getActivity());
                }
            break;
            case 1:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.GestureFinger);
                mContext.startActivity(FragmentContainer);
            break;
            case 2:
                if (AndroidUtils.getCustomOTA().equals(safety)) {
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.GestureHome);
                mContext.startActivity(FragmentContainer);
                }else {
                    Promptdonate(getActivity());
                }
           break;
		     case 3:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.GestureStatusBar);
                mContext.startActivity(FragmentContainer);
                break;
		     case 4:
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.POP);
                    mContext.startActivity(FragmentContainer);
                    break;
					case 5:
					 FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Floating);
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
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelCarrier);
                mContext.startActivity(FragmentContainer);
                break;
            case 2:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelDeviceInfo);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                if (AndroidUtils.getCustomOTA().equals(safety)) {

                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.AnalogClock);
                    mContext.startActivity(FragmentContainer);
                }else {
                    Promptdonate(getActivity());
                }

                break;
				        case 4:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.NotificationPanelOther);
                mContext.startActivity(FragmentContainer);
                break;
case 5:
                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType. NotificationPanelButton);
                mContext.startActivity(FragmentContainer);
                break;

        }
        return i;
    }







}