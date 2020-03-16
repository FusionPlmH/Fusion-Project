package com.salt.config.ui;


import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.snackbar.Snackbar;
import com.salt.config.R;
import com.salt.config.adapter.RecyclerItemDecoration;
import com.salt.config.adapter.RecyclerViewAdapter;
import com.salt.config.adapter.RecyclerViewGridAdapter;
import com.salt.config.bean.DataBean;
import com.salt.config.tweaks.activity.FragSubActivity;
import com.salt.script.KeepShellPublic;
import java.util.ArrayList;
import static com.salt.frame.LeadFrame.PACKAGE_SYSTEMUI;
import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.EdgeBar;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.Img;

import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.autostart;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.log;
import static com.salt.config.tweaks.activity.FragTabSubActivity.FragmentType.ServiceStrategy;
import static com.salt.utils.SaltProper.BuildSecuritycheck;
import static com.salt.utils.SaltProper.appICON;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getCustomArray;
import static com.salt.utils.SaltProper.getCustomArrayDrawable;
import static com.salt.utils.startUtils.componetName;
import static com.salt.utils.startUtils.startSub;
import static com.salt.utils.startUtils.startTabSub;
import static com.salt.widget.DialogView.SamsungGoodLock;
import static org.salt.preference.colorpicker.Utils.getColorAttr;

public class ModuleFragment extends Fragment {

