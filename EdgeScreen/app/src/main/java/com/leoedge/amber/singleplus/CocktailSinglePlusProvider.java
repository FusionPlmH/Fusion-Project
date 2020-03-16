
package com.leoedge.amber.singleplus;

import com.leoedge.amber.R;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailManager;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailProvider;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.RemoteViews;
import android.widget.TextView;
import android.widget.Toast;

import static android.widget.Toast.*;
import static com.leoedge.amber.salt.CocktailUtils.EnglishDonate;
import static com.leoedge.amber.salt.CocktailUtils.isLunarSettingdonate;

public class CocktailSinglePlusProvider extends SlookCocktailProvider {
    @Override
    public void onUpdate(Context context, SlookCocktailManager cocktailBarManager, int[] cocktailIds) {
        RemoteViews rv = new RemoteViews(context.getPackageName(), R.layout.cocktail_salt_panel);
        setPendingIntent(context, rv);
        for (int i = 0; i < cocktailIds.length; i++) {
            cocktailBarManager.updateCocktail(cocktailIds[i], rv);
        }
    }

    private void setPendingIntent(Context context, RemoteViews rv) {
        setPendingIntent(context, R.id.edge_apps, new Intent(Intent.ACTION_DIAL), rv);
        setPendingIntent(context, R.id.edge_wifi, new Intent("android.media.action.IMAGE_CAPTURE"), rv);
        setPendingIntent(context, R.id.edge_autostarts, new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.google.com")), rv);

        if( isLunarSettingdonate()){

         //   setPendingIntent(context, R.id.edge_donate, new Intent(intent), rv);
        }else{
           // setPendingIntent(context, R.id.edge_donate, new Intent(Intent.ACTION_VIEW, Uri.parse("https://www.paypal.me/plmh")), rv);
        }
    }

    private void setPendingIntent(Context context, int rscId, Intent intent, RemoteViews rv) {
        PendingIntent itemClickPendingIntent = PendingIntent.getActivity(context, 0, intent,
                PendingIntent.FLAG_UPDATE_CURRENT);
        rv.setOnClickPendingIntent(rscId, itemClickPendingIntent);
    }

}
