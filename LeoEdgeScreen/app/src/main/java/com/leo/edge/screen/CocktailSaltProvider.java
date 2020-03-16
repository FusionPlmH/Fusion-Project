package com.leo.edge.screen;




import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.provider.Settings;
import android.util.Base64;
import android.util.TypedValue;
import android.widget.RemoteViews;

import com.samsung.android.sdk.look.cocktailbar.SlookCocktailManager;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailProvider;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.leo.edge.screen.Resource.*;
import static java.security.AccessController.getContext;


public class CocktailSaltProvider extends SlookCocktailProvider {

    @Override
    public void onUpdate(Context context, SlookCocktailManager slookCocktailManager, int[] iArr) {
        super.onUpdate(context, slookCocktailManager, iArr);
        panelUpdate(context, slookCocktailManager, iArr);
    }
    private void panelUpdate(Context context, SlookCocktailManager cocktailBarManager, int[] cocktailIds) {
        RemoteViews rv = new RemoteViews(context.getPackageName(), R.layout. cocktail_salt_panel);
        setPendingIntent(context, rv);
        for (int i = 0; i < cocktailIds.length; i++) {
            cocktailBarManager.updateCocktail(cocktailIds[i], rv);
        }
    }
    public int mAPPS;
    public int mWIFI;
    public int mLeo;
    public int mClear;
    public int mLock;
    public int mDonate;
    public int mAlipay;
    public int mWeChat;
    public int mFusionLeoKernel;
    private void setPendingIntent(Context context, RemoteViews remoteViews) {
        mAPPS =R.id.edge_apps;
        getLeoIntentFlags(context,"com.leo.ACTION_APPS",remoteViews,mAPPS);
        mWIFI =R.id.edge_wifi;
        getLeoIntentFlags(context,"com.leo.ACTION_WIFI",remoteViews,mWIFI );
        mLeo=R.id.edge_leo;
        getLeoIntentFlags(context,"com.leo.ROM_CONTROL",remoteViews,mLeo);
        Donate(context,remoteViews);
        mClear= R.id.edge_clear;
        getLeoIntentFlags(context,"com.leo.ACTION_CLEAN",remoteViews,mClear);
        lock(context,remoteViews);
        toAliPayScan(context,remoteViews);
        WeChatScan(context,remoteViews);
        FusionLeoKernel(context,remoteViews);
        int defaultcolor=getLeoInt(context, "leo_salt_edge_text_color", Color.WHITE);
        int defaultSize=getLeoInt(context, "leo_salt_edge_text_size", 13);
        updateAppsSetting(remoteViews,mAPPS,getLeoBoolean(context, "leo_salt_edge_apps_enabled", DefaultValue()),defaultSize,defaultcolor,setLeoText("grid_apps",context));
        updateAppsSetting(remoteViews,mWIFI,getLeoBoolean(context, "leo_salt_edge_wifi_enabled", DefaultValue()),defaultSize,defaultcolor,setLeoText("grid_wifi",context));
        updateAppsSetting(remoteViews,mLeo,getLeoBoolean(context, "leo_salt_edge_leo_enabled", DefaultValue()),defaultSize,defaultcolor,setLeoText("leo_app_name",context));
        updateAppsSetting(remoteViews,mClear,getLeoBoolean(context, "leo_salt_edge_clear_enabled", DefaultValue()),defaultSize,defaultcolor,context.getResources().getString(R.string.global_action_kill_progress));
        updateAppsSetting(remoteViews,mLock,getLeoBoolean(context, "leo_salt_edge_lock_enabled", DefaultValue()),defaultSize,defaultcolor,context.getResources().getString(R.string.global_action_lock));
        updateAppsSetting(remoteViews,mDonate,true ,defaultSize,defaultcolor,setLeoText("leo_slide_meun_donate",context));
        updateAppsSetting(remoteViews,mAlipay,getLeoBoolean(context, "leo_salt_edge_alipay_enabled", DefaultValue()),defaultSize,defaultcolor,setLeoText("alipay",context));
        updateAppsSetting(remoteViews,mWeChat,getLeoBoolean(context, "leo_salt_edge_wechat_enabled", DefaultValue()),defaultSize,defaultcolor,setLeoText("wechat",context));
        updateAppsSetting(remoteViews, mFusionLeoKernel,getLeoBoolean(context, "leo_salt_edge_kernel_enabled", DefaultValue()),defaultSize,defaultcolor,"FusionLeo Kernel");
    }
    public int DefaultValue(){
          int moren;
        if(Resource.getDonationData().equals("LeoROM［Donate］")){
            moren=1;
        }else {
            moren=0;
        }
        return moren;
    }
    public  int getLeoInt(Context cxt, String key, int defaultValue) {
        return LeoSettings.getInt(cxt.getContentResolver(), key, defaultValue);
    }
    public   Settings.System LeoSettings;
    public  boolean getLeoBoolean(Context cxt, String key, int defaultValue) {
        return LeoSettings.getInt(cxt.getContentResolver(), key, defaultValue)==1;
    }
   public void  updateAppsSetting(RemoteViews rv ,int apps,boolean off,int size,int color,String str){
        rv.setViewVisibility(apps,off ? VISIBLE : GONE);
       rv.setTextViewText(apps, str);
        rv.setTextViewTextSize(apps, TypedValue.COMPLEX_UNIT_DIP,size);
        rv.setTextColor(apps,color);
   }

