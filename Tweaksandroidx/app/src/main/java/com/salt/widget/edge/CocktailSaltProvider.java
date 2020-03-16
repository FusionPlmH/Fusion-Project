package com.salt.widget.edge;




import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.Settings;
import android.util.Base64;
import android.util.TypedValue;
import android.widget.RemoteViews;

import com.salt.config.R;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailManager;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailProvider;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.salt.frame.LeadFrame.ActionToastSring;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getLeoBuild;
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
    public int mPay;


    private void setPendingIntent(Context context, RemoteViews remoteViews) {
        mAPPS = R.id.edge_apps;
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
       // FusionLeoKernel(context,remoteViews);
        int defaultcolor=getLeoInt(context, "leo_salt_edge_text_color", Color.WHITE);
        int defaultSize=getLeoInt(context, "leo_salt_edge_text_size", 15);
        updateAppsSetting(remoteViews,mAPPS,getLeoBoolean(context, "leo_salt_edge_apps_enabled", DefaultValue()),defaultSize,defaultcolor,setLeoText("grid_apps",context));
        updateAppsSetting(remoteViews,mWIFI,getLeoBoolean(context, "leo_salt_edge_wifi_enabled", DefaultValue()),defaultSize,defaultcolor,setLeoText("grid_wifi",context));
        updateAppsSetting(remoteViews,mLeo,getLeoBoolean(context, "leo_salt_edge_leo_enabled", DefaultValue()),defaultSize,defaultcolor,getApksStringInt(R.string.app_name));
        updateAppsSetting(remoteViews,mClear,getLeoBoolean(context, "leo_salt_edge_clear_enabled", DefaultValue()),defaultSize,defaultcolor,context.getResources().getString(R.string.global_action_kill_progress));
        updateAppsSetting(remoteViews,mLock,getLeoBoolean(context, "leo_salt_edge_lock_enabled", DefaultValue()),defaultSize,defaultcolor,context.getResources().getString(R.string.global_action_lock));
        updateAppsSetting(remoteViews,mDonate,true ,defaultSize,defaultcolor,setLeoText("leo_slide_meun_donate",context));
        updateAppsSetting(remoteViews,mPay,getLeoBoolean(context, "leo_salt_edge_pay_enabled", DefaultValue()),defaultSize,defaultcolor,getApksStringInt(R.string.global_action_scan));
    }
    public int DefaultValue(){
          int moren;
        if(getLeoBuild("ro.leo.os.vip.donate").equals("true")){
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
   public void  updateAppsSetting(RemoteViews rv , int apps, boolean off, int size, int color, String str){
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

    public  void toAliPayScan(Context context, RemoteViews rv) {
        mPay=R.id.edge_pay;
        getLeoIntentFlags(context,"com.leo.ACTION_PAY",rv,mPay);
    }
    private void Donate(Context context, RemoteViews rv){
        mDonate=R.id.edge_donate;
        getLeoIntentFlags(context,"com.leo.ACTION_DONATE",rv,mDonate);
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
