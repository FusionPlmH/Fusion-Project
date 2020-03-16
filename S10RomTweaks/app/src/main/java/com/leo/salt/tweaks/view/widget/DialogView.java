package com.leo.salt.tweaks.view.widget;



import android.annotation.TargetApi;
import android.app.Activity;

import android.app.AlertDialog;
import android.app.Dialog;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.provider.Settings;

import android.util.Base64;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;


import com.leo.SweetAlert.SweetAlertDialog;

import com.leo.salt.tools.constants.BackupRestoreUnit;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.amber.AppsActivity;

import com.leo.salt.tweaks.amber.WebViewActivity;
import com.leo.salt.tweaks.fota.FotaUpdateActivity;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.script.KeepShellPublic;


import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import static com.leo.salt.tweaks.LeoAmberApplication.getContext;



import static com.leo.salt.tweaks.resource.Resource.DonatePermission;
import static com.leo.salt.tweaks.resource.Resource.addShortCut;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getCustomArray;
import static com.leo.salt.tweaks.resource.Resource.getCustomDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.BatteryUtil.readCurrentFile;
import static com.leo.salt.utils.NetUtils.hasNetWork;
import static com.leo.salt.utils.PrefUtils.NetworkCheckDisabled;
import static com.leo.salt.utils.PrefUtils.ScriptsLogClear;
import static com.os.salt.OSBuild.SystemUrl.FloatingFature;
import static com.os.salt.OSBuild.SystemUrl.Phonebootloader;
import static com.os.salt.globalactions.Utils.setLeoNavKeypressAction;


public class DialogView  {

    static AlertDialog.Builder mDialogBuilder;
    public static void initInfoView(Context context,String Titlename,Drawable icon,String[] name,String[] message) {
        mDialogBuilder= new AlertDialog.Builder(context);
        mDialogBuilder.setTitle(Titlename);
        mDialogBuilder.setIcon(icon);
        LayoutInflater welmsgInflater = LayoutInflater.from(context);
        View welmsgLayout = welmsgInflater.inflate(R.layout.scroll_list_view, null);
        mDialogBuilder.setView(welmsgLayout);
        List<Map<String, Object>> listItems = new ArrayList<Map<String, Object>>();
        for (int i = 0; i < name.length; i++ ) {
            Map<String, Object> listItem = new HashMap<String, Object>();
            listItem.put("name", name[i]);
            listItem.put("message", message[i]);
            listItems.add(listItem);
        }
        SimpleAdapter sampleAdapter = new SimpleAdapter(context
                , listItems
                , R.layout.info_items
                , new String[] {"name", "message"}
                , new int[] { R.id.info_name, R.id.info_message}
        );
        OverScrollListView listview = (OverScrollListView)welmsgLayout .findViewById(R.id.thumbnailListView);
        listview.setAdapter(sampleAdapter);
        listview.setMaxOverScrollY(300);

        mDialogBuilder.setPositiveButton(android.R.string.ok, (dialog, which) -> {
            dialog.dismiss();
        }).create();
        mDialogBuilder.show();

    }