    private View mView;
    private RecyclerView SystemGridrecyclerview;
    private RecyclerViewAdapter SystemGridViewAdapter;
    ArrayList<DataBean> SaltSystemGridList= new ArrayList<>();
    private RecyclerView Advancedrecyclerview;
    private RecyclerViewAdapter AdvancedViewAdapter;
    ArrayList<DataBean> SaltAdvancedList= new ArrayList<>();
    private RecyclerView GridLayoutrecyclerview;
    private RecyclerViewGridAdapter recyclerViewGridAdapter;
    ArrayList<DataBean> SaltGridLayoutList= new ArrayList<>();
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.fragment_module, container, false);
        SystemGridrecyclerview= (RecyclerView)mView.findViewById(R.id.recycler_system_strategy);
        loadSystemListData(getActivity());
        Advancedrecyclerview= (RecyclerView)mView.findViewById(R.id.recycler_module);
        loadAdvancedListData(getActivity());
        GridLayoutrecyclerview= (RecyclerView)mView.findViewById(R.id.recycler_url);
        GridLayout(getActivity());
        return  mView;
    }
    private void loadSystemListData(Context context) {

        DataBean dataBean = new DataBean(appICON(PACKAGE_SYSTEMUI ),
                getApksStringInt("grid_system"),
                getApksStringInt("grid_system_summary")
        );
        SaltSystemGridList.add(dataBean);
        DataBean dataBean2 = new DataBean(getCustomDrawable(getContext(),"ic_goodlock"),
                getApksStringInt("grid_goodlock"),
                getApksStringInt("grid_goodlock_summary")
        );
        SaltSystemGridList.add(dataBean2);
        DataBean dataBean3 = new DataBean(appICON("com.samsung.android.app.cocktailbarservice"),
                getApksStringInt("grid_edge"),
                getApksStringInt("grid_edge_summary"));
        SaltSystemGridList.add(dataBean3);
        SystemGridViewAdapter= new RecyclerViewAdapter(getActivity(),SaltSystemGridList);
        SystemGridrecyclerview.setAdapter(SystemGridViewAdapter);
        SystemGridrecyclerview.setNestedScrollingEnabled(false);
        SystemGridrecyclerview.addItemDecoration( new RecyclerItemDecoration(context));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        SystemGridrecyclerview.setLayoutManager(linearLayoutManager);
        linearLayoutManager.setReverseLayout(false);
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        SystemGridViewAdapter.setRecyclerItemClickListener((Position, dataBeanList) -> {
            switch (Position) {
                case 0:// 关机
                    startTabSub(getActivity(),ServiceStrategy);
                    break;
                case 1:// 关机
                    SamsungGoodLuck();
                    break;
                case 2:// 关机
                    startSub(getActivity(),EdgeBar);
                    break;
            }
        });
    }
    Intent  intent;
    private void loadAdvancedListData(Context context) {
        DataBean dataBean = new DataBean(getCustomDrawable(context,"ic_wifi_setting"),
                getApksStringInt("waln_name"),
                getCustomArray("module_summary")[0]
        );
        SaltAdvancedList.add(dataBean);
        DataBean dataBean2 = new DataBean(getCustomDrawable(context,"ic_apps_setting"),
                getApksStringInt("grid_autostart"),
                getCustomArray("module_summary")[1]
        );
        SaltAdvancedList.add(dataBean2);
        DataBean dataBean3 = new DataBean(getCustomDrawable(context,"ic_app_manage_setting"),
                getApksStringInt("grid_apps"),
                getCustomArray("module_summary")[2]);
        SaltAdvancedList.add(dataBean3);
        DataBean dataBean4 = new DataBean(getCustomDrawable(context,"ic_img_setting"),
                getApksStringInt("grid_img"),
                getCustomArray("module_summary")[3]);
        SaltAdvancedList.add(dataBean4);
        DataBean dataBean5 = new DataBean(getCustomDrawable(context,"ic_log_setting"),
                getApksStringInt("grid_log"),
                getCustomArray("module_summary")[4]);
        SaltAdvancedList.add(dataBean5);
        AdvancedViewAdapter= new RecyclerViewAdapter(getActivity(),SaltAdvancedList);
        Advancedrecyclerview.setAdapter(AdvancedViewAdapter);
        Advancedrecyclerview.setNestedScrollingEnabled(false);
        Advancedrecyclerview.addItemDecoration( new RecyclerItemDecoration(context));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        Advancedrecyclerview.setLayoutManager(linearLayoutManager);
        linearLayoutManager.setReverseLayout(false);
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        AdvancedViewAdapter.setRecyclerItemClickListener((Position, dataBeanList) -> {
            switch (Position) {
                case 0:// 关机
                     intent = new Intent();
                    intent.setAction("com.leo.ACTION_WIFI");
                    startActivity(intent);
                    break;
                case 1:// 关机
                    if(BuildSecuritycheck()){
                        startSub(getActivity(),autostart);
                    }else{
                        showSnackn(getApksStringInt(R.string.donate_error));
                    }
                    break;
                case 2:// 关机
                    if(BuildSecuritycheck()){
                        intent = new Intent();
                        intent.setAction("com.leo.ACTION_APPS");
                        startActivity(intent);
                    }else{
                        showSnackn(getApksStringInt(R.string.donate_error));
                    }
                    break;
                case 3:// 关机
                    if(BuildSecuritycheck()){
                        startSub(getActivity(),Img);
                    }else{
                        showSnackn(getApksStringInt(R.string.donate_error));
                    }
                    break;
                case 4:// 关机
                    if(BuildSecuritycheck()){
                        startSub(getActivity(),log);
                    }else{
                        showSnackn(getApksStringInt(R.string.donate_error));
                    }
                    break;
            }
        });

    }

    public void showSnackn(String mensaje){
        Snackbar snackbar = Snackbar.make(getActivity().findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_SHORT)
                .setAction("Action", null);
        snackbar.getView().setBackgroundColor(getColorAttr(getActivity(), R.attr.colorAccent));
        snackbar.show();

    }
    private void  SamsungGoodLuck(){
        AlertDialog dialog = new AlertDialog.Builder(getContext())
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



        public void onGridItemClick( int position) {
            switch (position) {
                case 0:// 关机
                    Intent intent = new Intent();
                    intent.setAction("com.salt.ACTION_PING");
                    startActivity(intent);
                    break;
                case 1:// 关机
                    componetName(getActivity(),"com.samsung.hiddennetworksetting","com.samsung.hiddennetworksetting.MainActivity");
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
                 componetName(getActivity(),"com.android.settings","com.samsung.android.settings.location.SatelliteView");
                    break;
                case 5:// 关机
                   componetName(getActivity(),"com.android.systemui","com.android.systemui.DessertCase");
                    break;
                case 6:// 关机
                  componetName(getActivity(),"com.android.systemui","com.android.systemui.egg.MLandActivity");
                    break;
            }

        }






    @SuppressLint("WrongConstant")
    public void GridLayout(Context context){
        Drawable[] Iconurl = {getCustomDrawable(context,"ic_network_setting"),
               getCustomDrawable(context,"ic_network_setting"),
               getCustomDrawable(context,"ic_phone_setting"),
               getCustomDrawable(context,"ic_phone_setting"),
                getCustomDrawable(context,"ic_agps_setting"),
               getCustomDrawable(context,"ic_phone_setting"),
                getCustomDrawable(context,"ic_phone_setting")

        };
        DataBean dataBean = new DataBean(Iconurl[0],
                getCustomArray("system_url")[0]
        );
        SaltGridLayoutList.add(dataBean);
        DataBean dataBean2 = new DataBean(Iconurl[1],
                getCustomArray("system_url")[1]
        );
        SaltGridLayoutList.add(dataBean2);
        DataBean dataBean3 = new DataBean(Iconurl[2],
                getCustomArray("system_url")[2]);
        SaltGridLayoutList.add(dataBean3);
        DataBean dataBean4 = new DataBean(Iconurl[3],
                getCustomArray("system_url")[3]);
        SaltGridLayoutList.add(dataBean4);
        DataBean dataBean5 = new DataBean(Iconurl[4],
                getCustomArray("system_url")[4]);
        SaltGridLayoutList.add(dataBean5);
        DataBean dataBean6 = new DataBean(Iconurl[5],
                getCustomArray("system_url")[5]);
        SaltGridLayoutList.add(dataBean6);
        DataBean dataBean7 = new DataBean(Iconurl[6],
                getCustomArray("system_url")[6]);
        SaltGridLayoutList.add(dataBean7);
        recyclerViewGridAdapter = new RecyclerViewGridAdapter(context,SaltGridLayoutList);
        GridLayoutrecyclerview.setAdapter(recyclerViewGridAdapter);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context,4);
        GridLayoutrecyclerview.setLayoutManager(gridLayoutManager);
        gridLayoutManager.setReverseLayout(false);
        GridLayoutrecyclerview.setNestedScrollingEnabled(false);
        gridLayoutManager.setOrientation(GridLayout.VERTICAL);
        recyclerViewGridAdapter.setRecyclerItemClickListener((Position, dataBeanList) -> {
            onGridItemClick(Position);
        });
    }
}