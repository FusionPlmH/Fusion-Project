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
import android.widget.Toast;

import com.leo.salt.tools.DeleteApps;
import com.leo.salt.tools.DialogDPI;

import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.FragUIActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.LineGridView;
import com.leo.salt.tweaks.view.widget.ListViewAdapter;
import com.leo.salt.tweaks.view.widget.ScrollListView;
import com.leo.script.KeepShellPublic;


import static com.leo.salt.tweaks.resource.Resource.PACKAGE_SYSTEMUI;
import static com.leo.salt.tweaks.resource.Resource.appICON;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.PermissionFunction;
import static com.leo.salt.tweaks.view.widget.DialogView.SamsungGoodLock;
import static com.leo.salt.tweaks.view.widget.DialogView.ToastALL;
import static com.os.salt.OSBuild.SystemUrl.LeoDonateUnlock;


public class OtherMenuFragment extends Fragment  {
    private ScrollListView mSystemGridView;
    private ScrollListView mAdvancedGridView;
    private ScrollListView mUrlGridView;

    public Activity mContext;
    private View mView;

        public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.system_meun, container, false);
            mContext=getActivity();
            initGridView(mView);

        return  mView;
    }

    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }

    private void initGridView(View v) {
        Drawable[] SystemIcon = {
                appICON(PACKAGE_SYSTEMUI ),
                Resource.getCustomDrawable(mContext,"ic_goodlock"),
                appICON("com.samsung.android.app.cocktailbarservice"),
        };
     String[] SystemitemName = {
             getApksStringInt("grid_system"),
             getApksStringInt("grid_goodlock"),
             getApksStringInt("grid_edge")
     };
        mSystemGridView= (ScrollListView) v.findViewById(R.id.list_system_strategy);
        mSystemGridView.setAdapter(new ListViewAdapter(getActivity(),3, SystemitemName,getCustomArray("strategy_summary"),SystemIcon));
        mSystemGridView.setOnItemClickListener(new SystemGridViewOnClick());
        Drawable[] moduleIcon = {
                Resource.getCustomDrawable(mContext,"ic_wifi"),
                Resource.getCustomDrawable(mContext,"ic_apps"),
                Resource.getCustomDrawable(mContext,"ic_app_manage"),
                Resource.getCustomDrawable(mContext,"ic_img"),
                Resource.getCustomDrawable(mContext,"ic_log")

        };
       String[] moduleitemName = {getApksStringInt("grid_wifi"),
               getApksStringInt("grid_autostart"),
               getApksStringInt("grid_apps"),
               getApksStringInt("grid_img"),
               getApksStringInt("grid_log")};
        mAdvancedGridView = (ScrollListView) v.findViewById(R.id.list_system_module);
        mAdvancedGridView.setAdapter(new ListViewAdapter(getActivity(),5, moduleitemName,getCustomArray("module_summary"),moduleIcon));
        mAdvancedGridView.setOnItemClickListener(new AdvancedGridViewOnClick());
        Drawable[] Iconurl = {Resource.getCustomDrawable(mContext,"ic_signal_logo"),
                Resource.getCustomDrawable(mContext,"ic_network"),
                Resource.getCustomDrawable(mContext,"ic_android"),
                Resource.getCustomDrawable(mContext,"ic_android"),
                Resource.getCustomDrawable(mContext,"ic_agps"),
                Resource.getCustomDrawable(mContext,"ic_android"),
                Resource.getCustomDrawable(mContext,"ic_android")

        };
        mUrlGridView = (ScrollListView) v.findViewById(R.id.list_system_url);
        mUrlGridView.setAdapter(new ListViewAdapter(getActivity(),7, getCustomArray("system_url"),getCustomArray("system_url_summary"),Iconurl ));
        mUrlGridView.setOnItemClickListener(new UrlGridViewOnClick());

    }


    public class SystemGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机
                    intent =  new Intent(mContext,FragSettingActivity.class);
                    intent.putExtra(FragSettingActivity.KEY_TYPE, FragSettingActivity.FragmentType.System);
                    startActivity(intent);
                    break;
                case 1:// 关机
                    SamsungGoodLuck();
                    break;
                case 2:// 关机
                    intent =  new Intent(mContext,FragSubActivity.class);
                    intent.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.Edge);
                    startActivity(intent);
                    break;
            }

        }

    }
    private void  SamsungGoodLuck(){
        AlertDialog dialog = new AlertDialog.Builder(mContext)
                .setTitle("GoodLock")//设置对话框的标题

                .setItems(getCustomArray("goodLock_items"), (dialogInterface, i) -> {
                    switch (i) {
                        case 0:
                            SamsungGoodLock(getActivity(),"com.samsung.android.sidegesturepad","com.samsung.android.sidegesturepad.settings.SGPSettingsActivity",getApksStringInt("goodlock_item_1"));
                            break;
                        case 1:
                            SamsungGoodLock(getActivity(),"com.samsung.android.edgelightingeffectunit","com.samsung.android.edgelightingeffectunit.activity.EdgeLightingUnitActivity",getApksStringInt("goodlock_item_2") );
                            break;
                        case 2:
                            SamsungGoodLock(getActivity(),"com.samsung.android.pluginrecents","com.samsung.android.pluginrecents.setting.SettingsActivity",getApksStringInt("goodlock_item_3"));
                            break;
                        case 3:
                            SamsungGoodLock(getActivity(),"com.samsung.systemui.navillera","com.samsung.systemui.navillera.presentation.view.MainSettingActivity",getApksStringInt("goodlock_item_4"));
                            break;
                    }
                })
                .setNegativeButton(android.R.string.cancel, (dialog1, which) -> dialog1.dismiss())
                .create();
        //dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();
    }


    Intent intent;
    public class AdvancedGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {

            switch (position) {
                case 0:// 关机
                   intent = new Intent();
                    intent.setAction("com.leo.ACTION_WIFI");
                    startActivity(intent);
                    break;
                case 1:// 关机
                    intent =  new Intent(mContext,FragSubActivity.class);
                    intent.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.AutoStarts);
                    startActivity(intent);
                    break;
                case 2:// 关机
                    if(LeoDonateUnlock()){
                        intent =  new Intent(mContext,FragSettingActivity.class);
                        intent.putExtra(FragSettingActivity.KEY_TYPE,FragSettingActivity.FragmentType.APPS);
                        startActivity(intent);
                    }else{
                        PermissionFunction( mContext);
                    }
                    break;
                case 3:// 关机
                    if(LeoDonateUnlock()){
                        intent =  new Intent(mContext,FragSubActivity.class);
                        intent.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.Img);
                        startActivity(intent);
                    }else{
                        PermissionFunction( mContext);
                    }

                    break;
                case 4:// 关机
                    if(LeoDonateUnlock()){
                        intent =  new Intent(mContext,FragSubActivity.class);
                        intent.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.Log);
                        startActivity(intent);
                    }else{
                        PermissionFunction( mContext);
                    }

                    break;
            }

        }

    }



    public class UrlGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机
                    Intent intent = new Intent();
                    intent.setAction("com.leo.ACTION_PING");
                    startActivity(intent);
                    break;
                case 1:// 关机
                    componetName("com.samsung.hiddennetworksetting","com.samsung.hiddennetworksetting.MainActivity");
                    break;
                case 2:// 关机
                    try {
                        intent = new Intent("android.intent.action.MAIN");
                        intent.setClassName("com.android.settings", "com.android.settings.RadioInfo");
                        startActivity(intent);
                        return;
                    } catch (Exception e3) {
                        KeepShellPublic.INSTANCE.doCmdSync("am start -n com.android.settings/com.android.settings.RadioInfo");
                        return;
                    }
                case 3:// 关机
                    try {
                        intent = new Intent("android.intent.action.MAIN");
                        intent.setClassName("com.sec.android.app.hwmoduletest", "com.sec.android.app.hwmoduletest.HwModuleTest");
                        startActivity(intent);
                        return;
                    } catch (Exception e2) {
                        KeepShellPublic.INSTANCE.doCmdSync("am start -n com.sec.android.app.hwmoduletest/com.sec.android.app.hwmoduletest.HwModuleTest");
                        return;
                    }
                case 4:// 关机
                    componetName("com.android.settings","com.samsung.android.settings.location.SatelliteView");
                    break;
                case 5:// 关机
                    componetName("com.android.systemui","com.android.systemui.DessertCase");
                    break;
                case 6:// 关机
                    componetName("com.android.systemui","com.android.systemui.egg.MLandActivity");
                    break;
            }

        }

    }
    public  void  NetworkMode(){
        AlertDialog dialog = new AlertDialog.Builder(mContext)
                .setTitle(R.string.link_count_hide)//设置对话框的标题
                .setItems(R.array.systemComponentSimplify, (dialog12, which) -> {
                    switch (which) {
                        case 0:
                            Intent intent = new Intent();
                            intent.setAction("com.leo.ACTION_PING");
                            startActivity(intent);
                            break;
                        case 1:
                            componetName("com.samsung.hiddennetworksetting","com.samsung.hiddennetworksetting.MainActivity");
                            break;
                        case 2:
                            try {
                                intent = new Intent("android.intent.action.MAIN");
                                intent.setClassName("com.android.settings", "com.android.settings.RadioInfo");
                                startActivity(intent);
                                return;
                            } catch (Exception e3) {
                                KeepShellPublic.INSTANCE.doCmdSync("am start -n com.android.settings/com.android.settings.RadioInfo");
                                return;
                            }
                        case 3:
                            try {
                                intent = new Intent("android.intent.action.MAIN");
                                intent.setClassName("com.sec.android.app.hwmoduletest", "com.sec.android.app.hwmoduletest.HwModuleTest");
                                 startActivity(intent);
                                return;
                            } catch (Exception e2) {
                                KeepShellPublic.INSTANCE.doCmdSync("am start -n com.sec.android.app.hwmoduletest/com.sec.android.app.hwmoduletest.HwModuleTest");
                                return;
                            }

                    }
                    dialog12.dismiss();
                })
                .setNegativeButton(android.R.string.cancel, (dialog1, which) -> dialog1.dismiss())
                .create();
        //  dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();
    }

    public void  componetName(String name, String str){

        Intent intent = new Intent("/");

        ComponentName cm = new ComponentName(name,str);

        intent.setComponent(cm);

        intent.setAction("android.intent.action.VIEW");
        try {
            getActivity().startActivityForResult( intent , 0);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            Toast.makeText(getActivity(),"",Toast.LENGTH_SHORT).show();
        }
    }




}