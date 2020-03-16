/*
 *     Copyright (c) 2015 GuDong
 *
 *     Permission is hereby granted, free of charge, to any person obtaining a copy
 *     of this software and associated documentation files (the "Software"), to deal
 *     in the Software without restriction, including without limitation the rights
 *     to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *     copies of the Software, and to permit persons to whom the Software is
 *     furnished to do so, subject to the following conditions:
 *
 *     The above copyright notice and this permission notice shall be included in all
 *     copies or substantial portions of the Software.
 *
 *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *     SOFTWARE.
 */

package com.leo.salt.widget;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import android.app.AlertDialog;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;

import android.widget.CheckBox;
import android.widget.EditText;

import android.widget.Toast;

import com.leo.salt.MainActivity;
import com.leo.salt.R;
import com.leo.salt.donate.DonateActivity;
import com.leo.salt.utils.AndroidUtils;
import com.leo.salt.utils.root.Helpers;

import static com.leo.salt.utils.AndroidUtils.openUrl;
import static com.leo.salt.utils.Constants.mNewline;
import static com.leo.salt.utils.Constants.safety;
import static com.leo.salt.utils.NetUtils.hasNetWork;
import static com.leo.salt.utils.Utils.isLunarSetting;
import static com.leo.salt.utils.Utils.isLunarSettingdonate;
import static com.leo.salt.utils.root.Verify.get;