    public String setLeoText(String STR,Context context){

        return getStringIdentifier(context,STR);
    }
    private void lock(Context context,RemoteViews rv){
        mLock=R.id.edge_lock;
        Intent intent = new Intent();
        intent.setAction("com.leo.global.action");
        intent.putExtra(new String(Base64.decode("bGVvX2FjdGlvbg==".getBytes(), Base64.DEFAULT)),202);
        getLeoBroadcast(context,mLock, rv,intent );

    }
    private void setPendingIntent(Context context, int rscId, Intent intent, RemoteViews rv) {
        PendingIntent itemClickPendingIntent = PendingIntent.getActivity(context, 0, intent,
                PendingIntent.FLAG_UPDATE_CURRENT);
        rv.setOnClickPendingIntent(rscId, itemClickPendingIntent);
    }
    public  void FusionLeoKernel(Context context, RemoteViews rv) {
        mFusionLeoKernel=R.id.edge_fusion;
        getLeoIntentFlags(context,"com.leo.fusionleo_kernel",rv, mFusionLeoKernel);
    }
    public  void toAliPayScan(Context context, RemoteViews rv) {
        mAlipay=R.id.edge_alipay;
        try {
            //利用Intent打开支付宝
            //支付宝跳过开启动画打开扫码和付款码的url scheme分别是alipayqr://platformapi/startapp?saId=10000007和
            //alipayqr://platformapi/startapp?saId=20000056
            Uri uri = Uri.parse("alipayqr://platformapi/startapp?saId=10000007");
            Intent intent = new Intent(Intent.ACTION_VIEW, uri);
            setPendingIntent(context,mAlipay, new Intent(intent), rv);
        } catch (Exception e) {
            ActionToastSring(context,"alipay_payment_title");
        }
    }
    private void Donate(Context context, RemoteViews rv){
        mDonate=R.id.edge_donate;
        getLeoIntentFlags(context,"com.leo.ACTION_DONATE",rv,mDonate);
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
            ActionToastSring(context,"wechat_payment_title");
        }
    }
    private void getLeoBroadcast(Context context,int rscId,  RemoteViews rv,Intent intent){

        PendingIntent pendingIntent1 = PendingIntent.getBroadcast(context, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT);
        rv.setOnClickPendingIntent( rscId, pendingIntent1);
    }
    private void  getLeoIntentFlags(Context context,String str,RemoteViews rv,int id){
        Intent  intent = new Intent();
        intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
        intent.setAction(str);
        setPendingIntent(context,id, new Intent(intent), rv);
    }
}
