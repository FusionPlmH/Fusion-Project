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
import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragSubActivity;
import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.widget.LineGridView;


import static com.leo.salt.tweaks.resource.Resource.PACKAGE_SYSTEMUI;
import static com.leo.salt.tweaks.resource.Resource.appICON;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.view.widget.DialogView.SamsungGoodLock;


public class OtherMenuFragment extends Fragment  {
    private LineGridView mSystemGridView;
    private LineGridView mAdvancedGridView;
    private LineGridView mUrlGridView;
    private TextView mSystemName;
    private TextView mAdvancedName;
    private TextView mUrlName;
    public Activity mContext;
    private View mView;

        public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.system_meun, container, false);
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
        mSystemName = (TextView) v.findViewWithTag("grid_system_name");
        mAdvancedName = (TextView) v.findViewWithTag("grid_advanced_name");
        mUrlName = (TextView) v.findViewWithTag("grid_url_name");
        mUrlName.setText( GridTextView("grid_url_title"));
        mAdvancedName.setText( GridTextView("grid_advanced_title"));
        mSystemName.setText( GridTextView("grid_system_title"));
    }
    private void initGridView(View v) {
        mSystemGridView = (LineGridView) v.findViewWithTag("grid_system");
        mSystemGridView.setAdapter(new SystemGridViewAdapter(getActivity()));
        mSystemGridView.setOnItemClickListener(new SystemGridViewOnClick());
        mAdvancedGridView = (LineGridView) v.findViewWithTag("grid_advanced");
        mAdvancedGridView.setAdapter(new AdvancedGridViewAdapter(getActivity()));
        mAdvancedGridView.setOnItemClickListener(new AdvancedGridViewOnClick());
        mUrlGridView = (LineGridView) v.findViewWithTag("grid_url");
        mUrlGridView.setAdapter(new UrlGridViewAdapter(getActivity()));
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
                    intent =  new Intent(mContext,FragSubActivity.class);
                    intent.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.SoundSetting);
                    startActivity(intent);
                    break;
                case 2:// 关机
                    SamsungGoodLuck();
                    break;
                case 3:// 关机
                    intent =  new Intent(mContext,FragSubActivity.class);
                    intent.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.Edge);
                    startActivity(intent);
                    break;
                case 4:// 关机
                    new DialogDPI(mContext).modifyDPI(getActivity().getWindowManager().getDefaultDisplay(),mContext);
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
                            SamsungGoodLock(getActivity(),"com.samsung.android.sidegesturepad","com.samsung.android.sidegesturepad.settings.SGPSettingsActivity",GridTextView("goodlock_item_1"));
                            break;
                        case 1:
                            SamsungGoodLock(getActivity(),"com.samsung.android.edgelightingeffectunit","com.samsung.android.edgelightingeffectunit.activity.EdgeLightingUnitActivity",GridTextView("goodlock_item_2") );
                            break;
                        case 2:
                            SamsungGoodLock(getActivity(),"com.samsung.android.pluginrecents","com.samsung.android.pluginrecents.setting.SettingsActivity",GridTextView("goodlock_item_3"));
                            break;
                        case 3:
                            SamsungGoodLock(getActivity(),"com.samsung.systemui.navillera","com.samsung.systemui.navillera.presentation.view.MainSettingActivity",GridTextView("goodlock_item_4"));
                            break;
                    }
                })
                .setNegativeButton(android.R.string.cancel, (dialog1, which) -> dialog1.dismiss())
                .create();
        //dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();
    }

    public class SystemGridViewAdapter extends BaseAdapter {

        private static final int COUNT = 5;
        Drawable[] Icon = {
                appICON(PACKAGE_SYSTEMUI ),
                Resource.getCustomDrawable(mContext,"ic_sound"),
                Resource.getCustomDrawable(mContext,"ic_goodlock"),
                appICON("com.samsung.android.app.cocktailbarservice"),
                Resource.getCustomDrawable(mContext,"ic_dpi"),

        };
        private String[] itemName = {
                GridTextView("grid_system"),
                GridTextView("grid_sound"),
                GridTextView("grid_goodlock"),
                GridTextView("grid_edge"),
                GridTextView("grid_dpi")};
        private LayoutInflater inflater;
        public SystemGridViewAdapter(Context context){
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
                   intent = new Intent();
                    intent.setAction("com.leo.ACTION_APPS");
                    startActivity(intent);
                    break;
                case 3:// 关机
                    intent =  new Intent(mContext,FragSubActivity.class);
                    intent.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.Img);
                    startActivity(intent);
                    break;
                case 4:// 关机
                    intent =  new Intent(mContext,FragSubActivity.class);
                    intent.putExtra(FragSubActivity.KEY_TYPE, FragSubActivity.FragmentType.Log);
                    startActivity(intent);
                    break;
            }

        }

    }

    public class AdvancedGridViewAdapter extends BaseAdapter {

        private static final int COUNT = 5;
        Drawable[] Icon = {
                Resource.getCustomDrawable(mContext,"ic_wifi"),
                Resource.getCustomDrawable(mContext,"ic_apps"),
                Resource.getCustomDrawable(mContext,"ic_app_manage"),
                Resource.getCustomDrawable(mContext,"ic_img"),
                Resource.getCustomDrawable(mContext,"ic_log")

        };
        private String[] itemName = { GridTextView("grid_wifi"),
                GridTextView("grid_autostart"),
                GridTextView("grid_apps"),
                GridTextView("grid_img"),
                GridTextView("grid_log")};
        private LayoutInflater inflater;
        public AdvancedGridViewAdapter(Context context){
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
    public String GridTextView(String STR){

        return getStringIdentifier(getContext(),STR);
    }


    public class UrlGridViewOnClick implements AdapterView.OnItemClickListener {

        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position,
                                long id) {
            switch (position) {
                case 0:// 关机
                    NetworkMode();
                    break;
                case 1:// 关机
                    componetName("com.android.settings","com.samsung.android.settings.location.SatelliteView");
                    break;
                case 2:// 关机
                    componetName("com.android.systemui","com.android.systemui.DessertCase");
                    break;
                case 3:// 关机
                    componetName("com.android.systemui","com.android.systemui.egg.MLandActivity");
                    break;
                case 4:// 关机
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

    public class UrlGridViewAdapter extends BaseAdapter {

        private static final int COUNT = 4;
        Drawable[] Icon = {Resource.getCustomDrawable(mContext,"ic_network"),
                Resource.getCustomDrawable(mContext,"ic_agps"),
                getResources().getDrawable(R.drawable.ic_android),
                getResources().getDrawable(R.drawable.ic_android),
        };
        private String[] itemName = {
               getString(R.string.link_count_hide),
                GridTextView("grid_agps"),
                GridTextView("grid_jb"),
                GridTextView("grid_jb"),
        };
        private LayoutInflater inflater;
        public UrlGridViewAdapter(Context context){
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