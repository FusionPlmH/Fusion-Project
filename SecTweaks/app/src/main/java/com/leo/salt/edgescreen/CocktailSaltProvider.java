
package com.leo.salt.edgescreen;


import com.leo.salt.MainActivity;
import com.leo.salt.R;
import com.leo.salt.activity.AppsActivity;
import com.leo.salt.activity.CleanActivity;
import com.leo.salt.activity.FloatingActivity;
import com.leo.salt.activity.ImgActivity;
import com.leo.salt.activity.LockScreenActivity;
import com.leo.salt.activity.MIPOPActivity;
import com.leo.salt.activity.ManageAutostartsActivity;
import com.leo.salt.activity.SubActivity;
import com.leo.salt.activity.WifiPasswordActivity;
import com.leo.salt.donate.DonateActivity;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailManager;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailProvider;

import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;
import android.widget.RemoteViews;

import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.leo.salt.LeoApp.getContext;
import static com.leo.salt.utils.AndroidUtils.getLeoInt;
import static com.leo.salt.utils.Constants.LEO_ACTION_GLOBAL;
import static com.leo.salt.utils.Constants.LEO_ACTION_SERVICE;
import static com.leo.salt.utils.Utils.isLunarSettingdonate;

public class CocktailSaltProvider extends SlookCocktailProvider {
    private LeoObserver mLeoObserver;
    @Override
    public void onUpdate(Context context, SlookCocktailManager cocktailBarManager, int[] cocktailIds) {
        RemoteViews rv = new RemoteViews(context.getPackageName(), R.layout. cocktail_salt_panel);
        //String str = context.getResources().getString(R.string.vertical_text);
        //  rv.setTextViewText(R.id.text, str);
        setPendingIntent(context, rv);
        for (int i = 0; i < cocktailIds.length; i++) {
            cocktailBarManager.updateCocktail(cocktailIds[i], rv);
        }
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
    }
    public int mAPPS;
    public int mWIFI;
    public int mAutostarts;
    public int mMIniPOP;
    public int mFloating;
    public int mIMG;
    public int mLeo;
    public int mClear;
    public int mLock;
    public  int mDonate;

    private void setPendingIntent(Context context, RemoteViews remoteViews) {
        mAPPS =R.id.edge_apps;
        setPendingIntent(context,mAPPS, new Intent(context, AppsActivity.class),remoteViews);

        mWIFI =R.id.edge_wifi;
        setPendingIntent(context,mWIFI, new Intent(context, WifiPasswordActivity.class), remoteViews);
        mAutostarts=R.id.edge_autostarts;
        setPendingIntent(context, mAutostarts, new Intent(context, ManageAutostartsActivity.class), remoteViews);
        mFloating=R.id.edge_floating;
        setPendingIntent(context,mFloating, new Intent(context, FloatingActivity.class),remoteViews);
        mMIniPOP=R.id.edge_minipop;
        setPendingIntent(context, mMIniPOP, new Intent(context, MIPOPActivity.class), remoteViews);
        mIMG=R.id.edge_img;
        setPendingIntent(context, mIMG, new Intent(context, ImgActivity.class), remoteViews);
        mLeo=R.id.edge_leo;
        setPendingIntent(context,mLeo, new Intent(context, MainActivity.class),remoteViews);
        //曲面捐赠
        Donate(context,remoteViews);
        mClear=R.id.edge_clear;
        setPendingIntent(context, mClear, new Intent(context, CleanActivity.class), remoteViews);
        lock(context,remoteViews);
        int defaultcolor=getLeoInt(context, "leo_tweaks_edge_text_color", Color.WHITE);
        int defaultSize=getLeoInt(context, "leo_tweaks_edge_text_size", 13);
        updateAppsSetting(remoteViews,mAPPS,getLeoInt(context, "leo_tweaks_edge_apps", 0)==1,defaultSize,defaultcolor);
        updateAppsSetting(remoteViews,mWIFI,getLeoInt(context, "leo_tweaks_edge_wifi", 1)==1,defaultSize,defaultcolor);
        updateAppsSetting(remoteViews,mAutostarts,getLeoInt(context, "leo_tweaks_edge_autostarts", 1)==1,defaultSize,defaultcolor);
        updateAppsSetting(remoteViews,mMIniPOP,getLeoInt(context, "leo_tweaks_edge_mipop", 1)==1,defaultSize,defaultcolor);
        updateAppsSetting(remoteViews,mFloating,getLeoInt(context, "leo_tweaks_edge_floating", 1)==1,defaultSize,defaultcolor);
        updateAppsSetting(remoteViews,mIMG,getLeoInt(context, "leo_tweaks_edge_img", 1)==1,defaultSize,defaultcolor);
        updateAppsSetting(remoteViews,mLeo,getLeoInt(context, "leo_tweaks_edge_leo", 1)==1,defaultSize,defaultcolor);
        updateAppsSetting(remoteViews,mClear,getLeoInt(context, "leo_tweaks_edge_clear", 1)==1,defaultSize,defaultcolor);
        updateAppsSetting(remoteViews,mLock,getLeoInt(context, "leo_tweaks_edge_lock", 1)==1,defaultSize,defaultcolor);
        updateAppsSetting(remoteViews,mDonate,true ,defaultSize,defaultcolor);
    }
   public void  updateAppsSetting(RemoteViews rv ,int apps,boolean off,int size,int color){
        rv.setViewVisibility(apps,off ? VISIBLE : GONE);
        rv.setTextViewTextSize(apps, TypedValue.COMPLEX_UNIT_DIP,size);
        rv.setTextColor(apps,color);
   }
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver= getContext().getContentResolver();

        }

        @Override
        public void onChange(boolean selfChange) {

        }
    }

    private void lock(Context context,RemoteViews rv){
        mLock=R.id.edge_lock;
        Intent intent = new Intent();
        intent.setAction(LEO_ACTION_SERVICE);
        intent.putExtra(LEO_ACTION_GLOBAL, "com.hitomileo.action.lock");
        getLeoBroadcast(context,mLock, rv,intent );

    }
    private void setPendingIntent(Context context, int rscId, Intent intent, RemoteViews rv) {
        PendingIntent itemClickPendingIntent = PendingIntent.getActivity(context, 0, intent,
                PendingIntent.FLAG_UPDATE_CURRENT);
        rv.setOnClickPendingIntent(rscId, itemClickPendingIntent);
    }

    private void Donate(Context context, RemoteViews rv){
        mDonate=R.id.edge_donate;
        if (isLunarSettingdonate()) {
            Intent intent = new Intent(context,DonateActivity.class);
            setPendingIntent(context, mDonate, new Intent(intent), rv);
        } else {
            setPendingIntent(context,  mDonate, new Intent(Intent.ACTION_VIEW, Uri.parse("https://www.paypal.me/plmh")), rv);
        }
    }

    private void getLeoBroadcast(Context context,int rscId,  RemoteViews rv,Intent intent){

        PendingIntent pendingIntent1 = PendingIntent.getBroadcast(context, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT);
        rv.setOnClickPendingIntent( rscId, pendingIntent1);
    }
}
