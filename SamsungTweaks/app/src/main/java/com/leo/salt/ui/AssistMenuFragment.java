package com.fusionleo.salt.ui;



import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.fusionleo.salt.R;
import com.fusionleo.salt.activity.PingActivity;
import com.fusionleo.salt.activity.SubActivity;

import com.fusionleo.salt.activity.WifiPasswordActivity;

import com.fusionleo.salt.fragment.SetDpiFragment;
import com.fusionleo.salt.utils.AndroidUtils;
import com.fusionleo.salt.utils.root.Helpers;


import static com.fusionleo.salt.utils.Constants.safety;
import static com.fusionleo.salt.utils.Utils.VipDATA;
import static com.fusionleo.salt.widget.DialogUtil.Promptdonate;


public class AssistMenuFragment extends Fragment {
    private Intent FragmentContainer;
    private LineGridView mAssist;
    private Context mContext;


    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mContext=getActivity();
        View view = inflater.inflate(R.layout.assist_meun, container, false);
        mAssist= (LineGridView) view.findViewById(R.id.assist_about);
        //   initViews();
        //   gv.setOnItemClickListener(this);
        mAssist.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                AboutItem(i);
            }
        });
        mAssist.setAdapter(new AssistGridViewAdapter(getActivity()));

        return view;
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
    private  int AboutItem(int i){
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
                    VipDATA(mContext);
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Apps);
                    mContext.startActivity(FragmentContainer);
                }else {
                    Promptdonate(getActivity());
                }

                break;
            case 5:
                if (AndroidUtils.getCustomOTA().equals(safety)) {
                    VipDATA(mContext);
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.Property);
                    mContext.startActivity(FragmentContainer);

                }else {
                    Promptdonate(getActivity());
                }
                break;
            case 4:
                if (AndroidUtils.getCustomOTA().equals(safety)) {
                    VipDATA(mContext);
                    FragmentContainer = new Intent(mContext, SubActivity.class);
                    FragmentContainer.putExtra(SubActivity.Companion.getKEY_TYPE(), SubActivity.FragmentType.IMG);
                    mContext.startActivity(FragmentContainer);

                }else {
                    Promptdonate(getActivity());
                }
                break;
            case 6:
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
                                        intentFragment = new Intent(mContext, PingActivity.class);
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
                dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
                dialog.show();

                break;
            case 7:
                try {
                    Intent intent = new Intent();
                    intent.setFlags(268435456);
                    intent.setAction("com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
                   mContext.startActivity(intent);
                } catch (Exception e) {
                    Toast.makeText(mContext, "首次打开开发者模式，你需要手动进入设定-关于手机-软件信息、连续点击几次编译版本号，下次即可打开开发者模式", 0).show();
                }
                break;

            case 8:
                componetName("com.android.settings","com.samsung.android.settings.location.AGPSFunctionSwitchList");
                break;
            case 9:
                componetName("com.android.systemui","com.android.systemui.DessertCase");
                break;
            case 10:
                componetName("com.android.systemui","com.android.systemui.egg.MLandActivity");
                break;
            case 11:
                if (AndroidUtils.getCustomOTA().equals( safety)) {
                    VipDATA(mContext);
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
    protected   Intent intentFragment;
private void Spit(){
    AlertDialog dialog = new AlertDialog.Builder(mContext)
            .setMessage(R.string.dpi_spit_message)//设置对话框的内容
            .setPositiveButton("确定", new DialogInterface.OnClickListener() {
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
    dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
}
}