public class DialogUtil {
    public static void  getQQ(final Activity context) {
      AlertDialog dialog = new AlertDialog.Builder(context)
                .setTitle("加入QQ群")//设置对话框的标题
                .setItems(R.array.qq_items, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:
                                joinQQGroup(context,"4zUqpP7ZnFnqswJGwuTDkCbK6zxOZp-5");
                                break;
                            case 1:
                                joinQQGroup(context, "MXBxvdB3lrh5wrfulRmklP8ueAH-i9QR");
                                break;
                        }
                        dialog.dismiss();
                    }
                })
                .create();
     //   dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();
    }
    public static boolean joinQQGroup(final Context context,String str) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D" + str));
        try {
            context. startActivity(intent);
            return true;
        } catch (Exception e) {
            AlertDialog builder = new AlertDialog.Builder(context)
                    .setIcon(R.drawable.ic_alert)//设置标题的图片
                    .setTitle(R.string.error)//设置对话框的标题
                    .setMessage(R.string.no_qq)//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                            dialog.dismiss();
                        }
                    })
                    .setPositiveButton(R.string.can_download, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            goToMainAppsMarketQQ(context);
                            dialog.dismiss();
                        }
                    }).create();

           // builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            builder.show();
            return false;
        }
    }

    public static void goToMainAppsMarketQQ(final Context context) {
        Uri uri = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId=" + "com.tencent.mobileqq");
        final Intent goToMarket = new Intent();
        goToMarket.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
        goToMarket.setData(uri);
        try {
            context.startActivity(goToMarket);
        } catch (ActivityNotFoundException e) {
            AlertDialog builder = new AlertDialog.Builder(context)
                    .setIcon(R.drawable.ic_alert)//设置标题的图片
                    .setTitle(R.string.error)//设置对话框的标题
                    .setMessage(R.string.no_store)//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                            dialog.dismiss();
                        }
                    })
                    .setPositiveButton(R.string.can_download, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            goToMarketQQ(context);
                        }
                    }).
                            create();
           // builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            builder.show();
            e.printStackTrace();
        }
    }
    public static void goToMarketQQ(Context context) {
        Uri uri = Uri.parse("market://details?id=" + "com.tencent.mobileqq");
        Intent goToMarket = new Intent(Intent.ACTION_VIEW, uri);
        try {
            context.startActivity(goToMarket);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void WallpaperSize ( final Activity context) {
      // RxToast.warning(context, context.getString(R.string.no_wallpaper_size), 0, true).show();
        final AlertDialog alert = new AlertDialog.Builder(context)
                .create();
        alert.setMessage(context.getString(R.string.no_wallpaper_size));
       // alert.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        alert.show();



        new Handler().postDelayed(new Runnable() {

            @Override
            public void run() {
                alert.dismiss();
            }
        }, 2000);
    }
    public static void Promptdonate ( final Activity context) {
    AlertDialog dialog = new AlertDialog.Builder(context)
            .setTitle(R.string.can_not_utilize)//设置对话框的标题
            .setMessage(R.string.can_not_utilize_sumrrry)//设置对话框的内容
            //设置对话框的按钮
            .setPositiveButton(R.string.can_not_utilizeon, new DialogInterface.OnClickListener() {

                @Override
                public void onClick(DialogInterface dialog, int which) {
                    if (isLunarSettingdonate()) {
                        context.startActivity(new Intent(context,DonateActivity.class));
                    } else {
                        EnglishDonate(context);
                    }

                    dialog.dismiss();
                }
            })
            .create();
                    dialog.show();
    //屏幕定格在此对话框
                    dialog.setCanceledOnTouchOutside(false);
    //屏蔽返回键
                    dialog.setCancelable(false);

                 //   dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }


    public static void WallpaperInfo ( final Activity context) {

        Toast.makeText(context, context.getString(R.string.wallpaper_view), Toast.LENGTH_SHORT).show();

    }
    public static void WallpaperSuccess ( final Activity context) {
        Toast.makeText(context, context.getString(R.string.congratulation_wallpaper), Toast.LENGTH_SHORT).show();

    }

    public static void CustomEdit(final Context context, final String key,String tite,String summary,String Hint){
        final ContentResolver mResolver = context.getContentResolver();
        AlertDialog dialog;
        AlertDialog.Builder alert = new AlertDialog.Builder(context);
        alert.setTitle(tite);
        alert.setMessage(summary);

        final EditText input = new EditText(context);
        String oldText = Settings.System.getString(
                mResolver, key);
        if (oldText != null) {
            input.setText(oldText);
            input.setHint(Hint);
        }
        alert.setView(input);

        alert.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int whichButton) {
                String value = input.getText().toString();
                if (value.equals("")) {
                    return;
                }
                Settings.System.putString(mResolver,
                        key, value);

                return;
            }
        });

        alert.setNegativeButton(android.R.string.cancel,
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int which) {
                        return;
                    }
                });
        dialog = alert.create();
       // dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();
    }
    public static  void SamsungGoodLock(final Context context, String str, String str2, String S, final String S2) {
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
            AlertDialog builder = new AlertDialog.Builder(context)
                    .setIcon(R.drawable.ic_alert)//设置标题的图片
                    .setTitle("么有组件")//设置对话框的标题
                    .setMessage(S+"没有安装"+","+"你需要下载"+"“"+S+"”"+"组件，马上下载一个呗！☺")//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                            dialog.dismiss();
                        }
                    })
                    .setPositiveButton(R.string.can_download, new DialogInterface.OnClickListener() {
                        @SuppressLint("NewApi")
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            SamsunggoToMainAppsMarket(context,S2);
                            dialog.dismiss();
                        }
                    }).
                            create();
      //      builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            builder.show();
        }
    }
    public static  void SamsunggoToMainAppsMarket(final Context context , final String S2) {
        Uri uri = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId=" + S2);
        final Intent goToMarket = new Intent();
        goToMarket.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
        goToMarket.setData(uri);
        try {
            context.startActivity(goToMarket);
        } catch (ActivityNotFoundException e) {

            AlertDialog builder = new AlertDialog.Builder(context)
                    .setIcon(R.drawable.ic_alert)//设置标题的图片
                    .setTitle(R.string.error)//设置对话框的标题
                    .setMessage(R.string.can_samsung_store)//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                            dialog.dismiss();
                        }
                    })
                    .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            goEdge(context,S2);
                            dialog.dismiss();
                        }
                    }).
                            create();
        //    builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            builder.show();
            e.printStackTrace();
        }
    }
    public static  void goEdge(Context context,String S2) {
        Uri uri = Uri.parse("market://details?id=" + S2);
        Intent goToMarket = new Intent(Intent.ACTION_VIEW, uri);
        try {
            context.startActivity(goToMarket);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }


    public static void showWipePrefs(final  Context c) {
        AlertDialog dialog = new AlertDialog.Builder(c)
                .setTitle("Wipe")//设置对话框的标题
                .setSingleChoiceItems(R.array.wipe_entries, 3, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                    }
                })
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        int selectedPosition = ((AlertDialog) dialog).getListView().getCheckedItemPosition();
                        if (selectedPosition == 0) {
                            //Native android reboot
                            Helpers.  Companion.WipeMeun(c,3);
                        } else if (selectedPosition == 1) {
                            Helpers. Companion.WipeMeun(c,1);
                        } else if (selectedPosition == 2) {
                            Helpers.   Companion.WipeMeun(c,2);
                        } else if (selectedPosition == 3) {
                            Helpers.   Companion.WipeMeun(c,0);
                        }
                    }
                })
                .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();

                    }
                })
                .create();
      //  dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();

    }
    public static  void    dddddd(final  Context c){
        AlertDialog dialog = new AlertDialog.Builder(c)
                .setTitle("注意")//设置对话框的标题
                .setMessage("1.捐赠金额为35RMB起步不设上限"+"\n"+"\n"+
                        "2.如果你需要升级值捐赠版请与我们联系,你可以联系捐赠页面的QQ临时会话,或者加入QQ群询问群内的管理人员"
                        +"\n"+"\n"+"3.与我们取得联系了解捐赠事宜"+"4.对于一些居心不良之人,恶意投诉,我们将永久拉入黑名单"
                        +"\n"+"\n"+"4.不捐赠是否可以使用呢,答案是依然可以使用,只是部分功能受到限制")//设置对话框的内容
                .setNegativeButton("取消", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        dialog.dismiss();
                    }
                })

                .setPositiveButton("加入QQ群", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        getQQ((Activity) c);
                        dialog.dismiss();
                    }
                }).create();
        dialog.show();
        dialog.setCanceledOnTouchOutside(false);
        dialog.setCancelable(false);
      //  dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }
    public static  void   language(final  Context c){
        AlertDialog dialog = new AlertDialog.Builder(c)
                .setMessage(R.string.language)//设置对话框的内容
                //设置对话框的按钮

                .setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        reminder(c);
                     //   AlertDialogServices(c,1500,c.getResources().getString(R.string.google_services_install),c.getResources().getString(R.string.google_services_install_yes),R.string.google_services_install_no);
                        dialog.dismiss();
                    }
                }).create();
        dialog.show();
        //屏幕定格在此对话框
        dialog.setCanceledOnTouchOutside(false);
        //屏蔽返回键
        dialog.setCancelable(false);
  //      dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }


    public static void  reminder(final  Context c){
        AlertDialog dialog = new AlertDialog.Builder(c)
                .setMessage(R.string.reminder)//设置对话框的内容
                //设置对话框的按钮
                .setPositiveButton(R.string.reboot_required_dialog_title, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Helpers.Companion. LeoRestartMeun(c,1);
                        dialog.dismiss();
                    }
                })
                .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        dialog.dismiss();
                    }
                })
                .create();
        dialog.show();
      //  dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }

    public static void saaaaaaaaaaaa(final  Context context,int ss){
        if(ss==0){
            Handler handler = new Handler();
            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (AndroidUtils.getCustomOTA().equals(safety)) {
                        get(context);
                    }else {
                        if (isLunarSettingdonate()) {
                            AlertDialog dialog = new AlertDialog.Builder(context)
                                    .setTitle(R.string.no_donate)//设置对话框的标题
                                    .setMessage(R.string.no_donate_sumarry)//设置对话框的内容
                                    //设置对话框的按钮
                                    .setPositiveButton(R.string.can_not_utilizeon, new DialogInterface.OnClickListener() {

                                        @Override
                                        public void onClick(DialogInterface dialog, int which) {
                                            context.startActivity(new Intent(context,DonateActivity.class));
                                            dialog.dismiss();
                                        }
                                    })
                                    .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                                        @Override
                                        public void onClick(DialogInterface dialog, int which) {
                                            dialog.dismiss();
                                        }
                                    })

                                    .create();
                            dialog.show();
                        } else {
                            EnglishDonate(context);
                        }
                    }
                 }

            }, 10000);


                //    dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        }


    }
    public static void Translator(final  Context context){
        AlertDialog dialog = new AlertDialog.Builder(context)
                .setMessage(R.string.translator_team)
                //设置对话框的按钮
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        language(context);
                        new LogDialog(context, MainActivity.Companion.getMChangelogUrl(),context.getResources().getString(R.string.nav_changelog));
                    }
                })

                .create();
        dialog.show();
        //   dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }

    public static void followUS(final  Context context){
        String sumae;
        if (isLunarSetting()==true){
            sumae="<html><head><title>关注我们</title></head><body><p><strong>官网 <a href=\"https://www.leorom.cc\">https://www.leorom.cc</a></strong></p><p><strong>微博 <a href=\"https://weibo.com/leorom\">@Leo_ROM</a></strong></p><p><strong>QQ群 <a >257974076</a></strong></p>";
        } else {
            sumae="<html><head><title>Follow US</title></head><body><p><strong>website <a href=\"https://www.leorom.cc\">https://www.leorom.cc</a></strong></p><p><strong>weibo <a href=\"https://weibo.com/leorom\">@Leo_ROM</a></strong></p><p><strong>QQ room <a >257974076</a></strong></p>";
        }
        AlertDialog dialog = new AlertDialog.Builder(context)
                    .setMessage(Html.fromHtml(sumae))
                    //设置对话框的按钮
                    .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            Translator(context);
                            new LogDialog(context, MainActivity.Companion.getMChangelogUrl(),context.getResources().getString(R.string.nav_changelog));
                        }
                    })

                    .create();
            dialog.show();
         //   dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        }

  public static void cautionMessage(final Context context, String title, String Message, final String kye){
      AlertDialog.Builder welmsg = new AlertDialog.Builder(context);
      LayoutInflater welmsgInflater = LayoutInflater.from(context);
      View welmsgLayout = welmsgInflater.inflate(R.layout.caution_msg, null);
      final CheckBox dontShowAgain = (CheckBox) welmsgLayout.findViewById(R.id.caution_msg);
      welmsg.setView(welmsgLayout);
      welmsg.setTitle(title);
      welmsg.setMessage(Html.fromHtml(Message));
      welmsg.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() {
          public void onClick(DialogInterface dialog, int which) {
              String checkBoxResult = "NOT checked";
              if (dontShowAgain.isChecked())  checkBoxResult = "checked";
              SharedPreferences settings = context.getSharedPreferences(kye, 0);
              SharedPreferences.Editor editor = settings.edit();
              editor.putString("skipMessage", checkBoxResult);
              // Commit the edits!
              editor.commit();
              return;
          } });
      SharedPreferences settings =context. getSharedPreferences(kye, 0);
      String skipMessage = settings.getString("skipMessage", "NOT checked");
      Dialog alertDialog = welmsg.create();
    //  alertDialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
      if (!skipMessage.equalsIgnoreCase("checked") ) alertDialog.show();
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

}
