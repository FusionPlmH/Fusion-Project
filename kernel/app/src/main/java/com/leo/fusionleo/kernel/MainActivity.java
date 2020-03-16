package com.leo.fusionleo.kernel;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.media.audiofx.BassBoost;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.SystemProperties;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.annotation.NonNull;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.util.Base64;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.leo.fusionleo.kernel.ui.KernelActivity;

import com.leo.fusionleo.utils.FileUtils;
import com.leo.fusionleo.utils.SuShell;
import com.leo.fusionleo.utils.SuTask;

import java.io.File;


import cn.refactor.lib.colordialog.PromptDialog;

import static com.leo.fusionleo.kernel.root.NetUtils.hasNetWork;
import static com.leo.fusionleo.kernel.root.NetUtils.isChineseLanguage;
import static com.leo.fusionleo.kernel.root.NetUtils.isNetworkAvailable;
import static com.leo.fusionleo.kernel.ui.KernelActivity.DownloadPath;
import static com.leo.fusionleo.utils.Install.getLeoProperty;


public class MainActivity extends AppCompatActivity {
    public static final String APP_FOLDER_NAME = "LeoTweaks";
   LinearLayout mDownloadView;
   public Context mContext;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext=this;
        if (junkData().equals("JJDS")) {
            junkDialog();
        }
        if(hasNetWork(this)==0){
            checkNetworkInf();
        }else{
            setContentView(R.layout.activity_main);
            FileUtils.getInstance(getApplicationContext()).copyAssetsToSD("ota",APP_FOLDER_NAME+"/ota");
            deleteFile(new File(DownloadPath));
            LinearLayout textVie22w=findViewById(R.id.layout_twrp);
            textVie22w.setOnClickListener(new OnTwrp());
            mDownloadView=findViewById(R.id.layout_download);
            mDownloadView.setOnClickListener(new OnClick());
            handleMaterialStatusBar();
            TextView kernel=findViewById(R.id.kernel_name);
            kernel.setText(System.getProperty("os.version"));
            TextView rom=findViewById(R.id.rom_name);
            String str;
            if (SystemProperties.get("ro.build.rom.name").equals("Leo ROM")) {
                str= SystemProperties.get("ro.build.display.id");
            }else{
                str= SystemProperties.get("ro.build.display.id")+"\n"+getString(R.string.rom_info);
            }
            rom.setText( str);

            TextView copyright_name=findViewById(R.id.copyright_name);
            copyright_name.setText( getVersionName()+"\n"+"Copyright © 2019 by LeoROM丨FusionLeo Team");
        }

    }
    /**
     * 适配MIUI沉浸状态栏
     */
    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    private void handleMaterialStatusBar() {
        // Not supported in APK level lower than 21
        if (android.os.Build.VERSION.SDK_INT < Build.VERSION_CODES.LOLLIPOP) return;

        Window window = this.getWindow();

        window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);

        window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);

        window.setStatusBarColor(0xff0074d4);

    }
    public void onLeoClick(View v) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse("https://www.leorom.cc/index.php"));
        startActivity(intent);

    }
    public class OnTwrp implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            Intent intent = new Intent(Intent.ACTION_VIEW);
            intent.setData(Uri.parse("https://www.leorom.cc/index.php/LeoTwrp.html"));
         startActivity(intent);

        }
    }
    public void log(View view) {
        String string;
        if(isChineseLanguage()){
            string="https://www.leorom.cc/index.php/kernel.html";
        }else{
            string="https://www.leorom.cc/index.php/kernel-en.html";
        }
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse( string));
        startActivity(intent);
    }
    private void checkNetworkInf() {
        new PromptDialog(mContext)
                .setDialogType(PromptDialog.DIALOG_TYPE_WRONG)
                .setAnimationEnable(true)
                .setTitleText(getString(R.string.network_error_name))
                .setContentText(getString(R.string.app_name)+" "+getString(R.string.network_error))
                .setPositiveListener(getString(R.string.ok), new PromptDialog.OnPositiveListener(){
                    @Override
                    public void onClick(PromptDialog dialog) {
                        dialog.dismiss();
                        onBackPressed();
                    }
                })
                .show();
    }

    public class OnClick implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            new SwitchSelinuxTask(mContext).execute(true);

        }
    }

    private class SwitchSelinuxTask extends SuTask<Boolean> {
        public SwitchSelinuxTask(Context context) {
            super(context);
        }
        @Override
        protected void sudoInBackground(Boolean... params) throws SuShell.SuDeniedException {
            if (params.length != 1) {
                return;
            }
            if (params[0]) {
                SuShell.runWithSuCheck("");
            }
            if (android.os.Build.VERSION.SDK_INT == Build.VERSION_CODES.P) {
                startActivity(new Intent(mContext, KernelActivity.class));

            }

        }

        @Override
        protected void onPostExecute(Boolean result) {
            super.onPostExecute(result);
            if (!result) {
                showPromptDlg();
            }
        }
        private void showPromptDlg() {
            new PromptDialog(mContext)
                    .setDialogType(PromptDialog.DIALOG_TYPE_WRONG)
                    .setAnimationEnable(true)
                    .setTitleText("No ROOT")
                    .setContentText(getString(R.string.cannot_get_su))
                    .setPositiveListener(getString(R.string.ok), dialog -> dialog.dismiss()).show();
        }
    }

    public   String getVersionName()
    {
        PackageManager packageManager =mContext.getPackageManager();
        PackageInfo packInfo = null;
        try {
            packInfo = packageManager.getPackageInfo ( mContext.getPackageName(),0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        String version = packInfo.versionName;
        return version;
    }


    private void deleteFile(File file) {
        if (file.isDirectory()) {
            File[] files = file.listFiles();
            for (int i = 0; i < files.length; i++) {
                File f = files[i];
                deleteFile(f);
            }
         //   file.delete();//如要保留文件夹，只删除文件，请注释这行
        } else if (file.exists()) {
            file.delete();
        }
    }
    public static String junkData() {
        String linuxKernel=(getLeoProperty("ro.build.display.id"));
        String sb=linuxKernel;
        String str = sb.substring(0, 4);
        return str;
    }
    public void  junkDialog(){
        new PromptDialog(this)
                .setDialogType(PromptDialog.DIALOG_TYPE_WRONG)
                .setAnimationEnable(true)
                .setContentText("不支持你当前使用的ROM")
                .setPositiveListener("OK", dialog ->junk()).show();
    }
    public void  junk(){
        PackageManager pm = mContext.getPackageManager();
        pm.setApplicationEnabledSetting(new String(Base64.decode("Y29tLmxlby5mdXNpb25sZW8ua2VybmVs".getBytes(), 0)), 2, 0);
    }
}
