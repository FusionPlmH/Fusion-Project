package com.leo.salt.ui;



import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;

import android.support.v4.app.Fragment;
import android.support.v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.salt.LeoApp;
import com.leo.salt.R;

import com.leo.salt.activity.WebViewActivity;
import com.leo.salt.utils.root.Helpers;
import com.leo.salt.widget.DialogUtil;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.Random;

import static com.leo.salt.utils.AndroidUtils.*;
import static com.leo.salt.utils.Utils.isLunarSetting;

public class AboutMenuFragment extends Fragment {
    private LineGridView mAbout;
    private Context mContext;
    ImageView img;
    private LineGridView mListAbout;
    TextView slogan;
    TextView copyright;
    LinearLayout gridmode;
    LinearLayout listmode;
    private View view;
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mContext=getActivity();
        view= inflater.inflate(R.layout.about_meun, container, false);
        LockThemeView();
        mAbout.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                AboutItem(i);
            }
        });
        mListAbout.setOnItemClickListener(new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                AboutItem(i);
            }
        });
        slogan=(TextView) view.findViewById(R.id.about_slogan);
        slogan.setTextColor(getCustomizedColor(mContext));
        img = (ImageView)view. findViewById(R.id.about_head);
        img.setBackgroundResource(R.drawable.timg);
        copyright=(TextView) view.findViewById(R.id.rom_copyright);
        copyright.setText(mContext.getResources().getString( R.string.development_info));
        return view;
    }
    public void LockThemeView() {
        ContentResolver mLeoResolver=mContext.getContentResolver();
        int   Carrierstyle =Settings.System.getInt(mLeoResolver,
                "leo_tweaks_ui_style" ,0);
        gridmode=(LinearLayout) view.findViewById(R.id.grid_mode);
        mAbout = (LineGridView) view.findViewById(R.id.grid_about);
        listmode=(LinearLayout) view.findViewById(R.id.list_mode);
        mListAbout = (LineGridView) view.findViewById(R.id.list_grid_about);
        mAbout.setAdapter(new AppAboutGridViewAdapter(getActivity()));
        mListAbout.setAdapter(new com.leo.salt.ui.list.AppAboutGridViewAdapter(getActivity()));
        if (Carrierstyle== 0){
            gridmode.setVisibility( gridmode.VISIBLE);
            listmode.setVisibility(listmode.GONE);
           // mAbout.setVisibility(View.VISIBLE);
        }else if(Carrierstyle== 1){
            listmode.setVisibility(listmode.VISIBLE);
            gridmode.setVisibility(gridmode.GONE);
        }
    }


    private  int AboutItem(int i){
        switch (i) {
            case 0:
                Intent webViewIntent = new Intent(mContext.getApplicationContext(), WebViewActivity.class);
                webViewIntent.putExtra("url", "https://weibo.com/leorom");
                mContext.startActivity(webViewIntent);
                break;
            case 1:
                if (isLunarSetting()==true){
                    ComponentName componetName = new ComponentName(
                            "com.leo.service",
                            "com.leo.service.MainActivity");
                    try {
                        Intent intent = new Intent();
                        intent.setComponent(componetName);
                        startActivity(intent);
                    } catch (Exception e) {
                        Toast.makeText(mContext, R.string.no_activity,
                                Toast.LENGTH_SHORT).show();
                    }
                }else {
                    openUrl("https://t.me/DreamPlmh");
                }

                break;
            case 2:
                DialogUtil.getQQ(getActivity());
                break;
            case 3:
                openUrl("https://t.me/joinchat/EJAScg_-vxG8Ppj2HvUifw");
                break;
        }
        return i;
    }
    private void openUrl(String url) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
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
            rom_version.setText(mContext.getResources().getString(R.string.phone_model_info) +"\n"+pname()+"\n"+"\n"+mContext.getResources().getString( R.string.android_info_androidname)+"\n"+getSystemVersion()+"\n"+"\n"+mContext.getResources().getString(R.string.android_info_sdk)+"\n"+getSDK ()+"\n"+"\n"+ mContext.getResources().getString(R.string.android_info_leo)+"\n"+getDevice()+"-"+getROMVersion()+"\n"+"\n"+mContext.getResources().getString(R.string.android_info_bottombag)+ "\n"+getBasicsSystemVersion()+"\n"+"\n"+mContext.getResources().getString(R.string.leo_code_versions)+"\n"+getCustomSystemVersion()+mContext.getResources().getString(R.string.is_using_summary)+"\n"+"\n"+mContext.getResources().getString(R.string.android_info_kernel)+"\n"+getKenel()+"\n"+"\n"+mContext.getResources().getString( R.string.android_info_baseband)+"\n"+getBaseband_Ver()+"\n"+"\n"+"busybox"+"\n"+getbusybox()+"\n"+"\n"+getAppName(mContext)+"\n"+getVersionName(mContext)+customization(mContext));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static int getCustomizedColor(Context c) {
        int[] customizedColors = c.getResources().getIntArray(R.array.material_designer_colors);
        int customizedColor = customizedColors[new Random().nextInt(customizedColors.length)];
        return customizedColor;
    }

    public static void startWWW(Context context) {
        Intent webViewIntent = new Intent(context.getApplicationContext(), WebViewActivity.class);
        webViewIntent.putExtra("url", "http://www.leorom.cc/");
        context.startActivity(webViewIntent);
    }
    public static String getKenel() {
        String Kernel;
        String  linuxKernel;
        Kernel=(System.getProperty("os.version"));
        linuxKernel=(readCommandOutput("uname -a"));
        return Kernel+"\n"+linuxKernel;
    }

    public static boolean busyboxInstalled() {
        return existBinary("busybox");
    }
    private static boolean existBinary(String str) {
        String[] split = System.getenv("PATH").split(":");
        int length = split.length;
        int i = 0;
        while (i < length) {
            StringBuilder stringBuilder;
            String str2 = split[i];
            if (!str2.endsWith("/")) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(str2);
                stringBuilder.append("/");
                str2 = stringBuilder.toString();
            }
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(str2);
            stringBuilder2.append(str);
            if (!new File(stringBuilder2.toString()).exists()) {
                stringBuilder = new StringBuilder();
                stringBuilder.append(str2);
                stringBuilder.append(str);

            }
            return true;
        }
        return false;
    }

    public static String getbusybox() {

        String  linuxKernel;
        String readCommandOutput =readCommandOutput("busybox");
        if (!busyboxInstalled() || readCommandOutput == null || readCommandOutput.length() <= 0) {
            linuxKernel="";
        } else {
            linuxKernel =readCommandOutput("busybox");
        }

        return linuxKernel;
    }
    public static String readCommandOutput(String str) {
        try {
            Process exec = Runtime.getRuntime().exec(str);
            if (exec.waitFor() == 0) {
                exec.getInputStream();
            } else {
                exec.getErrorStream();
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            str = bufferedReader.readLine();
            bufferedReader.close();
            return str;
        } catch (Exception e) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("ERROR: ");
            stringBuilder.append(e.getMessage());
            return stringBuilder.toString();
        }
    }

}