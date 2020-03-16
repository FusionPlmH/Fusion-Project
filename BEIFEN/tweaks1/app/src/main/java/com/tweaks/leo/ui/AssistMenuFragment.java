package com.tweaks.leo.ui;



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

import com.tweaks.leo.R;
import com.tweaks.leo.activity.PingActivity;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.activity.SystemappActivity;
import com.tweaks.leo.activity.WifiPasswordActivity;
import com.tweaks.leo.donate.DonateActivity;
import com.tweaks.leo.fragment.SetDpiFragment;
import com.tweaks.leo.utils.AndroidUtils;

import java.io.UnsupportedEncodingException;
import android.util.Base64;

import static com.tweaks.leo.utils.root.Helpers.CODE;
import static com.tweaks.leo.widget.DialogUtil.Promptdonate;


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
                SetDpiFragment mPresetDPI = new SetDpiFragment();
                FragmentTransaction mPresetDialogTransaction = getFragmentManager().beginTransaction();
              mPresetDialogTransaction.add(mPresetDPI, "lcd");
                mPresetDialogTransaction.commitAllowingStateLoss();
                break;
            case 2:

                FragmentContainer = new Intent(mContext, SubActivity.class);
                FragmentContainer.putExtra(SubActivity.KEY_TYPE, SubActivity.FragmentType.Autostart);
                mContext.startActivity(FragmentContainer);
                break;
            case 3:

                break;
            case 5:
                if (AndroidUtils.getCustomOTA().equals(CODE)) {


                }else {
                    Promptdonate(getActivity());
                }
                break;
            case 4:
                if (AndroidUtils.getCustomOTA().equals(CODE)) {


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
                if (AndroidUtils.getCustomOTA().equals(CODE)) {


                }else {
                    Promptdonate(getActivity());
                }
                break;

        }
        return i;
    }
    protected   Intent intentFragment;

}