package com.leo.edge.pay;




import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.provider.Settings;
import android.util.Base64;
import android.util.Log;
import android.util.TypedValue;
import android.widget.RemoteViews;
import android.widget.Toast;

import com.samsung.android.sdk.look.cocktailbar.SlookCocktailManager;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailProvider;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static android.view.View.GONE;
import static android.view.View.VISIBLE;


public class LeoPay extends SlookCocktailProvider {

    @Override
    public void onUpdate(Context context, SlookCocktailManager slookCocktailManager, int[] iArr) {
        super.onUpdate(context, slookCocktailManager, iArr);
        panelUpdate(context, slookCocktailManager, iArr);
    }
    private void panelUpdate(Context context, SlookCocktailManager cocktailBarManager, int[] cocktailIds) {
        RemoteViews rv = new RemoteViews(context.getPackageName(), R.layout. leo_pay_salt_panel);
        setPendingIntent(context, rv);
        for (int i = 0; i < cocktailIds.length; i++) {
            cocktailBarManager.updateCocktail(cocktailIds[i], rv);
        }
    }
    private int mAlipay;
    private int mWeChat;
    private int mHttps;
    private int mLeo;
    private int mAlipayCode;
    private int mAlipayCollectCode;
    private int mVersionsCode;
    private void setPendingIntent(Context context, RemoteViews remoteViews) {
        toAliPayCode(context,remoteViews);
        collectAliPayCode(context,remoteViews);
        toAliPayScan(context,remoteViews);
        WeChatScan(context,remoteViews);
        leohttps(context,remoteViews);

       leoeom(context,remoteViews);
        leoVersions(context,remoteViews);


    }
    public  void toAliPayCode(Context context,RemoteViews rv) {
        mAlipayCode=R.id.pay_alipay;
        try {
            //利用Intent打开支付宝
            //支付宝跳过开启动画打开扫码和付款码的url scheme分别是alipayqr://platformapi/startapp?saId=10000007和
            //alipayqr://platformapi/startapp?saId=20000056
            Uri uri = Uri.parse("alipayqr://platformapi/startapp?saId=20000056");
            Intent intent = new Intent(Intent.ACTION_VIEW, uri);
            setPendingIntent(context,mAlipayCode, new Intent(intent), rv);
        } catch (Exception e) {
            //若无法正常跳转，在此进行错误处理
            Toast.makeText(context,"你尚未安装支付宝",1).show();
        }
    }

    public  void collectAliPayCode(Context context, RemoteViews rv) {
        mAlipayCollectCode=R.id.collect_alipay;
        try {
            Uri uri = Uri.parse("alipayqr://platformapi/startapp?saId=20000123");
            Intent intent = new Intent(Intent.ACTION_VIEW, uri);
            setPendingIntent(context,mAlipayCollectCode, new Intent(intent), rv);
        } catch (Exception e) {
            Toast.makeText(context,"你尚未安装支付宝",1).show();
        }
    }

    public  void toAliPayScan(Context context, RemoteViews rv) {
        mAlipay=R.id.edge_alipay;
        try {
            Uri uri = Uri.parse("alipayqr://platformapi/startapp?saId=10000007");
            Intent intent = new Intent(Intent.ACTION_VIEW, uri);
            setPendingIntent(context,mAlipay, new Intent(intent), rv);
        } catch (Exception e) {
            Toast.makeText(context,"你尚未安装支付宝",1).show();
        }
    }
    public void leohttps(Context context, RemoteViews rv) {
        mHttps=R.id.edge_www;
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse("https://www.leorom.cc/index.php/leopay.html"));
        setPendingIntent(context,mHttps, new Intent(intent), rv);
    }
    public void leoVersions(Context context, RemoteViews rv) {
        mVersionsCode=R.id.edge_apps;
        rv.setTextViewText(mVersionsCode, getAppVersionName(context));
    }
    public static String getAppVersionName(Context context) {
        String appVersionName = "";
        try {
            PackageInfo packageInfo = context.getApplicationContext()
                    .getPackageManager()
                    .getPackageInfo(context.getPackageName(), 0);
            appVersionName = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("leo", e.getMessage());
        }
        return appVersionName;
    }
    public void WeChatScan(Context context, RemoteViews rv) {
        mWeChat=R.id.edge_wechat;
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.ui.LauncherUI"));
            intent.putExtra("LauncherUI.From.Scaner.Shortcut", true);
            intent.setFlags(335544320);
            intent.setAction("android.intent.action.VIEW");
            setPendingIntent(context,mWeChat, new Intent(intent), rv);
        } catch (Exception e) {
            Toast.makeText(context,"你尚未安装微信",1).show();
        }
    }
    public void leoeom(final Context context, final RemoteViews rv) {
        mLeo=R.id.edge_leo;
        if(getProperty("ro.build.rom.name").equals("Leo ROM")){
            rv.setViewVisibility(mLeo,VISIBLE );
        }else {
            rv.setViewVisibility(mLeo, GONE);
        }
        Intent  intent;
        try {
             intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction("com.leo.ROM_CONTROL");
        }catch(Exception e){
            intent = new Intent(Intent.ACTION_VIEW);
            intent.setData(Uri.parse("https://www.leorom.cc/index.php/download.html"));
           // setPendingIntent(context,mLeo, new Intent(intent), rv);

        }
        setPendingIntent(context,mLeo, new Intent(intent), rv);

    }

    private void  getLeoIntentFlags(Context context,String str,RemoteViews rv,int id){
        Intent  intent = new Intent();
        intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
        intent.setAction(str);
        setPendingIntent(context,id, new Intent(intent), rv);
    }
    private void setPendingIntent(Context context, int rscId, Intent intent, RemoteViews rv) {
        PendingIntent itemClickPendingIntent = PendingIntent.getActivity(context, 0, intent,
                PendingIntent.FLAG_UPDATE_CURRENT);
        rv.setOnClickPendingIntent(rscId, itemClickPendingIntent);
    }
    public static String getProperty(String str) {
        String str3 ="";
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{str,""});
        } catch (Exception e) {
            e.printStackTrace();
            return str3;
        } catch (Throwable th) {
            return str3;
        }
    }
}
