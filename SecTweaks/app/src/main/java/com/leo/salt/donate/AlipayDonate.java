package com.leo.salt.donate;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.service.quicksettings.TileService;

import java.net.URISyntaxException;

/**
 * Created by didikee on 2017/7/21.
 * 使用支付宝捐赠
 */

public class AlipayDonate {
    // 支付宝包名
    private static final String ALIPAY_PACKAGE_NAME = "com.eg.android.AlipayGphone";

    // 旧版支付宝二维码通用 Intent Scheme Url 格式
    private static final String INTENT_URL_FORMAT = "intent://platformapi/startapp?saId=10000007&" +
            "clientVersion=3.7.0.0718&qrcode=https%3A%2F%2Fqr.alipay.com%2F{payCode}%3F_s" +
            "%3Dweb-other&_t=1472443966571#Intent;" +
            "scheme=alipayqr;package=com.eg.android.AlipayGphone;end";


    public static boolean startAlipayClient(Activity activity, String payCode) {
        return startIntentUrl(activity, INTENT_URL_FORMAT.replace("{payCode}", payCode));
    }

    /**
     * 打开 Intent Scheme Url
     *
     * @param activity Parent Activity
     * @param intentFullUrl Intent 跳转地址
     * @return 是否成功调用
     */
    public static boolean startIntentUrl(Activity activity, String intentFullUrl) {
        try {
            Intent intent = Intent.parseUri(
                    intentFullUrl,
                    Intent.URI_INTENT_SCHEME
            );
            activity.startActivity(intent);
            return true;
        } catch (URISyntaxException e) {
            e.printStackTrace();
            return false;
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 判断支付宝客户端是否已安装，建议调用转账前检查
     * @param context Context
     * @return 支付宝客户端是否已安装
     */
    public static boolean hasInstalledAlipayClient(Context context) {
        PackageManager pm = context.getPackageManager();
        try {
            PackageInfo info = pm.getPackageInfo(ALIPAY_PACKAGE_NAME, 0);
            return info != null;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 获取支付宝客户端版本名称，作用不大
     * @param context Context
     * @return 版本名称
     */
    public static String getAlipayClientVersion(Context context) {
        PackageManager pm = context.getPackageManager();
        try {
            PackageInfo info = pm.getPackageInfo(ALIPAY_PACKAGE_NAME, 0);
            return info.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 打开支付宝扫一扫界面
     * @param context Context
     * @return 是否成功打开 Activity
     */
    public static boolean openAlipayScan(Context context) {
        try {
            Uri uri = Uri.parse("alipayqr://platformapi/startapp?saId=10000007");
            Intent intent = new Intent(Intent.ACTION_VIEW, uri);
            if (context instanceof TileService) {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                    ((TileService) context).startActivityAndCollapse(intent);
                }
            } else {
                context.startActivity(intent);
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * 打开支付宝付款码
     * @param context Context
     * @return 是否成功打开 Activity
     */
    public static boolean openAlipayBarcode(Context context) {
        try {
            Uri uri = Uri.parse("alipayqr://platformapi/startapp?saId=20000056");
            Intent intent = new Intent(Intent.ACTION_VIEW, uri);
            if (context instanceof TileService) {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                    ((TileService) context).startActivityAndCollapse(intent);
                }
            } else {
                context.startActivity(intent);
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
