
package com.leoedge.amber.salt;

import com.leoedge.amber.R;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailManager;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailProvider;

import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

import android.widget.Toast;

import java.util.Locale;

public class CocktailUtils {
    public static boolean isLunarSettingdonate() {
        String language = getLanguageEnv();
        if (language != null
                && (language.trim().equals("zh-CN")))
            return true;
        else
            return false;
    }

    static String getLanguageEnv() {
        Locale l = Locale.getDefault();
        String language = l.getLanguage();
        String country = l.getCountry().toLowerCase();
        if ("zh".equals(language)) {
            if ("cn".equals(country)) {
                language = "zh-CN";//中国大陆
            }else if ("hk".equals(country)) {
                language = "zh-HK";//中国香港
            } else if ("mo".equals(country)) {
                language = "zh-MO";//中国澳门
            }else if ("tw".equals(country)) {
                language = "zh-TW";//中国台湾省
            }
        }
        return language;
    }
    public static void  EnglishDonate(final Context context){
        AlertDialog dialog = new AlertDialog.Builder(context)
                .setTitle("Upgrades")//设置对话框的标题
                .setMessage(R.string.global_actions_donation)//设置对话框的内容
                .setNegativeButton("no", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        dialog.dismiss();
                    }
                })
                .setPositiveButton("Pay", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        openUrl("https://www.paypal.me/plmh",context);
                        dialog.dismiss();
                    }
                }).create();
        dialog.show();
        // dialog.setCanceledOnTouchOutside(false);
        //   dialog.setCancelable(false);
        //dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }

    public static void openUrl(String url,Context context) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        context.startActivity(intent);
    }
}
