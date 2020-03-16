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

package com.tweaks.leo.widget;

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
import android.support.design.widget.Snackbar;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.NotificationCompat;
import android.support.v7.app.AlertDialog;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.tweaks.leo.R;
import com.tweaks.leo.donate.DonateActivity;
import com.tweaks.leo.theme.Utils;
import com.tweaks.leo.utils.root.Helpers;

import static com.tweaks.leo.utils.AndroidUtils.getAppName;
import static com.tweaks.leo.utils.AndroidUtils.getBaseband_Ver;
import static com.tweaks.leo.utils.AndroidUtils.getBasicsSystemVersion;
import static com.tweaks.leo.utils.AndroidUtils.getCustomDateSystemVersion;
import static com.tweaks.leo.utils.AndroidUtils.getCustomSystemVersion;
import static com.tweaks.leo.utils.AndroidUtils.getLinuxKernalInfoEx;
import static com.tweaks.leo.utils.AndroidUtils.getSDK;
import static com.tweaks.leo.utils.AndroidUtils.getSystemVersion;


/**
 * tool for dialog
 * Created by mao on 7/19/15.
 */
public class DialogUtil {
    public static void  getQQ(final Activity context) {

      AlertDialog dialog = new AlertDialog.Builder(context)

                .setTitle("加入QQ群")//设置对话框的标题
                .setItems(R.array.qq_items, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:
                                joinQQGroup(context);
                                break;
                            case 1:
                                joinQQGroup2(context);
                                break;

                        }
                        dialog.dismiss();
                    }
                })
                .create();
        dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();
    }
    public static boolean joinQQGroup(final Context context) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D" + "4zUqpP7ZnFnqswJGwuTDkCbK6zxOZp-5"));
        // 此Flag可根据具体产品需要自定义，如设置，则在加群界面按返回，返回手Q主界面，不设置，按返回会返回到呼起产品界面    //intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        try {
            context. startActivity(intent);
            return true;
        } catch (Exception e) {
            AlertDialog builder = new AlertDialog.Builder(context)
                    .setIcon(R.drawable.ic_alert)//设置标题的图片
                    .setTitle("遇到了点小问题")//设置对话框的标题
                    .setMessage("没有发现QQ或者QQ版本不正确，导致无法使用.请下载最新版本!")//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                            dialog.dismiss();
                        }
                    })
                    .setPositiveButton("马上下载", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            goToMainAppsMarketQQ(context);
                            dialog.dismiss();
                        }
                    }).create();

            builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
            builder.show();
            return false;
        }
    }
    public static boolean joinQQGroup2(final Context context) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D" + "MXBxvdB3lrh5wrfulRmklP8ueAH-i9QR"));
        // 此Flag可根据具体产品需要自定义，如设置，则在加群界面按返回，返回手Q主界面，不设置，按返回会返回到呼起产品界面    //intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        try {
            context. startActivity(intent);
            return true;
        } catch (Exception e) {
            AlertDialog builder = new AlertDialog.Builder(context)
                    .setIcon(R.drawable.ic_alert)//设置标题的图片
                    .setTitle("遇到了点小问题")//设置对话框的标题
                    .setMessage("没有发现QQ或者QQ版本不正确，导致无法使用.请下载最新版本!")//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                            dialog.dismiss();
                        }
                    })
                    .setPositiveButton("马上下载", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            goToMainAppsMarketQQ(context);
                        }
                    }).
                            create();
            builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
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
                    .setTitle("麻烦啦")//设置对话框的标题
                    .setMessage("没有发现官方内置应用市场,是否跳转到可用的市场下载？")//设置对话框的内容
                    //设置对话框的按钮
                    .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                            dialog.dismiss();
                        }
                    })
                    .setPositiveButton("马上下载", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            goToMarketQQ(context);
                        }
                    }).
                            create();
            builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
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
        alert.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
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
            .setTitle("无法使用")//设置对话框的标题
            .setMessage("很抱歉,目前你无法使用此功能,此功能只有捐赠者方可使用")//设置对话框的内容
            //设置对话框的按钮
            .setPositiveButton("马上捐赠", new DialogInterface.OnClickListener() {

                @Override
                public void onClick(DialogInterface dialog, int which) {
                    context.startActivity(new Intent(context,DonateActivity.class));
                    dialog.dismiss();
                }
            })
            .create();
                    dialog.show();
    //屏幕定格在此对话框
                    dialog.setCanceledOnTouchOutside(false);
    //屏蔽返回键
                    dialog.setCancelable(false);

                    dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }


    public static void WallpaperInfo ( final Activity context) {

        Toast.makeText(context, context.getString(R.string.wallpaper_view), Toast.LENGTH_SHORT).show();

    }
    public static void WallpaperSuccess ( final Activity context) {
        Toast.makeText(context, context.getString(R.string.congratulation_wallpaper), Toast.LENGTH_SHORT).show();

    }
    public static void ResetSuccess ( final Activity context) {
        Toast.makeText(context, context.getString(R.string.reset_success), Toast.LENGTH_SHORT).show();

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
        dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
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
                    .setPositiveButton("马上下载", new DialogInterface.OnClickListener() {
                        @SuppressLint("NewApi")
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            SamsunggoToMainAppsMarket(context,S2);
                            dialog.dismiss();
                        }
                    }).
                            create();
            builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
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
                    .setTitle("抱歉")//设置对话框的标题
                    .setMessage("检测到你没有安装三星市场，是否在别的市场下载")//设置对话框的内容
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
            builder.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
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
                .setTitle("数据清理方案")//设置对话框的标题
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
        dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
        dialog.show();

    }


}