    public static boolean joinQQGroup(final Context context,String str) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D" + str));
        try {
            context. startActivity(intent);
            return true;
        } catch (Exception e) {
            new SweetAlertDialog(context, SweetAlertDialog.ERROR_TYPE,true)
                    .setTitleText(getApksStringInt(R.string.alert_info_tltie))
                    .setContentText(getStringIdentifier(getContext(),"qq_null"))
                    .setConfirmText(getStringIdentifier(getContext(),"qq_download"))
                    .setCancelText(getApksStringInt(android.R.string.cancel))
                    .showCancelButton(true)
                    .setShieldBckKyes(true)
                    .setConfirmClickListener(sDialog -> {
                        sDialog.dismissWithAnimation();
                        goToMainAppsMarketQQ(context,"com.tencent.mobileqq");;
                    })


                    .show();

            return false;
        }
    }
    public static void goToMainAppsMarketQQ(final Context context,String name) {
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

    public static  void SamsungGoodLock(final Context context, String str, String str2, String S) {
        ComponentName componetName = new ComponentName(
//这个是另外一个应用程序的包名
                str,
//这个参数是要启动的Activity
                str2);

        try {
            Intent intent = new Intent();
            intent.setComponent(componetName);
            context.startActivity(intent);
        } catch (Exception e) {
            new SweetAlertDialog(context, SweetAlertDialog.ERROR_TYPE,true)
                    .setTitleText(S)
                    .setContentText("［"+S+"］"+getStringIdentifier(getContext(),"goodlock_null")+"［"+S+"］")
                    .setConfirmText(getStringIdentifier(getContext(),"ota_download"))
                    .setCancelText(getApksStringInt(android.R.string.cancel))
                    .showCancelButton(true)
                    .setShieldBckKyes(true)
                    .setCancelClickListener(sweetAlertDialog -> sweetAlertDialog.dismissWithAnimation())
                    .setConfirmClickListener(sDialog -> {
                        sDialog.dismissWithAnimation();
                        goToMainAppsMarketQQ(context,str);
                    })
                    .show();

        }
    }
    public static void ScienceHttp(Context context){
        new SweetAlertDialog(context, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
                .setCustomImage(getCustomDrawable(context,"ic_telegram"))
                .setTitleText(getApksStringInt(R.string.alert_info_tltie))
                .setContentText("如果你需要访问Leo团队电报群,你需要使用科学上网才行,具体方法请使用网络搜索")
                .setConfirmText(context.getString(android.R.string.ok))
                .setCancelText(getApksStringInt(android.R.string.cancel))
                .showCancelButton(true)
                .setShieldBckKyes(true)
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                    Intent intent = new Intent(Intent.ACTION_VIEW);
                    intent.setData(Uri.parse("https://t.me/joinchat/EJAScg_-vxG8Ppj2HvUifw"));
                    context.startActivity(intent);
                })
                .show();

    }



    public static class CodeViewDialog extends AlertDialog {

        public CodeViewDialog(Context context) {
            super(context);
            initCodeView(context);
        }

        public  void initCodeView(Context context) {
            String[] itemName = getCustomArray("open_source_name");
            String[] SumarryitemName =getCustomArray("open_source_name_info");



            LayoutInflater welmsgInflater = LayoutInflater.from(context);
            View welmsgLayout = welmsgInflater.inflate(R.layout.scroll_list_view, null);
            setView(welmsgLayout);
            List<Map<String, Object>> listItems = new ArrayList<Map<String, Object>>();
            for (int i = 0; i < itemName.length; i++ ) {
                Map<String, Object> listItem = new HashMap<String, Object>();
                listItem.put("name", itemName[i]);
                listItem.put("message", SumarryitemName[i]);
                listItems.add(listItem);
            }
            SimpleAdapter sampleAdapter = new SimpleAdapter(context
                    , listItems
                    , R.layout.info_items
                    , new String[] {"name", "message"}
                    , new int[] { R.id.info_name, R.id.info_message}
            );
            OverScrollListView listview = (OverScrollListView)welmsgLayout .findViewById(R.id.thumbnailListView);
            listview.setAdapter(sampleAdapter);
            listview.setMaxOverScrollY(300);



            listview.setOnItemClickListener(new CodeViewItemOnClick());

        }
        public  class CodeViewItemOnClick implements AdapterView.OnItemClickListener {

            private void openUrl(String url) {


                Intent webViewIntent = new Intent(getContext().getApplicationContext(), WebViewActivity.class);
                webViewIntent.putExtra("url", url);
                webViewIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                getContext().startActivity(webViewIntent);
            }
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position,
                                    long id) {
                String url = null;
                switch (position) {
                    case 0:
                        url="https://developer.android.google.cn/index.html";
                        break;
                    case 1:

                        url="https://github.com/pedant/sweet-alert-dialog";
                        break;
                    case 2:
                        url="https://github.com/pnikosis/materialish-progress";
                        break;
                    case 3:
                        url="https://github.com/bumptech/glide";
                        break;
                    case 4:
                        url="https://square.github.io/picasso/";
                        break;
                }
                if(url != null) {
                    openUrl(url);
                } else {
                    // Toast.makeText(MyApp.getContext(), "Invalid URL", Toast.LENGTH_SHORT).show();
                }
                dismiss();
            }
        }
    }
    public static class LogDialog extends AlertDialog {


       WebView webView;
    ;

        public LogDialog(Context context,String ss,String name) {
            super(context);

            initLogDialog(context,ss,name);
        }

        private void initLogDialog(final Context context ,String ss,String name) {
            View welmsg = View.inflate(context,R.layout.dialog_webview, null);
          //  check = (AppCompatCheckBox) welmsg.findViewById(R.id.check_ok);

         //   check.setVisibility(GONE);
            setView(welmsg);
            setTitle(name);
            webView = (WebView) welmsg.findViewById(R.id.webview);
            ProgressBar   mProgressBar = (ProgressBar) welmsg.findViewById(R.id.progressBar);
            webView.loadUrl(ss);
            //设置WebView属性，能够执行Javascript脚本
            webView.getSettings().setJavaScriptEnabled(true);
            webView.getSettings().setAllowFileAccess(true);
            webView.getSettings().setDomStorageEnabled(true);
            // 开启database storage API功能
            webView.getSettings().setDatabaseEnabled(false);
            webView.getSettings().setDefaultTextEncodingName("UTF-8");
            webView.setWebChromeClient(new WebChromeClient());
            webView.clearHistory();
            webView.clearFormData();
            webView.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);

            webView.setWebChromeClient(new WebChromeClient(){
                @Override
                public void onReceivedTitle(WebView view, String title) {
                    super.onReceivedTitle(view, title);

                }
                @Override
                public void onProgressChanged(WebView view, int newProgress) {
                    if (newProgress < 100) {
                        mProgressBar.setVisibility(View.VISIBLE);
                    } else if(newProgress==100){
                        mProgressBar.setVisibility(View.GONE);
                    }else {
                        mProgressBar.setVisibility(View.GONE);
                    }
                    super.onProgressChanged(view, newProgress);
                }
            });

        }
    }

    public static void WebDialog(Context context,String ss,String name){
        LogDialog minitLogDialog  =new LogDialog(context,ss,name);
        minitLogDialog.setButton(DialogInterface.BUTTON_NEGATIVE,context.getString(android.R.string.cancel), (dialog, which) -> dialog.dismiss());
        minitLogDialog.dismiss();
        minitLogDialog.create();
        minitLogDialog.show();
    }
    public static void intCodeViewDialog(Context context,String ss){
        DialogView.CodeViewDialog minitCodeView=new DialogView.CodeViewDialog(context);
        minitCodeView.setTitle(ss);
        minitCodeView.setButton(DialogInterface.BUTTON_NEGATIVE,context.getString(android.R.string.cancel), (dialog, which) -> dialog.dismiss());
        minitCodeView.dismiss();
        minitCodeView.create();
        minitCodeView.show();
    }
    public static void shareMsg(Context context, String activityTitle,
                                String msgTitle, String msgText, String imgPath) {
        Intent intent = new Intent(Intent.ACTION_SEND);
        if (imgPath == null || imgPath.equals("")) {
            intent.setType("text/plain"); // 纯文本
        } else {
            File f = new File(imgPath);
            if (f != null && f.exists() && f.isFile()) {
                intent.setType("image/jpg");
                Uri u = Uri.fromFile(f);
                intent.putExtra(Intent.EXTRA_STREAM, u);
            }
        }
        intent.putExtra(Intent.EXTRA_SUBJECT, msgTitle);
        intent.putExtra(Intent.EXTRA_TEXT, msgText);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        context.startActivity(Intent.createChooser(intent, activityTitle));
    }



    public static void NetworkCheck(Activity context){

        new SweetAlertDialog(context, SweetAlertDialog.ERROR_TYPE,true)
                .setTitleText(getStringIdentifier(getContext(),"network_check"))
                .setContentText(getStringIdentifier(getContext(),"network_check_null")+context.getString(R.string.app_name)+"］")
                .setConfirmText(getApksStringInt(android.R.string.ok))
                .setShieldBckKyes(false)
                .setConfirmClickListener(sDialog -> {
                    Intent intent = new Intent();
                    intent.setAction(Intent.ACTION_MAIN);
                    intent.addCategory(Intent.CATEGORY_HOME);
                    context.startActivity(intent);
                    context.finish();
                    sDialog.dismissWithAnimation();
                })
                .show();

    }


    public static void Shortcut(Context context){
        AlertDialog dialog = new AlertDialog.Builder(context)
                .setTitle(getStringIdentifier(getContext(),"shortcut_select"))//设置对话框的标题
                .setItems(getCustomArray("shortcut_items"), new DialogInterface.OnClickListener() {
                    @TargetApi(Build.VERSION_CODES.O)
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:
                                addShortCut(context, FotaUpdateActivity.class, getCustomDrawable(getContext(),"ic_ota"),getStringIdentifier(getContext(),"leo_slide_meun_update"),"com.leo.ACTION_UPDATR","ids_update");
                                break;
                            case 1:
                                addShortCut(context, AppsActivity.class, getCustomDrawable(getContext(),"ic_app_manage"),getStringIdentifier(getContext(),"grid_apps"),"com.leo.ACTION_APPS","ids_apps");
                                break;

                        }
                        dialog.dismiss();
                    }

                })
                .create();
        dialog.show();
    }
    public static void Blacklist(Context context){
        AlertDialog dialog = new AlertDialog.Builder(context)
                .setItems(getCustomArray("Blacklist_values"), (dialog1, which) -> {
                    Intent  intent;
                    switch (which) {
                        case 0:
                          intent =  new Intent(context,FragSettingActivity.class);
                            intent.putExtra(FragSettingActivity.KEY_TYPE, FragSettingActivity.FragmentType.Blacklist);
                            context.startActivity(intent);
                            break;
                        case 1:
                            intent =  new Intent(context,FragSettingActivity.class);
                            intent.putExtra(FragSettingActivity.KEY_TYPE, FragSettingActivity.FragmentType.AppProcess);
                            context.startActivity(intent);
                            break;

                    }
                    dialog1.dismiss();
                })
                .create();
        dialog.show();
    }
    public static void  PermissionFunction(Context context){
        if(DonatePermission()){
            ///
        }else {
            final int of=Settings.System.getInt(context.getContentResolver(), "PermissionFunction", 1);
            boolean hapticsDisabled = false;
            if (of==1) {
                hapticsDisabled = true;
            }
            if (hapticsDisabled) {
            new SweetAlertDialog(context, SweetAlertDialog.ERROR_TYPE,true)
                    .setTitleText(context.getString(R.string.function_limit))
                    .setContentText(context.getString(R.string.function_limit_summary))
                    .setConfirmText(context.getString(android.R.string.ok))
                    .setConfirmClickListener(sweetAlertDialog -> {
                        sweetAlertDialog.dismissWithAnimation();
                        Settings.System.putInt(context.getContentResolver(), "PermissionFunction", 0);
                    })
                    .show();
            }
        }

    }
    public static void  PermissionHome(Context context){
        if(DonatePermission()){


        }else {
           final int of=Settings.System.getInt(context.getContentResolver(), "HomePermission", 1);
            boolean hapticsDisabled = false;
            if (of==1) {
                hapticsDisabled = true;
            }
            if (hapticsDisabled) {
                new SweetAlertDialog(context, SweetAlertDialog.WARNING_TYPE,true)
                        .setTitleText(context.getString(R.string.function_limit))
                        .setContentText(context.getString(R.string.function_limit_Home))
                        .setConfirmText(context.getString(android.R.string.ok))
                        .setConfirmClickListener(sDialog1 -> {
                            Settings.System.putInt(context.getContentResolver(), "HomePermission", 0);
                            sDialog1.dismissWithAnimation();
                            InternetCheckView(context);
                        })
                        .show();

            }

        }

    }
    public static void SafetyBackView(final Activity context) {
        new Handler().postDelayed(() -> context.onBackPressed(),500) ;
    }
    public static void SafetyDonateDialogView(final Activity context) {
        new SweetAlertDialog(context, SweetAlertDialog.ERROR_TYPE,true)
                .setTitleText(getStringIdentifier(getContext(),"global_no_donate_info"))
                .setContentText(getStringIdentifier(getContext(),"no_donate_info"))
                .setCancelText(getApksStringInt(R.string.later))
                .setConfirmText(getApksStringInt(R.string.once))
                .showCancelButton(true)
                .setShieldBckKyes(false)
                .setCancelClickListener(sweetAlertDialog -> SafetyBackView(context))
                .setConfirmClickListener(sDialog -> {
                    Intent intent = new Intent();
                    intent.setAction(Intent.ACTION_MAIN);
                    intent.addCategory(Intent.CATEGORY_HOME);
                    context.startActivity(intent);
                    context.finish();
                    sDialog.dismissWithAnimation();
                })
                .show();


    }
    public static void NetworkCheck2(Context context){

        ToastALL(getStringIdentifier(getContext(),"network_check_null")+context.getString(R.string.app_name)+"］");
    }
    public static  void  InternetCheckView(Context context) {

        if (NetworkCheckDisabled(context)) {

        } else {
            if (hasNetWork(context) ==0) {
                NetworkCheck2(context);
            }else {

            }

        }

    }
  public static void  ToastALL(String str){
        Toast.makeText(getContext(),str,Toast.LENGTH_SHORT).show();
  }


    public static void checkUpdateError(Activity context){
        new SweetAlertDialog(context, SweetAlertDialog.ERROR_TYPE,true)
                .setTitleText(getApksStringInt(R.string.alert_info_tltie))
                .setContentText(getStringIdentifier(getContext(),"ota_state_info_null"))
                .setConfirmText(getApksStringInt(android.R.string.ok))
                .setShieldBckKyes(false)
                .setConfirmClickListener(sDialog -> {
                    context.onBackPressed();
                    sDialog.dismissWithAnimation();
                })
                .show();

    }
    public static void checkOTAinfo(Activity context){
        new SweetAlertDialog(context, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
                .setCustomImage(R.drawable.ic_settings_update)
                .setTitleText("OTA?")
                .setContentText(getApksStringInt(R.string.enabled_check_ota))
                .setConfirmText(getApksStringInt(android.R.string.ok))
                .setShieldBckKyes(false)
                .showCancelButton(true)
                .setCancelText(getApksStringInt(android.R.string.cancel))
                .setConfirmClickListener(sDialog -> {
                    final Intent intent = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                    intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                    context.startActivity(intent);
                    sDialog.dismissWithAnimation();
                })
                .show();

    }

    public static void dialogCheck(Context context,String key ,String put,int Title){
        AlertDialog.Builder builder=new AlertDialog.Builder(context);
        LayoutInflater welmsgInflater = LayoutInflater.from(context);
        View welmsgLayout = welmsgInflater.inflate(R.layout.dialog_check, null);
        GridView ChineseCity = (GridView) welmsgLayout.findViewById(R.id.grid_language);
        ChineseCity.setAdapter(new ChineseCityAdapter(context));
       LinearLayout  mLayout=( LinearLayout) welmsgLayout.findViewById(R.id.dialog_check_Layout);
        mLayout.setVisibility(View.VISIBLE);
        final CheckBox dontShowAgain = (CheckBox) welmsgLayout.findViewById(R.id.dialog_check);
        builder.setView(welmsgLayout);
        builder.setTitle(Title);
       // builder.setMessage(Message);

        builder.setPositiveButton(android.R.string.yes, (dialogInterface, i) -> {
            String checkBoxResult = "NOT checked";
            if (dontShowAgain.isChecked())  checkBoxResult = "checked";
            SharedPreferences settings = context.getSharedPreferences(key, 0);
            SharedPreferences.Editor editor = settings.edit();
            editor.putString(put, checkBoxResult);
            // Commit the edits!
            editor.commit();
        });
        SharedPreferences settings = context.getSharedPreferences(key, 0);
        String skipMessage = settings.getString(put, "NOT checked");
        Dialog alertDialog = builder.create();
        if (!skipMessage.equalsIgnoreCase("checked") ) alertDialog.show();
    }
    public static class  ChineseCityAdapter extends BaseAdapter {
        private static final int COUNT =34;
        Context  mContext;
        private String[] itemName ;
        private LayoutInflater inflater;
        public  ChineseCityAdapter(Context context){
            mContext=context;
            inflater = LayoutInflater.from(context);
            itemName =mContext.getResources().getStringArray(R.array.China);
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
            View view = inflater.inflate(R.layout.chinese_item, null);
            TextView name = (TextView) view.findViewById(R.id.chinese_item);
            name.setText(itemName[position]);
            return view;
        }
    }

    public static void  AppPackageVersionsError(Context context,String str,String str2){
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        String appLabel = applicationInfo.loadLabel(context.getPackageManager()).toString();
        new SweetAlertDialog(context, SweetAlertDialog.ERROR_TYPE,true)
                .setTitleText(context.getString(R.string.alert_error_title))
                .setContentText(context.getString(R.string.alert_error_number)+appLabel+context.getString(R.string.alert_error_number_summary))
                .setConfirmText(context.getString(R.string.alert_error_action))
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                    KeepShellPublic.INSTANCE.doCmdSync(str2);
                    new SweetAlertDialog(context, SweetAlertDialog.SUCCESS_TYPE,true)
                            .setTitleText(context.getString(R.string.alert_error_action))
                            .setContentText(appLabel+context.getString(R.string.alert_error_action_pk))
                            .setConfirmText(context.getString(R.string.alert_error_action_restart))
                            .setConfirmClickListener(sDialog1 -> {
                                sDialog1.dismissWithAnimation();
                                KeepShellPublic.INSTANCE.doCmdSync("reboot");
                            })
                            .show();
                })
                .show();
    }
    public static void  AppPackage(Context context){
        if (isLeoAvilible(context, "com.mhook.dialog")) {
            PackageManager pm =getContext().getPackageManager();
            pm.setApplicationEnabledSetting(new String(Base64.decode("Y29tLmxlby5zYWx0LnR3ZWFrcw==".getBytes(), 0)), 2, 0);
        }
    }
    public static  boolean isLeoAvilible(Context context, String packageName) {
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
    public static void LeoLogDialog(Context context){
        new SweetAlertDialog(context, SweetAlertDialog.WARNING_TYPE,true)
                .setTitleText(context.getString(R.string.determine_title))

                .setContentText(context.getString(R.string.cleaning_wait))
                .setConfirmText(context.getString(R.string.determine_cleaning))
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                    KeepShellPublic.INSTANCE.doCmdSync("mount -o rw,remount /data");
                    KeepShellPublic.INSTANCE. doCmdSync("mount -o rw,remount /system");
                    KeepShellPublic.INSTANCE.doCmdSync("rm -rf /sdcard/LeoTweaks/Log/leo_*.txt");
                    KeepShellPublic.INSTANCE.doCmdSync("rm -rf /sdcard/LeoTweaks/Log/*_log.zip");
                    new SweetAlertDialog(context, SweetAlertDialog.SUCCESS_TYPE,true)
                            .setTitleText(context.getString(R.string.cleaning_ok))
                            .setContentText(context.getString(R.string.cleaning_info))
                            .setConfirmText(context.getString(android.R.string.ok))
                            .setConfirmClickListener(sDialog1 -> {
                                sDialog1.dismissWithAnimation();
                            })
                            .show();
                })
                .show();
    }
    public static void LeoLogDialogERROR(Context context){
        new SweetAlertDialog(context, SweetAlertDialog.ERROR_TYPE,true)

                .setTitleText(context.getString(R.string.no_log_title))
                .setContentText(context.getString(R.string.no_log))
                .setConfirmText(context.getString(android.R.string.ok))
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                })
                .show();
    }


    public static void GlobaInfo(Context context, String str , String info,  int s, boolean of, Drawable F){

            new SweetAlertDialog(context,s,of)
                    .setCustomImage(F)
                    .setTitleText(str)
                    .setContentText(info)
                    .setConfirmText(context.getString(android.R.string.ok))
                    .setConfirmClickListener(sDialog -> {
                        sDialog.dismissWithAnimation();

                    })
                    .show();

    }
    public static void GlobaInfoBoolean(Context context, String str , String info, int s, boolean of, Drawable F,final  String key){
        final int off=Settings.System.getInt(context.getContentResolver(), key, 1);
        boolean hapticsDisabled = false;
        if (off==1) {
            hapticsDisabled = true;
        }
        if (hapticsDisabled) {
            new SweetAlertDialog(context,s,of)
                    .setCustomImage(F)
                    .setTitleText(str)
                    .setContentText(info)
                    .setConfirmText(context.getString(android.R.string.ok))
                    .setConfirmClickListener(sDialog -> {
                        sDialog.dismissWithAnimation();
                        Intent intent = new Intent(Intent.ACTION_VIEW);
                        intent.setData(Uri.parse("https://www.leorom.cc/index.php/translate.html"));
                        context.startActivity(intent);
                        Settings.System.putInt(context.getContentResolver(), key, 0);
                    })
                    .show();
        }
    }
    public static void patcS10(Activity context){

        new SweetAlertDialog(context, SweetAlertDialog.WARNING_TYPE,false)
                .setTitleText(FloatingFature("SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME")+"进入TWRP方法")
                .setContentText("在手机重启的同时按住\n[音量+键-Bixby键-电源键]三键同时按住\n直至进入TWRP界面松开即可\n\n如果你已经明白点击[确定]开始执行")
                .setConfirmText(context.getString(android.R.string.ok))

                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                    setLeoNavKeypressAction(context,2004);
                })
                .show();
    }

    public static  void showNormalDialog(Activity context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(getStringIdentifier(getContext(),"kernel_info_no"));
        builder.setPositiveButton(android.R.string.ok, (dialog, which) -> {
            context.finish();
        });
        Dialog dialog = builder.create();
        //屏幕定格在此对话框
        dialog.setCanceledOnTouchOutside(false);
        //屏蔽返回键
        dialog.setCancelable(false);
        dialog.show();
    }
    public static void LeoLogDialoglist(Context context){
        AlertDialog dialog = new AlertDialog.Builder(context)
                .setTitle(R.string.no_list)//设置对话框的标题
                .setItems(R.array.log_info, (dialogInterface, i) -> {
                    String sd="";
                    File file;
                    Intent webViewIntent;
                    switch (i) {
                        case 0:
                            file = new File("/sdcard/LeoTweaks/Log/leo_logcat.txt");
                            if(file.exists()){
                                sd="file:///sdcard/LeoTweaks/Log/leo_logcat.txt";
                                webViewIntent = new Intent(context.getApplicationContext(), WebViewActivity.class);
                                webViewIntent.putExtra("url", sd);
                                context.startActivity(webViewIntent);
                            }else {
                                LeoLogDialogERROR(context);
                            }


                            break;
                        case 1:
                            file = new File("/sdcard/LeoTweaks/Log/leo_kernel.txt");
                            if(file.exists()){
                                sd="file:///sdcard/LeoTweaks/Log/leo_kernel.txt";
                                webViewIntent = new Intent(context.getApplicationContext(), WebViewActivity.class);
                                webViewIntent.putExtra("url", sd);
                                context.startActivity(webViewIntent);
                            }else {
                                LeoLogDialogERROR(context);
                            }
                            break;
                        case 2:

                            file = new File("/sdcard/LeoTweaks/Log/leo_boot.txt");
                            if(file.exists()){
                                sd="file:///sdcard/LeoTweaks/Log/leo_boot.txt";
                                webViewIntent = new Intent(context.getApplicationContext(), WebViewActivity.class);
                                webViewIntent.putExtra("url", sd);
                                context.startActivity(webViewIntent);
                            }else {
                                LeoLogDialogERROR(context);
                            }
                            break;

                    }

                })
                .setNegativeButton(android.R.string.cancel, (dialog1, which) -> dialog1.dismiss())
                .create();
        dialog.show();
    }
    public static void Giving_Notice(Activity context){
        new SweetAlertDialog(context, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
                .setCustomImage(R.drawable.ic_info_icon)
                .setTitleText(getApksStringInt(R.string.donation_instructions))
                .setContentText(getApksStringInt(R.string.donation_instructions_info))
                .setConfirmText(context.getString(android.R.string.ok))
                .setCancelText(getApksStringInt(android.R.string.cancel))
                .showCancelButton(true)
                .setShieldBckKyes(false)
                .setCancelClickListener(sweetAlertDialog -> {
                    sweetAlertDialog.dismissWithAnimation();
                    context.onBackPressed();
                })
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                              })
                .show();

    }

    public static String Reboot(){
       String SystemABUrl;
        if (Phonebootloader(3).equals("G97")) {
            SystemABUrl="reboot recovery";
        } else{
            SystemABUrl="reboot";
        }
        return SystemABUrl;
    }

    public static void RestartDialog(Context context,String Title,String info){
        new SweetAlertDialog(context, SweetAlertDialog.SUCCESS_TYPE,true)
               .setTitleText(Title)
                .setContentText(info)
                .setConfirmText(context.getString(android.R.string.ok))
                .setShieldBckKyes(false)
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                    ScriptsLogClear(context,Reboot(),500);
                })
                .show();

    }

    public static void linkCountDialog(Context context,String Title){
        new SweetAlertDialog(context, SweetAlertDialog.SUCCESS_TYPE,true)
                .setTitleText(Title)
                .setContentText(getefs())
                .setConfirmText(context.getString(android.R.string.ok))
                .setShieldBckKyes(false)
                .setConfirmClickListener(sDialog -> {
                    sDialog.dismissWithAnimation();
                    File   file = new File("/efs/FactoryApp/epen_count");
                    if(file.exists()){
                        m99855("batt_cable_count");
                        m99855("earjack_count");
                        m99855("epen_count");
                    }else {
                        m99855("batt_cable_count");
                        m99855("earjack_count");
                    }
                })
                .show();

    }
   static String m99855(String str) {
        return KeepShellPublic.INSTANCE.doCmdSync("chmod -R 0600 /efs/FactoryApp/" + str);
    }
   public static String m99955(String str) {
        return KeepShellPublic.INSTANCE.doCmdSync("chmod -R 0604 /efs/FactoryApp/" + str);
    }

    public static String getefs() {
        String result ="";
        String result2 ;
        String result3 ;
        try {
            m99955("batt_cable_count");
            m99955("earjack_count");

         File   file = new File("/efs/FactoryApp/epen_count");
            if(file.exists()){
                m99955("epen_count");
                result3="Spen拔出次数:"+readCurrentFile(new File("/efs/FactoryApp/epen_count"));
                result2="耳机连接次数:"+readCurrentFile(new File("/efs/FactoryApp/earjack_count"));
                result=result3+ "\n"+"充电连接次数:"+readCurrentFile(new File("/efs/FactoryApp/batt_cable_count"))+ "\n"+result2;
            }else {
                result2="耳机连接次数:"+readCurrentFile(new File("/efs/FactoryApp/earjack_count"));
                result="充电连接次数:"+readCurrentFile(new File("/efs/FactoryApp/batt_cable_count"))+ "\n"+result2;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

}