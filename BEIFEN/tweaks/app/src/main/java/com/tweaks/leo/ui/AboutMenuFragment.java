package com.tweaks.leo.ui;



import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.tweaks.leo.R;
import com.tweaks.leo.activity.ThanksActivity;
import com.tweaks.leo.activity.WebViewActivity;
import com.tweaks.leo.utils.AndroidUtils;
import com.tweaks.leo.utils.root.Helpers;
import com.tweaks.leo.widget.DialogUtil;

import java.util.Random;

import static com.tweaks.leo.utils.AndroidUtils.*;

public class AboutMenuFragment extends Fragment {
    private static final String ARG_COLUMN_COUNT = "column-count";
    private LineGridView mAbout;
    private Context mContext;
    public static final String KEY_TYPE = "type";
    ImageView img;

TextView slogan;
    TextView copyright;
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        mContext=getActivity();
        View view = inflater.inflate(R.layout.about_meun, container, false);
        slogan=(TextView) view.findViewById(R.id.about_slogan);
        slogan.setTextColor(getCustomizedColor(mContext));
        mAbout = (LineGridView) view.findViewById(R.id.grid_about);

        //   initViews();
        //   gv.setOnItemClickListener(this);
        mAbout.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                AboutItem(i);
            }
        });
        mAbout.setAdapter(new AppAboutGridViewAdapter(getActivity()));
        img = (ImageView)view. findViewById(R.id.about_head);
        img.setBackgroundResource(R.drawable.timg);
        copyright=(TextView) view.findViewById(R.id.rom_copyright);
        copyright.setText(mPackage);
        return view;
    }
    String mPackage="Copyright © 2017-2018 Leo 不咸的盐巴";
    Intent intent;
    private  int AboutItem(int i){
        switch (i) {
            case 0:
                Intent webViewIntent = new Intent(mContext.getApplicationContext(), WebViewActivity.class);
                webViewIntent.putExtra("url", "https://weibo.com/leorom");
                mContext.startActivity(webViewIntent);
                break;
            case 1:
                intent = new Intent(mContext.getApplicationContext(), ThanksActivity.class);
                mContext.startActivity(intent);
                break;
            case 2:
                ComponentName componetName = new ComponentName(
//这个是另外一个应用程序的包名
                        "com.leo.service",
//这个参数是要启动的Activity
                        "com.leo.service.MainActivity");

                try {
                    Intent intent = new Intent();
                    intent.setComponent(componetName);
                    startActivity(intent);
                } catch (Exception e) {

                    Toast.makeText(mContext, R.string.no_activity,
                            Toast.LENGTH_SHORT).show();

                }
                break;
            case 3:
                ComponentName componetName1 = new ComponentName(
//这个是另外一个应用程序的包名
                        "com.leo.service",
//这个参数是要启动的Activity
                        "com.leo.service.ContactMe");

                try {
                    Intent intent = new Intent();
                    intent.setComponent(componetName1);
                    startActivity(intent);
                } catch (Exception e) {

                    Toast.makeText(mContext,R.string.no_activity,
                            Toast.LENGTH_SHORT).show();

                }
                break;
            case 4:
                DialogUtil.getQQ(getActivity());
                break;


        }
        return i;
    }

    CardView logo;
    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);

        logo= getActivity().findViewById(R.id.about_logo);
        logo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startWWW( mContext);
            }
        });

        TextView rom_version = getView().findViewById(R.id.rom_version);
        try {
            rom_version.setText("设备型号"+"\n"+getDevice()+"\n"+"\n"+mContext.getResources().getString( R.string.android_info_androidname)+"\n"+getSystemVersion()+"\n"+"\n"+mContext.getResources().getString(R.string.android_info_sdk)+"\n"+getSDK ()+"\n"+"\n"+ mContext.getResources().getString(R.string.android_info_bottombag)+ "\n"+getBasicsSystemVersion()+"\n"+"\n"+"个性化源码"+"\n"+getCustomDateSystemVersion() + " "+getCustomSystemVersion()+mContext.getResources().getString(R.string.is_using_summary)+"\n"+"\n"+mContext.getResources().getString(R.string.android_info_kernel)+"\n"+getLinuxKernalInfoEx()+"\n"+"\n"+mContext.getResources().getString( R.string.android_info_baseband)+"\n"+getBaseband_Ver()+"\n"+"\n"+getAppName(mContext)+"\n"+getVersionName(mContext)+versions(mContext)+mContext.getResources().getString(R.string.is_using_summary));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    static int getCustomizedColor(Context c) {
        int[] customizedColors = c.getResources().getIntArray(R.array.material_designer_colors);
        int customizedColor = customizedColors[new Random().nextInt(customizedColors.length)];
        return customizedColor;
    }

    public static void startWWW(Context context) {
        Intent webViewIntent = new Intent(context.getApplicationContext(), WebViewActivity.class);
        webViewIntent.putExtra("url", "http://www.leorom.cc/");
        context.startActivity(webViewIntent);
    }

}