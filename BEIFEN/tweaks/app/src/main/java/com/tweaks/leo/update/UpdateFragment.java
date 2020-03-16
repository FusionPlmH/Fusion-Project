package com.tweaks.leo.update;

import android.graphics.Color;
import android.os.Bundle;
import android.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.tweaks.leo.R;
import com.tweaks.leo.ui.GradientHorizontalTextView;
import com.tweaks.leo.utils.root.Helpers;

import com.tweaks.leo.widget.LogDialog;

import java.io.File;

import static com.tweaks.leo.utils.AndroidUtils.getBasicsSystemVersion;
import static com.tweaks.leo.utils.AndroidUtils.getCustomDateSystemVersion;
import static com.tweaks.leo.utils.AndroidUtils.getDevice;
import static com.tweaks.leo.utils.AndroidUtils.getPropHardware;




public class UpdateFragment extends Fragment {

    public GradientHorizontalTextView rom_model;
    public GradientHorizontalTextView Rname;
    public GradientHorizontalTextView chip;
    public GradientHorizontalTextView versions;
    public GradientHorizontalTextView ROMname;
    public TextView ifnfo;
    public Button newest;
    public Button install;
    public UpdateFragment() {
        // Required empty public constructor
    }

    private String url="http://www.leorom.cc/os/ota/update.html";

    private String update=getPropHardware();

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_update, container, false);

        ifnfo = (TextView) view.findViewById(R.id.info);
        ifnfo.setText("1."+" "+"首先检查是否有适合最新版本"+"\n"+"2."+" "+"下载好更新包之后点击“更新”按钮"+"\n"+"3."+" "+"在下载过程请勿关闭本页面");
        chip = (GradientHorizontalTextView) view.findViewById(R.id.chip);
        chip.setText("芯片类别: "+update);
        ifnfo.setTextColor(Color.RED);
        rom_model = (GradientHorizontalTextView) view.findViewById(R.id.rom_model);
        rom_model.setText("设备型号: "+getDevice());
        Rname = (GradientHorizontalTextView) view.findViewById(R.id.plus_one_button);
        versions = (GradientHorizontalTextView) view.findViewById(R.id.versions);
        versions.setText("当前版本: "+getBasicsSystemVersion());
        ROMname = (GradientHorizontalTextView) view.findViewById(R.id.rom_name);
        ROMname.setText("R O M: "+getCustomDateSystemVersion());

        newest = (Button) view.findViewById(R.id.newest_versions);
        newest.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                new LogDialog(getActivity(),url);
            }

        });

        install = (Button) view.findViewById(R.id.install);
        install.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Qualcomminstall();
                Exynosinstall();
            }
        });

        return view;
    }

    public void Qualcomminstall() {
      if (update.equals("qcom")) {
            File file = new File("/sdcard/Download/SamsungQualcomm_update.zip");
               if(file.exists()){
                   Helpers.Companion.OtaCode("高通用户:正在安装更新",getActivity(),"cp  /sdcard/Download/SamsungQualcomm_update.zip /cache/recovery/leoupdate.zip");
             }else {
                   Toast.makeText(getActivity(),LeoUpdate,
                           Toast.LENGTH_SHORT).show();
               };
         }
    }
    private static final String LeoUpdate= "开玩笑吧！当前还没下载更新哦";
    public void Exynosinstall() {
        if (update.equals("Exynos")) {
            File file = new File("/sdcard/Download/SamsungExynos_update.zip");
            if(file.exists()){
                Helpers.Companion.OtaCode("猎户座用户:正在安装更新",getActivity(),"cp  /sdcard/Download/SamsungExynos_update.zip /cache/recovery/leoupdate.zip");
            }else {
                Toast.makeText(getActivity(),LeoUpdate,
                        Toast.LENGTH_SHORT).show();
            }
        }
    }

}
