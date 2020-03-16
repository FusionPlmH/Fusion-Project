package com.leo.global.view.gridmenu;


import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
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


import android.os.Looper;
import android.provider.Settings;
import android.support.design.widget.Snackbar;
import android.app.Fragment;
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


import com.leo.global.amber.WifiPasswordActivity;
import com.leo.global.fragment.BixbyKeyFragment;
import com.leo.global.fragment.SetDpiFragment;

import com.leo.global.tools.PingActivity;
import com.leo.global.tweaks.R;

import com.leo.global.tweaks.activity.FragSettingsActivity;
import com.leo.global.tweaks.activity.FragSubActivity;


import com.leo.global.tweaks.base.BaseFragActivity;
import com.leo.global.tweaks.base.BasePreferenceFragment;
import com.leo.global.view.gridview.AdvancedGridViewAdapter;
import com.leo.global.view.gridview.SystemGridViewAdapter;
import com.leo.global.view.gridview.SystemUrlGridViewAdapter;
import com.leo.global.view.widget.LineGridView;

import static com.leo.global.utils.Build.getLeoSafety;
import static com.leo.global.utils.Constants.safety;
import static com.leo.global.view.widget.DialogView.SamsungGoodLock;
import static com.leo.global.view.widget.DialogView.initSafetyDialogView;


public class AssistMenuFragment extends BasePreferenceFragment {
    private Intent FragmentContainer;
    private LineGridView mSystem;
    private Context mContext;
    LinearLayout gridmode;
    LinearLayout listmode;
    private LineGridView mSystemUrl;
    private LineGridView mAdvanced;
    View view;
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mContext=getActivity();
      view = inflater.inflate(R.layout.assist_meun, container, false);
        listmode=(LinearLayout) view.findViewById(R.id.list_mode);
        gridmode=(LinearLayout) view.findViewById(R.id.grid_mode);
        mSystemUrl= (LineGridView) view.findViewById(R.id.grid_system_url);
        mSystemUrl.setAdapter(new SystemUrlGridViewAdapter(getActivity()));
        mAdvanced= (LineGridView) view.findViewById(R.id.grid_system_advanced);
        mAdvanced.setAdapter(new AdvancedGridViewAdapter(getActivity()));
        mSystem= (LineGridView) view.findViewById(R.id.grid_system);
        mSystem.setAdapter(new SystemGridViewAdapter(getActivity()));
        mAdvanced.setOnItemClickListener((adapterView, view, i, l) -> AdvancedItem(i));
        mSystem.setOnItemClickListener((adapterView, view, i, l) -> systemItem(i));
        mSystemUrl.setOnItemClickListener((adapterView, view, i, l) -> systemURLItem(i));
        return view;
    }
    private  int systemItem(int i){
        switch (i) {
            case 0:
                break;
            case 1:
               SamsungGoodLuck();
                break;
            case 2:

                break;
            case 3:
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

                                SamsungGoodLock(getActivity(),Recentslightingeffectunit,RecentsLightingUnitActivity,Recents ,Recentslightingeffectunit);
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
                .setNegativeButton(android.R.string.cancel, (dialog1, which) -> dialog1.dismiss())
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
                                }
                                dialog.dismiss();
                            }
                        })
                        .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                dialog.dismiss();
                            }
                        })
                        .create();
              //  dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
                dialog.show();

                break;
            case 1:
                Intent intent = new Intent();
                intent.setFlags(268435456);
                intent.setAction("android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
                mContext.startActivity(intent);
                break;

            case 2:
                componetName("com.android.settings","com.samsung.android.settings.location.SatelliteView");
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

        Intent intent = new Intent("/");

ComponentName cm = new ComponentName(name,str);

intent.setComponent(cm);

intent.setAction("android.intent.action.VIEW");
        try {
       getActivity().startActivityForResult( intent , 0);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
           // mActionString.ActionToastSring(context,"activity_no");
        }
    }

    private  int AdvancedItem(int i){

        switch (i) {
            case 0:
                startActivity(new Intent(mContext, WifiPasswordActivity.class));
                break;
            case 1:
                Intent intentWechatHelper =  new Intent(mContext,FragSubActivity.class);
                intentWechatHelper.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.SETTING);
                startActivity(intentWechatHelper);
                break;
            case 2:


                break;
            case 3:

                break;
            case 4:

                break;
            case 5:

                break;
        }

        return i;

    }

    private void Spit(){

   //  dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }
}