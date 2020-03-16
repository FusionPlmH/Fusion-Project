package com.android.settings.leo;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;

import android.provider.Settings;
import android.support.design.widget.Snackbar;
import android.preference.PreferenceFragment;

import android.preference.PreferenceScreen;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceCategory;
import android.widget.Toast;

import com.android.leo.R;
import com.android.settings.SettingsPreferenceFragment;
import com.android.settings.search.Indexable;

import java.util.List;
import java.util.Locale;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.android.settings.leo.LeoConfig.AppsIcon;

import static com.android.settings.leo.LeoConfig.getCustomDrawable;
import static com.android.settings.leo.LeoConfig.getStringIdentifier;
import static com.android.settings.leo.LeoConfig.openUrl;


public  class LeoPreferenceFragment extends SettingsPreferenceFragment implements Preference.OnPreferenceChangeListener, Indexable {
    public Context mContext;
    public Intent mIntent;
    private final String TG="https://t.me/joinchat/EJAScg_-vxG8Ppj2HvUifw";
    private final String LEOROMPACKAGE="com.leo.salt.tweaks";
    public PreferenceCategory mCategory;
    public Preference mHomePreference,mDonate,mWLAN,mOTA,mAPPS,mWebsite,mKernel,mQQ,mTG;
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        mContext =getContext();
        addPreferencesFromResource(mContext.getResources().getIdentifier("sec_software_update_settings", "xml", "com.android.settings"));
        mHomePreference = (Preference)findPreference("show_leo_rom_control");
        mDonate = (Preference) findPreference("show_leo_donate");
        mWLAN = (Preference) findPreference("show_leo_wlan");
        mOTA = (Preference) findPreference("show_leo_ota");
        mAPPS = (Preference) findPreference("show_leo_apps");
        mWebsite = (Preference) findPreference("show_leo_website");
        mKernel = (Preference) findPreference("show_leo_kernel");
        mCategory=(PreferenceCategory) findPreference("LeoPreferenceCategory");
        mCategory.setTitle(getStringIdentifier(mContext,"about_title"));
        showSnackn(getStringIdentifier(mContext,"leo_name"));
        mQQ = (Preference) findPreference("show_leo_qq");
        mTG = (Preference) findPreference("show_leo_tg");
        getPreference(mHomePreference,"leo_app_name","leorom_sumarry",AppsIcon(mContext,LEOROMPACKAGE));
        getPreference( mDonate,"leo_slide_meun_donate","leo_slide_meun_donate_sumarry",getCustomDrawable(mContext,"ic_donate"));
        getPreference(mWLAN,"grid_wifi","grid_wifi_sumarry",getCustomDrawable(mContext,"ic_wifi"));
        getPreference(mOTA,"leo_slide_meun_update","leo_slide_meun_ota_sumarry",getCustomDrawable(mContext,"ic_update"));
        getPreference( mAPPS,"grid_apps","grid_apps_sumarry",getCustomDrawable(mContext,"ic_apps"));
        getPreference( mKernel,"grid_FusionLeo","grid_FusionLeo_sumarry",AppsIcon(mContext,"com.leo.fusionleo.kernel"));
        mWebsite.setIcon(getCustomDrawable(mContext,"ic_web"));
        mWebsite.setSummary("https://www.leorom.cc");
        mWebsite.setTitle(getStringIdentifier(mContext,"FusionLeo_Group"));
        mQQ.setTitle(getStringIdentifier(mContext,"about_qq"));
        mQQ.setIcon(getCustomDrawable(mContext,"ic_qq"));
        mTG.setTitle("Telegram");
        mTG.setIcon(getCustomDrawable(mContext,"ic_telegram"));
        Avilible("com.leo.fusionleo.kernel",mKernel);
        Avilible("com.leo.salt.tweaks",mHomePreference);
    }
    public int getMetricsCategory() {
        return 46;
    }


   public void getPreference(Preference preference,String title,String summary ,Drawable drawable){
       preference.setTitle(getStringIdentifier(mContext,title));
       preference.setSummary(getStringIdentifier(mContext,summary));
       preference.setIcon(drawable);
   }
    @Override
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference == mHomePreference) {
            try {
                ComponentName componetName = new ComponentName(LEOROMPACKAGE, LEOROMPACKAGE+".SplashActivity");
                mIntent = new Intent();
                mIntent.setComponent(componetName);
                startActivity( mIntent);
            } catch (Exception e) {
                LeoIntent("com.leo.ROM_CONTROL");
            }
            Avilible("com.leo.salt.tweaks",mHomePreference);
            return true;
        }else if (preference == mDonate) {
            LeoIntent("com.leo.ACTION_DONATE");
            return true;
        }else if (preference ==  mWLAN) {
            LeoIntent("com.leo.ACTION_WIFI");
            return true;
        }else if (preference == mOTA) {
            LeoIntent("com.leo.ACTION_UPDATR");
            return true;
        }else if (preference == mAPPS) {
            LeoIntent("com.leo.ACTION_APPS");
            return true;
        }else if (preference == mWebsite) {
            openUrl("https://www.leorom.cc/",getActivity());
            return true;
        }else if (preference == mKernel) {
            Avilible("com.leo.fusionleo.kernel",mKernel);
            LeoIntent("com.leo.fusionleo_kernel");
            return true;
        }else if (preference == mTG) {
            if(isChineseLanguage()){
                CheckCHTGGroup(getActivity());
            }else{
                openUrl(TG,getActivity());
            }
            return true;
        }else if (preference == mQQ) {
            joinQQGroup(mContext,"4zUqpP7ZnFnqswJGwuTDkCbK6zxOZp-5");
            return true;
        }else{
            return super.onPreferenceTreeClick(preference);
        }
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object o) {
        return false;
    }
    public boolean isChineseLanguage() {
        return Resources.getSystem().getConfiguration().locale.getLanguage().startsWith(
                Locale.CHINESE.getLanguage());
    }
    public void showSnackn(String mensaje){

        Toast.makeText(mContext,mensaje, Toast.LENGTH_SHORT).show();
    }
    private void LeoIntent(String str){
        try {
            mIntent = new Intent();
            mIntent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            mIntent.setAction(str);
            startActivity(mIntent);
        } catch (Exception e) {
            showSnackn(getStringIdentifier(mContext,"activity_no"));
        }
    }
    public AlertDialog mDialog;
    public  void CheckCHTGGroup(Context context){
        mDialog= new AlertDialog.Builder(context)
                .setMessage("如果你需要访问Leo团队电报群,你需要使用科学上网才行,具体方法请使用网络搜索")//设置对话框的内容
                //设置对话框的按钮
                .setNegativeButton(android.R.string.cancel, (dialog, which) -> dialog.dismiss())
                .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                    Intent intent = new Intent(Intent.ACTION_VIEW);
                    intent.setData(Uri.parse(TG));
                    context.startActivity(intent);
                    dialog.dismiss();
                }).create();
        mDialog.show();
    }
    public  boolean joinQQGroup( Context context,String str) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D" + str));
        try {
            context. startActivity(intent);
            return true;
        } catch (Exception e) {
            mDialog= new AlertDialog.Builder(context)
                    .setMessage(getStringIdentifier(context,"qq_null"))//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel, (dialog, which) -> dialog.dismiss())
                    .setPositiveButton(getStringIdentifier(context,"qq_download"), (dialog, which) -> {
                        goToMainAppsMarketQQ(context,"com.tencent.mobileqq");
                        dialog.dismiss();
                    }).create();

            // builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            mDialog.show();
            return false;
        }
    }
    public  void goToMainAppsMarketQQ( Context context,String name) {
        Uri uri = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId=" + name);
        final Intent goToMarket = new Intent();
        goToMarket.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
        goToMarket.setData(uri);
        try {
            context.startActivity(goToMarket);
        } catch (ActivityNotFoundException e) {

            e.printStackTrace();
        }
    }
    //判断程序是否存在
    public   boolean isLeoAvilible(Context context, String packageName) {
        final PackageManager packageManager = context.getPackageManager();
        // 获取所有已安装程序的包信息
        List<PackageInfo> pinfo = packageManager.getInstalledPackages(0);
        for ( int i = 0; i < pinfo.size(); i++ )
        {
            if(pinfo.get(i).packageName.equalsIgnoreCase(packageName))
                return true;
        }
        return false;
    }

    private void  Avilible(String str,Preference preference){
        if (isLeoAvilible(mContext, str)) {
            getPreferenceScreen().addPreference(preference);
        }else {
            getPreferenceScreen().removePreference(preference);
        }
    }
}