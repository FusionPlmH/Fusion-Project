package com.leo.salt.ui;



import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;


import android.provider.Settings;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.app.AlertDialog;

import android.support.v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.R;
import com.leo.salt.activity.PingActivity;
import com.leo.salt.activity.SubActivity;

import com.leo.salt.activity.WifiPasswordActivity;

import com.leo.salt.fragment.SetDpiFragment;
import com.leo.salt.utils.AndroidUtils;
import com.leo.salt.utils.root.Helpers;
import com.leo.salt.widget.WebDialog;


import static com.leo.salt.utils.Constants.safety;

import static com.leo.salt.widget.DialogUtil.Promptdonate;
import static com.leo.salt.widget.DialogUtil.SamsungGoodLock;


public class AssistMenuFragment extends Fragment {
    private Intent FragmentContainer;
    private LineGridView mSystem;
    private Context mContext;
    LinearLayout gridmode;
    LinearLayout listmode;
    private LineGridView mListSystem;
    private LineGridView mListSystemUrl;
    private LineGridView mSystemUrl;
    private LineGridView mListAdvanced;
    private LineGridView mAdvanced;
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mContext=getActivity();
        View view = inflater.inflate(R.layout.assist_meun, container, false);
        listmode=(LinearLayout) view.findViewById(R.id.list_mode);
        gridmode=(LinearLayout) view.findViewById(R.id.grid_mode);
        mListSystemUrl= (LineGridView) view.findViewById(R.id.list_grid_system_url);
        mSystemUrl= (LineGridView) view.findViewById(R.id.grid_system_url);
        mSystemUrl.setAdapter(new SystemUrlGridViewAdapter(getActivity()));
        mListSystemUrl.setAdapter(new com.leo.salt.ui.list.SystemUrlGridViewAdapter(getActivity()));
        mListAdvanced= (LineGridView) view.findViewById(R.id.list_grid_advanced);
        mAdvanced= (LineGridView) view.findViewById(R.id.grid_system_advanced);
        mAdvanced.setAdapter(new AdvancedGridViewAdapter(getActivity()));
        mListAdvanced.setAdapter(new com.leo.salt.ui.list.AdvancedGridViewAdapter(getActivity()));
        mListSystem = (LineGridView) view.findViewById(R.id.list_grid_system);
        mListSystem.setAdapter(new com.leo.salt.ui.list.SystemGridViewAdapter(getActivity()));
        mSystem= (LineGridView) view.findViewById(R.id.grid_system);
        mListAdvanced.setOnItemClickListener(new AdapterView.OnItemClickListener(){
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                AdvancedItem(i);
            }
        });
        mAdvanced.setOnItemClickListener(new AdapterView.OnItemClickListener(){
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                AdvancedItem(i);
            }
        });
        mSystem.setOnItemClickListener(new AdapterView.OnItemClickListener(){
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                systemItem(i);
            }
        });
        mListSystem.setOnItemClickListener(new AdapterView.OnItemClickListener(){
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                systemItem(i);
            }
        });
        mListSystemUrl.setOnItemClickListener(new AdapterView.OnItemClickListener(){
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                systemURLItem(i);
            }
        });
        mSystemUrl.setOnItemClickListener(new AdapterView.OnItemClickListener(){
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                systemURLItem(i);
            }
        });

        mSystem.setAdapter(new SystemGridViewAdapter(getActivity()));
        ContentResolver mLeoResolver=mContext.getContentResolver();
        int   Carrierstyle = Settings.System.getInt(mLeoResolver,
                "leo_tweaks_ui_style" ,0);
        if (Carrierstyle== 0){
            gridmode.setVisibility( gridmode.VISIBLE);
            listmode.setVisibility(listmode.GONE);
            // mAbout.setVisibility(View.VISIBLE);
        }else if(Carrierstyle== 1){
            listmode.setVisibility(listmode.VISIBLE);
            gridmode.setVisibility(gridmode.GONE);
        }
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
                new WebDialog(mContext, BatterName, Batteryurl, DB_MAIN_BATTERY,false);
                break;

            case 2:
                if (AndroidUtils.getCustomOTA().equals(safety)) {
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Sound);
                    mContext.startActivity(FragmentContainer);
                }else {
                    Promptdonate(getActivity());
                }

                break;
            case 3:

                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Edge);
                    mContext.startActivity(FragmentContainer);


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
        //dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
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

    private  int systemURLItem(int i){
        switch (i) {
            case 0:
                AlertDialog dialog = new AlertDialog.Builder(mContext)
                        .setTitle(R.string.show_dsp)//设置对话框的标题
                        .setItems(R.array.network_items, new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                switch (which) {
                                    case 0:
                                        componetName("com.android.settings","com.android.settings.RadioInfo");
                                        break;
                                    case 1:
                                        Intent   intentFragment = new Intent(mContext, PingActivity.class);
                                        mContext.startActivity(intentFragment);
                                        break;
                                    case 2:
                                        componetName("com.samsung.hiddennetworksetting","com.samsung.hiddennetworksetting.MainActivity");
                                        break;
                                }
                                dialog.dismiss();
                            }
                        })

                        .create();
              //  dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
                dialog.show();

                break;
            case 1:
                try {
                    Intent intent = new Intent();
                    intent.setFlags(268435456);
                    intent.setAction("com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
                    mContext.startActivity(intent);
                } catch (Exception e) {
                    Toast.makeText(mContext, "首次打开开发者模式，你需要手动进入设定-关于手机-软件信息、连续点击几次编译版本号，下次即可打开开发者模式", 0).show();
                }
                break;

            case 2:
                componetName("com.android.settings","com.samsung.android.settings.location.AGPSFunctionSwitchList");
                break;
            case 3:
                componetName("com.android.systemui","com.android.systemui.DessertCase");
                break;
            case 4:
                componetName("com.android.systemui","com.android.systemui.egg.MLandActivity");
                break;
        }


        return i;

    }
    private  void  componetName(String name ,String str){
        ComponentName componetName = new ComponentName(
//这个是另外一个应用程序的包名
                name,
//这个参数是要启动的Activity
                str);

        try {
            Intent intent = new Intent();
            intent.setComponent(componetName);
            mContext.startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(mContext, mContext.getString(R.string.no_activity), Toast.LENGTH_SHORT).show();
        }
    }

    private  int AdvancedItem(int i){
        switch (i) {
            case 0:
                startActivity(new Intent(mContext,WifiPasswordActivity.class));
                break;
            case 1:
                Spit();
                break;
            case 2:

                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Autostart);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:
                if (AndroidUtils.getCustomOTA().equals(safety)) {

                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Apps);
                    mContext.startActivity(FragmentContainer);
                }else {
                    Promptdonate(getActivity());
                }

                break;
            case 5:
                if (AndroidUtils.getCustomOTA().equals(safety)) {

                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Property);
                    mContext.startActivity(FragmentContainer);

                }else {
                    Promptdonate(getActivity());
                }
                break;
            case 4:
                if (AndroidUtils.getCustomOTA().equals(safety)) {

                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.IMG);
                    mContext.startActivity(FragmentContainer);

                }else {
                    Promptdonate(getActivity());
                }
                break;
            case 6:
                if (AndroidUtils.getCustomOTA().equals( safety)) {
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Log);
                    mContext.startActivity(FragmentContainer);

                }else {
                    Promptdonate(getActivity());
                }
                break;
        }


        return i;

    }

    private void Spit(){
       AlertDialog dialog = new AlertDialog.Builder(mContext)
       .setMessage(R.string.dpi_spit_message)//设置对话框的内容
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        SetDpiFragment mPresetDPI = new SetDpiFragment();
                        FragmentTransaction mPresetDialogTransaction = getFragmentManager().beginTransaction();
                        mPresetDialogTransaction.add(mPresetDPI, "lcd");
                        mPresetDialogTransaction.commitAllowingStateLoss();
                        dialog.dismiss();
                    }
                }).create();
        dialog.show();
   //  dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }
}